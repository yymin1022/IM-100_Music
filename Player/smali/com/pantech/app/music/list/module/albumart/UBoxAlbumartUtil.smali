.class public Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;
.super Ljava/lang/Object;
.source "UBoxAlbumartUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartResultType;,
        Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;
    }
.end annotation


# static fields
.field public static final MAX_INTERNAL_CACHE_SIZE:I

.field public static final MIN_AVAILABLE_MEMORY_SIZE:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "VMusicAlbumartTag"

.field static final mDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getMaxCacheSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    sput v0, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->MAX_INTERNAL_CACHE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    return-void
.end method

.method public static declared-synchronized deleteFileCache(Landroid/content/Context;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    const-class v11, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;

    monitor-enter v11

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {p0}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->getFolderSize(Ljava/util/ArrayList;Ljava/io/File;)J

    move-result-wide v2

    .line 391
    .local v2, "currentCacheSize":J
    sget v10, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->MAX_INTERNAL_CACHE_SIZE:I

    int-to-long v12, v10

    sub-long v6, v2, v12

    .line 392
    .local v6, "exceededSize":J
    const/4 v0, 0x0

    .line 398
    .local v0, "count":I
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-ltz v10, :cond_4c

    .line 401
    new-instance v10, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$1;

    invoke-direct {v10}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$1;-><init>()V

    invoke-static {v1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 414
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_49

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 416
    .local v9, "item":Ljava/io/File;
    if-eqz v9, :cond_28

    .line 418
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 422
    .local v4, "deletedSize":J
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 424
    sub-long/2addr v6, v4

    .line 425
    add-int/lit8 v0, v0, 0x1

    .line 428
    :cond_43
    const-wide/16 v12, 0x0

    cmp-long v10, v6, v12

    if-gtz v10, :cond_28

    .line 433
    .end local v4    # "deletedSize":J
    .end local v9    # "item":Ljava/io/File;
    :cond_49
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    .line 438
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_4c
    monitor-exit v11

    return-void

    .line 388
    .end local v0    # "count":I
    .end local v1    # "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .end local v2    # "currentCacheSize":J
    .end local v6    # "exceededSize":J
    :catchall_4e
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private static downloadThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "szURL"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 64
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    .line 66
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    .line 68
    .local v5, "scale":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v8, v9

    .line 149
    :goto_c
    return-object v8

    .line 75
    :cond_d
    :try_start_d
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 77
    const/16 v8, 0x7d0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 78
    const/16 v8, 0x7d0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 79
    const-string v8, "GET"

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 82
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 84
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 85
    .local v4, "mOptions":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 86
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 87
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 89
    const/4 v8, 0x0

    invoke-static {v3, v8, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 92
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 93
    const/4 v8, 0x0

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    const/4 v8, 0x1

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 95
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 97
    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_55
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_55} :catch_6a
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_55} :catch_97
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_55} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_55} :catch_c1
    .catchall {:try_start_d .. :try_end_55} :catchall_d6

    move-result-object v1

    .line 99
    if-eqz v1, :cond_58

    .line 133
    :cond_58
    if-eqz v7, :cond_5d

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_5d
    const/4 v7, 0x0

    .line 139
    if-eqz v3, :cond_63

    .line 140
    :try_start_60
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_65

    :cond_63
    :goto_63
    move-object v8, v1

    .line 146
    goto :goto_c

    .line 142
    :catch_65
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 106
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "mOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "url":Ljava/net/URL;
    :catch_6a
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    :try_start_6b
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 110
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->display_free_memory(Landroid/content/Context;)V

    .line 112
    if-eqz v1, :cond_76

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 114
    :cond_76
    const/4 v1, 0x0

    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    if-eqz v8, :cond_84

    .line 117
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_d6

    .line 133
    :cond_84
    if-eqz v7, :cond_89

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_89
    const/4 v7, 0x0

    .line 139
    if-eqz v3, :cond_8f

    .line 140
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_92

    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_8f
    :goto_8f
    move-object v8, v9

    .line 149
    goto/16 :goto_c

    .line 142
    .restart local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_92
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    .line 119
    .end local v2    # "e":Ljava/io/IOException;
    :catch_97
    move-exception v2

    .line 121
    .local v2, "e":Ljava/net/MalformedURLException;
    :try_start_98
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_d6

    .line 133
    if-eqz v7, :cond_a0

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_a0
    const/4 v7, 0x0

    .line 139
    if-eqz v3, :cond_8f

    .line 140
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_8f

    .line 142
    :catch_a7
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    .line 123
    .end local v2    # "e":Ljava/io/IOException;
    :catch_ac
    move-exception v2

    .line 125
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_ad
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_d6

    .line 133
    if-eqz v7, :cond_b5

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_b5
    const/4 v7, 0x0

    .line 139
    if-eqz v3, :cond_8f

    .line 140
    :try_start_b8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_8f

    .line 142
    :catch_bc
    move-exception v2

    .line 145
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    .line 127
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/Exception;
    :try_start_c2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_d6

    .line 133
    if-eqz v7, :cond_ca

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_ca
    const/4 v7, 0x0

    .line 139
    if-eqz v3, :cond_8f

    .line 140
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_8f

    .line 142
    :catch_d1
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8f

    .line 133
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_d6
    move-exception v8

    if-eqz v7, :cond_dc

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    :cond_dc
    const/4 v7, 0x0

    .line 139
    if-eqz v3, :cond_e2

    .line 140
    :try_start_df
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_e3

    .line 146
    :cond_e2
    :goto_e2
    throw v8

    .line 142
    :catch_e3
    move-exception v2

    .line 145
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2
.end method

