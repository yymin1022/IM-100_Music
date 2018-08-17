.class public Lcom/pantech/audiotag/flac/FLACTagWriter;
.super Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;
.source "FLACTagWriter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[FLACTagWriter] "


# instance fields
.field private mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

.field private mUserData:Lcom/pantech/audiotag/AudioFileTagData;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/editor/IAudioFileEditorListener;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "getType"    # I
    .param p3, "readedData"    # Ljava/lang/Object;
    .param p4, "userData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .param p5, "editorListener"    # Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p5}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;-><init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    .line 43
    iput-object p4, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    .line 44
    check-cast p3, Lcom/pantech/audiotag/flac/data/FLACDataOld;

    .end local p3    # "readedData":Ljava/lang/Object;
    iput-object p3, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    .line 45
    return-void
.end method

.method private checkOldAndNewDataCommentCount(Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)I
    .registers 11
    .param p1, "oldFlacData"    # Lcom/pantech/audiotag/flac/data/FLACDataOld;
    .param p2, "newFlacData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, "gapCount":I
    invoke-virtual {p2}, Lcom/pantech/audiotag/AudioFileTagData;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1f

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[FLACTagWriter] checkOldAndNewDataCommentCount() gapCount:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 446
    return v0

    .line 425
    :cond_1f
    const/4 v1, 0x0

    .line 426
    .local v1, "hasOld":Z
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 428
    .local v4, "newDataKey":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_35

    .line 438
    if-nez v1, :cond_5

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 430
    :cond_35
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 432
    .local v5, "oldDataKey":Ljava/lang/Integer;
    if-ne v5, v4, :cond_2a

    .line 434
    const/4 v1, 0x1

    goto :goto_2a
.end method

