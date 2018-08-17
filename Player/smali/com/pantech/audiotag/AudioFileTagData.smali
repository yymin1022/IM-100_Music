.class public Lcom/pantech/audiotag/AudioFileTagData;
.super Lcom/pantech/audiotag/data/AbsDataMap;
.source "AudioFileTagData.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/pantech/audiotag/data/AbsDataMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrack()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putDataInMap(Lcom/pantech/audiotag/data/Data;)V
    .registers 4
    .param p1, "data"    # Lcom/pantech/audiotag/data/Data;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileTagData;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .registers 3
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/pantech/audiotag/AudioFileTagData;->setText(ILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 3
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/pantech/audiotag/AudioFileTagData;->setText(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .registers 3
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/pantech/audiotag/AudioFileTagData;->setText(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 10
    if-nez p2, :cond_3

    .line 16
    :goto_2
    return-void

    .line 12
    :cond_3
    new-instance v0, Lcom/pantech/audiotag/data/Data;

    invoke-direct {v0}, Lcom/pantech/audiotag/data/Data;-><init>()V

    .line 13
    .local v0, "data":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/data/Data;->setType(I)V

    .line 14
    invoke-virtual {v0, p2}, Lcom/pantech/audiotag/data/Data;->setText(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/AudioFileTagData;->putDataInMap(Lcom/pantech/audiotag/data/Data;)V

    goto :goto_2
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/pantech/audiotag/AudioFileTagData;->setText(ILjava/lang/String;)V

    .line 32
    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .registers 3
    .param p1, "track"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/pantech/audiotag/AudioFileTagData;->setText(ILjava/lang/String;)V

    .line 56
    return-void
.end method

.method public setYear(Ljava/lang/String;)V
    .registers 3
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/pantech/audiotag/AudioFileTagData;->setText(ILjava/lang/String;)V

    .line 62
    return-void
.end method
