.class Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;
.super Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;
.source "ID3TagFrameReaderV23V24.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "version"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;-><init>(I)V

    .line 19
    return-void
.end method

.method private checkFrameFlag([B)Z
    .registers 6
    .param p1, "flagBytes"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Check Frame Flag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 202
    iget v2, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->mVersion:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3a

    .line 205
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xc0

    if-eqz v2, :cond_8c

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning: Check Frame Flag>> encryption or compression"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xc0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 230
    :goto_39
    return v0

    .line 211
    :cond_3a
    iget v2, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->mVersion:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8c

    .line 215
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_6f

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning: Check Frame Flag>> data length indicator or unsynchronization"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning: Save flag for parse frame: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 223
    :cond_6f
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xc

    if-eqz v2, :cond_8c

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning: Check Frame Flag>> encryption or compression"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0xc

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    goto :goto_39

    :cond_8c
    move v0, v1

    .line 230
    goto :goto_39
.end method


# virtual methods
.method public doReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 13
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 25
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->clearValue()V

    .line 29
    const/4 v2, 0x0

    .line 31
    .local v2, "frameIDByte":[B
    const/4 v4, 0x0

    .line 32
    .local v4, "flagByte":[B
    const/4 v5, 0x1

    .line 33
    .local v5, "isFlagOK":Z
    const/4 v6, 0x1

    .line 35
    .local v6, "result":Z
    const-string v0, "---------------------------------------"

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 38
    new-array v7, v8, [B

    .line 39
    .local v7, "temp":[B
    invoke-virtual {p1, v7, v9, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 41
    invoke-static {v7}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([B)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "frameID":Ljava/lang/String;
    invoke-static {v7}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 45
    new-array v7, v8, [B

    .line 46
    invoke-virtual {p1, v7, v9, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 48
    iget v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->mVersion:I

    if-ne v0, v8, :cond_c2

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getiTunesHackFile()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 49
    invoke-static {v7}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->convertFromByteToInteger([B)I

    move-result v3

    .line 54
    .local v3, "frameLen":I
    :goto_2e
    new-array v7, v10, [B

    .line 55
    invoke-virtual {p1, v7, v9, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 56
    move-object v4, v7

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v8, :cond_40

    .line 61
    move-object v2, v7

    .line 62
    const/4 v6, 0x0

    .line 65
    :cond_40
    invoke-virtual {p0, v3}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->checkLengthSize(I)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x1

    if-ge v3, v0, :cond_5c

    .line 67
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Error: frame size over 16MB or length error or frame length is under 0 : "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 68
    const/4 v6, 0x0

    .line 72
    :cond_5c
    if-eqz v1, :cond_8d

    .line 73
    const-string v0, "USLT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 74
    const-string v0, "TALB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 75
    const-string v0, "TPE1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 76
    const-string v0, "TCON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 77
    const-string v0, "TIT2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 79
    :cond_86
    invoke-direct {p0, v7}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->checkFrameFlag([B)Z

    move-result v5

    .line 81
    if-nez v5, :cond_8d

    .line 82
    const/4 v6, 0x0

    .line 85
    :cond_8d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "frameId=["

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "] length: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " flagOK: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " result: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    move-object v0, p0

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->saveFrameData(Ljava/lang/String;[BI[BZ)V

    .line 90
    return v6

    .line 51
    .end local v3    # "frameLen":I
    :cond_c2
    invoke-static {v7}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v3

    .restart local v3    # "frameLen":I
    goto/16 :goto_2e
.end method

.method public getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .registers 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;

    move-result-object v0

    return-object v0
.end method

.method public getFrameID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFrameLength()I
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameLength()I

    move-result v0

    return v0
.end method

.method public isLyricsFrame()Z
    .registers 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->getFrameID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isPadding()Z
    .registers 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isPadding()Z

    move-result v0

    return v0
.end method

.method public isPictureFrame()Z
    .registers 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->getFrameID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTextFrame()Z
    .registers 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;->getFrameID()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "id":Ljava/lang/String;
    const-string v1, "TIT2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "TPE1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 138
    const-string v1, "TALB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "TCON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 139
    const-string v1, "TRCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "TYER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 140
    :cond_34
    const/4 v1, 0x1

    .line 142
    :goto_35
    return v1

    :cond_36
    const/4 v1, 0x0

    goto :goto_35
.end method

.method public isValidFrameFlag()Z
    .registers 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isValidFrameFlag()Z

    move-result v0

    return v0
.end method

.method public skipPreviousFrame(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->skipPreviousFrame(Ljava/nio/ByteBuffer;)V

    .line 98
    return-void
.end method