.method private checkOldAndNewDataGapSize(Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)I
    .registers 15
    .param p1, "oldFlacData"    # Lcom/pantech/audiotag/flac/data/FLACDataOld;
    .param p2, "newFlacData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v9, 0x0

    .line 370
    .local v9, "totalGapSize":I
    invoke-virtual {p1}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 374
    .local v7, "savedDataMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    invoke-virtual {p2}, Lcom/pantech/audiotag/AudioFileTagData;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_23

    .line 406
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[FLACTagWriter] checkOldAndNewData() totalGapSize: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 408
    return v9

    .line 376
    :cond_23
    const/4 v0, 0x0

    .line 377
    .local v0, "hasOld":Z
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 379
    .local v3, "newDataKey":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_49

    .line 398
    if-nez v0, :cond_9

    .line 400
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p2, v11}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/audiotag/data/VorbisCommentData;->getCompleteVorbisCommentByte(ILjava/lang/String;)[B

    move-result-object v8

    .line 402
    .local v8, "temp":[B
    array-length v10, v8

    add-int/2addr v9, v10

    goto :goto_9

    .line 381
    .end local v8    # "temp":[B
    :cond_49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 383
    .local v5, "oldDataKey":Ljava/lang/Integer;
    if-ne v3, v5, :cond_2e

    .line 390
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p2, v10}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pantech/audiotag/textcoder/MUTF8Util;->encode(Ljava/lang/String;)[B

    move-result-object v10

    array-length v4, v10

    .line 391
    .local v4, "newDataSize":I
    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v10}, Lcom/pantech/audiotag/data/Data;->getDataSize()I

    move-result v6

    .line 392
    .local v6, "oldDataSize":I
    sub-int v10, v4, v6

    add-int/2addr v9, v10

    .line 394
    const/4 v0, 0x1

    goto :goto_2e
.end method

.method private checkRemaningBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 7
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "newBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 458
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 459
    .local v1, "oldRemain":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 461
    .local v0, "newRemain":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[FLACTagWriter] checkRemaningBuffer() oldRemain/newRemain : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 463
    if-ne v1, v0, :cond_28

    .line 464
    const/4 v2, 0x1

    .line 466
    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method private getBlockHeader(Ljava/nio/ByteBuffer;I)[B
    .registers 6
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "gapSize"    # I

    .prologue
    .line 478
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataSize()I

    move-result v2

    add-int v1, v2, p2

    .line 480
    .local v1, "newBlockSize":I
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 481
    .local v0, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 484
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 487
    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromInt(II)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 489
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private getOldBuffer(Ljava/io/File;J)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "endVorbisDataPos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 504
    .local v1, "fis":Ljava/io/FileInputStream;
    long-to-int v3, p2

    new-array v2, v3, [B

    .line 505
    .local v2, "oldByte":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 507
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    .local v0, "fileBuffer":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_14

    .line 510
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 512
    :cond_14
    return-object v0
.end method

.method private getVorbisCommentItem(Ljava/nio/ByteBuffer;ILcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)[B
    .registers 26
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "newVorbisDataSize"    # I
    .param p3, "oldFlacData"    # Lcom/pantech/audiotag/flac/data/FLACDataOld;
    .param p4, "newFlacData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] FLACTagGlobal.getVorbisDataSize()"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataSize()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 260
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] FLACTagGlobal.getVorbisDataStartPosition()"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataStartPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v16

    .line 263
    .local v16, "savedDataMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    invoke-static/range {p2 .. p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 264
    .local v15, "resultBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 267
    invoke-virtual/range {p4 .. p4}, Lcom/pantech/audiotag/AudioFileTagData;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_bc

    .line 290
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "k":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_45
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_123

    .line 343
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataEndPosition()I

    move-result v2

    .line 345
    .local v2, "endVorbisPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    move/from16 v0, v19

    if-eq v2, v0, :cond_b7

    .line 347
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] getVorbisCommentItem() remain resultBuffer/oldBuffer: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    sub-int v20, v2, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 348
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] getVorbisCommentItem() put remain oldBuffer\'s data: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " endVorbisPos: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    sub-int v19, v2, v19

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 351
    .local v17, "temp":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 352
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 355
    .end local v17    # "temp":[B
    :cond_b7
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v19

    return-object v19

    .line 269
    .end local v2    # "endVorbisPos":I
    .end local v7    # "k":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_bc
    const/4 v5, 0x1

    .line 270
    .local v5, "isNew":Z
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 271
    .local v10, "newDataKey":Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 273
    .local v12, "oldDataKey":Ljava/lang/Integer;
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_c8
    :goto_c8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_119

    .line 281
    if-eqz v5, :cond_3b

    .line 283
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] getVorbisCommentItem() put new data: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " data: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pantech/audiotag/data/VorbisCommentData;->getCompleteVorbisCommentByte(ILjava/lang/String;)[B

    move-result-object v9

    .line 285
    .local v9, "newDataByte":[B
    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_3b

    .line 275
    .end local v9    # "newDataByte":[B
    :cond_119
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "oldDataKey":Ljava/lang/Integer;
    check-cast v12, Ljava/lang/Integer;

    .line 277
    .restart local v12    # "oldDataKey":Ljava/lang/Integer;
    if-ne v12, v10, :cond_c8

    .line 278
    const/4 v5, 0x0

    goto :goto_c8

    .line 292
    .end local v5    # "isNew":Z
    .end local v6    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v10    # "newDataKey":Ljava/lang/Integer;
    .end local v12    # "oldDataKey":Ljava/lang/Integer;
    .restart local v7    # "k":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_123
    const/4 v4, 0x0

    .line 293
    .local v4, "isChange":Z
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 294
    .restart local v12    # "oldDataKey":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 296
    .restart local v10    # "newDataKey":Ljava/lang/Integer;
    invoke-virtual/range {p4 .. p4}, Lcom/pantech/audiotag/AudioFileTagData;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "l":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_12f
    :goto_12f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_1f7

    .line 305
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataStartPosition()I

    move-result v20

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/pantech/audiotag/data/Data;

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/audiotag/data/Data;->getPos()I

    move-result v19

    add-int v14, v20, v19

    .line 306
    .local v14, "realOldItemPosition":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    .line 308
    .local v13, "realFilePosition":I
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] getVorbisCommentItem() realOldItemPosition/realFilePosition: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 310
    if-eq v14, v13, :cond_197

    .line 312
    sub-int v19, v14, v13

    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 313
    .restart local v17    # "temp":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 314
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 316
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] getVorbisCommentItem() Has unsigned vorbis data. Put oldBuffer\'s data to newBuffer: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 319
    .end local v17    # "temp":[B
    :cond_197
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/pantech/audiotag/data/Data;

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/audiotag/data/Data;->getFullSize()I

    move-result v19

    add-int/lit8 v11, v19, 0x4

    .line 321
    .local v11, "oldBufferFullItemSize":I
    if-eqz v4, :cond_202

    .line 323
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] getVorbisCommentItem() CHANGE ITEM [key]new): ["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pantech/audiotag/data/VorbisCommentData;->getCompleteVorbisCommentByte(ILjava/lang/String;)[B

    move-result-object v9

    .line 326
    .restart local v9    # "newDataByte":[B
    invoke-virtual {v15, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v19

    add-int v19, v19, v11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_45

    .line 298
    .end local v9    # "newDataByte":[B
    .end local v11    # "oldBufferFullItemSize":I
    .end local v13    # "realFilePosition":I
    .end local v14    # "realOldItemPosition":I
    :cond_1f7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "newDataKey":Ljava/lang/Integer;
    check-cast v10, Ljava/lang/Integer;

    .line 300
    .restart local v10    # "newDataKey":Ljava/lang/Integer;
    if-ne v12, v10, :cond_12f

    .line 301
    const/4 v4, 0x1

    goto/16 :goto_12f

    .line 333
    .restart local v11    # "oldBufferFullItemSize":I
    .restart local v13    # "realFilePosition":I
    .restart local v14    # "realOldItemPosition":I
    :cond_202
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "[FLACTagWriter] getVorbisCommentItem() NO CHANGE[key]old): ["

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getText(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 335
    new-array v0, v11, [B

    move-object/from16 v18, v0

    .line 336
    .local v18, "tempByte":[B
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 338
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_45
.end method

.method private printOldAndNewItemList(Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)V
    .registers 8
    .param p1, "oldFlacData"    # Lcom/pantech/audiotag/flac/data/FLACDataOld;
    .param p2, "userData"    # Lcom/pantech/audiotag/AudioFileTagData;

    .prologue
    .line 523
    if-eqz p1, :cond_4c

    .line 525
    invoke-virtual {p1}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    .line 536
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_c
    if-eqz p2, :cond_85

    .line 538
    invoke-virtual {p2}, Lcom/pantech/audiotag/AudioFileTagData;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_52

    .line 548
    .end local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_18
    return-void

    .line 527
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 528
    .local v2, "key":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FLACTagWriter] OLD data [type]value: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    goto :goto_6

    .line 533
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_4c
    const-string v3, "[FLACTagWriter] OLD data is Empty"

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    goto :goto_c

    .line 540
    .restart local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 541
    .restart local v2    # "key":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FLACTagWriter] NEW data [type]value: ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    goto :goto_12

    .line 546
    .end local v1    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_85
    const-string v3, "[FLACTagWriter] NEW data is Empty"

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private writeChangeVorbisDataBlock(Ljava/io/File;Ljava/nio/ByteBuffer;Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)V
    .registers 21
    .param p1, "file"    # Ljava/io/File;
    .param p2, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "oldFlacData"    # Lcom/pantech/audiotag/flac/data/FLACDataOld;
    .param p4, "newFlacData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    const-string v14, "[FLACTagWriter] write\'Change\'VorbisDataBlock()"

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getPositionFrontOfCommentCount()I

    move-result v13

    .line 198
    .local v13, "vorbisCommentCountStartPos":I
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataStartPosition()I

    move-result v11

    .line 199
    .local v11, "vorbisBlockStartPos":I
    add-int/lit8 v12, v11, -0x4

    .line 201
    .local v12, "vorbisCommentBlackHeaderPos":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/pantech/audiotag/flac/FLACTagWriter;->checkOldAndNewDataCommentCount(Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)I

    move-result v4

    .line 202
    .local v4, "commentCountGap":I
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->getCommentCount()I

    move-result v14

    add-int v8, v14, v4

    .line 203
    .local v8, "newCommentCount":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/pantech/audiotag/flac/FLACTagWriter;->checkOldAndNewDataGapSize(Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)I

    move-result v5

    .line 204
    .local v5, "gapSize":I
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataEndPosition()I

    move-result v14

    add-int v7, v14, v5

    .line 208
    .local v7, "newBufferSize":I
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 211
    .local v6, "newBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 212
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 215
    new-array v10, v12, [B

    .line 216
    .local v10, "tempByte":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 217
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 220
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Lcom/pantech/audiotag/flac/FLACTagWriter;->getBlockHeader(Ljava/nio/ByteBuffer;I)[B

    move-result-object v10

    .line 221
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    new-array v10, v13, [B

    .line 226
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 227
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 230
    invoke-static {v8}, Lcom/pantech/audiotag/common/ByteOperation;->getSizeLEInt32(I)[B

    move-result-object v10

    .line 231
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 235
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataSize()I

    move-result v14

    add-int/2addr v14, v5

    add-int/lit8 v15, v13, 0x4

    sub-int v9, v14, v15

    .line 236
    .local v9, "newVorbisDataSize":I
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/pantech/audiotag/flac/FLACTagWriter;->getVorbisCommentItem(Ljava/nio/ByteBuffer;ILcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)[B

    move-result-object v10

    .line 238
    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Lcom/pantech/audiotag/flac/FLACTagWriter;->checkRemaningBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v14

    if-eqz v14, :cond_9d

    .line 242
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    int-to-long v14, v14

    move-object/from16 v0, p1

    invoke-static {v0, v6, v14, v15}, Lcom/pantech/audiotag/common/util/FileUtil;->writeOnTempFile(Ljava/io/File;Ljava/nio/ByteBuffer;J)V

    .line 245
    return-void

    .line 244
    :cond_9d
    new-instance v14, Lcom/pantech/audiotag/exception/WriteException;

    const-string v15, "Remaning buffer isn\'t same.."

    invoke-direct {v14, v15}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private writeMakeNewVorbisDataBlock(Ljava/io/File;Ljava/nio/ByteBuffer;Lcom/pantech/audiotag/AudioFileTagData;)V
    .registers 24
    .param p1, "file"    # Ljava/io/File;
    .param p2, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "newFlacData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    const-string v17, "[FLACTagWriter] writeMake\'New\'VorbisDataBlock()"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 127
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getStreamInfoMetaDataBlockEndPosition()I

    move-result v11

    .line 128
    .local v11, "newBufferSize":I
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/audiotag/AudioFileTagData;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashMap;->size()I

    move-result v13

    .line 129
    .local v13, "newVorbisCount":I
    const/16 v16, 0x0

    .line 130
    .local v16, "vorbisTotalSize":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    .local v8, "itemByteArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual/range {p3 .. p3}, Lcom/pantech/audiotag/AudioFileTagData;->getKeyIterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_c2

    .line 140
    add-int/lit8 v11, v11, 0x4

    .line 141
    add-int/lit8 v11, v11, 0x4

    .line 142
    add-int/lit8 v11, v11, 0x4

    .line 143
    add-int/lit8 v11, v11, 0x4

    .line 144
    add-int v11, v11, v16

    .line 146
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 147
    .local v10, "newBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 148
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "[FLACTagWriter] writeMakeNewVorbisDataBlock() newBufferSize: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getStreamInfoMetaDataBlockEndPosition()I

    move-result v17

    move/from16 v0, v17

    new-array v15, v0, [B

    .line 154
    .local v15, "temp":[B
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v10, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 158
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getOtherDataBlockEnableCount()I

    move-result v17

    if-nez v17, :cond_e6

    const/16 v4, 0x80

    .line 159
    .local v4, "header_flag":I
    :goto_64
    const/4 v5, 0x4

    .line 160
    .local v5, "header_type":I
    add-int v17, v4, v5

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    add-int/lit8 v17, v11, -0x4

    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getStreamInfoMetaDataBlockEndPosition()I

    move-result v18

    sub-int v14, v17, v18

    .line 164
    .local v14, "onlyBlockSize":I
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-static {v14, v0}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromInt(II)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 168
    const/16 v17, 0x4

    invoke-static/range {v17 .. v17}, Lcom/pantech/audiotag/common/ByteOperation;->getSizeLEInt32(I)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 170
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 174
    invoke-static {v13}, Lcom/pantech/audiotag/common/ByteOperation;->getSizeLEInt32(I)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 176
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    :goto_ab
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_e9

    .line 182
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v10, v1, v2}, Lcom/pantech/audiotag/common/util/FileUtil;->writeOnTempFile(Ljava/io/File;Ljava/nio/ByteBuffer;J)V

    .line 183
    return-void

    .line 134
    .end local v4    # "header_flag":I
    .end local v5    # "header_type":I
    .end local v9    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    .end local v10    # "newBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "onlyBlockSize":I
    .end local v15    # "temp":[B
    :cond_c2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 135
    .local v12, "newDataKey":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pantech/audiotag/data/VorbisCommentData;->getCompleteVorbisCommentByte(ILjava/lang/String;)[B

    move-result-object v7

    .line 136
    .local v7, "itemByte":[B
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    array-length v0, v7

    move/from16 v17, v0

    add-int v16, v16, v17

    goto/16 :goto_1e

    .line 158
    .end local v7    # "itemByte":[B
    .end local v12    # "newDataKey":Ljava/lang/Integer;
    .restart local v10    # "newBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "temp":[B
    :cond_e6
    const/4 v4, 0x0

    goto/16 :goto_64

    .line 178
    .restart local v4    # "header_flag":I
    .restart local v5    # "header_type":I
    .restart local v9    # "j":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    .restart local v14    # "onlyBlockSize":I
    :cond_e9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_ab
.end method


# virtual methods
.method public doProcess()V
    .registers 8

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagWriter;->prepareProcess()V

    .line 53
    const/4 v4, 0x0

    .line 54
    .local v4, "oldBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mPath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "file":Ljava/io/File;
    :try_start_b
    invoke-static {v1}, Lcom/pantech/audiotag/common/util/GlobalUtil;->fileCheck(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 61
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getFlacStreamInfoBlockEnable()Z

    move-result v5

    if-eqz v5, :cond_80

    iget-object v5, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    if-eqz v5, :cond_80

    .line 63
    iget-object v5, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    iget-object v6, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    invoke-direct {p0, v5, v6}, Lcom/pantech/audiotag/flac/FLACTagWriter;->printOldAndNewItemList(Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)V

    .line 65
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getHasVorbisDataBlock()Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    if-eqz v5, :cond_55

    .line 67
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getVorbisDataEndPosition()I

    move-result v5

    int-to-long v2, v5

    .line 68
    .local v2, "flacVorbisEndPos":J
    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/audiotag/flac/FLACTagWriter;->getOldBuffer(Ljava/io/File;J)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 69
    iget-object v5, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    iget-object v6, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/pantech/audiotag/flac/FLACTagWriter;->writeChangeVorbisDataBlock(Ljava/io/File;Ljava/nio/ByteBuffer;Lcom/pantech/audiotag/flac/data/FLACDataOld;Lcom/pantech/audiotag/AudioFileTagData;)V

    .line 90
    :goto_3c
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/pantech/audiotag/flac/FLACTagWriter;->setCode(I)V

    .line 92
    const-string v5, "*****************************************************************"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 93
    const-string v5, "********************* FLAC Write Complete! **********************"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 94
    const-string v5, "*****************************************************************"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_50} :catch_64
    .catchall {:try_start_b .. :try_end_50} :catchall_8d

    .line 108
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagWriter;->endProcess()V

    .line 113
    .end local v2    # "flacVorbisEndPos":J
    :goto_54
    return-void

    .line 73
    :cond_55
    :try_start_55
    invoke-static {}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->getStreamInfoMetaDataBlockEndPosition()I

    move-result v5

    int-to-long v2, v5

    .line 74
    .restart local v2    # "flacVorbisEndPos":J
    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/audiotag/flac/FLACTagWriter;->getOldBuffer(Ljava/io/File;J)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 75
    iget-object v5, p0, Lcom/pantech/audiotag/flac/FLACTagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    invoke-direct {p0, v1, v4, v5}, Lcom/pantech/audiotag/flac/FLACTagWriter;->writeMakeNewVorbisDataBlock(Ljava/io/File;Ljava/nio/ByteBuffer;Lcom/pantech/audiotag/AudioFileTagData;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_63} :catch_64
    .catchall {:try_start_55 .. :try_end_63} :catchall_8d

    goto :goto_3c

    .line 96
    .end local v2    # "flacVorbisEndPos":J
    :catch_64
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :try_start_65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/pantech/audiotag/flac/FLACTagWriter;->setCode(I)V

    .line 102
    const-string v5, "[FLACTagWriter] *****************************************************************"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 103
    const-string v5, "[FLACTagWriter] ************************ FLAC Write Fail ************************"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 104
    const-string v5, "[FLACTagWriter] *****************************************************************"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_65 .. :try_end_7b} :catchall_8d

    .line 108
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagWriter;->endProcess()V

    goto :goto_54

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_80
    :try_start_80
    const-string v5, "There is no STREAMINFO Block. Write fail.."

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 81
    new-instance v5, Lcom/pantech/audiotag/exception/WriteException;

    const-string v6, "There is no STREAMINFO Block. Write fail.."

    invoke-direct {v5, v6}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8d} :catch_64
    .catchall {:try_start_80 .. :try_end_8d} :catchall_8d

    .line 107
    :catchall_8d
    move-exception v5

    .line 108
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagWriter;->endProcess()V

    .line 112
    throw v5

    .line 86
    :cond_93
    const/16 v5, -0x1770

    :try_start_95
    invoke-virtual {p0, v5}, Lcom/pantech/audiotag/flac/FLACTagWriter;->setCode(I)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_64
    .catchall {:try_start_95 .. :try_end_98} :catchall_8d

    .line 108
    const/4 v4, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/pantech/audiotag/flac/FLACTagWriter;->endProcess()V

    goto :goto_54
.end method
