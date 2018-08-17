.class public Lcom/pantech/multimedia/api/VideoFeed;
.super Ljava/lang/Object;
.source "VideoFeed.java"

# interfaces
.implements Lcom/pantech/multimedia/api/ClientConnectionInterface;


# instance fields
.field private enoughData:Z

.field private mClient:Lcom/pantech/multimedia/client/MultimediaClient;

.field private mVendor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    .line 24
    iput-object v2, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 35
    iput p2, p0, Lcom/pantech/multimedia/api/VideoFeed;->mVendor:I

    .line 36
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;I)V

    .line 37
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 38
    const/4 v1, -0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/pantech/multimedia/api/VideoFeed;->initVideoFeed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "page"    # I

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    .line 24
    iput-object v2, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 43
    iput p2, p0, Lcom/pantech/multimedia/api/VideoFeed;->mVendor:I

    .line 44
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;I)V

    .line 45
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 46
    const/4 v1, -0x1

    invoke-direct {p0, v2, v2, v1}, Lcom/pantech/multimedia/api/VideoFeed;->initVideoFeed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "startindex"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 62
    iput p2, p0, Lcom/pantech/multimedia/api/VideoFeed;->mVendor:I

    .line 63
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;I)V

    .line 64
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 65
    invoke-direct {p0, p3, p4, p5}, Lcom/pantech/multimedia/api/VideoFeed;->initVideoFeed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method private initVideoFeed(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "keywords"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "startindex"    # I

    .prologue
    .line 73
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 74
    invoke-virtual {p0, p1}, Lcom/pantech/multimedia/api/VideoFeed;->setKeywords(Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    .line 80
    :goto_c
    invoke-static {p2}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 81
    invoke-virtual {p0, p2}, Lcom/pantech/multimedia/api/VideoFeed;->setCategory(Ljava/lang/String;)V

    .line 84
    :cond_15
    if-lez p3, :cond_1a

    .line 85
    invoke-virtual {p0, p3}, Lcom/pantech/multimedia/api/VideoFeed;->setStartIndex(I)V

    .line 87
    :cond_1a
    iget-object v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/pantech/multimedia/client/MultimediaClient;->setQueryType(I)V

    .line 88
    return-void

    .line 77
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    goto :goto_c
.end method


# virtual methods
.method public getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    return-object v0
.end method

.method public request()Z
    .registers 2

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    if-eqz v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    move-result v0

    .line 128
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public request(Ljava/lang/String;)Z
    .registers 3
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 119
    :goto_7
    return v0

    .line 118
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    .line 119
    invoke-virtual {p0}, Lcom/pantech/multimedia/api/VideoFeed;->request()Z

    move-result v0

    goto :goto_7
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 3
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/pantech/multimedia/api/VideoFeed;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/query/FeedQuery;->setCategory(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .registers 3
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/pantech/multimedia/api/VideoFeed;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/query/FeedQuery;->setKeywords(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->enoughData:Z

    .line 94
    return-void
.end method

.method public setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pantech/multimedia/api/VideoFeed;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/client/MultimediaClient;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 141
    return-void
.end method

.method public setStartIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 101
    if-lez p1, :cond_9

    .line 102
    invoke-virtual {p0}, Lcom/pantech/multimedia/api/VideoFeed;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/query/FeedQuery;->setStartIndex(I)V

    .line 103
    :cond_9
    return-void
.end method
