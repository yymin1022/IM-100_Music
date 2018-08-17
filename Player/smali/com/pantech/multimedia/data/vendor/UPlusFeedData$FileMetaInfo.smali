.class public Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
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
    name = "FileMetaInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/UPlusFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->this$0:Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    .line 158
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CATEGORY"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "IMAGE_URL"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "NAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "REG_DT"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "PLAYTIME"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "BITRATE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ARTIST"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SIZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "ALBUM_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_TITLE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getMapData(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->mParserMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 241
    const/4 v0, 0x0

    .line 242
    .end local v0    # "str":Ljava/lang/String;
    :cond_11
    return-object v0
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumImgURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    const-string v0, "IMAGE_URL"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    const-string v0, "ALBUM_TITLE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    const-string v0, "ARTIST"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    const-string v0, "BITRATE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownLoadURL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    const-string v0, "PLAYTIME"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    const-string v0, "NAME"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 204
    const-string v0, "SIZE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegDT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    const-string v0, "REG_DT"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 214
    const-string v0, "ID"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    const-string v0, "SONG_TITLE"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    const-string v0, "CATEGORY"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
