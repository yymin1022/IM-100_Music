.class Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;
.super Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;
.source "ID3TagFrameReaderV22.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;-><init>(I)V

    .line 17
    return-void
.end method


# virtual methods
.method public doReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 23
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;->clearValue()V

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "frameIDByte":[B
    const/4 v3, 0x1

    .line 31
    .local v3, "result":Z
    const-string v5, "---------------------------------------"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 34
    new-array v4, v6, [B

    .line 35
    .local v4, "temp":[B
    invoke-virtual {p1, v4, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 36
    invoke-static {v4}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([B)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "frameID":Ljava/lang/String;
    new-array v4, v6, [B

    .line 40
    invoke-virtual {p1, v4, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 41
    invoke-static {v4}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v2

    .line 44
    .local v2, "frameLen":I
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_3e

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: frameID is empty : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 47
    move-object v1, v4

    .line 48
    const/4 v3, 0x0

    .line 51
    :cond_3e
    invoke-virtual {p0, v2}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;->checkLengthSize(I)Z

    move-result v5

    if-nez v5, :cond_57

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error: frame size over 16MB or under 0 : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x0

    .line 57
    :cond_57
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "result: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frameId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frameIDByte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;->saveFrameData(Ljava/lang/String;[BI)V

    .line 62
    return v3
.end method

.method public getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .registers 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;

    move-result-object v0

    return-object v0
.end method

.method public getFrameID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameLength()I
    .registers 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameLength()I

    move-result v0

    return v0
.end method

.method public isLyricsFrame()Z
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;->getFrameID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPadding()Z
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isPadding()Z

    move-result v0

    return v0
.end method

.method public isPictureFrame()Z
    .registers 3

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;->getFrameID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTextFrame()Z
    .registers 3

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;->getFrameID()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "id":Ljava/lang/String;
    const-string v1, "TT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "TP1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 110
    const-string v1, "TAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "TCO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 111
    const-string v1, "TRK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "TYE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 112
    :cond_34
    const/4 v1, 0x1

    .line 114
    :goto_35
    return v1

    :cond_36
    const/4 v1, 0x0

    goto :goto_35
.end method

.method public isValidFrameFlag()Z
    .registers 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isValidFrameFlag()Z

    move-result v0

    return v0
.end method

.method public skipPreviousFrame(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->skipPreviousFrame(Ljava/nio/ByteBuffer;)V

    .line 70
    return-void
.end method
