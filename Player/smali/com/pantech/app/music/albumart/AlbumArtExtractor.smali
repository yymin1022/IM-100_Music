.class public Lcom/pantech/app/music/albumart/AlbumArtExtractor;
.super Ljava/lang/Object;
.source "AlbumArtExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;,
        Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;,
        Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;,
        Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;
    }
.end annotation


# static fields
.field public static OPTION_COLOR_SWATCH:I = 0x0

.field public static OPTION_EFFECT_BLUR:I = 0x0

.field public static OPTION_FORCE_SYNC:I = 0x0

.field public static OPTION_LARGE_SIZE:I = 0x0

.field public static OPTION_NO_CACHE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlbumArtExtractor"

.field private static mInstance:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

.field private static final sArtworkUri:Landroid/net/Uri;


# instance fields
.field mContext:Landroid/content/Context;

.field mExtractorHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;

.field mMainUIHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_LARGE_SIZE:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_EFFECT_BLUR:I

    .line 32
    const/4 v0, 0x4

    sput v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    .line 33
    const/16 v0, 0x8

    sput v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_NO_CACHE:I

    .line 34
    const/16 v0, 0x20

    sput v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_FORCE_SYNC:I

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mInstance:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    .line 86
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlbumArtExtractorThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 96
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;-><init>(Lcom/pantech/app/music/albumart/AlbumArtExtractor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mExtractorHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;

    .line 100
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;-><init>(Lcom/pantech/app/music/albumart/AlbumArtExtractor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mMainUIHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/albumart/AlbumArtExtractor;JLcom/pantech/app/music/albumart/AlbumArtCache$Size;Z)Landroid/graphics/Bitmap;
    .registers 6
    .param p0, "x0"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p4, "x3"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getLocalAlbumArt(JLcom/pantech/app/music/albumart/AlbumArtCache$Size;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized deleteInvalidAlbumArtPath(Landroid/content/Context;J)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "album_id"    # J

    .prologue
    .line 467
    const-class v10, Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    monitor-enter v10

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_66

    move-result-object v0

    .line 468
    .local v0, "res":Landroid/content/ContentResolver;
    if-nez v0, :cond_b

    .line 499
    :cond_9
    :goto_9
    monitor-exit v10

    return-void

    .line 471
    :cond_b
    :try_start_b
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_66

    move-result-object v1

    .line 472
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 475
    .local v6, "albumArtCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_16
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 476
    if-eqz v6, :cond_60

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 477
    const-string v2, "_data"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 479
    .local v7, "albumArtPath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 480
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_60

    .line 488
    const-string v2, "AlbumArtExtractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "albumArt path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid location"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_60} :catch_69
    .catchall {:try_start_16 .. :try_end_60} :catchall_73

    .line 496
    .end local v7    # "albumArtPath":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :cond_60
    if-eqz v6, :cond_9

    .line 497
    :try_start_62
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_9

    .line 467
    .end local v0    # "res":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "albumArtCursor":Landroid/database/Cursor;
    :catchall_66
    move-exception v2

    monitor-exit v10

    throw v2

    .line 493
    .restart local v0    # "res":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "albumArtCursor":Landroid/database/Cursor;
    :catch_69
    move-exception v8

    .line 494
    .local v8, "e":Ljava/lang/Exception;
    :try_start_6a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_73

    .line 496
    if-eqz v6, :cond_9

    .line 497
    :try_start_6f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_9

    .line 496
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_73
    move-exception v2

    if-eqz v6, :cond_79

    .line 497
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v2
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_66
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mInstance:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    if-nez v0, :cond_f

    .line 80
    new-instance v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mInstance:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    .line 82
    :cond_f
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mInstance:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    return-object v0
.end method

.method private getLocalAlbumArt(JLcom/pantech/app/music/albumart/AlbumArtCache$Size;Z)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "albumID"    # J
    .param p3, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p4, "notUsingCache"    # Z

    .prologue
    .line 322
    if-eqz p4, :cond_24

    .line 323
    const/4 v6, 0x0

    .line 329
    .local v6, "albumArt":Landroid/graphics/Bitmap;
    :goto_3
    if-nez v6, :cond_12

    .line 330
    invoke-static {p3}, Lcom/pantech/app/music/albumart/AlbumArtCache;->getDefaultWidth(Lcom/pantech/app/music/albumart/AlbumArtCache$Size;)I

    move-result v4

    .line 331
    .local v4, "with":I
    iget-object v1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-wide v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getLocalAlbumArt(Landroid/content/Context;JII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 335
    .end local v4    # "with":I
    :cond_12
    if-nez v6, :cond_1a

    .line 336
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mContext:Landroid/content/Context;

    invoke-static {v0, p3, p1, p2}, Lcom/pantech/app/music/albumart/AlbumArtCache;->getDefaultBitmap(Landroid/content/Context;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 339
    :cond_1a
    if-eqz v6, :cond_23

    if-nez p4, :cond_23

    .line 340
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    invoke-static {v0, p3, p1, p2, v6}, Lcom/pantech/app/music/albumart/AlbumArtCache;->put(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;JLandroid/graphics/Bitmap;)V

    .line 343
    :cond_23
    return-object v6

    .line 325
    .end local v6    # "albumArt":Landroid/graphics/Bitmap;
    :cond_24
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    invoke-static {v0, p3, p1, p2}, Lcom/pantech/app/music/albumart/AlbumArtCache;->get(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;

    move-result-object v6

    .restart local v6    # "albumArt":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method private declared-synchronized getLocalAlbumArt(Landroid/content/Context;JII)Landroid/graphics/Bitmap;
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "album_id"    # J
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 347
    monitor-enter p0

    const-wide/16 v12, -0x1

    cmp-long v12, p2, v12

    if-gtz v12, :cond_a

    .line 348
    const/4 v2, 0x0

    .line 463
    :cond_8
    :goto_8
    monitor-exit p0

    return-object v2

    .line 350
    :cond_a
    :try_start_a
    const-string v12, "AlbumArtExtractor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getLocalAlbumArt() albumID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", w:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", h:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    add-int/lit8 p4, p4, -0x1

    .line 358
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 359
    .local v8, "res":Landroid/content/ContentResolver;
    sget-object v12, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->sArtworkUri:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v12, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_a5

    move-result-object v11

    .line 372
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_164

    if-eqz v8, :cond_164

    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "albumArt":Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 375
    .local v9, "resized":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 378
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_51
    const-string v12, "r"

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 382
    if-eqz v5, :cond_63

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    const-wide/16 v14, 0xa

    cmp-long v12, v12, v14

    if-gtz v12, :cond_ad

    .line 383
    :cond_63
    const-string v14, "AlbumArtExtractor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid Albumart Cache File if Size under 10 byte size:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-nez v5, :cond_a8

    const-wide/16 v12, 0x0

    :goto_74
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_51 .. :try_end_7f} :catch_141
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_7f} :catch_185
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7f} :catch_1b1
    .catchall {:try_start_51 .. :try_end_7f} :catchall_1dc

    .line 387
    const/4 v2, 0x0

    .line 455
    .end local v2    # "albumArt":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_8

    .line 456
    :try_start_82
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86
    .catchall {:try_start_82 .. :try_end_85} :catchall_a5

    goto :goto_8

    .line 458
    :catch_86
    move-exception v4

    .line 459
    .local v4, "e":Ljava/io/IOException;
    :try_start_87
    const-string v12, "AlbumArtExtractor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catchall {:try_start_87 .. :try_end_a3} :catchall_a5

    goto/16 :goto_8

    .line 347
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "res":Landroid/content/ContentResolver;
    .end local v9    # "resized":Landroid/graphics/Bitmap;
    .end local v11    # "uri":Landroid/net/Uri;
    :catchall_a5
    move-exception v12

    monitor-exit p0

    throw v12

    .line 383
    .restart local v2    # "albumArt":Landroid/graphics/Bitmap;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v8    # "res":Landroid/content/ContentResolver;
    .restart local v9    # "resized":Landroid/graphics/Bitmap;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_a8
    :try_start_a8
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    goto :goto_74

    .line 390
    :cond_ad
    const/4 v10, 0x1

    .line 395
    .local v10, "sampleSize":I
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 398
    .local v3, "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x0

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 399
    const/4 v12, 0x1

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 401
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 403
    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v12, :cond_e0

    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v12, :cond_e0

    .line 404
    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v7, v12, 0x1

    .line 405
    .local v7, "nextWidth":I
    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v6, v12, 0x1

    .line 407
    .local v6, "nextHeight":I
    :goto_d1
    move/from16 v0, p4

    if-le v7, v0, :cond_e0

    move/from16 v0, p5

    if-le v6, v0, :cond_e0

    .line 408
    shl-int/lit8 v10, v10, 0x1

    .line 409
    shr-int/lit8 v7, v7, 0x1

    .line 410
    shr-int/lit8 v6, v6, 0x1

    goto :goto_d1

    .line 413
    .end local v6    # "nextHeight":I
    .end local v7    # "nextWidth":I
    :cond_e0
    const/4 v12, 0x1

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 414
    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 415
    const/4 v12, 0x0

    iput-boolean v12, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 417
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 419
    if-eqz v2, :cond_11b

    .line 420
    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p4

    if-ge v12, v0, :cond_ff

    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p5

    if-lt v12, v0, :cond_11b

    .line 421
    :cond_ff
    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p4

    if-ne v12, v0, :cond_10b

    iget v12, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p5

    if-eq v12, v0, :cond_11b

    .line 422
    :cond_10b
    const/4 v12, 0x1

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v0, v1, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 423
    if-eq v9, v2, :cond_11a

    .line 424
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_119
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a8 .. :try_end_119} :catch_141
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_119} :catch_185
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_119} :catch_1b1
    .catchall {:try_start_a8 .. :try_end_119} :catchall_1dc

    .line 425
    const/4 v2, 0x0

    .line 427
    :cond_11a
    move-object v2, v9

    .line 455
    :cond_11b
    if-eqz v5, :cond_8

    .line 456
    :try_start_11d
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_122
    .catchall {:try_start_11d .. :try_end_120} :catchall_a5

    goto/16 :goto_8

    .line 458
    :catch_122
    move-exception v4

    .line 459
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_123
    const-string v12, "AlbumArtExtractor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13f
    .catchall {:try_start_123 .. :try_end_13f} :catchall_a5

    goto/16 :goto_8

    .line 433
    .end local v3    # "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v10    # "sampleSize":I
    :catch_141
    move-exception v4

    .line 434
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :try_start_142
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 435
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->display_free_memory(Landroid/content/Context;)V

    .line 436
    if-eqz v2, :cond_14d

    .line 437
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    :cond_14d
    if-eqz v9, :cond_152

    .line 440
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 442
    :cond_152
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    if-eqz v12, :cond_15f

    .line 443
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->gc()V
    :try_end_15f
    .catchall {:try_start_142 .. :try_end_15f} :catchall_1dc

    .line 455
    :cond_15f
    if-eqz v5, :cond_164

    .line 456
    :try_start_161
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_164} :catch_167
    .catchall {:try_start_161 .. :try_end_164} :catchall_a5

    .line 463
    .end local v2    # "albumArt":Landroid/graphics/Bitmap;
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "resized":Landroid/graphics/Bitmap;
    :cond_164
    :goto_164
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 458
    .restart local v2    # "albumArt":Landroid/graphics/Bitmap;
    .restart local v4    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "resized":Landroid/graphics/Bitmap;
    :catch_167
    move-exception v4

    .line 459
    .local v4, "e":Ljava/io/IOException;
    :try_start_168
    const-string v12, "AlbumArtExtractor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_184
    .catchall {:try_start_168 .. :try_end_184} :catchall_a5

    goto :goto_164

    .line 445
    .end local v4    # "e":Ljava/io/IOException;
    :catch_185
    move-exception v4

    .line 446
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_186
    const-string v12, "AlbumArtExtractor"

    const-string v13, "->AlbumArt FileNotFound"

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18d
    .catchall {:try_start_186 .. :try_end_18d} :catchall_1dc

    .line 455
    if-eqz v5, :cond_164

    .line 456
    :try_start_18f
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_193
    .catchall {:try_start_18f .. :try_end_192} :catchall_a5

    goto :goto_164

    .line 458
    :catch_193
    move-exception v4

    .line 459
    .local v4, "e":Ljava/io/IOException;
    :try_start_194
    const-string v12, "AlbumArtExtractor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b0
    .catchall {:try_start_194 .. :try_end_1b0} :catchall_a5

    goto :goto_164

    .line 448
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1b1
    move-exception v4

    .line 449
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1b2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    invoke-static/range {p1 .. p3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->deleteInvalidAlbumArtPath(Landroid/content/Context;J)V
    :try_end_1b8
    .catchall {:try_start_1b2 .. :try_end_1b8} :catchall_1dc

    .line 455
    if-eqz v5, :cond_164

    .line 456
    :try_start_1ba
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1bd
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1bd} :catch_1be
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_a5

    goto :goto_164

    .line 458
    :catch_1be
    move-exception v4

    .line 459
    .local v4, "e":Ljava/io/IOException;
    :try_start_1bf
    const-string v12, "AlbumArtExtractor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1db
    .catchall {:try_start_1bf .. :try_end_1db} :catchall_a5

    goto :goto_164

    .line 454
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1dc
    move-exception v12

    .line 455
    if-eqz v5, :cond_1e2

    .line 456
    :try_start_1df
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e2
    .catch Ljava/io/IOException; {:try_start_1df .. :try_end_1e2} :catch_1e3
    .catchall {:try_start_1df .. :try_end_1e2} :catchall_a5

    .line 460
    :cond_1e2
    :goto_1e2
    :try_start_1e2
    throw v12

    .line 458
    :catch_1e3
    move-exception v4

    .line 459
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v13, "AlbumArtExtractor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IOException:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_200
    .catchall {:try_start_1e2 .. :try_end_200} :catchall_a5

    goto :goto_1e2
