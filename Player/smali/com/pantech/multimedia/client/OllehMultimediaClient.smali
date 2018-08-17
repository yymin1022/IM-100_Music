.class public Lcom/pantech/multimedia/client/OllehMultimediaClient;
.super Lcom/pantech/multimedia/client/MultimediaClient;
.source "OllehMultimediaClient.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private mReqeustRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClient;-><init>(Landroid/content/Context;I)V

    .line 30
    new-instance v0, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/OllehMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/pantech/multimedia/client/OllehMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/OllehMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/OllehMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "total"    # I
    .param p6, "startIndex"    # I

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/pantech/multimedia/client/MultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    .line 30
    new-instance v0, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/OllehMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/pantech/multimedia/client/OllehMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/OllehMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/OllehMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 28
    return-void
.end method


# virtual methods
.method protected processResponse(ILjava/lang/String;)V
    .registers 5
    .param p1, "message"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v0, :cond_17

    .line 101
    iget v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mQueryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_18

    .line 102
    iget-object v1, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    check-cast v0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getLyrics()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    .line 107
    :cond_17
    :goto_17
    return-void

    .line 104
    :cond_18
    iget-object v0, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v1, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v0, v1, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    goto :goto_17
.end method

.method public request()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v2, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 95
    :cond_9
    :goto_9
    return v1

    .line 88
    :cond_a
    iget-object v2, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_9

    .line 89
    invoke-super {p0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    .line 91
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 93
    const/4 v1, 0x1

    goto :goto_9
.end method
