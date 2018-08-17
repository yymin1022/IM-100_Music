.class public Lcom/pantech/multimedia/api/ServiceStatusInfo;
.super Ljava/lang/Object;
.source "ServiceStatusInfo.java"

# interfaces
.implements Lcom/pantech/multimedia/api/ClientConnectionInterface;


# instance fields
.field private mClient:Lcom/pantech/multimedia/client/MultimediaClient;

.field private mVendor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 24
    iput p2, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mVendor:I

    .line 25
    const/4 v1, 0x1

    if-eq p2, v1, :cond_e

    .line 26
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1c

    .line 28
    :cond_e
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    const/16 v1, 0x19

    invoke-direct {v0, p1, p2, v1}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;II)V

    .line 29
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 36
    :goto_1b
    return-void

    .line 32
    .end local v0    # "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    :cond_1c
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;I)V

    .line 33
    .restart local v0    # "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    goto :goto_1b
.end method


# virtual methods
.method public getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    return-object v0
.end method

.method public request()Z
    .registers 3

    .prologue
    .line 40
    iget v0, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mVendor:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 41
    iget v0, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mVendor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 42
    :cond_a
    iget-object v0, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    move-result v0

    .line 44
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
    .line 54
    iget-object v0, p0, Lcom/pantech/multimedia/api/ServiceStatusInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/client/MultimediaClient;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 55
    return-void
.end method
