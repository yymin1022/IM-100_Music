.class public Lcom/pantech/audiotag/id3/header/ID3TagHeaderV1;
.super Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;
.source "ID3TagHeaderV1.java"


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "fileSize"    # J

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/id3/header/AbsID3TagHeader;-><init>(J)V

    .line 14
    return-void
.end method


# virtual methods
.method public doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .registers 10
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 57
    const-string v3, "---------------------------------------"

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 61
    iget-wide v4, p0, Lcom/pantech/audiotag/id3/header/ID3TagHeaderV1;->mFileSize:J

    const-wide/16 v6, 0x80

    sub-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Lcom/pantech/audiotag/AudioFileStream;->skip(J)Z

    .line 63
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v1

    .line 65
    .local v1, "temp":[B
    invoke-static {v1}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([B)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "tagName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Header V1X Tag name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 69
    const-string v3, "---------------------------------------"

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 71
    if-eqz v0, :cond_39

    const-string v3, "TAG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 74
    :goto_38
    return v2

    :cond_39
    const/4 v2, 0x0

    goto :goto_38
.end method

.method public getExtendedHeaderSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public getFooterSize()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getMagerVersion()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    const/4 v0, -0x1

    return v0
.end method

.method public getTagDataSize()I
    .registers 2

    .prologue
    .line 20
    const/16 v0, 0x7d

    return v0
.end method

.method public isUnsynchronization()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