.end method

.method public static declared-synchronized isFileChanging(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 287
    const-class v18, Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    monitor-enter v18

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_6a

    move-result-object v6

    .line 289
    .local v6, "albumArtCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_5c

    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 290
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "albumArtPath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 292
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 294
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 295
    .local v10, "firstLen":J
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 296
    .local v12, "firstModified":J
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->ThreadSleep(J)V

    .line 297
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 298
    .local v14, "secondLen":J
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J
    :try_end_48
    .catchall {:try_start_13 .. :try_end_48} :catchall_63

    move-result-wide v16

    .line 299
    .local v16, "secondModified":J
    const/4 v8, 0x0

    .line 301
    .local v8, "changed":Z
    cmp-long v0, v10, v14

    if-eqz v0, :cond_4f

    .line 302
    const/4 v8, 0x1

    .line 304
    :cond_4f
    cmp-long v0, v12, v16

    if-eqz v0, :cond_55

    .line 305
    or-int/lit8 v8, v8, 0x1

    .line 312
    :cond_55
    if-eqz v6, :cond_5a

    .line 313
    :try_start_57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_6a

    .line 315
    .end local v7    # "albumArtPath":Ljava/lang/String;
    .end local v8    # "changed":Z
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "firstLen":J
    .end local v12    # "firstModified":J
    .end local v14    # "secondLen":J
    .end local v16    # "secondModified":J
    :cond_5a
    :goto_5a
    monitor-exit v18

    return v8

    .line 312
    :cond_5c
    if-eqz v6, :cond_61

    .line 313
    :try_start_5e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_61
    const/4 v8, 0x0

    goto :goto_5a

    .line 312
    :catchall_63
    move-exception v0

    if-eqz v6, :cond_69

    .line 313
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_69
    throw v0
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_6a

    .line 287
    .end local v6    # "albumArtCursor":Landroid/database/Cursor;
    :catchall_6a
    move-exception v0

    monitor-exit v18

    throw v0
.end method


# virtual methods
.method public removeAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mExtractorHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;
    .registers 15
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    .param p2, "listener"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    .prologue
    .line 114
    if-nez p1, :cond_4

    .line 115
    const/4 v0, 0x0

    .line 182
    :cond_3
    :goto_3
    return-object v0

    .line 118
    :cond_4
    iget-wide v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1f

    .line 119
    iget-object v8, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/pantech/app/music/service/MusicCache;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/service/MusicCache;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pantech/app/music/service/MusicCache;->getMusicItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v4

    .line 120
    .local v4, "musicItem":Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v4, :cond_1f

    .line 121
    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 125
    .end local v4    # "musicItem":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_1f
    iput-object p2, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    .line 128
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    .line 129
    .local v1, "albumSize":Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    iget v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v9, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_LARGE_SIZE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2c

    .line 130
    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    .line 134
    :cond_2c
    iget v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v9, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_NO_CACHE:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_8a

    const/4 v7, 0x1

    .line 138
    .local v7, "withNoCache":Z
    :goto_34
    iget v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v9, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_FORCE_SYNC:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_8c

    .line 139
    iget-wide v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-direct {p0, v8, v9, v1, v7}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getLocalAlbumArt(JLcom/pantech/app/music/albumart/AlbumArtCache$Size;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "albumArt":Landroid/graphics/Bitmap;
    :goto_41
    const/4 v5, 0x0

    .line 149
    .local v5, "shouldGetNew":Z
    if-eqz v0, :cond_99

    .line 150
    invoke-virtual {p1, v0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    :goto_47
    iget v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v9, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_EFFECT_BLUR:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_5a

    .line 155
    iget-wide v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-static {v8, v9}, Lcom/pantech/app/music/albumart/AlbumArtCache;->getBlur(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 156
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_9b

    .line 157
    invoke-virtual {p1, v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    const/4 v5, 0x0

    .line 163
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_5a
    :goto_5a
    iget v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v9, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_79

    .line 164
    iget-wide v8, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-static {v8, v9}, Lcom/pantech/app/music/albumart/AlbumArtColor;->get(J)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v6

    .line 165
    .local v6, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v6, :cond_9d

    .line 166
    invoke-virtual {p1, v6}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setSwatch(Landroid/support/v7/graphics/Palette$Swatch;)V

    .line 167
    invoke-virtual {v6}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v8

    sget-object v9, Lcom/pantech/app/music/utils/ColorUtils$Type;->LIST:Lcom/pantech/app/music/utils/ColorUtils$Type;

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/ColorUtils;->getColorfulColor(ILcom/pantech/app/music/utils/ColorUtils$Type;)Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setColorful(Lcom/pantech/app/music/utils/ColorUtils$Colorful;)V

    .line 173
    .end local v6    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_79
    :goto_79
    if-eqz v5, :cond_9f

    .line 174
    iget-object v8, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mExtractorHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 175
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mExtractorHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;

    invoke-virtual {v8, v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 134
    .end local v0    # "albumArt":Landroid/graphics/Bitmap;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "shouldGetNew":Z
    .end local v7    # "withNoCache":Z
    :cond_8a
    const/4 v7, 0x0

    goto :goto_34

    .line 142
    .restart local v7    # "withNoCache":Z
    :cond_8c
    if-eqz v7, :cond_90

    .line 143
    const/4 v0, 0x0

    .restart local v0    # "albumArt":Landroid/graphics/Bitmap;
    goto :goto_41

    .line 145
    .end local v0    # "albumArt":Landroid/graphics/Bitmap;
    :cond_90
    sget-object v8, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    iget-wide v10, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-static {v8, v1, v10, v11}, Lcom/pantech/app/music/albumart/AlbumArtCache;->get(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "albumArt":Landroid/graphics/Bitmap;
    goto :goto_41

    .line 152
    .restart local v5    # "shouldGetNew":Z
    :cond_99
    const/4 v5, 0x1

    goto :goto_47

    .line 160
    .restart local v2    # "bmp":Landroid/graphics/Bitmap;
    :cond_9b
    const/4 v5, 0x1

    goto :goto_5a

    .line 169
    .end local v2    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_9d
    const/4 v5, 0x1

    goto :goto_79

    .line 179
    .end local v6    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_9f
    if-eqz p2, :cond_3

    .line 180
    invoke-interface {p2, p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;->onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V

    goto/16 :goto_3
.end method

.method public requestAlbumart4LargeView(Landroid/widget/ImageView;J)V
    .registers 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "albumID"    # J

    .prologue
    .line 269
    new-instance v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 270
    .local v0, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iput-wide p2, v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 271
    iput-object p1, v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    .line 272
    sget v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_LARGE_SIZE:I

    iput v1, v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 275
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$1;-><init>(Lcom/pantech/app/music/albumart/AlbumArtExtractor;)V

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    .line 284
    return-void
.end method
