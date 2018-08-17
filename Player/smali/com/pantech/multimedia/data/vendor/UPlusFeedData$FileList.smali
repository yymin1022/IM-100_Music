.class public Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "UPlusFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/CloudFeedItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/UPlusFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/UPlusFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 77
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->this$0:Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    .line 65
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUM_IMAGE_URL"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "NAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "REG_DT"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PLAYTIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "BITRATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTIST"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "DOWNLOAD_URL"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUM_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getMapData(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->mParserMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 150
    const/4 v0, 0x0

    .line 151
    .end local v0    # "str":Ljava/lang/String;
    :cond_11
    return-object v0
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumImgURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    const-string v0, "ALBUM_IMAGE_URL"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    const-string v0, "ALBUM_TITLE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    const-string v0, "ARTIST"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    const-string v0, "BITRATE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownLoadURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    const-string v0, "DOWNLOAD_URL"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, "PLAYTIME"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    const-string v0, "NAME"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "SIZE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegDT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    const-string v0, "REG_DT"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    const-string v0, "ID"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    const-string v0, "SONG_TITLE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method
