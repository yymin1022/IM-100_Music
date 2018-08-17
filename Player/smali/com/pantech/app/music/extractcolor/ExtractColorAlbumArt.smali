.class public Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;
.super Lcom/pantech/app/music/extractcolor/ColorForm;
.source "ExtractColorAlbumArt.java"


# static fields
.field private static final ALBUMART_HEIGHT:I = 0xfa

.field private static final ALBUMART_WIDTH:I = 0xfa

.field private static final COLOR_BAND_MAX:I = 0x100


# instance fields
.field object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/extractcolor/ColorForm;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;->object:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private getAlbumArt(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    if-nez p1, :cond_4

    .line 116
    const/4 v0, 0x0

    .line 187
    :goto_3
    return-object v0

    .line 118
    :cond_4
    iget-object v9, p0, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;->object:Ljava/lang/Object;

    monitor-enter v9

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "albumArt":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 122
    .local v6, "resized":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 125
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_a
    iget-object v8, p0, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "r"

    invoke-virtual {v8, p1, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 127
    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_ab
    .catchall {:try_start_a .. :try_end_1b} :catchall_bd

    move-result-wide v10

    const-wide/16 v12, 0xa

    cmp-long v8, v10, v12

    if-gtz v8, :cond_33

    .line 128
    :cond_22
    const/4 v8, 0x0

    .line 176
    if-eqz v3, :cond_28

    .line 178
    :try_start_25
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_2b
    .catchall {:try_start_25 .. :try_end_28} :catchall_30

    .line 181
    :cond_28
    :goto_28
    :try_start_28
    monitor-exit v9

    move-object v0, v8

    goto :goto_3

    .line 179
    :catch_2b
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 185
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_30
    move-exception v8

    monitor-exit v9
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v8

    .line 131
    :cond_33
    const/4 v7, 0x1

    .line 133
    .local v7, "sampleSize":I
    :try_start_34
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v1, "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    const/4 v8, 0x0

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 136
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 138
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 140
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v8, :cond_66

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v8, :cond_66

    .line 142
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v5, v8, 0x1

    .line 143
    .local v5, "nextWidth":I
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v4, v8, 0x1

    .line 145
    .local v4, "nextHeight":I
    :goto_57
    const/16 v8, 0xfa

    if-le v5, v8, :cond_66

    const/16 v8, 0xfa

    if-le v4, v8, :cond_66

    .line 147
    shl-int/lit8 v7, v7, 0x1

    .line 148
    shr-int/lit8 v5, v5, 0x1

    .line 149
    shr-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 153
    .end local v4    # "nextHeight":I
    .end local v5    # "nextWidth":I
    :cond_66
    const/4 v8, 0x1

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 154
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 155
    const/4 v8, 0x0

    iput-boolean v8, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 156
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8, v10, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_9e

    .line 159
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v10, 0xfa

    if-ge v8, v10, :cond_85

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v10, 0xfa

    if-lt v8, v10, :cond_9e

    .line 160
    :cond_85
    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v10, 0xfa

    if-ne v8, v10, :cond_91

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v10, 0xfa

    if-eq v8, v10, :cond_9e

    .line 161
    :cond_91
    const/16 v8, 0xfa

    const/16 v10, 0xfa

    const/4 v11, 0x1

    invoke-static {v0, v8, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_99} :catch_ab
    .catchall {:try_start_34 .. :try_end_99} :catchall_bd

    move-result-object v6

    .line 163
    if-eq v6, v0, :cond_9d

    .line 164
    const/4 v0, 0x0

    .line 166
    :cond_9d
    move-object v0, v6

    .line 176
    :cond_9e
    if-eqz v3, :cond_a3

    .line 178
    :try_start_a0
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a6
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_30

    .line 181
    :cond_a3
    :goto_a3
    :try_start_a3
    monitor-exit v9

    goto/16 :goto_3

    .line 179
    :catch_a6
    move-exception v2

    .line 180
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_30

    goto :goto_a3

    .line 173
    .end local v1    # "bitmapOptionsCache":Landroid/graphics/BitmapFactory$Options;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "sampleSize":I
    :catch_ab
    move-exception v2

    .line 174
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_ac
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_bd

    .line 176
    if-eqz v3, :cond_b4

    .line 178
    :try_start_b1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b4} :catch_b8
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_30

    .line 185
    :cond_b4
    :goto_b4
    :try_start_b4
    monitor-exit v9

    .line 187
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 179
    :catch_b8
    move-exception v2

    .line 180
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_30

    goto :goto_b4

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_bd
    move-exception v8

    if-eqz v3, :cond_c3

    .line 178
    :try_start_c0
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_30

    .line 181
    :cond_c3
    :goto_c3
    :try_start_c3
    throw v8

    .line 179
    :catch_c4
    move-exception v2

    .line 180
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c8
    .catchall {:try_start_c3 .. :try_end_c8} :catchall_30

    goto :goto_c3
.end method


# virtual methods
.method extractColor()I
    .registers 29

    .prologue
    .line 23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;->mData:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/net/Uri;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;->getAlbumArt(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 25
    .local v18, "srcImage":Landroid/graphics/Bitmap;
    if-nez v18, :cond_1b

    .line 26
    const-string v22, "BongBong"

    const-string v23, "Album Art is null"

    invoke-static/range {v22 .. v23}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v11, 0x0

    .line 98
    :goto_1a
    return v11

    .line 30
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 32
    .local v10, "destImage":Landroid/graphics/Bitmap;
    if-nez v18, :cond_32

    .line 33
    const/16 v18, 0x0

    .line 34
    const/4 v10, 0x0

    .line 35
    const/4 v11, 0x0

    goto :goto_1a

    .line 38
    :cond_32
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 39
    .local v19, "width":I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 41
    .local v14, "height":I
    const/16 v22, 0x100

    move/from16 v0, v22

    new-array v9, v0, [I

    .line 43
    .local v9, "data":[I
    const/16 v20, 0x0

    .local v20, "x":I
    :goto_42
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_a8

    .line 44
    const/16 v21, 0x0

    .local v21, "y":I
    :goto_4a
    move/from16 v0, v21

    if-ge v0, v14, :cond_a5

    .line 46
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v16

    .line 48
    .local v16, "pixel":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    .line 49
    .local v4, "alpha":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v17

    .line 50
    .local v17, "red":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v13

    .line 51
    .local v13, "green":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    .line 53
    .local v7, "blue":I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fcae147ae147ae1L    # 0.21

    mul-double v22, v22, v24

    int-to-double v0, v13

    move-wide/from16 v24, v0

    const-wide v26, 0x3fe6b851eb851eb8L    # 0.71

    mul-double v24, v24, v26

    add-double v22, v22, v24

    int-to-double v0, v7

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb1eb851eb851ecL    # 0.07

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v8, v0

    .line 54
    .local v8, "color":I
    aget v22, v9, v8

    add-int/lit8 v22, v22, 0x1

    aput v22, v9, v8

    .line 55
    invoke-static {v4, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 44
    add-int/lit8 v21, v21, 0x1

    goto :goto_4a

    .line 43
    .end local v4    # "alpha":I
    .end local v7    # "blue":I
    .end local v8    # "color":I
    .end local v13    # "green":I
    .end local v16    # "pixel":I
    .end local v17    # "red":I
    :cond_a5
    add-int/lit8 v20, v20, 0x1

    goto :goto_42

    .line 59
    .end local v21    # "y":I
    :cond_a8
    const/4 v5, 0x0

    .line 60
    .local v5, "best":I
    const/4 v6, 0x0

    .line 61
    .local v6, "bestIndex":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_ab
    const/16 v22, 0x100

    move/from16 v0, v22

    if-ge v15, v0, :cond_bd

    .line 62
    aget v22, v9, v15

    move/from16 v0, v22

    if-ge v5, v0, :cond_ba

    .line 63
    move v6, v15

    .line 64
    aget v5, v9, v15

    .line 61
    :cond_ba
    add-int/lit8 v15, v15, 0x1

    goto :goto_ab

    .line 68
    :cond_bd
    const/4 v12, 0x0

    .line 69
    .local v12, "findValue":Z
    const/4 v11, 0x0

    .line 73
    .local v11, "findPixel":I
    const/16 v20, 0x0

    :goto_c1
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_f9

    .line 74
    const/16 v21, 0x0

    .restart local v21    # "y":I
    :goto_c9
    move/from16 v0, v21

    if-ge v0, v14, :cond_e8

    .line 75
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 76
    .restart local v8    # "color":I
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v22

    move/from16 v0, v22

    if-ne v6, v0, :cond_f3

    .line 77
    const/4 v12, 0x1

    .line 78
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    .line 82
    .end local v8    # "color":I
    :cond_e8
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v12, v0, :cond_f6

    .line 88
    const/16 v18, 0x0

    .line 89
    const/4 v10, 0x0

    .line 91
    goto/16 :goto_1a

    .line 74
    .restart local v8    # "color":I
    :cond_f3
    add-int/lit8 v21, v21, 0x1

    goto :goto_c9

    .line 73
    .end local v8    # "color":I
    :cond_f6
    add-int/lit8 v20, v20, 0x1

    goto :goto_c1

    .line 95
    .end local v21    # "y":I
    :cond_f9
    const/16 v18, 0x0

    .line 96
    const/4 v10, 0x0

    .line 98
    const/4 v11, 0x0

    goto/16 :goto_1a
.end method

.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getExtractedColor()I
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/pantech/app/music/extractcolor/ExtractColorAlbumArt;->extractColor()I

    move-result v0

    .line 104
    .local v0, "color":I
    return v0
.end method
