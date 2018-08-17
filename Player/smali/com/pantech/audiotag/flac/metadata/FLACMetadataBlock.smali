.class public Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;
.super Ljava/lang/Object;
.source "FLACMetadataBlock.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagFileStream;


# static fields
.field private static final METADATA_BLOCK_STREAMINFO_LENGTH:I = 0x22

.field private static final TAG:Ljava/lang/String; = "[FLACMetadataBlock] "


# instance fields
.field private mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .registers 11
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 32
    :cond_1
    new-instance v4, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;

    invoke-direct {v4}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;-><init>()V

    .line 34
    .local v4, "metadataHeader":Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;
    const-string v5, "------------------------------------------------"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, p1}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;->doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 38
    invoke-virtual {v4}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;->getFLACHeaderData()Lcom/pantech/audiotag/flac/data/FLACDataHeader;

    move-result-object v3

    .line 40
    .local v3, "headerData":Lcom/pantech/audiotag/flac/data/FLACDataHeader;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[FLACMetadataBlock] headerData.getType(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v3}, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->getType()I

    move-result v5

    sparse-switch v5, :sswitch_data_94

    .line 73
    invoke-static {v8}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->setOtherDataBlockEnableCount(I)V

    .line 74
    invoke-virtual {v3}, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->getLength()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p1, v6, v7}, Lcom/pantech/audiotag/AudioFileStream;->skip(J)Z

    .line 78
    :goto_3d
    invoke-virtual {v3}, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->getFlag()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 80
    const-string v5, "[FLACMetadataBlock] FLAC Metadata Parse END"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 81
    return v8

    .line 46
    :sswitch_49
    invoke-static {v8}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->setFlacStreamInfoBlockEnable(Z)V

    .line 48
    const-wide/16 v6, 0x22

    invoke-virtual {p1, v6, v7}, Lcom/pantech/audiotag/AudioFileStream;->skip(J)Z

    .line 49
    invoke-virtual {p1}, Lcom/pantech/audiotag/AudioFileStream;->getCurrentReadPosition()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->setStreamInfoMetaDataBlockEndPosition(I)V

    goto :goto_3d

    .line 53
    :sswitch_5a
    invoke-virtual {v3}, Lcom/pantech/audiotag/flac/data/FLACDataHeader;->getLength()I

    move-result v1

    .line 56
    .local v1, "blockSize":I
    invoke-static {v8}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->setHasVorbisDataBlock(Z)V

    .line 57
    invoke-static {v1}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->setVorbisDataSize(I)V

    .line 58
    invoke-virtual {p1}, Lcom/pantech/audiotag/AudioFileStream;->getCurrentReadPosition()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Lcom/pantech/audiotag/flac/FLACTagGlobal;->setVorbisDataStartPosition(I)V

    .line 61
    invoke-virtual {p1, v1}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "blockBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 63
    new-instance v2, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;

    invoke-direct {v2}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;-><init>()V

    .line 64
    .local v2, "commentReader":Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;
    invoke-virtual {v2, v0}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;->doReadTag(Ljava/nio/ByteBuffer;)Z

    .line 67
    invoke-virtual {v2}, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;->getCommentData()Lcom/pantech/audiotag/flac/data/FLACDataOld;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    goto :goto_3d

    .line 86
    .end local v0    # "blockBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "blockSize":I
    .end local v2    # "commentReader":Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;
    .end local v3    # "headerData":Lcom/pantech/audiotag/flac/data/FLACDataHeader;
    :cond_86
    const-string v5, "[FLACMetadataBlock] FLAC Header parse is Error or Header is empty"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 87
    new-instance v5, Lcom/pantech/audiotag/exception/ReadException;

    const-string v6, "[FLACMetadataBlock] FLAC Header parse is Error or Header is empty"

    invoke-direct {v5, v6}, Lcom/pantech/audiotag/exception/ReadException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 43
    nop

    :sswitch_data_94
    .sparse-switch
        0x0 -> :sswitch_49
        0x4 -> :sswitch_5a
    .end sparse-switch
.end method

.method public getFLACReadedData()Lcom/pantech/audiotag/flac/data/FLACDataOld;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlock;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    return-object v0
.end method
