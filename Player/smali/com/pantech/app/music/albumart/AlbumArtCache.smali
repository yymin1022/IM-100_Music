.class public Lcom/pantech/app/music/albumart/AlbumArtCache;
.super Ljava/lang/Object;
.source "AlbumArtCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;,
        Lcom/pantech/app/music/albumart/AlbumArtCache$Size;,
        Lcom/pantech/app/music/albumart/AlbumArtCache$Type;
    }
.end annotation


# static fields
.field static final MAX_CACHE_SIZE:I

.field private static final TAG:Ljava/lang/String; = "AlbumArtCache"

.field private static sAlbumArtCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

.field public static final sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field static sArtistAlbumTable:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 31
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getMaxCacheSize()I

    move-result v0

    sput v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->MAX_CACHE_SIZE:I

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sArtistAlbumTable:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v0, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    invoke-direct {v0}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;-><init>()V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    .line 158
    new-instance v0, Lcom/pantech/app/music/albumart/AlbumArtCache$1;

    sget v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->MAX_CACHE_SIZE:I

    invoke-direct {v0, v1}, Lcom/pantech/app/music/albumart/AlbumArtCache$1;-><init>(I)V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static clear()V
    .registers 2

    .prologue
    .line 239
    const-string v0, "AlbumArtCache"

    const-string v1, "clear()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 242
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 243
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 244
    return-void
.end method

.method public static clear(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)V
    .registers 8
    .param p0, "type"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Type;
    .param p1, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p2, "albumID"    # J

    .prologue
    .line 247
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/app/music/albumart/AlbumArtCache;->makeKey(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "newKey":Ljava/lang/String;
    const-string v1, "AlbumArtCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clear() key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 252
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    if-ne p1, v1, :cond_38

    .line 253
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_2e
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 259
    return-void

    .line 255
    :cond_38
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    invoke-virtual {v1}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->clear()V

    goto :goto_2e
.end method

.method public static clearAll()V
    .registers 0

    .prologue
    .line 262
    invoke-static {}, Lcom/pantech/app/music/albumart/AlbumArtCache;->clear()V

    .line 263
    return-void
.end method

.method public static get(J)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "albumID"    # J

    .prologue
    .line 235
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    invoke-static {v0, v1, p0, p1}, Lcom/pantech/app/music/albumart/AlbumArtCache;->get(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static get(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "type"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Type;
    .param p1, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p2, "albumID"    # J

    .prologue
    .line 199
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_8

    .line 200
    const/4 v0, 0x0

    .line 213
    :goto_7
    return-object v0

    .line 202
    :cond_8
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 204
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/app/music/albumart/AlbumArtCache;->makeKey(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "newKey":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    if-ne p1, v2, :cond_29

    .line 207
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->getLargeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 212
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_1f
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_7

    .line 209
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_29
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_1f
.end method

.method public static getAlbumIdWithArtistId(J)J
    .registers 6
    .param p0, "artistID"    # J

    .prologue
    .line 144
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sArtistAlbumTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 145
    .local v0, "object":Ljava/lang/Long;
    if-nez v0, :cond_11

    .line 146
    const-wide/16 v2, -0x1

    .line 148
    :goto_10
    return-wide v2

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_10
.end method

.method static getBlur(J)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "albumID"    # J

    .prologue
    .line 217
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 220
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_20

    .line 221
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->getBlurBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :goto_16
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 227
    return-object v0

    .line 223
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_20
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->getBlurBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_16
.end method

.method public static getDefaultBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumID"    # J

    .prologue
    .line 140
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    invoke-static {p0, v0, p1, p2}, Lcom/pantech/app/music/albumart/AlbumArtCache;->getDefaultBitmap(Landroid/content/Context;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultBitmap(Landroid/content/Context;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p2, "albumID"    # J

    .prologue
    .line 136
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->getDefaultBitmap(Landroid/content/Context;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultWidth(Lcom/pantech/app/music/albumart/AlbumArtCache$Size;)I
    .registers 3
    .param p0, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    .prologue
    const/16 v0, 0x2d0

    .line 266
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    if-ne p0, v1, :cond_11

    .line 267
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getLCDFactor()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    .line 284
    :goto_d
    :pswitch_d
    return v0

    .line 270
    :pswitch_e
    const/16 v0, 0x500

    goto :goto_d

    .line 277
    :cond_11
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getLCDFactor()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 284
    :pswitch_18
    const/16 v0, 0x64

    goto :goto_d

    .line 280
    :pswitch_1b
    const/16 v0, 0xfa

    goto :goto_d

    .line 282
    :pswitch_1e
    const/16 v0, 0x96

    goto :goto_d

    .line 267
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 277
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_18
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method private static makeKey(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Ljava/lang/String;
    .registers 6
    .param p0, "type"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Type;
    .param p1, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p2, "albumID"    # J

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static put(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;JLandroid/graphics/Bitmap;)V
    .registers 9
    .param p0, "type"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Type;
    .param p1, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p2, "albumID"    # J
    .param p4, "albumArt"    # Landroid/graphics/Bitmap;

    .prologue
    .line 182
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-ltz v1, :cond_8

    if-nez p4, :cond_9

    .line 196
    :cond_8
    :goto_8
    return-void

    .line 185
    :cond_9
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 186
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/app/music/albumart/AlbumArtCache;->makeKey(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "newKey":Ljava/lang/String;
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    if-ne p1, v1, :cond_29

    .line 189
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    invoke-virtual {v1, v0, p4}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->putLargeBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 195
    :goto_1f
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_8

    .line 191
    :cond_29
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0, p4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f
.end method

.method public static putAlbumIdWithArtistId(JJ)V
    .registers 8
    .param p0, "artistID"    # J
    .param p2, "albumID"    # J

    .prologue
    .line 152
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sArtistAlbumTable:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method static putBlur(JLandroid/graphics/Bitmap;)V
    .registers 5
    .param p0, "albumID"    # J
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 231
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache;->sAlbumArtClass:Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/pantech/app/music/albumart/AlbumArtCache$BitmapClass;->putBlurBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 232
    return-void
.end method
