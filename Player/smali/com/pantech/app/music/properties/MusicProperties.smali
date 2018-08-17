.class public Lcom/pantech/app/music/properties/MusicProperties;
.super Ljava/lang/Object;
.source "MusicProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VMusicProperties"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mFileExtension:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audio_id"    # J

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "VMusicProperties"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    .line 106
    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    .line 107
    iput-object v3, p0, Lcom/pantech/app/music/properties/MusicProperties;->mFileExtension:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicProperties;->setIndexText()V

    .line 110
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicProperties;->initProperty()V

    .line 118
    invoke-virtual {p0, p2, p3}, Lcom/pantech/app/music/properties/MusicProperties;->setIndexProperty(J)V

    .line 119
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/properties/MusicProperties;->setLGTDRMProperties(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private changeDateSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "expireDate"    # Ljava/lang/String;

    .prologue
    .line 537
    if-nez p1, :cond_b

    .line 538
    const-string v17, "VMusicProperties"

    const-string v18, "changeDateSet return null"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v5, 0x0

    .line 592
    :goto_a
    return-object v5

    .line 542
    :cond_b
    const-string v17, "T"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 544
    .local v16, "values":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v9, v16, v17

    .line 545
    .local v9, "date":Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v11, v16, v17

    .line 547
    .local v11, "time":Ljava/lang/String;
    const-string v17, "Z"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 548
    .local v12, "time_data":[Ljava/lang/String;
    const/16 v17, 0x0

    aget-object v14, v12, v17

    .line 551
    .local v14, "timestring":Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 553
    .local v7, "data_format":Ljava/text/SimpleDateFormat;
    const-string v17, "9999-99-99"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_8a

    .line 555
    const-string v17, "yyyy-mm-dd"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 562
    :goto_3f
    const/4 v2, 0x0

    .line 565
    .local v2, "D_data":Ljava/util/Date;
    :try_start_40
    invoke-virtual {v7, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_43
    .catch Ljava/text/ParseException; {:try_start_40 .. :try_end_43} :catch_92

    move-result-object v2

    .line 573
    :goto_44
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v17, "hh:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 575
    .local v13, "time_format":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x0

    .line 578
    .local v3, "D_time":Ljava/util/Date;
    :try_start_4e
    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_51
    .catch Ljava/text/ParseException; {:try_start_4e .. :try_end_51} :catch_97

    move-result-object v3

    .line 585
    :goto_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 586
    .local v4, "Dateformater":Ljava/text/DateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    .line 587
    .local v6, "Timeformater":Ljava/text/DateFormat;
    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, "datatemp":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 590
    .local v15, "timetemp":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 592
    .local v5, "Timedate":Ljava/lang/String;
    goto :goto_a

    .line 559
    .end local v2    # "D_data":Ljava/util/Date;
    .end local v3    # "D_time":Ljava/util/Date;
    .end local v4    # "Dateformater":Ljava/text/DateFormat;
    .end local v5    # "Timedate":Ljava/lang/String;
    .end local v6    # "Timeformater":Ljava/text/DateFormat;
    .end local v8    # "datatemp":Ljava/lang/String;
    .end local v13    # "time_format":Ljava/text/SimpleDateFormat;
    .end local v15    # "timetemp":Ljava/lang/String;
    :cond_8a
    const-string v17, "yyyy-MM-dd"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_3f

    .line 567
    .restart local v2    # "D_data":Ljava/util/Date;
    :catch_92
    move-exception v10

    .line 569
    .local v10, "e":Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_44

    .line 580
    .end local v10    # "e":Ljava/text/ParseException;
    .restart local v3    # "D_time":Ljava/util/Date;
    .restart local v13    # "time_format":Ljava/text/SimpleDateFormat;
    :catch_97
    move-exception v10

    .line 582
    .restart local v10    # "e":Ljava/text/ParseException;
    invoke-virtual {v10}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_52
.end method

.method private getDateString(J)Ljava/lang/String;
    .registers 12
    .param p1, "date"    # J

    .prologue
    const-wide/16 v6, 0x3e8

    .line 453
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 454
    .local v0, "Dateformater":Ljava/text/DateFormat;
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 456
    .local v1, "Timeformater":Ljava/text/DateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/Date;

    mul-long v4, p1, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    mul-long v4, p1, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getFileSizeString(J)Ljava/lang/String;
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 449
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initProperty()V
    .registers 6

    .prologue
    .line 123
    invoke-static {}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->values()[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-result-object v0

    .local v0, "arr$":[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 125
    .local v3, "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 127
    .end local v3    # "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    :cond_12
    return-void
.end method

.method private setBitrate(Ljava/lang/String;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v4, "VMusicProperties"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBitrate() path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v3, ""

    .line 337
    .local v3, "strBitrate":Ljava/lang/String;
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 341
    .local v2, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1f
    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 342
    const/16 v4, 0x14

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_27} :catch_80
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_27} :catch_9d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_be
    .catchall {:try_start_1f .. :try_end_27} :catchall_df

    move-result-object v3

    .line 361
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "bitRate":Ljava/lang/String;
    if-eqz v3, :cond_7f

    .line 372
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5d

    .line 373
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_e4

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Kbps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_5d
    :goto_5d
    const-string v4, "VMusicProperties"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBitrate() strBitrate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bitRate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .end local v0    # "bitRate":Ljava/lang/String;
    :cond_7f
    :goto_7f
    return-void

    .line 344
    :catch_80
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_81
    const-string v4, "VMusicProperties"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever IllegalArgumentException exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_81 .. :try_end_99} :catchall_df

    .line 361
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_7f

    .line 349
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_9d
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_9e
    const-string v4, "VMusicProperties"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever RuntimeException exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_9e .. :try_end_ba} :catchall_df

    .line 361
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_7f

    .line 354
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_be
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    :try_start_bf
    const-string v4, "VMusicProperties"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MediaMetadataRetriever exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_bf .. :try_end_db} :catchall_df

    .line 361
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_7f

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_df
    move-exception v4

    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v4

    .line 376
    .restart local v0    # "bitRate":Ljava/lang/String;
    :cond_e4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bps"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5d
.end method

.method private setIndexPropertyForUplusBox(J)V
    .registers 20
    .param p1, "file_id"    # J

    .prologue
    .line 159
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 160
    .local v3, "audioUri":Landroid/net/Uri;
    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 164
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_29

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 165
    :cond_29
    if-eqz v8, :cond_2e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_2e
    :goto_2e
    return-void

    .line 170
    :cond_2f
    :try_start_2f
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e5

    .line 171
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v4, "Title"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v4, "Artist"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 173
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v4, "Album"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 175
    const-string v2, "Playtime"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 176
    .local v9, "duration":I
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DURATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    int-to-long v6, v9

    invoke-static {v4, v6, v7}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 178
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILENAME:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v4, "fileName"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 181
    const-string v2, "fileSize"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 182
    .local v12, "file_size":J
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILESIZE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/pantech/app/music/properties/MusicProperties;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 184
    const-string v2, "DownUrl"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    .line 185
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 187
    const-string v2, "ModifyTime"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v14, v4, v6

    .line 189
    .local v14, "modifiedTime":J
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DATE_ADDED:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/pantech/app/music/properties/MusicProperties;->getDateString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 194
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v4, "AlbumUrl"

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V
    :try_end_de
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_de} :catch_110
    .catchall {:try_start_2f .. :try_end_de} :catchall_134

    .line 203
    .end local v9    # "duration":I
    .end local v12    # "file_size":J
    .end local v14    # "modifiedTime":J
    :goto_de
    if-eqz v8, :cond_2e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2e

    .line 197
    :cond_e5
    :try_start_e5
    const-string v2, "VMusicProperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Abnormal case cursor count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e5 .. :try_end_10f} :catch_110
    .catchall {:try_start_e5 .. :try_end_10f} :catchall_134

    goto :goto_de

    .line 199
    :catch_110
    move-exception v10

    .line 200
    .local v10, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_111
    const-string v2, "VMusicProperties"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Audio Query Failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_111 .. :try_end_12d} :catchall_134

    .line 203
    if-eqz v8, :cond_2e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2e

    .end local v10    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_134
    move-exception v2

    if-eqz v8, :cond_13a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_13a
    throw v2
