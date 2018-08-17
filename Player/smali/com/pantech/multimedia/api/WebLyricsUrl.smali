.class public Lcom/pantech/multimedia/api/WebLyricsUrl;
.super Ljava/lang/Object;
.source "WebLyricsUrl.java"

# interfaces
.implements Lcom/pantech/multimedia/api/ClientConnectionInterface;


# instance fields
.field private mClient:Lcom/pantech/multimedia/client/MultimediaClient;

.field private mVendor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I
    .param p3, "songId"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 17
    iput p2, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mVendor:I

    .line 18
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    const/16 v1, 0x1a

    invoke-direct {v0, p1, p2, v1}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;II)V

    .line 19
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 21
    invoke-virtual {p0}, Lcom/pantech/multimedia/api/WebLyricsUrl;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/pantech/multimedia/query/FeedQuery;->setId(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    return-object v0
.end method

.method public request()Z
    .registers 3

    .prologue
    .line 26
    iget v0, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mVendor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    .line 27
    iget v0, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mVendor:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 28
    :cond_a
    iget-object v0, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    move-result v0

    .line 30
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/multimedia/api/WebLyricsUrl;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/client/MultimediaClient;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 41
    return-void
.end method
