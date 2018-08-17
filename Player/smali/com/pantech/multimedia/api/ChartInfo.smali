.class public Lcom/pantech/multimedia/api/ChartInfo;
.super Ljava/lang/Object;
.source "ChartInfo.java"

# interfaces
.implements Lcom/pantech/multimedia/api/ClientConnectionInterface;


# instance fields
.field private mClient:Lcom/pantech/multimedia/client/MultimediaClient;

.field private mVendor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I
    .param p3, "chartType"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/ChartInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 26
    iput p2, p0, Lcom/pantech/multimedia/api/ChartInfo;->mVendor:I

    .line 27
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    invoke-direct {v0, p1, p2, p3}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;II)V

    .line 28
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/ChartInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "chartType"    # I
    .param p4, "keywords"    # Ljava/lang/String;
    .param p5, "category"    # Ljava/lang/String;
    .param p6, "total"    # I
    .param p7, "startIndex"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/ChartInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 32
    iput p2, p0, Lcom/pantech/multimedia/api/ChartInfo;->mVendor:I

    .line 33
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;II)V

    .line 34
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/ChartInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 35
    return-void
.end method


# virtual methods
.method public getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/multimedia/api/ChartInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    return-object v0
.end method

.method public request()Z
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/multimedia/api/ChartInfo;->mVendor:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 41
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/multimedia/api/ChartInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    move-result v0

    goto :goto_5
.end method

.method public setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/multimedia/api/ChartInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/client/MultimediaClient;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 50
    return-void
.end method