.end method

.method private setIndexText()V
    .registers 5

    .prologue
    const v3, 0x7f080017

    .line 130
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    .local v0, "r":Landroid/content/res/Resources;
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080018

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f08003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DURATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 137
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILENAME:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f08003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILESIZE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f08003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 139
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f08003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DATE_ADDED:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LICENSE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f08003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 147
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DISC_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080027

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->PLAY_COUNT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080060

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f080095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 150
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->YEAR:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f08009d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 151
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->RATING:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const v2, 0x7f08006d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setText(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private setLGTDRMProperties(Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 387
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 389
    iget-object v6, p0, Lcom/pantech/app/music/properties/MusicProperties;->mFileExtension:Ljava/lang/String;

    if-eqz v6, :cond_66

    iget-object v6, p0, Lcom/pantech/app/music/properties/MusicProperties;->mFileExtension:Ljava/lang/String;

    const-string v7, "ODF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 391
    const/16 v4, -0xa

    .line 394
    .local v4, "ret":I
    new-instance v2, Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-direct {v2}, Lcom/pantech/app/music/drm/LGUDRMInterface;-><init>()V

    .line 395
    .local v2, "mDRMHandle":Lcom/pantech/app/music/drm/LGUDRMInterface;
    invoke-virtual {v2}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMInit()I

    move-result v6

    if-eqz v6, :cond_22

    .line 396
    const/4 v2, 0x0

    .line 399
    :cond_22
    if-eqz v2, :cond_61

    .line 400
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 401
    .local v3, "metaInfo":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1, v3}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMGetTextualHeaderAll(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v4

    .line 402
    if-nez v4, :cond_47

    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "strArr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    array-length v6, v5

    if-ge v1, v6, :cond_47

    .line 405
    aget-object v6, v5, v1

    invoke-direct {p0, v6}, Lcom/pantech/app/music/properties/MusicProperties;->setLGTDRMPropertyEntry(Ljava/lang/String;)V

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 409
    .end local v1    # "i":I
    .end local v5    # "strArr":[Ljava/lang/String;
    :cond_47
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "expireDate":Ljava/lang/StringBuffer;
    invoke-virtual {v2, p1, v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMGetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v4

    .line 411
    if-nez v4, :cond_61

    .line 412
    sget-object v6, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LICENSE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/pantech/app/music/properties/MusicProperties;->changeDateSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 416
    .end local v0    # "expireDate":Ljava/lang/StringBuffer;
    .end local v3    # "metaInfo":Ljava/lang/StringBuffer;
    :cond_61
    if-eqz v2, :cond_66

    .line 417
    invoke-virtual {v2}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMDestroy()V

    .line 422
    .end local v2    # "mDRMHandle":Lcom/pantech/app/music/drm/LGUDRMInterface;
    .end local v4    # "ret":I
    :cond_66
    return-void
.end method

.method private setLGTDRMPropertyEntry(Ljava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 425
    const-string v2, "play_time"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_2a

    .line 426
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, "temp":[Ljava/lang/String;
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 428
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, "duration":I
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DURATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 446
    .end local v0    # "duration":I
    .end local v1    # "temp":[Ljava/lang/String;
    :cond_29
    :goto_29
    return-void

    .line 435
    :cond_2a
    const-string v2, "track"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_48

    .line 436
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1    # "temp":[Ljava/lang/String;
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 438
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    goto :goto_29

    .line 440
    .end local v1    # "temp":[Ljava/lang/String;
    :cond_48
    const-string v2, "year"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_29

    .line 441
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 442
    .restart local v1    # "temp":[Ljava/lang/String;
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_29

    .line 443
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->YEAR:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    goto :goto_29
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .registers 11

    .prologue
    .line 461
    const-string v7, "VMusicProperties"

    const-string v8, "getCursor"

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0c0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 466
    .local v6, "szCol":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v5, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    invoke-static {}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->values()[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-result-object v0

    .local v0, "arr$":[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_9f

    aget-object v3, v0, v1

    .line 470
    .local v3, "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    const-string v7, "VMusicProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Property :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 468
    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 479
    :cond_59
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v7

    if-eqz v7, :cond_96

    .line 481
    sget-object v7, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LICENSE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v3, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-nez v7, :cond_6f

    .line 483
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    invoke-static {v7}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 496
    :cond_6f
    sget-object v7, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v3, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-eqz v7, :cond_56

    .line 504
    sget-object v7, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->RATING:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v3, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-eqz v7, :cond_56

    .line 524
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v4, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 489
    .end local v4    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_96
    sget-object v7, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LICENSE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v3, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-nez v7, :cond_6f

    goto :goto_56

    .line 530
    .end local v3    # "property":Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    :cond_9f
    new-instance v7, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v7, v6, v5}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method public setIndexProperty(J)V
    .registers 26
    .param p1, "audio_id"    # J

    .prologue
    .line 209
    const/16 v4, 0xc

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "title"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "artist"

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "album"

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "duration"

    aput-object v7, v6, v4

    const/4 v4, 0x4

    const-string v7, "_display_name"

    aput-object v7, v6, v4

    const/4 v4, 0x5

    const-string v7, "_size"

    aput-object v7, v6, v4

    const/4 v4, 0x6

    const-string v7, "_data"

    aput-object v7, v6, v4

    const/4 v4, 0x7

    const-string v7, "mime_type"

    aput-object v7, v6, v4

    const/16 v4, 0x8

    const-string v7, "date_added"

    aput-object v7, v6, v4

    const/16 v4, 0x9

    const-string v7, "track"

    aput-object v7, v6, v4

    const/16 v4, 0xa

    const-string v7, "album_id"

    aput-object v7, v6, v4

    const/16 v4, 0xb

    const-string v7, "year"

    aput-object v7, v6, v4

    .line 223
    .local v6, "cols":[Ljava/lang/String;
    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static {v4, v7, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v5

    .line 224
    .local v5, "audioUri":Landroid/net/Uri;
    move-wide/from16 v0, p1

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 226
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 228
    .local v16, "c":Landroid/database/Cursor;
    if-eqz v16, :cond_69

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_87

    .line 229
    :cond_69
    const-string v4, "VMusicProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query Failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    if-eqz v16, :cond_86

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_86
    :goto_86
    return-void

    .line 235
    :cond_87
    :try_start_87
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_285

    .line 236
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 237
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "artist"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 238
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "album"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 240
    const-string v4, "duration"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 241
    .local v17, "duration":I
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DURATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    move/from16 v0, v17

    add-int/lit16 v8, v0, 0x1f4

    div-int/lit16 v8, v8, 0x3e8

    int-to-long v12, v8

    invoke-static {v7, v12, v13}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 243
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILENAME:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "_display_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 246
    const-string v4, "_size"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 247
    .local v20, "file_size":J
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILESIZE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties;->getFileSizeString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 249
    const-string v4, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    .line 250
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setPath(Ljava/lang/String;)V

    .line 251
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/music/properties/MusicProperties;->mFilePath:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->computeDisplayFolderPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 253
    const-string v4, "mime_type"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/common/MediaFile;->getFileExtensionForMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pantech/app/music/properties/MusicProperties;->mFileExtension:Ljava/lang/String;

    .line 254
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/properties/MusicProperties;->mFileExtension:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 256
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DATE_ADDED:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "date_added"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v12, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/pantech/app/music/properties/MusicProperties;->getDateString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 257
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "%02d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v12, "track"

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 258
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->YEAR:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "year"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 259
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "album_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V
    :try_end_1c5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_87 .. :try_end_1c5} :catch_2b1
    .catchall {:try_start_87 .. :try_end_1c5} :catchall_2d5

    .line 271
    .end local v17    # "duration":I
    .end local v20    # "file_size":J
    :goto_1c5
    if-eqz v16, :cond_1ca

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_1ca
    const/4 v4, 0x3

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "disc_number"

    aput-object v7, v9, v4

    const/4 v4, 0x1

    const-string v7, "play_count"

    aput-object v7, v9, v4

    const/4 v4, 0x2

    const-string v7, "rating"

    aput-object v7, v9, v4

    .line 280
    .local v9, "cols2":[Ljava/lang/String;
    :try_start_1dc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 283
    if-eqz v16, :cond_234

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f1
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1f1} :catch_2f9

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_234

    .line 285
    :try_start_1f5
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DISC_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "disc_number"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v4

    if-eqz v4, :cond_234

    .line 290
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->PLAY_COUNT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "play_count"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 292
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->RATING:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "rating"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_234} :catch_2dc

    .line 300
    :cond_234
    :goto_234
    if-eqz v16, :cond_239

    :try_start_236
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_239
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_239} :catch_2f9

    .line 305
    :cond_239
    :goto_239
    const-string v4, "/genres"

    invoke-static {v5, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 307
    .local v11, "genreUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/properties/MusicProperties;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v4, 0x2

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v12, v4

    const/4 v4, 0x1

    const-string v7, "name"

    aput-object v7, v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 310
    if-eqz v16, :cond_27e

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_27e

    .line 311
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_318

    .line 312
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "name"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 321
    :cond_27e
    :goto_27e
    if-eqz v16, :cond_86

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_86

    .line 265
    .end local v9    # "cols2":[Ljava/lang/String;
    .end local v11    # "genreUri":Landroid/net/Uri;
    :cond_285
    :try_start_285
    const-string v4, "VMusicProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Abnormal case cursor count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_285 .. :try_end_2af} :catch_2b1
    .catchall {:try_start_285 .. :try_end_2af} :catchall_2d5

    goto/16 :goto_1c5

    .line 267
    :catch_2b1
    move-exception v18

    .line 268
    .local v18, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2b2
    const-string v4, "VMusicProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio Query Failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ce
    .catchall {:try_start_2b2 .. :try_end_2ce} :catchall_2d5

    .line 271
    if-eqz v16, :cond_86

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_86

    .end local v18    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_2d5
    move-exception v4

    if-eqz v16, :cond_2db

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_2db
    throw v4

    .line 295
    .restart local v9    # "cols2":[Ljava/lang/String;
    :catch_2dc
    move-exception v18

    .line 296
    .local v18, "e":Ljava/lang/Exception;
    :try_start_2dd
    const-string v4, "VMusicProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PLAY COUNT RATING exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f7
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2f7} :catch_2f9

    goto/16 :goto_234

    .line 301
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_2f9
    move-exception v18

    .line 302
    .restart local v18    # "e":Ljava/lang/Exception;
    const-string v4, "VMusicProperties"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Audio Query DiscNum, PlayCount, Rating Failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_239

    .line 315
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v11    # "genreUri":Landroid/net/Uri;
    :cond_318
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToLast()Z

    .line 316
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v7, "name"

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    goto/16 :goto_27e
.end method
