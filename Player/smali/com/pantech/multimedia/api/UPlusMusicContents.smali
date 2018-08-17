.class public Lcom/pantech/multimedia/api/UPlusMusicContents;
.super Ljava/lang/Object;
.source "UPlusMusicContents.java"

# interfaces
.implements Lcom/pantech/multimedia/api/ClientConnectionInterface;


# instance fields
.field private mClient:Lcom/pantech/multimedia/client/MultimediaClient;

.field private mVendor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x64

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 17
    iput v2, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mVendor:I

    .line 18
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    const/16 v1, 0x1f4

    invoke-direct {v0, p1, v2, v1}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;II)V

    .line 19
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I
    .param p3, "chartType"    # I

    .prologue
    const/16 v2, 0x64

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 23
    iput v2, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mVendor:I

    .line 24
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    invoke-direct {v0, p1, v2, p3}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;II)V

    .line 25
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 26
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
    const/16 v2, 0x64

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 29
    iput v2, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mVendor:I

    .line 30
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    const/16 v3, 0x1f4

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;II)V

    .line 31
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 32
    return-void
.end method


# virtual methods
.method public getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    return-object v0
.end method

.method public request()Z
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    move-result v0

    return v0
.end method

.method public setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/multimedia/api/UPlusMusicContents;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/client/MultimediaClient;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 47
    return-void
.end method
