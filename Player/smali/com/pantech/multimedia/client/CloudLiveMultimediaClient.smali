.class public Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;
.super Lcom/pantech/multimedia/client/MultimediaClient;
.source "CloudLiveMultimediaClient.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mReqeustRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClient;-><init>(Landroid/content/Context;I)V

    .line 61
    new-instance v0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 25
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
    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/pantech/multimedia/client/MultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    .line 61
    new-instance v0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance v0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method protected processResponse(ILjava/lang/String;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_17

    .line 36
    const/16 v0, 0xc8

    .line 37
    .local v0, "FEED_SUCCESS":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 39
    .local v1, "code":I
    if-ne v1, v0, :cond_18

    .line 40
    iget-object v2, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v3, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v2, v3, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    .line 44
    .end local v0    # "FEED_SUCCESS":I
    .end local v1    # "code":I
    :cond_17
    :goto_17
    return-void

    .line 42
    .restart local v0    # "FEED_SUCCESS":I
    .restart local v1    # "code":I
    :cond_18
    iget-object v3, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v2, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    check-cast v2, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    invoke-virtual {v2}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;->getResMsg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    goto :goto_17
.end method

.method public request()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 58
    :cond_9
    :goto_9
    return v1

    .line 50
    :cond_a
    iget-object v2, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_9

    .line 51
    invoke-super {p0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    .line 53
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 54
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    const/4 v1, 0x1

    goto :goto_9
.end method
