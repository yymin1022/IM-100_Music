.class Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;
.super Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;
.source "ID3TEXTReaderV24.java"


# direct methods
.method public constructor <init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V
    .registers 3
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "listener"    # Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    .line 17
    return-void
.end method


# virtual methods
.method public doReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v2, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameFlag:[B

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v2, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameFlag:[B

    invoke-static {v2}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v2

    if-eqz v2, :cond_40

    .line 26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 27
    .local v0, "buffer24":Ljava/nio/ByteBuffer;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v3, v3, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v2, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    iget-object v3, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget-object v3, v3, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameFlag:[B

    invoke-static {v0, v2, v3}, Lcom/pantech/audiotag/id3/util/ITunesFileUtil;->checkFrameFlagIndicatorAndUnsyncForV24(Ljava/nio/ByteBuffer;I[B)[B

    move-result-object v1

    .line 31
    .local v1, "resultByte":[B
    if-eqz v1, :cond_3b

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 36
    iget-object v2, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    array-length v3, v1

    iput v3, v2, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    .line 39
    :cond_3b
    invoke-super {p0, v0}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->doBaseReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v2

    .line 42
    .end local v0    # "buffer24":Ljava/nio/ByteBuffer;
    .end local v1    # "resultByte":[B
    :goto_3f
    return v2

    :cond_40
    invoke-super {p0, p1}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->doBaseReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v2

    goto :goto_3f
.end method

.method public getTextEncoding(B)I
    .registers 3
    .param p1, "encodingByte"    # B

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->getTextEncoding(B)I

    move-result v0

    return v0
.end method
