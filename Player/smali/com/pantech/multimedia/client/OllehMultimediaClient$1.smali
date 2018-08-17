.class Lcom/pantech/multimedia/client/OllehMultimediaClient$1;
.super Landroid/os/Handler;
.source "OllehMultimediaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/client/OllehMultimediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/client/OllehMultimediaClient;


# direct methods
.method constructor <init>(Lcom/pantech/multimedia/client/OllehMultimediaClient;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;->this$0:Lcom/pantech/multimedia/client/OllehMultimediaClient;

    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_28

    .line 47
    :cond_5
    :goto_5
    return-void

    .line 35
    :sswitch_6
    iget v1, p1, Landroid/os/Message;->what:I

    .line 36
    .local v1, "message":I
    iget-object v2, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;->this$0:Lcom/pantech/multimedia/client/OllehMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    invoke-interface {v2}, Lcom/pantech/multimedia/data/FeedData;->getResCode()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "errorCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;->this$0:Lcom/pantech/multimedia/client/OllehMultimediaClient;

    invoke-virtual {v2, v1, v0}, Lcom/pantech/multimedia/client/OllehMultimediaClient;->processResponse(ILjava/lang/String;)V

    goto :goto_5

    .line 43
    .end local v0    # "errorCode":Ljava/lang/String;
    .end local v1    # "message":I
    :sswitch_16
    iget-object v2, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;->this$0:Lcom/pantech/multimedia/client/OllehMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    if-eqz v2, :cond_5

    .line 44
    iget-object v2, p0, Lcom/pantech/multimedia/client/OllehMultimediaClient$1;->this$0:Lcom/pantech/multimedia/client/OllehMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/OllehMultimediaClient;->mOnResponseListener:Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-interface {v2, v3, v4}, Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;->onResponse(Ljava/lang/Object;I)V

    goto :goto_5

    .line 33
    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_6
        0x65 -> :sswitch_16
        0x66 -> :sswitch_16
        0x67 -> :sswitch_16
        0x69 -> :sswitch_16
    .end sparse-switch
.end method
