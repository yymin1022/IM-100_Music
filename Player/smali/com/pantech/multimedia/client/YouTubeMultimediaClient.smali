.class public Lcom/pantech/multimedia/client/YouTubeMultimediaClient;
.super Lcom/pantech/multimedia/client/MultimediaClient;
.source "YouTubeMultimediaClient.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field private mReqeustRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClient;-><init>(Landroid/content/Context;I)V

    .line 31
    new-instance v0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/YouTubeMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/YouTubeMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 23
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

    .line 31
    new-instance v0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/YouTubeMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/YouTubeMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/YouTubeMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 29
    return-void
.end method


# virtual methods
.method protected processResponse(ILjava/lang/String;)V
    .registers 5
    .param p1, "message"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v1, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v0, v1, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    .line 103
    :cond_b
    return-void
.end method

.method public request()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v2, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 96
    :cond_9
    :goto_9
    return v1

    .line 89
    :cond_a
    iget-object v2, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_9

    .line 90
    invoke-super {p0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    .line 92
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    const/4 v1, 0x1

    goto :goto_9
.end method
