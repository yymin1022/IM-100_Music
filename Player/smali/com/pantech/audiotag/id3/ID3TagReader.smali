.class public Lcom/pantech/audiotag/id3/ID3TagReader;
.super Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;
.source "ID3TagReader.java"


# static fields
.field private static final CODE_DO_NOT_SKIP:I = 0x30a

.field private static final CODE_NOT_WANT_FRAME:I = 0x309


# instance fields
.field private mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "getType"    # I
    .param p3, "editorListener"    # Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;-><init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    .line 44
    invoke-static {p2}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setGetType(I)V

    .line 45
    return-void
.end method

.method private addV1TextData(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "resultData"    # Ljava/lang/String;

    .prologue
    .line 452
    new-instance v0, Lcom/pantech/audiotag/data/Data;

    invoke-direct {v0}, Lcom/pantech/audiotag/data/Data;-><init>()V

    .line 453
    .local v0, "data":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/data/Data;->setPath(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p2}, Lcom/pantech/audiotag/data/Data;->setType(I)V

    .line 455
    invoke-virtual {v0, p3}, Lcom/pantech/audiotag/data/Data;->setText(Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/data/Data;->setNew(Z)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/data/Data;->setOld(Z)V

    .line 459
    iget-object v1, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {v1, v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->putTextV1(Lcom/pantech/audiotag/data/Data;)V

    .line 460
    return-void
.end method

.method private addV2TextData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;II)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "frameID"    # Ljava/lang/String;
    .param p3, "resultData"    # Ljava/lang/Object;
    .param p4, "currentFilePos"    # I
    .param p5, "frameSize"    # I

    .prologue
    .line 437
    new-instance v0, Lcom/pantech/audiotag/data/Data;

    invoke-direct {v0}, Lcom/pantech/audiotag/data/Data;-><init>()V

    .line 438
    .local v0, "data":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/data/Data;->setPath(Ljava/lang/String;)V

    .line 439
    invoke-static {p2}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->getTypeKeyOfFrame(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/data/Data;->setType(I)V

    .line 440
    check-cast p3, Ljava/lang/String;

    .end local p3    # "resultData":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Lcom/pantech/audiotag/data/Data;->setText(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, p4}, Lcom/pantech/audiotag/data/Data;->setPos(I)V

    .line 442
    invoke-virtual {v0, p5}, Lcom/pantech/audiotag/data/Data;->setFrameSize(I)V

    .line 443
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/data/Data;->setNew(Z)V

    .line 444
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/data/Data;->setOld(Z)V

    .line 446
    iget-object v1, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {v1, v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->putTextV2(Lcom/pantech/audiotag/data/Data;)V

    .line 447
    return-void
.end method

.method private findAudioStartPosition(ZI)J
    .registers 21
    .param p1, "isHeaderOK"    # Z
    .param p2, "tagDataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/audiotag/id3/ID3TagReader;->mPath:Ljava/lang/String;

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 473
    .local v7, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 475
    .local v6, "fc":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    .line 476
    .local v2, "audioStartPos":J
    const-wide/16 v10, 0x0

    .line 477
    .local v10, "startPos":J
    const/4 v8, 0x0

    .line 479
    .local v8, "isFind":Z
    if-eqz p1, :cond_85

    .line 480
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getHeaderSize()J

    move-result-wide v12

    move/from16 v0, p2

    int-to-long v14, v0

    add-long v10, v12, v14

    .line 486
    :goto_22
    const/16 v9, 0x1388

    :try_start_24
    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 487
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v10, v11}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 488
    move-wide v2, v10

    .line 491
    invoke-virtual {v6, v4, v10, v11}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 492
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 496
    :cond_32
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    const/16 v12, 0xc4

    if-gt v9, v12, :cond_88

    .line 498
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 499
    invoke-virtual {v6, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 500
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v12

    invoke-virtual {v6, v4, v12, v13}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 501
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 503
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    const/16 v12, 0xc4

    if-gt v9, v12, :cond_88

    .line 505
    const/16 v9, -0x1b58

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 506
    new-instance v9, Lcom/pantech/audiotag/exception/ReadException;

    const-string v12, "Can not find MP3 Audio"

    invoke-direct {v9, v12}, Lcom/pantech/audiotag/exception/ReadException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_61} :catch_61
    .catchall {:try_start_24 .. :try_end_61} :catchall_73

    .line 530
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    :catch_61
    move-exception v5

    .line 532
    .local v5, "e":Ljava/io/IOException;
    const/16 v9, -0x1b58

    :try_start_64
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 533
    new-instance v9, Lcom/pantech/audiotag/exception/ReadException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/pantech/audiotag/exception/ReadException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_73

    .line 536
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_73
    move-exception v9

    .line 537
    if-eqz v6, :cond_7f

    .line 539
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v12

    if-eqz v12, :cond_7f

    .line 541
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 545
    :cond_7f
    if-eqz v7, :cond_84

    .line 547
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 549
    :cond_84
    throw v9

    .line 482
    :cond_85
    const-wide/16 v10, 0x0

    goto :goto_22

    .line 510
    .restart local v4    # "buffer":Ljava/nio/ByteBuffer;
    :cond_88
    :try_start_88
    invoke-static {v4}, Lcom/pantech/audiotag/id3/util/MP3MPEGHeader;->isMPEGFrame(Ljava/nio/ByteBuffer;)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 512
    const/4 v8, 0x1

    .line 522
    :goto_8f
    move/from16 v0, p2

    int-to-long v12, v0

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getHeaderSize()J

    move-result-wide v14

    add-long/2addr v12, v14

    cmp-long v9, v2, v12

    if-gez v9, :cond_df

    .line 524
    const/16 v9, -0x1b58

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 526
    new-instance v9, Lcom/pantech/audiotag/exception/ReadException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Audio start position[ "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 527
    const-string v13, " ]is smaller than tag end position [ "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    int-to-long v14, v0

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getHeaderSize()J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 526
    invoke-direct {v9, v12}, Lcom/pantech/audiotag/exception/ReadException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 516
    :cond_d0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_d9} :catch_61
    .catchall {:try_start_88 .. :try_end_d9} :catchall_73

    .line 517
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 519
    if-eqz v8, :cond_32

    goto :goto_8f

    .line 537
    :cond_df
    if-eqz v6, :cond_ea

    .line 539
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_ea

    .line 541
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 545
    :cond_ea
    if-eqz v7, :cond_ef

    .line 547
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 551
    :cond_ef
    return-wide v2
.end method

.method private findFrame(Ljava/nio/ByteBuffer;JJJ)V
    .registers 28
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "readableFrameSize"    # J
    .param p4, "fileSize"    # J
    .param p6, "tagSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v11, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v3

    invoke-direct {v11, v2, v3}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;-><init>(II)V

    .line 267
    .local v11, "frame":Lcom/pantech/audiotag/id3/frame/ID3TagFrame;
    :cond_d
    :goto_d
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    int-to-long v8, v2

    .line 268
    .local v8, "availableSize":J
    sub-long v14, p2, v8

    .line 271
    .local v14, "readedFrameSize":J
    const-wide/16 v2, 0xb

    cmp-long v2, v8, v2

    if-lez v2, :cond_1e

    cmp-long v2, p2, v14

    if-gtz v2, :cond_9a

    .line 273
    :cond_1e
    const-string v2, "----------------------------------------"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 274
    const-string v2, "File parsing end because reach tag parsing end position"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File Total Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File Tag Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remain Tag Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total Readable Frame Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Total Readed   Frame Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 280
    const-string v2, "----------------------------------------"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 282
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 283
    const-string v2, "ID3 Parsing End.. Code: 0"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 379
    :goto_99
    return-void

    .line 287
    :cond_9a
    const/16 v13, 0x309

    .line 288
    .local v13, "resultCode":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 289
    .local v10, "currentFrameStartPos":I
    int-to-long v2, v10

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getHeaderSize()J

    move-result-wide v18

    add-long v2, v2, v18

    long-to-int v6, v2

    .line 291
    .local v6, "currentFilePos":I
    if-eqz v11, :cond_189

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->doReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_189

    .line 293
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    packed-switch v2, :pswitch_data_1d0

    .line 332
    :cond_b9
    :goto_b9
    const/16 v2, 0x30a

    if-eq v13, v2, :cond_d

    .line 336
    const/16 v2, 0x309

    if-ne v13, v2, :cond_138

    .line 338
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->skipPreviousFrame(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_d

    .line 296
    :pswitch_c8
    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->isLyricsFrame()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 298
    new-instance v12, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;

    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;

    move-result-object v2

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v3

    invoke-direct {v12, v2, v3}, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)V

    .line 299
    .local v12, "lyricsFrame":Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->doReadTag(Ljava/nio/ByteBuffer;)Z

    .line 301
    invoke-virtual {v12}, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->getResultCode()I

    move-result v13

    .line 302
    if-nez v13, :cond_b9

    .line 305
    const/4 v2, 0x0

    invoke-virtual {v12}, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->getResultData()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/audiotag/id3/ID3TagReader;->setResultData(ILjava/lang/Object;)V

    goto :goto_b9

    .line 311
    .end local v12    # "lyricsFrame":Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;
    :pswitch_f1
    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->isTextFrame()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 313
    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->getFrameID()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "frameID":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->getFrameLength()I

    move-result v7

    .line 316
    .local v7, "frameSize":I
    new-instance v16, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;

    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;

    move-result-object v2

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)V

    .line 317
    .local v16, "textFrame":Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->doReadTag(Ljava/nio/ByteBuffer;)Z

    .line 319
    invoke-virtual/range {v16 .. v16}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->getResultCode()I

    move-result v13

    .line 320
    if-nez v13, :cond_135

    .line 322
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/audiotag/id3/ID3TagReader;->mPath:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->getResultData()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/pantech/audiotag/id3/ID3TagReader;->addV2TextData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;II)V

    .line 324
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/audiotag/id3/ID3TagReader;->setResultData(ILjava/lang/Object;)V

    .line 327
    :cond_135
    const/16 v13, 0x30a

    goto :goto_b9

    .line 340
    .end local v4    # "frameID":Ljava/lang/String;
    .end local v7    # "frameSize":I
    .end local v16    # "textFrame":Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;
    :cond_138
    if-nez v13, :cond_15d

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->getFrameID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " OK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 343
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    goto/16 :goto_99

    .line 349
    :cond_15d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->getFrameID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " fail.. Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 352
    const/16 v13, 0x309

    .line 354
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->skipPreviousFrame(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_d

    .line 359
    :cond_189
    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->isPadding()Z

    move-result v2

    if-eqz v2, :cond_1b5

    .line 361
    int-to-long v2, v10

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setPaddingSize(J)V

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning: Frame reach padding. padding size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getPaddingSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 363
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    goto/16 :goto_99

    .line 365
    :cond_1b5
    invoke-virtual {v11}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->isValidFrameFlag()Z

    move-result v2

    if-nez v2, :cond_1c2

    .line 367
    const-string v2, "Warning: Frame flag is not ok. Continue parse..."

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 372
    :cond_1c2
    const-string v2, "Error: Frame skip or available"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 373
    const/16 v2, -0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    goto/16 :goto_99

    .line 293
    :pswitch_data_1d0
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_f1
    .end packed-switch
.end method

.method private readV1Tag(Ljava/lang/String;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v7, "readV1XTag"

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 392
    new-instance v0, Lcom/pantech/audiotag/AudioFileStream;

    invoke-direct {v0}, Lcom/pantech/audiotag/AudioFileStream;-><init>()V

    .line 393
    .local v0, "afStreamV1":Lcom/pantech/audiotag/AudioFileStream;
    const/4 v1, 0x0

    .line 397
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :try_start_b
    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/AudioFileStream;->open(Ljava/lang/String;)Z

    .line 398
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->getFileSize()J

    move-result-wide v8

    const-wide/16 v10, 0x7d

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/pantech/audiotag/AudioFileStream;->skip(J)Z

    .line 400
    const/16 v7, 0x7d

    invoke-virtual {v0, v7}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v2

    .line 402
    .local v2, "dataBytes":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 403
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 405
    new-instance v5, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;

    new-instance v7, Lcom/pantech/audiotag/frame/AudioTagFrameData;

    invoke-direct {v7}, Lcom/pantech/audiotag/frame/AudioTagFrameData;-><init>()V

    const/4 v8, 0x6

    invoke-direct {v5, v7, v8}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)V

    .line 407
    .local v5, "text":Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;
    invoke-virtual {v5, v1}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->doReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v4

    .line 409
    .local v4, "isOK":Z
    if-eqz v4, :cond_96

    .line 411
    invoke-virtual {v5}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->getResultData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 412
    .local v6, "v1Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v8, v7}, Lcom/pantech/audiotag/id3/ID3TagReader;->addV1TextData(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    const/4 v8, 0x2

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v8, v7}, Lcom/pantech/audiotag/id3/ID3TagReader;->addV1TextData(Ljava/lang/String;ILjava/lang/String;)V

    .line 414
    const/4 v8, 0x3

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v8, v7}, Lcom/pantech/audiotag/id3/ID3TagReader;->addV1TextData(Ljava/lang/String;ILjava/lang/String;)V

    .line 415
    const/4 v8, 0x4

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v8, v7}, Lcom/pantech/audiotag/id3/ID3TagReader;->addV1TextData(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    const/4 v8, 0x5

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v8, v7}, Lcom/pantech/audiotag/id3/ID3TagReader;->addV1TextData(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    const/4 v8, 0x7

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, p1, v8, v7}, Lcom/pantech/audiotag/id3/ID3TagReader;->addV1TextData(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_96} :catch_9f
    .catchall {:try_start_b .. :try_end_96} :catchall_ac

    .line 426
    .end local v6    # "v1Map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_96
    if-eqz v0, :cond_9b

    .line 427
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 429
    :cond_9b
    if-eqz v1, :cond_9e

    .line 430
    const/4 v1, 0x0

    .line 432
    .end local v2    # "dataBytes":[B
    .end local v4    # "isOK":Z
    .end local v5    # "text":Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;
    :cond_9e
    :goto_9e
    return-void

    .line 420
    :catch_9f
    move-exception v3

    .line 422
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a0
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_ac

    .line 426
    if-eqz v0, :cond_a8

    .line 427
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 429
    :cond_a8
    if-eqz v1, :cond_9e

    .line 430
    const/4 v1, 0x0

    goto :goto_9e

    .line 425
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_ac
    move-exception v7

    .line 426
    if-eqz v0, :cond_b2

    .line 427
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 429
    :cond_b2
    if-eqz v1, :cond_b5

    .line 430
    const/4 v1, 0x0

    .line 431
    :cond_b5
    throw v7
