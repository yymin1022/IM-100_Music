.class public Lcom/pantech/multimedia/cloud/CloudLive;
.super Ljava/lang/Object;
.source "CloudLive.java"

# interfaces
.implements Lcom/pantech/multimedia/cloud/CloudClient;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQuerySong:Lcom/pantech/multimedia/api/CloudLiveMusicContents;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mQuerySong:Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    .line 31
    iput-object p1, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public getLogOnState()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public initCloud()Z
    .registers 3

    .prologue
    .line 37
    new-instance v0, Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/api/CloudLiveMusicContents;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mQuerySong:Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public initCloud(I)Z
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 44
    new-instance v0, Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mContext:Landroid/content/Context;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2, p1}, Lcom/pantech/multimedia/api/CloudLiveMusicContents;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mQuerySong:Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public logIn()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestDownload(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 131
    return-void
.end method

.method public requestFileInfo(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestPlaylistSongs(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestPlaylists()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestSongs()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestSongs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "deviceID"    # Ljava/lang/String;
    .param p2, "userID"    # Ljava/lang/String;
    .param p3, "authToken"    # Ljava/lang/String;
    .param p4, "lastDT"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mQuerySong:Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/CloudLiveMusicContents;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;

    .line 63
    .local v0, "feedQuery":Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;
    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->setDeviceID(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p2}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->setUserID(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p3}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->setAuthToken(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, p4}, Lcom/pantech/multimedia/query/vendor/CloudLiveFeedQuery;->setLastDT(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mQuerySong:Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/CloudLiveMusicContents;->request()Z

    .line 70
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestStreamingURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "fileID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v3, 0x0

    .line 78
    .local v3, "in":Ljava/io/InputStream;
    const-string v0, "http://cloud-file.vegalive.co.kr:16749/"

    .line 79
    .local v0, "baseURL":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "token="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "key_dt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "parameter":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 82
    .local v8, "url":Ljava/lang/String;
    const-string v9, "BongBong"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "URL : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 85
    .local v6, "queryURL":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 87
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x1130

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 88
    const/16 v9, 0x11f8

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 89
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 90
    const-string v9, "POST"

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 91
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 92
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 96
    .local v7, "statusCode":I
    const-string v9, "BongBong"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "statusCode : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_c8

    .line 99
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 101
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 104
    .local v4, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c8

    .line 105
    const-string v9, "BongBong"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "line : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :goto_c7
    return-object v4

    :cond_c8
    const/4 v4, 0x0

    goto :goto_c7
.end method

.method public setOnResonseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 145
    if-eqz p1, :cond_7

    .line 146
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/CloudLive;->mQuerySong:Lcom/pantech/multimedia/api/CloudLiveMusicContents;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/api/CloudLiveMusicContents;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 147
    :cond_7
    return-void
.end method

.method public setOnResonseListener(Lcom/pantech/multimedia/cloud/OnResponseCloudListener;)V
    .registers 2
    .param p1, "l"    # Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    .prologue
    .line 141
    return-void
.end method
