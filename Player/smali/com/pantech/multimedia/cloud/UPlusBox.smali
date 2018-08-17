.class public Lcom/pantech/multimedia/cloud/UPlusBox;
.super Ljava/lang/Object;
.source "UPlusBox.java"

# interfaces
.implements Lcom/pantech/multimedia/cloud/CloudClient;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "UPlusBox"

.field private static mSessionID:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mContext:Landroid/content/Context;

    .line 19
    iput-object v0, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    .line 22
    iput-object p1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public clearElements()V
    .registers 1

    .prologue
    .line 140
    return-void
.end method

.method public getLogOnState()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public initCloud()Z
    .registers 3

    .prologue
    .line 28
    new-instance v0, Lcom/pantech/multimedia/api/UPlusMusicContents;

    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public initCloud(I)Z
    .registers 5
    .param p1, "queryType"    # I

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/pantech/multimedia/api/UPlusMusicContents;

    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/pantech/multimedia/api/UPlusMusicContents;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    .line 36
    return v2
.end method

.method public logIn()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "lg.uplusbox.intent.action.REQUEST_COMMON_SESSION_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "extra_necessary_login"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 47
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    const-string v1, "BongBong"

    const-string v2, "send!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v1, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    return-object v1
.end method

.method public requestDownload(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    .line 117
    return-void
.end method

.method public requestFileInfo(I)Ljava/lang/Object;
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 85
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;

    .line 86
    .local v0, "feed":Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setId(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->request()Z

    .line 88
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestFileInfo(ILjava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "id"    # I
    .param p2, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 92
    sput-object p2, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;

    .line 94
    .local v0, "feed":Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;
    sget-object v1, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setSessionID(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setId(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->request()Z

    .line 97
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestPlaylistSongs(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestPlaylists()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestSongs()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;

    .line 55
    .local v0, "feed":Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;
    sget-object v1, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setSessionID(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->request()Z

    .line 57
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestSongs(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 62
    sput-object p1, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;

    .line 65
    .local v0, "feed":Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;
    sget-object v1, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setSessionID(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->request()Z

    .line 67
    const/4 v1, 0x0

    return-object v1
.end method

.method public requestSongs(Ljava/lang/String;J)Ljava/lang/Object;
    .registers 6
    .param p1, "sessionID"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 72
    sput-object p1, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    check-cast v0, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;

    .line 76
    .local v0, "feed":Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;
    sget-object v1, Lcom/pantech/multimedia/cloud/UPlusBox;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setSessionID(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p2, p3}, Lcom/pantech/multimedia/query/vendor/UPlusFeedQuery;->setLastDT(J)V

    .line 79
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->request()Z

    .line 80
    const/4 v1, 0x0

    return-object v1
.end method

.method public setOnResonseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 134
    if-eqz p1, :cond_7

    .line 135
    iget-object v0, p0, Lcom/pantech/multimedia/cloud/UPlusBox;->mQuerySong:Lcom/pantech/multimedia/api/UPlusMusicContents;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/api/UPlusMusicContents;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 136
    :cond_7
    return-void
.end method

.method public setOnResonseListener(Lcom/pantech/multimedia/cloud/OnResponseCloudListener;)V
    .registers 2
    .param p1, "l"    # Lcom/pantech/multimedia/cloud/OnResponseCloudListener;

    .prologue
    .line 130
    return-void
.end method
