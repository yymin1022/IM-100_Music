.class public Lcom/pantech/audiotag/id3/ID3TagWriter;
.super Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;
.source "ID3TagWriter.java"


# instance fields
.field private mID3TagTextNewV1:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;

.field private mID3TagTextNewV2:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

.field private mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

.field private mUserData:Lcom/pantech/audiotag/AudioFileTagData;

.field private mWriteType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Object;Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/editor/IAudioFileEditorListener;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "getType"    # I
    .param p3, "writeType"    # I
    .param p4, "readedData"    # Ljava/lang/Object;
    .param p5, "userData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .param p6, "editorListener"    # Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p6}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;-><init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    .line 130
    check-cast p4, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    .end local p4    # "readedData":Ljava/lang/Object;
    iput-object p4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    .line 131
    iput-object p5, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    .line 132
    iput p3, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mWriteType:I

    .line 133
    invoke-static {p2}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setGetType(I)V

    .line 134
    return-void
.end method

.method private addNewFrameData(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "newBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 603
    iget-object v3, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV2:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getV2TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 605
    .local v2, "newV2DetailedItemMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    .line 615
    return-void

    .line 607
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/audiotag/data/Data;

    .line 609
    .local v1, "item":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->isWrite()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->isNew()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addNewFrameData >> "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 612
    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_12
.end method

.method private addOtherData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJ)V
    .registers 16
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bodyBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "endTagSize"    # J
    .param p5, "originalPadding"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 744
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v3, v6

    int-to-long v0, v3

    .line 745
    .local v0, "newBufferPossibleAdd":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v6, p5

    sub-long v4, p3, v6

    .line 747
    .local v4, "otherDataRemain":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addOtherData() original padding       : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addOtherData() end tag size\t          : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addOtherData() otherData remain       : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "addOtherData() newBuffer possible add : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 752
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_69

    .line 754
    new-instance v3, Lcom/pantech/audiotag/exception/WriteException;

    const-string v6, "\'oldBuffer remain size\' is under 0"

    invoke-direct {v3, v6}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 757
    :cond_69
    long-to-int v3, v4

    new-array v2, v3, [B

    .line 758
    .local v2, "otherData":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 759
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 760
    return-void
.end method

.method private addPaddingAndCheckBuffer(Ljava/nio/ByteBuffer;J)V
    .registers 8
    .param p1, "bodyBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "makePaddingSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 520
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v0, v1

    .line 521
    .local v0, "byteBufferSize":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPadding bodyBuffer.array().length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPadding bodyBuffer.position() START: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPadding bodyBuffer possible add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPadding makePaddingSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 526
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_63

    .line 528
    long-to-int v1, p2

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 531
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addPadding bodyBuffer.position() END: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eq v1, v2, :cond_8c

    .line 536
    new-instance v1, Lcom/pantech/audiotag/exception/WriteException;

    const-string v2, "addPadding() bodyBuffer no reach the end position"

    invoke-direct {v1, v2}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_8c
    return-void
.end method

.method private changeFrameData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .registers 19
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "bodyBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 625
    invoke-direct/range {p0 .. p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getExtraPosition()I

    move-result v1

    .line 626
    .local v1, "extraPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV2:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    invoke-virtual {v14}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getV2TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    move-result-object v14

    invoke-virtual {v14}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v7

    .line 627
    .local v7, "newV2DetailedItemMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {v14}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->getV2TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    move-result-object v14

    invoke-virtual {v14}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v12

    .line 629
    .local v12, "oldV2DetailedItemMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2b

    .line 674
    return-void

    .line 631
    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/audiotag/data/Data;

    .line 633
    .local v9, "old":Lcom/pantech/audiotag/data/Data;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 634
    .local v10, "oldBufferPos":I
    invoke-virtual {v9}, Lcom/pantech/audiotag/data/Data;->getPos()I

    move-result v6

    .line 635
    .local v6, "mustReadposition":I
    sub-int v11, v6, v10

    .line 636
    .local v11, "oldBufferReadSize":I
    const/4 v4, 0x0

    .line 637
    .local v4, "isWrite":Z
    const/4 v13, 0x0

    .line 638
    .local v13, "writeByte":[B
    const-string v14, "-----------------------------------------------------"

    invoke-static {v14}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 639
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "START newBuf position: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " oldBuf position: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 640
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "oldBuffer will readSize: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v9}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/audiotag/data/Data;

    .line 644
    .local v5, "item":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v5}, Lcom/pantech/audiotag/data/Data;->isWrite()Z

    move-result v14

    if-nez v14, :cond_114

    .line 646
    invoke-virtual {v9}, Lcom/pantech/audiotag/data/Data;->getFrameSize()I

    move-result v14

    add-int/2addr v14, v1

    add-int/2addr v11, v14

    .line 654
    :goto_92
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "oldBuffer calculated readSize: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 655
    new-array v2, v11, [B

    .line 656
    .local v2, "gapByte":[B
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 657
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 659
    if-eqz v4, :cond_11b

    if-eqz v13, :cond_11b

    .line 661
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "OVER WRITE: ["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v15

    invoke-static {v15}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] write size: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 664
    invoke-virtual {v9}, Lcom/pantech/audiotag/data/Data;->getPos()I

    move-result v14

    invoke-virtual {v9}, Lcom/pantech/audiotag/data/Data;->getFrameSize()I

    move-result v15

    add-int/2addr v15, v1

    add-int v8, v14, v15

    .line 665
    .local v8, "nextOldBufferPos":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 672
    .end local v8    # "nextOldBufferPos":I
    :goto_ee
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "END newBuf position: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " oldBuf position: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 650
    .end local v2    # "gapByte":[B
    :cond_114
    invoke-virtual {v5}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v13

    .line 651
    const/4 v4, 0x1

    goto/16 :goto_92

    .line 669
    .restart local v2    # "gapByte":[B
    :cond_11b
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "NOT WRITE: ["

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v15

    invoke-static {v15}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    goto :goto_ee
.end method

.method private getExtraPosition()I
    .registers 3

    .prologue
    const/16 v0, 0xa

    .line 835
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v1

    packed-switch v1, :pswitch_data_c

    .line 845
    :goto_9
    :pswitch_9
    return v0

    .line 838
    :pswitch_a
    const/4 v0, 0x6

    goto :goto_9

    .line 835
    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;
    .registers 7
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 856
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_e

    move-result-object v1

    .line 866
    .local v1, "fileLock":Ljava/nio/channels/FileLock;
    if-nez v1, :cond_10

    .line 868
    new-instance v2, Lcom/pantech/audiotag/exception/ReadException;

    const-string v3, "Cannot make changes to file because it is being used by another application"

    invoke-direct {v2, v3}, Lcom/pantech/audiotag/exception/ReadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 860
    .end local v1    # "fileLock":Ljava/nio/channels/FileLock;
    :catch_e
    move-exception v0

    .line 862
    .local v0, "exception":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 871
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_10
    return-object v1
.end method

.method private getHeaderData(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;
    .registers 16
    .param p1, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "gapSize"    # J
    .param p4, "headerSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 552
    long-to-int v6, p4

    new-array v3, v6, [B

    .line 553
    .local v3, "oldHeaderByte":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 555
    const-string v6, "putHeaderData OLD:"

    invoke-static {v6, v3}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX(Ljava/lang/String;[B)V

    .line 558
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getTagDataSize()J

    move-result-wide v6

    add-long v4, v6, p2

    .line 559
    .local v4, "newHeaderSize":J
    long-to-int v6, v4

    invoke-static {v6}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->convertFromIntegerToByte(I)[B

    move-result-object v2

    .line 562
    .local v2, "newHeaderByte":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    const/4 v6, 0x4

    if-lt v1, v6, :cond_44

    .line 567
    const-string v6, "putHeaderData NEW:"

    invoke-static {v6, v3}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX(Ljava/lang/String;[B)V

    .line 568
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getHeaderData() OLD/NEW: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getTagDataSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 571
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 573
    .local v0, "headerBuffer":Ljava/nio/ByteBuffer;
    return-object v0

    .line 564
    .end local v0    # "headerBuffer":Ljava/nio/ByteBuffer;
    :cond_44
    add-int/lit8 v6, v1, 0x6

    aget-byte v7, v2, v1

    aput-byte v7, v3, v6

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method private getOldBuffer(Ljava/io/File;J)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "endTagSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 785
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 787
    .local v1, "fis":Ljava/io/FileInputStream;
    long-to-int v3, p2

    new-array v2, v3, [B

    .line 788
    .local v2, "oldByte":[B
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 790
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 792
    .local v0, "fileBuffer":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_14

    .line 793
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 795
    :cond_14
    return-object v0
.end method

.method private getTagGapSize()J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    iget-object v1, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    iget-object v2, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-direct {v0, v1, v2}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;-><init>(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextOld;)V

    iput-object v0, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV2:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    .line 772
    iget-object v0, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV2:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getCalculateGapSize()J

    move-result-wide v0

    return-wide v0
.end method

.method private makeHeaderData(Ljava/nio/ByteBuffer;J)V
    .registers 8
    .param p1, "newBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "newFrameSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 585
    const/4 v3, 0x4

    new-array v1, v3, [B

    fill-array-data v1, :array_18

    .line 586
    .local v1, "tagNameAndVersionByte":[B
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 587
    .local v0, "flagByte":[B
    long-to-int v3, p2

    invoke-static {v3}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->convertFromIntegerToByte(I)[B

    move-result-object v2

    .line 589
    .local v2, "tagSizeByte":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 590
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 591
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 592
    return-void

    .line 585
    :array_18
    .array-data 1
        0x49t
        0x44t
        0x33t
        0x3t
    .end array-data
.end method

.method private printCondition()V
    .registers 9

    .prologue
    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> Version V2: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 805
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> Version V1: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3V1Version()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 806
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> V2 Tag data Size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getTagDataSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 807
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> V2 Frame Size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getFrameSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> V2 Header size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getHeaderSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> Audio start position: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getAudioStartPos()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 810
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> UnSynchronization: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getUnsynchronization()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 811
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> Padding size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getPaddingSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 813
    iget-object v4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {v4}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->getV2TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 815
    .local v2, "oldV2TextMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :goto_c2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_dd

    .line 822
    iget-object v4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    invoke-virtual {v4}, Lcom/pantech/audiotag/AudioFileTagData;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 824
    .local v3, "userTextMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_11a

    .line 830
    return-void

    .line 817
    .end local v3    # "userTextMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    :cond_dd
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/audiotag/data/Data;

    .line 819
    .local v0, "data":Lcom/pantech/audiotag/data/Data;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> V2 OLD DATA: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/pantech/audiotag/data/Data;->getFrameSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    goto :goto_c2

    .line 826
    .end local v0    # "data":Lcom/pantech/audiotag/data/Data;
    .restart local v3    # "userTextMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    :cond_11a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/audiotag/data/Data;

    .line 828
    .restart local v0    # "data":Lcom/pantech/audiotag/data/Data;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Condition >> User DATA: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v5

    invoke-static {v5}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    goto :goto_d6
.end method

.method private writeOnFile(Ljava/nio/ByteBuffer;)V
    .registers 9
    .param p1, "newBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 684
    if-nez p1, :cond_a

    .line 685
    new-instance v4, Lcom/pantech/audiotag/exception/WriteException;

    const-string v5, "writeOnFile() newBuffer is not available"

    invoke-direct {v4, v5}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 687
    :cond_a
    const/4 v1, 0x0

    .line 688
    .local v1, "fcOut":Ljava/nio/channels/FileChannel;
    const/4 v3, 0x0

    .line 689
    .local v3, "fileLock":Ljava/nio/channels/FileLock;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_7c

    :try_start_15
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 695
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 697
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rws"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 698
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 700
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 701
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_68
    .catchall {:try_start_15 .. :try_end_40} :catchall_6a

    .line 719
    if-eqz v1, :cond_50

    .line 721
    if-eqz v3, :cond_47

    .line 723
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 726
    :cond_47
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 728
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 732
    :cond_50
    return-void

    .line 705
    :cond_51
    :try_start_51
    new-instance v4, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "writeOnFile() File can\'t access >> Read or Write. path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_68} :catch_68
    .catchall {:try_start_51 .. :try_end_68} :catchall_6a

    .line 713
    :catch_68
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    :try_start_69
    throw v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 718
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6a
    move-exception v4

    .line 719
    if-eqz v1, :cond_7b

    .line 721
    if-eqz v3, :cond_72

    .line 723
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 726
    :cond_72
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 728
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 731
    :cond_7b
    throw v4

    .line 710
    :cond_7c
    :try_start_7c
    new-instance v4, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "writeOnFile() File isn\'t exist. path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_93} :catch_68
    .catchall {:try_start_7c .. :try_end_93} :catchall_6a
.end method

.method private writeV1NewWrite(Ljava/io/File;)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    if-nez v4, :cond_c

    .line 455
    new-instance v4, Lcom/pantech/audiotag/exception/WriteException;

    const-string v5, "Old V1 tag data is null"

    invoke-direct {v4, v5}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 457
    :cond_c
    invoke-static {p1}, Lcom/pantech/audiotag/common/util/FileUtil;->isFileAvailable(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 508
    :cond_12
    :goto_12
    return-void

    .line 460
    :cond_13
    const/4 v2, 0x0

    .line 461
    .local v2, "fcOut":Ljava/nio/channels/FileChannel;
    const/4 v3, 0x0

    .line 465
    .local v3, "fileLock":Ljava/nio/channels/FileLock;
    :try_start_15
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rws"

    invoke-direct {v4, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 466
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getFileLockForWriting(Ljava/nio/channels/FileChannel;Ljava/lang/String;)Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 469
    new-instance v4, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;

    iget-object v5, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    iget-object v6, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-direct {v4, v5, v6}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;-><init>(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextOld;)V

    iput-object v4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV1:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;

    .line 470
    iget-object v4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV1:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;

    invoke-virtual {v4}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getV1FullTagByte()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 471
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 474
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getV1TagAvailable()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 476
    const-string v4, "WRITE: V1 tag mode: [CHANGE OVERWRITE]"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x80

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 486
    :goto_55
    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_58} :catch_76
    .catchall {:try_start_15 .. :try_end_58} :catchall_78

    .line 495
    if-eqz v2, :cond_12

    .line 497
    if-eqz v3, :cond_5f

    .line 499
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 502
    :cond_5f
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 504
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_12

    .line 481
    :cond_69
    :try_start_69
    const-string v4, "WRITE: V1 tag mode: [INSERT END OF FILE]"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_75} :catch_76
    .catchall {:try_start_69 .. :try_end_75} :catchall_78

    goto :goto_55

    .line 489
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :catch_76
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    :try_start_77
    throw v1
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 494
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_78
    move-exception v4

    .line 495
    if-eqz v2, :cond_89

    .line 497
    if-eqz v3, :cond_80

    .line 499
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V

    .line 502
    :cond_80
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 504
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 507
    :cond_89
    throw v4
.end method

.method private writeV2Data(Ljava/io/File;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JI)V
    .registers 15
    .param p1, "file"    # Ljava/io/File;
    .param p2, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "newBuffer"    # Ljava/nio/ByteBuffer;
    .param p4, "endTagSize"    # J
    .param p6, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 216
    invoke-direct {p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->printCondition()V

    .line 218
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getAudioStartPos()J

    move-result-wide v0

    .line 220
    .local v0, "audioPosition":J
    const-string v2, "-------------------------------------------------------------"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ID3 Version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 223
    iget v2, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mWriteType:I

    sparse-switch v2, :sswitch_data_90

    .line 264
    new-instance v2, Lcom/pantech/audiotag/exception/WriteException;

    const-string v3, "Can not find any write mode"

    invoke-direct {v2, v3}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :sswitch_2e
    if-le p6, v4, :cond_41

    const/4 v2, 0x5

    if-ge p6, v2, :cond_41

    .line 228
    const-string v2, "WRITE: Exist V2 Version. Change ID3 V2 TAG"

    invoke-static {v2, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 230
    invoke-direct/range {p0 .. p6}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeV2OverWrite(Ljava/io/File;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JI)V

    .line 267
    :goto_3b
    const-string v2, "-------------------------------------------------------------"

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 268
    return-void

    .line 232
    :cond_41
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_55

    cmp-long v2, v0, v6

    if-ltz v2, :cond_55

    .line 234
    const-string v2, "WRITE: Not exist V2 Version. Make NEW ID3 V2 TAG"

    invoke-static {v2, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 236
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeV2NewWrite(Ljava/io/File;Ljava/nio/ByteBuffer;J)V

    goto :goto_3b

    .line 240
    :cond_55
    const-string v2, "WRITE: Write V1 Tag"

    invoke-static {v2, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 241
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeV1NewWrite(Ljava/io/File;)V

    goto :goto_3b

    .line 246
    :sswitch_5e
    cmp-long v2, v0, v6

    if-ltz v2, :cond_7e

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WRITE: V2 OVERWRITE V1 VERSION. Make NEW ID3 V2 TAG>> mOldV1Data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->getV1TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 249
    invoke-direct {p0, p1, p3, v0, v1}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeV2NewWrite(Ljava/io/File;Ljava/nio/ByteBuffer;J)V

    goto :goto_3b

    .line 253
    :cond_7e
    const-string v2, "WRITE: Write V1 Tag"

    invoke-static {v2, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 254
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeV1NewWrite(Ljava/io/File;)V

    goto :goto_3b

    .line 259
    :sswitch_87
    const-string v2, "WRITE: Write V1 Tag"

    invoke-static {v2, v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 260
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeV1NewWrite(Ljava/io/File;)V

    goto :goto_3b

    .line 223
    :sswitch_data_90
    .sparse-switch
        0x1 -> :sswitch_2e
        0x10 -> :sswitch_5e
        0x100 -> :sswitch_87
    .end sparse-switch
.end method

.method private writeV2NewWrite(Ljava/io/File;Ljava/nio/ByteBuffer;J)V
    .registers 10
    .param p1, "file"    # Ljava/io/File;
    .param p2, "newBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "audioPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v2, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    iget-object v3, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mUserData:Lcom/pantech/audiotag/AudioFileTagData;

    iget-object v4, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextOld:Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    invoke-direct {v2, v3, v4}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;-><init>(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextOld;)V

    iput-object v2, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV2:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    .line 429
    iget-object v2, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mID3TagTextNewV2:Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;

    invoke-virtual {v2}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getTotalSize()J

    move-result-wide v0

    .line 430
    .local v0, "newFrameSize":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "writeV2NewWrite() newFrameSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 432
    const-wide/16 v2, 0xa

    add-long/2addr v2, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 433
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 436
    invoke-direct {p0, p2, v0, v1}, Lcom/pantech/audiotag/id3/ID3TagWriter;->makeHeaderData(Ljava/nio/ByteBuffer;J)V

    .line 439
    invoke-direct {p0, p2}, Lcom/pantech/audiotag/id3/ID3TagWriter;->addNewFrameData(Ljava/nio/ByteBuffer;)V

    .line 442
    invoke-static {p1, p2, p3, p4}, Lcom/pantech/audiotag/common/util/FileUtil;->writeOnTempFile(Ljava/io/File;Ljava/nio/ByteBuffer;J)V

    .line 443
    return-void
.end method

.method private writeV2OverWrite(Ljava/io/File;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JI)V
    .registers 35
    .param p1, "file"    # Ljava/io/File;
    .param p2, "oldBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "newBuffer"    # Ljava/nio/ByteBuffer;
    .param p4, "endTagSize"    # J
    .param p6, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 287
    const/4 v15, 0x0

    .line 288
    .local v15, "bodyBuffer":Ljava/nio/ByteBuffer;
    const/16 v23, 0x0

    .line 292
    .local v23, "headerBuffer":Ljava/nio/ByteBuffer;
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getTagGapSize()J

    move-result-wide v6

    .line 293
    .local v6, "tagGapSize":J
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getHeaderSize()J

    move-result-wide v8

    .line 294
    .local v8, "headerSize":J
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getPaddingSize()J

    move-result-wide v10

    .line 296
    .local v10, "originPaddingSize":J
    new-instance v3, Lcom/pantech/audiotag/id3/ID3WriteHelper;

    move-wide/from16 v4, p4

    invoke-direct/range {v3 .. v11}, Lcom/pantech/audiotag/id3/ID3WriteHelper;-><init>(JJJJ)V

    .line 297
    .local v3, "wh":Lcom/pantech/audiotag/id3/ID3WriteHelper;
    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->getWriteMode()I

    move-result v26

    .line 298
    .local v26, "writeMode":I
    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->getTagBodySize()I

    move-result v2

    .line 299
    .local v2, "bodySize":I
    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/ID3WriteHelper;->getCalculatedPaddingSize()I

    move-result v12

    .line 301
    .local v12, "calculatedPaddingSize":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeV2OverWrite() ORIGIN DATA>> endTagSize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tagGapSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " headerSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 302
    const-string v5, " originPaddingSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "writeV2OverWrite() CALCUL DATA>> writeMode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bodySize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 304
    const-string v5, " calculatedPaddingSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 309
    long-to-int v4, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 310
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 311
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 312
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/audiotag/id3/ID3TagWriter;->addNewFrameData(Ljava/nio/ByteBuffer;)V

    .line 315
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/pantech/audiotag/id3/ID3TagWriter;->changeFrameData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-wide/from16 v16, p4

    move-wide/from16 v18, v10

    .line 318
    invoke-direct/range {v13 .. v19}, Lcom/pantech/audiotag/id3/ID3TagWriter;->addOtherData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJ)V

    .line 325
    const/4 v4, 0x4

    move/from16 v0, p6

    if-eq v0, v4, :cond_113

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getUnsynchronization()Z

    move-result v4

    if-eqz v4, :cond_113

    .line 326
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/id3/util/Unsynchronization;->isRequiresUnsynchronization([B)Z

    move-result v4

    if-eqz v4, :cond_113

    .line 328
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/id3/util/Unsynchronization;->insertUnsynchronization([B)[B

    move-result-object v24

    .line 330
    .local v24, "newBodyByte":[B
    move-object/from16 v0, v24

    array-length v4, v0

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    sub-int v25, v4, v5

    .line 332
    .local v25, "unSyncGap":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsynchronization gap Size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 334
    sub-int v12, v12, v25

    .line 335
    add-int v2, v2, v25

    .line 337
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 338
    const/4 v15, 0x0

    .line 340
    if-lez v12, :cond_156

    .line 341
    move-object/from16 v0, v24

    array-length v4, v0

    add-int/2addr v4, v12

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 345
    :goto_ef
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 346
    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 348
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsynchronization change values >> bodySize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " paddingSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 353
    .end local v24    # "newBodyByte":[B
    .end local v25    # "unSyncGap":I
    :cond_113
    const/4 v4, 0x2

    move/from16 v0, v26

    if-ne v0, v4, :cond_15e

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10, v11}, Lcom/pantech/audiotag/id3/ID3TagWriter;->addPaddingAndCheckBuffer(Ljava/nio/ByteBuffer;J)V

    .line 362
    :goto_11d
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 363
    packed-switch v26, :pswitch_data_1c8

    .line 373
    if-ltz v12, :cond_175

    .line 374
    const-wide/16 v18, 0x0

    move-object/from16 v16, p0

    move-object/from16 v17, p2

    move-wide/from16 v20, v8

    invoke-direct/range {v16 .. v21}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getHeaderData(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 381
    :goto_131
    int-to-long v4, v2

    add-long/2addr v4, v8

    long-to-int v4, v4

    new-array v4, v4, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 382
    invoke-virtual/range {p3 .. p3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 383
    invoke-virtual/range {v23 .. v23}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 384
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 385
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 386
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 391
    packed-switch v26, :pswitch_data_1ce

    .line 412
    :goto_152
    const/4 v15, 0x0

    .line 413
    const/16 v23, 0x0

    .line 415
    return-void

    .line 343
    .restart local v24    # "newBodyByte":[B
    .restart local v25    # "unSyncGap":I
    :cond_156
    move-object/from16 v0, v24

    array-length v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    goto :goto_ef

    .line 356
    .end local v24    # "newBodyByte":[B
    .end local v25    # "unSyncGap":I
    :cond_15e
    int-to-long v4, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4, v5}, Lcom/pantech/audiotag/id3/ID3TagWriter;->addPaddingAndCheckBuffer(Ljava/nio/ByteBuffer;J)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_164} :catch_165
    .catchall {:try_start_3 .. :try_end_164} :catchall_167

    goto :goto_11d

    .line 406
    .end local v2    # "bodySize":I
    .end local v3    # "wh":Lcom/pantech/audiotag/id3/ID3WriteHelper;
    .end local v6    # "tagGapSize":J
    .end local v8    # "headerSize":J
    .end local v10    # "originPaddingSize":J
    .end local v12    # "calculatedPaddingSize":I
    .end local v26    # "writeMode":I
    :catch_165
    move-exception v22

    .line 408
    .local v22, "e":Ljava/lang/Exception;
    :try_start_166
    throw v22
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_167

    .line 411
    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_167
    move-exception v4

    .line 412
    const/4 v15, 0x0

    .line 413
    const/16 v23, 0x0

    .line 414
    throw v4

    .restart local v2    # "bodySize":I
    .restart local v3    # "wh":Lcom/pantech/audiotag/id3/ID3WriteHelper;
    .restart local v6    # "tagGapSize":J
    .restart local v8    # "headerSize":J
    .restart local v10    # "originPaddingSize":J
    .restart local v12    # "calculatedPaddingSize":I
    .restart local v26    # "writeMode":I
    :pswitch_16c
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 367
    :try_start_170
    invoke-direct/range {v4 .. v9}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getHeaderData(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v23

    .line 368
    goto :goto_131

    :cond_175
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    .line 376
    invoke-direct/range {v4 .. v9}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getHeaderData(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;

    move-result-object v23

    goto :goto_131

    .line 395
    :pswitch_17e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Write Mode: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][BYTE OVERWRITE]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeOnFile(Ljava/nio/ByteBuffer;)V

    goto :goto_152

    .line 401
    :pswitch_1a1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Write Mode: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][FILE OVERWRITE]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 402
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getAudioStartPos()J

    move-result-wide v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1, v4, v5}, Lcom/pantech/audiotag/common/util/FileUtil;->writeOnTempFile(Ljava/io/File;Ljava/nio/ByteBuffer;J)V
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_1c7} :catch_165
    .catchall {:try_start_170 .. :try_end_1c7} :catchall_167

    goto :goto_152

    .line 363
    :pswitch_data_1c8
    .packed-switch 0x2
        :pswitch_16c
    .end packed-switch

    .line 391
    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_17e
        :pswitch_1a1
        :pswitch_17e
        :pswitch_1a1
    .end packed-switch
.end method


# virtual methods
.method public doProcess()V
    .registers 10

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->prepareProcess()V

    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, "oldBuffer":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 144
    .local v3, "newBuffer":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/pantech/audiotag/id3/ID3TagWriter;->mPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "file":Ljava/io/File;
    :try_start_c
    invoke-static {v1}, Lcom/pantech/audiotag/common/util/FileUtil;->isFileAvailable(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 150
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v6

    .line 151
    .local v6, "version":I
    const-wide/16 v4, 0x0

    .line 153
    .local v4, "endTagSize":J
    packed-switch v6, :pswitch_data_74

    :goto_1b
    move-object v0, p0

    .line 172
    invoke-direct/range {v0 .. v6}, Lcom/pantech/audiotag/id3/ID3TagWriter;->writeV2Data(Ljava/io/File;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JI)V

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->setCode(I)V

    .line 182
    const-string v0, "*****************************************************************"

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 183
    const-string v0, "********************* ID3 Write Complete! ***********************"

    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 184
    const-string v0, "*****************************************************************"

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_33} :catch_45
    .catchall {:try_start_c .. :try_end_33} :catchall_6d

    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->endProcess()V

    .line 204
    .end local v4    # "endTagSize":J
    .end local v6    # "version":I
    :goto_38
    return-void

    .line 160
    .restart local v4    # "endTagSize":J
    .restart local v6    # "version":I
    :pswitch_39
    :try_start_39
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getAudioStartPos()J

    move-result-wide v4

    .line 163
    invoke-direct {p0, v1, v4, v5}, Lcom/pantech/audiotag/id3/ID3TagWriter;->getOldBuffer(Ljava/io/File;J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_45
    .catchall {:try_start_39 .. :try_end_44} :catchall_6d

    goto :goto_1b

    .line 186
    .end local v4    # "endTagSize":J
    .end local v6    # "version":I
    :catch_45
    move-exception v7

    .line 188
    .local v7, "e":Ljava/lang/Exception;
    :try_start_46
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->setCode(I)V

    .line 192
    const-string v0, "*****************************************************************"

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 193
    const-string v0, "************************ ID3 Write Fail *************************"

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 194
    const-string v0, "*****************************************************************"

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_6d

    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->endProcess()V

    goto :goto_38

    .line 176
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_62
    const/16 v0, -0x1770

    :try_start_64
    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->setCode(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_45
    .catchall {:try_start_64 .. :try_end_67} :catchall_6d

    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->endProcess()V

    goto :goto_38

    .line 197
    :catchall_6d
    move-exception v0

    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/ID3TagWriter;->endProcess()V

    .line 203
    throw v0

    .line 153
    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method