.method public static getCacheDir(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFolderSize(Ljava/util/ArrayList;Ljava/io/File;)J
    .registers 12
    .param p1, "cacheFileDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")J"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const-wide/16 v6, 0x0

    .line 445
    .local v6, "size":J
    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    .line 447
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 449
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_29

    .line 451
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_12
    if-ge v3, v4, :cond_29

    aget-object v1, v0, v3

    .line 453
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 455
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 456
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 462
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_29
    return-wide v6
.end method

.method private static getUBoxAlbumart(Landroid/content/Context;Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 165
    .local v0, "currentImage":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_2e

    .line 167
    iget-object v2, p1, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;->szKey:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->loadAlbumartCacheFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    if-nez v0, :cond_2e

    .line 171
    invoke-static {p0}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 173
    const-string v1, ""

    .line 175
    .local v1, "szUrl":Ljava/lang/String;
    iget-object v2, p1, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;->szURL:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 177
    iget-object v2, p1, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;->szURL:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->getUPlusBoxAlbumartUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {p0, v1}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->downloadThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    :cond_21
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    if-lez v2, :cond_2f

    .line 184
    iget-object v2, p1, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;->szKey:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->saveAlbumartCacheFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 206
    .end local v1    # "szUrl":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-object v0

    .line 191
    .restart local v1    # "szUrl":Ljava/lang/String;
    :cond_2f
    const-string v2, "VMusicAlbumartTag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download fail KEY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;->szKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public static getUBoxAlbumartFromCache(Lcom/pantech/app/music/albumart/AlbumArtCache$Size;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method static getUBoxAlbumartWithCache(Landroid/content/Context;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;)Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartResultType;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "albumartSize"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p2, "param"    # Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartParam;

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUPlusBoxAlbumartUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v2, "uplus_sessionid_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 54
    .local v1, "session_prefs":Landroid/content/SharedPreferences;
    const-string v2, "key_uplus_sessionid"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sessionId":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SESSION_ID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static declared-synchronized loadAlbumartCacheFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 359
    const-class v4, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;

    monitor-enter v4

    if-eqz p1, :cond_32

    .line 361
    :try_start_5
    invoke-static {p0}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 363
    .local v1, "cacheFileDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_34

    .line 367
    .local v0, "cacheFile":Ljava/io/File;
    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_32

    .line 369
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_2e
    .catchall {:try_start_e .. :try_end_2b} :catchall_34

    move-result-object v3

    .line 383
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "cacheFileDir":Ljava/io/File;
    :goto_2c
    monitor-exit v4

    return-object v3

    .line 377
    .restart local v0    # "cacheFile":Ljava/io/File;
    .restart local v1    # "cacheFileDir":Ljava/io/File;
    :catch_2e
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_34

    .line 383
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "cacheFileDir":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_32
    const/4 v3, 0x0

    goto :goto_2c

    .line 359
    :catchall_34
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static resizeAlbumart(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "originalAlbumart"    # Landroid/graphics/Bitmap;

    .prologue
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method private static declared-synchronized saveAlbumartCacheFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "albumArt"    # Landroid/graphics/Bitmap;

    .prologue
    .line 299
    const-class v10, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;

    monitor-enter v10

    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    .line 301
    .local v5, "cacheFileDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 303
    .local v4, "cacheFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v12

    const-wide/32 v14, 0xa00000

    sub-long v2, v12, v14

    .line 309
    .local v2, "availableSize":J
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-lez v9, :cond_26

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getByteCount()I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_4c

    move-result v9

    int-to-long v12, v9

    cmp-long v9, v2, v12

    if-gez v9, :cond_28

    .line 355
    :cond_26
    :goto_26
    monitor-exit v10

    return-void

    .line 316
    :cond_28
    :try_start_28
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4c

    move-result v9

    if-nez v9, :cond_26

    .line 321
    if-eqz p2, :cond_26

    .line 323
    const/4 v8, 0x0

    .line 327
    .local v8, "writeFlag":Z
    :try_start_31
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 329
    .local v7, "fileOutStream":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x5a

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    .line 331
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 332
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_46} :catch_4f
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_46} :catch_59
    .catchall {:try_start_31 .. :try_end_46} :catchall_63

    .line 345
    if-nez v8, :cond_26

    .line 346
    :try_start_48
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_26

    .line 299
    .end local v2    # "availableSize":J
    .end local v4    # "cacheFile":Ljava/io/File;
    .end local v5    # "cacheFileDir":Ljava/io/File;
    .end local v7    # "fileOutStream":Ljava/io/FileOutputStream;
    .end local v8    # "writeFlag":Z
    :catchall_4c
    move-exception v9

    monitor-exit v10

    throw v9

    .line 334
    .restart local v2    # "availableSize":J
    .restart local v4    # "cacheFile":Ljava/io/File;
    .restart local v5    # "cacheFileDir":Ljava/io/File;
    .restart local v8    # "writeFlag":Z
    :catch_4f
    move-exception v6

    .line 337
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_50
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_63

    .line 345
    if-nez v8, :cond_26

    .line 346
    :try_start_55
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_4c

    goto :goto_26

    .line 339
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_59
    move-exception v6

    .line 341
    .local v6, "e":Ljava/io/IOException;
    :try_start_5a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_63

    .line 345
    if-nez v8, :cond_26

    .line 346
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_26

    .line 345
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_63
    move-exception v9

    if-nez v8, :cond_69

    .line 346
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_69
    throw v9
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_4c
.end method