.end method

.method private readV2XTag(Lcom/pantech/audiotag/AudioFileStream;Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;)V
    .registers 23
    .param p1, "ifs"    # Lcom/pantech/audiotag/AudioFileStream;
    .param p2, "header"    # Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;

    .prologue
    .line 168
    const-string v2, "readV2XTag"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 170
    const/4 v3, 0x0

    .line 174
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/audiotag/AudioFileStream;->getFileSize()J

    move-result-wide v6

    .line 175
    .local v6, "fileSize":J
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->getTagDataSize()I

    move-result v2

    int-to-long v8, v2

    .line 176
    .local v8, "tagSize":J
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->getExtendedHeaderSize()I

    move-result v2

    int-to-long v12, v2

    .line 177
    .local v12, "extendedHeaderSize":J
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->getFooterSize()I

    move-result v2

    int-to-long v14, v2

    .line 182
    .local v14, "footerSize":J
    sub-long v4, v8, v12

    .line 185
    .local v4, "readableFrameSize":J
    long-to-int v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v16

    .line 188
    .local v16, "tempData":[B
    if-eqz v16, :cond_49

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v2

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v2, v0, :cond_49

    .line 190
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v2}, Lcom/pantech/audiotag/id3/util/ITunesFileUtil;->checkiTunesHackFileTotalFrameSizeV24([BJZ)Z

    move-result v11

    .line 192
    .local v11, "isOK":Z
    if-nez v11, :cond_49

    .line 194
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5, v2}, Lcom/pantech/audiotag/id3/util/ITunesFileUtil;->checkiTunesHackFileTotalFrameSizeV24([BJZ)Z

    move-result v11

    .line 196
    if-eqz v11, :cond_7f

    .line 198
    const-string v2, "Warining: This file is a iTunes Hack file"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 199
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setiTunesHackFile(Z)V

    .line 212
    .end local v11    # "isOK":Z
    :cond_49
    if-eqz v16, :cond_8f

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getUnsynchronization()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v2

    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v2, v0, :cond_8f

    .line 214
    invoke-static/range {v16 .. v16}, Lcom/pantech/audiotag/id3/util/Unsynchronization;->removeUnsynchronization([B)[B

    move-result-object v17

    .line 215
    .local v17, "v2FrameData":[B
    move-object/from16 v0, v17

    array-length v2, v0

    int-to-long v4, v2

    .line 223
    :goto_63
    if-eqz v17, :cond_92

    move-object/from16 v0, v17

    array-length v2, v0

    int-to-long v0, v2

    move-wide/from16 v18, v0

    cmp-long v2, v18, v4

    if-eqz v2, :cond_92

    .line 225
    const-string v2, "V2: Frame data is not equal readable frame size"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 226
    const/16 v2, -0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 254
    if-eqz v3, :cond_7e

    .line 255
    const/4 v3, 0x0

    .line 257
    .end local v4    # "readableFrameSize":J
    .end local v6    # "fileSize":J
    .end local v8    # "tagSize":J
    .end local v12    # "extendedHeaderSize":J
    .end local v14    # "footerSize":J
    .end local v16    # "tempData":[B
    .end local v17    # "v2FrameData":[B
    :cond_7e
    :goto_7e
    return-void

    .line 203
    .restart local v4    # "readableFrameSize":J
    .restart local v6    # "fileSize":J
    .restart local v8    # "tagSize":J
    .restart local v11    # "isOK":Z
    .restart local v12    # "extendedHeaderSize":J
    .restart local v14    # "footerSize":J
    .restart local v16    # "tempData":[B
    :cond_7f
    const-string v2, "Error: Check V2.4 All frame and frame\'s size."

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 204
    const/16 v2, -0x2328

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 254
    if-eqz v3, :cond_7e

    .line 255
    const/4 v3, 0x0

    goto :goto_7e

    .line 219
    .end local v11    # "isOK":Z
    :cond_8f
    move-object/from16 v17, v16

    .restart local v17    # "v2FrameData":[B
    goto :goto_63

    .line 229
    :cond_92
    if-nez v17, :cond_b5

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v18, "V2: Frame data is not valid v2FrameData: "

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 232
    const/16 v2, -0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V

    .line 254
    if-eqz v3, :cond_7e

    .line 255
    const/4 v3, 0x0

    goto :goto_7e

    .line 236
    :cond_b5
    invoke-static/range {v17 .. v17}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v18, "fileSize: "

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, " tagSize: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, " extendedHeaderSize: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v18, " footerSize: "

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 241
    invoke-static {v8, v9}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setTagDataSize(J)V

    .line 242
    invoke-static {v4, v5}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setFrameSize(J)V

    move-object/from16 v2, p0

    .line 245
    invoke-direct/range {v2 .. v9}, Lcom/pantech/audiotag/id3/ID3TagReader;->findFrame(Ljava/nio/ByteBuffer;JJJ)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_fc} :catch_101
    .catchall {:try_start_6 .. :try_end_fc} :catchall_111

    .line 254
    if-eqz v3, :cond_7e

    .line 255
    const/4 v3, 0x0

    goto/16 :goto_7e

    .line 247
    .end local v4    # "readableFrameSize":J
    .end local v6    # "fileSize":J
    .end local v8    # "tagSize":J
    .end local v12    # "extendedHeaderSize":J
    .end local v14    # "footerSize":J
    .end local v16    # "tempData":[B
    .end local v17    # "v2FrameData":[B
    :catch_101
    move-exception v10

    .line 249
    .local v10, "e":Ljava/lang/Exception;
    :try_start_102
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    const/16 v2, -0x64

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V
    :try_end_10c
    .catchall {:try_start_102 .. :try_end_10c} :catchall_111

    .line 254
    if-eqz v3, :cond_7e

    .line 255
    const/4 v3, 0x0

    goto/16 :goto_7e

    .line 253
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_111
    move-exception v2

    .line 254
    if-eqz v3, :cond_115

    .line 255
    const/4 v3, 0x0

    .line 256
    :cond_115
    throw v2
.end method


# virtual methods
.method public doProcess()V
    .registers 14

    .prologue
    const/4 v12, 0x2

    .line 62
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->prepareProcess()V

    .line 64
    const/4 v0, 0x0

    .line 68
    .local v0, "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :try_start_5
    new-instance v1, Lcom/pantech/audiotag/AudioFileStream;

    invoke-direct {v1}, Lcom/pantech/audiotag/AudioFileStream;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_127
    .catchall {:try_start_5 .. :try_end_a} :catchall_125

    .line 71
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .local v1, "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :try_start_a
    iget-object v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mPath:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/pantech/audiotag/common/util/GlobalUtil;->openFile(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v10

    if-nez v10, :cond_35

    .line 73
    const/16 v10, -0x1770

    invoke-virtual {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_d4
    .catchall {:try_start_a .. :try_end_17} :catchall_106

    .line 142
    if-eqz v1, :cond_1c

    .line 143
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 146
    :cond_1c
    iget v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    if-ne v10, v12, :cond_30

    .line 149
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getWriteType()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->setWriteType(I)V

    .line 152
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getCode()I

    move-result v10

    iget-object v11, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {p0, v10, v11}, Lcom/pantech/audiotag/id3/ID3TagReader;->setResultData(ILjava/lang/Object;)V

    .line 156
    :cond_30
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->endProcess()V

    move-object v0, v1

    .line 158
    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :goto_34
    return-void

    .line 79
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->mark()Z

    .line 80
    new-instance v5, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV1;

    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->getFileSize()J

    move-result-wide v10

    invoke-direct {v5, v10, v11}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV1;-><init>(J)V

    .line 81
    .local v5, "header_v1":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    invoke-virtual {v5, v1}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v7

    .line 82
    .local v7, "isV1_OK":Z
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->reset()Z

    .line 85
    new-instance v6, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;

    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->getFileSize()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV2;-><init>(J)V

    .line 86
    .local v6, "header_v2":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    invoke-virtual {v6, v1}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v8

    .line 88
    .local v8, "isV2_OK":Z
    or-int v10, v7, v8

    if-eqz v10, :cond_c6

    .line 90
    if-eqz v7, :cond_68

    .line 92
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setV1TagAvailable(Z)V

    .line 95
    iget v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    if-ne v10, v12, :cond_68

    .line 96
    iget-object v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mPath:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->readV1Tag(Ljava/lang/String;)V

    .line 99
    :cond_68
    if-eqz v8, :cond_86

    .line 101
    const/4 v10, 0x1

    invoke-static {v10}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setV2TagAvailable(Z)V

    .line 102
    invoke-virtual {v6}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->getMagerVersion()I

    move-result v10

    invoke-static {v10}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setMP3Version(I)V

    .line 103
    invoke-virtual {v6}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->isUnsynchronization()Z

    move-result v10

    invoke-static {v10}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setUnsynchronization(Z)V

    .line 104
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->getCurrentReadPosition()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setHeaderSize(J)V

    .line 107
    invoke-direct {p0, v1, v6}, Lcom/pantech/audiotag/id3/ID3TagReader;->readV2XTag(Lcom/pantech/audiotag/AudioFileStream;Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;)V

    .line 124
    :cond_86
    :goto_86
    iget v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    if-ne v10, v12, :cond_a7

    .line 126
    invoke-virtual {v6}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;->getTagDataSize()I

    move-result v9

    .line 128
    .local v9, "tagDataSize":I
    invoke-direct {p0, v8, v9}, Lcom/pantech/audiotag/id3/ID3TagReader;->findAudioStartPosition(ZI)J

    move-result-wide v2

    .line 129
    .local v2, "audioStartPos":J
    invoke-static {v2, v3}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setAudioStartPos(J)V

    .line 131
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Audio start position: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a7} :catch_d4
    .catchall {:try_start_35 .. :try_end_a7} :catchall_106

    .line 142
    .end local v2    # "audioStartPos":J
    .end local v9    # "tagDataSize":I
    :cond_a7
    if-eqz v1, :cond_ac

    .line 143
    invoke-virtual {v1}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 146
    :cond_ac
    iget v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    if-ne v10, v12, :cond_c0

    .line 149
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getWriteType()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->setWriteType(I)V

    .line 152
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getCode()I

    move-result v10

    iget-object v11, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {p0, v10, v11}, Lcom/pantech/audiotag/id3/ID3TagReader;->setResultData(ILjava/lang/Object;)V

    .line 156
    :cond_c0
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->endProcess()V

    move-object v0, v1

    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    goto/16 :goto_34

    .line 112
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :cond_c6
    :try_start_c6
    const-string v10, "Any tag not available."

    invoke-static {v10}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 114
    iget v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    if-ne v10, v12, :cond_100

    .line 116
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d3} :catch_d4
    .catchall {:try_start_c6 .. :try_end_d3} :catchall_106

    goto :goto_86

    .line 134
    .end local v5    # "header_v1":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    .end local v6    # "header_v2":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    .end local v7    # "isV1_OK":Z
    .end local v8    # "isV2_OK":Z
    :catch_d4
    move-exception v4

    move-object v0, v1

    .line 136
    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .local v4, "e":Ljava/lang/Exception;
    :goto_d6
    :try_start_d6
    const-string v10, "ID3 Parsing error:"

    invoke-static {v10}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V
    :try_end_e2
    .catchall {:try_start_d6 .. :try_end_e2} :catchall_125

    .line 142
    if-eqz v0, :cond_e7

    .line 143
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 146
    :cond_e7
    iget v10, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    if-ne v10, v12, :cond_fb

    .line 149
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getWriteType()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->setWriteType(I)V

    .line 152
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getCode()I

    move-result v10

    iget-object v11, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {p0, v10, v11}, Lcom/pantech/audiotag/id3/ID3TagReader;->setResultData(ILjava/lang/Object;)V

    .line 156
    :cond_fb
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->endProcess()V

    goto/16 :goto_34

    .line 120
    .end local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v5    # "header_v1":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    .restart local v6    # "header_v2":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    .restart local v7    # "isV1_OK":Z
    .restart local v8    # "isV2_OK":Z
    :cond_100
    const/16 v10, -0xa

    :try_start_102
    invoke-virtual {p0, v10}, Lcom/pantech/audiotag/id3/ID3TagReader;->setCode(I)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_d4
    .catchall {:try_start_102 .. :try_end_105} :catchall_106

    goto :goto_86

    .line 141
    .end local v5    # "header_v1":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    .end local v6    # "header_v2":Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
    .end local v7    # "isV1_OK":Z
    .end local v8    # "isV2_OK":Z
    :catchall_106
    move-exception v10

    move-object v0, v1

    .line 142
    .end local v1    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    .restart local v0    # "afStream":Lcom/pantech/audiotag/AudioFileStream;
    :goto_108
    if-eqz v0, :cond_10d

    .line 143
    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFileStream;->close()V

    .line 146
    :cond_10d
    iget v11, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mGetType:I

    if-ne v11, v12, :cond_121

    .line 149
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getWriteType()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/pantech/audiotag/id3/ID3TagReader;->setWriteType(I)V

    .line 152
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getCode()I

    move-result v11

    iget-object v12, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {p0, v11, v12}, Lcom/pantech/audiotag/id3/ID3TagReader;->setResultData(ILjava/lang/Object;)V

    .line 156
    :cond_121
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->endProcess()V

    .line 157
    throw v10

    .line 141
    :catchall_125
    move-exception v10

    goto :goto_108

    .line 134
    :catch_127
    move-exception v4

    goto :goto_d6
.end method

.method public getWriteType()I
    .registers 7

    .prologue
    .line 562
    const/4 v1, -0x1

    .line 563
    .local v1, "resultCode":I
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagReader;->getCode()I

    move-result v0

    .line 565
    .local v0, "readResultCode":I
    sparse-switch v0, :sswitch_data_5e

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WRITE ERROR >> Can not Write read code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 613
    const/4 v1, -0x1

    .line 617
    :goto_1b
    return v1

    .line 568
    :sswitch_1c
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getV2TagAvailable()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 570
    const-string v2, "WRITE Warning >> CODE_ERROR_READ_FRAME. V2 is exist. Change tag"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 571
    const/4 v1, 0x1

    .line 572
    goto :goto_1b

    .line 575
    :cond_29
    const-string v2, "WRITE Warning >> CODE_ERROR_READ_FRAME. V2 is NOT exist. Insert new tag"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 576
    const/16 v1, 0x10

    .line 578
    goto :goto_1b

    .line 581
    :sswitch_31
    const-string v2, "WRITE ERROR >> V2 Frame has a not available flag"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 582
    const/4 v1, -0x1

    .line 583
    goto :goto_1b

    .line 586
    :sswitch_38
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getV2TagAvailable()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 589
    const-string v2, "WRITE Warning >> Not known audio position & V2 is exist. Change tag"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getHeaderSize()J

    move-result-wide v2

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getTagDataSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setAudioStartPos(J)V

    .line 591
    const/4 v1, 0x1

    .line 592
    goto :goto_1b

    .line 596
    :cond_51
    const-string v2, "WRITE Warning >> Not known audio position & V2 is NOT exist. Insert new tag"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 597
    const/16 v1, 0x10

    .line 599
    goto :goto_1b

    .line 603
    :sswitch_59
    const/4 v1, 0x1

    .line 604
    goto :goto_1b

    .line 608
    :sswitch_5b
    const/16 v1, 0x10

    .line 609
    goto :goto_1b

    .line 565
    :sswitch_data_5e
    .sparse-switch
        -0x2328 -> :sswitch_5b
        -0x1f40 -> :sswitch_31
        -0x1b58 -> :sswitch_38
        -0xc8 -> :sswitch_59
        -0x64 -> :sswitch_1c
        -0xa -> :sswitch_5b
        0x0 -> :sswitch_59
    .end sparse-switch
.end method

.method protected prepareProcess()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->prepareProcess()V

    .line 53
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->resetValues()V

    .line 55
    new-instance v0, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-direct {v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/id3/ID3TagReader;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    .line 56
    return-void
.end method
