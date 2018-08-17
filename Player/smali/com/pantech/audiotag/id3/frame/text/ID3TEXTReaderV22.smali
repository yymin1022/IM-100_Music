.class Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV22;
.super Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;
.source "ID3TEXTReaderV22.java"


# direct methods
.method public constructor <init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V
    .registers 3
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "listener"    # Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public doReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->doBaseReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getTextEncoding(B)I
    .registers 3
    .param p1, "encodingByte"    # B

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->getTextEncoding(B)I

    move-result v0

    return v0
.end method