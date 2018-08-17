.class public Lcom/pantech/multimedia/client/MelOnMultimediaClient;
.super Lcom/pantech/multimedia/client/MultimediaClient;
.source "MelOnMultimediaClient.java"


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

    .line 33
    new-instance v0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/MelOnMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/MelOnMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/MelOnMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 26
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

    .line 33
    new-instance v0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$1;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/MelOnMultimediaClient$1;-><init>(Lcom/pantech/multimedia/client/MelOnMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;-><init>(Lcom/pantech/multimedia/client/MelOnMultimediaClient;)V

    iput-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method private responseAbnormal(ILjava/lang/String;)V
    .registers 4
    .param p1, "message"    # I
    .param p2, "errCode"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    invoke-interface {v0, p2, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    .line 147
    :cond_9
    return-void
.end method

.method private responseNormal(I)V
    .registers 4
    .param p1, "message"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v0, :cond_17

    .line 136
    iget v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mQueryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_18

    .line 137
    iget-object v1, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    check-cast v0, Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getLyrics()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    .line 142
    :cond_17
    :goto_17
    return-void

    .line 139
    :cond_18
    iget-object v0, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    iget-object v1, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v0, v1, p1}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    goto :goto_17
.end method


# virtual methods
.method protected processResponse(ILjava/lang/String;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, "code":I
    if-nez p2, :cond_1a

    .line 110
    const/4 v0, 0x0

    .line 116
    :goto_4
    sparse-switch v0, :sswitch_data_4a

    .line 129
    const/16 v1, 0xc8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->responseAbnormal(ILjava/lang/String;)V

    .line 133
    :goto_19
    return-void

    .line 111
    :cond_1a
    iget-object v1, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    check-cast v1, Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    invoke-virtual {v1}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getTotalCnt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 112
    const/4 v0, 0x0

    goto :goto_4

    .line 114
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    .line 119
    :sswitch_33
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->responseNormal(I)V

    goto :goto_19

    .line 126
    :sswitch_37
    const/16 v1, 0x68

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->responseAbnormal(ILjava/lang/String;)V

    goto :goto_19

    .line 116
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_33
        0x3e8 -> :sswitch_37
        0xbb8 -> :sswitch_33
        0xfa0 -> :sswitch_37
        0xfa1 -> :sswitch_37
        0xfa2 -> :sswitch_37
        0x2328 -> :sswitch_37
    .end sparse-switch
.end method

.method public request()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v2, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 101
    :cond_9
    :goto_9
    return v1

    .line 94
    :cond_a
    iget-object v2, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_9

    .line 95
    invoke-super {p0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    .line 97
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mReqeustRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    const/4 v1, 0x1

    goto :goto_9
.end method
