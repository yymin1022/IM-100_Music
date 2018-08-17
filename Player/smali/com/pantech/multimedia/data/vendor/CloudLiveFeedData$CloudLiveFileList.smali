.class public Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "CloudLiveFeedData.java"

# interfaces
.implements Lcom/pantech/multimedia/data/CloudFeedItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudLiveFileList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 53
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->this$0:Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    .line 37
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 38
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "deviceid"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "file_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "song_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "cloud_dt"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "file_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "file_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "bitrate"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "playtime"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "artist"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "album"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "genre"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "albumart_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "file_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "fileurl"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getMapData(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_b

    move-object v0, v1

    .line 201
    :cond_a
    :goto_a
    return-object v0

    .line 197
    :cond_b
    iget-object v2, p0, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->mParserMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    .line 200
    goto :goto_a
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumImgURL()Ljava/lang/String;
    .registers 7

    .prologue
    .line 67
    const-string v4, "albumart_url"

    invoke-direct {p0, v4}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "receivedUrl":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "makedUrl":Ljava/lang/String;
    if-eqz v2, :cond_1c

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://cloud-file.vegalive.co.kr:16749"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "tempUrl":Ljava/lang/String;
    :try_start_18
    invoke-static {v3}, Lcom/pantech/multimedia/common/URIUtils;->encodePath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v1

    .line 98
    .end local v3    # "tempUrl":Ljava/lang/String;
    :cond_1c
    :goto_1c
    return-object v1

    .line 90
    .restart local v3    # "tempUrl":Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    const-string v0, "album"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    const-string v0, "artist"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    const-string v0, "bitrate"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownLoadURL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://cloud-file.vegalive.co.kr:16749/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "fileurl"

    invoke-direct {p0, v1}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    const-string v0, "playtime"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    const-string v0, "file_name"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const-string v0, "file_size"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegDT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    const-string v0, "cloud_dt"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegDT(Landroid/content/Context;)Ljava/lang/String;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const-string v15, "cloud_dt"

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "date":Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 120
    .local v14, "sYear":Ljava/lang/String;
    const/4 v15, 0x4

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 121
    .local v13, "sMonth":Ljava/lang/String;
    const/4 v15, 0x6

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "sDay":Ljava/lang/String;
    const/16 v15, 0x8

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 123
    .local v11, "sHour":Ljava/lang/String;
    const/16 v15, 0xa

    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "sMinute":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit16 v2, v15, -0x76c

    .line 126
    .local v2, "year":I
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v3, v15, -0x1

    .line 127
    .local v3, "month":I
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 128
    .local v4, "day":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 129
    .local v5, "hour":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 131
    .local v6, "minute":I
    new-instance v1, Ljava/util/Date;

    invoke-direct/range {v1 .. v6}, Ljava/util/Date;-><init>(IIIII)V

    .line 133
    .local v1, "mDate":Ljava/util/Date;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 134
    .local v7, "Dateformater":Ljava/text/DateFormat;
    invoke-static/range {p1 .. p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    .line 136
    .local v8, "Timeformater":Ljava/text/DateFormat;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method

.method public getRegenerationFileID()Ljava/lang/String;
    .registers 4

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getSongID()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "str":Ljava/lang/String;
    const/4 v1, 0x5

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSongID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    const-string v0, "file_id"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 178
    const-string v3, "song_title"

    invoke-direct {p0, v3}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "title":Ljava/lang/String;
    if-nez v2, :cond_19

    .line 180
    const-string v3, "file_name"

    invoke-direct {p0, v3}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "filename":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 182
    .local v1, "idx":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 185
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "idx":I
    :cond_19
    return-object v2
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string v0, "file_type"

    invoke-direct {p0, v0}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData$CloudLiveFileList;->getMapData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
