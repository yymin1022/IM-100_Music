.class public Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;
.super Landroid/os/Handler;
.source "ListMiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListMiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressHandler"
.end annotation


# static fields
.field static final UPDATE_PROGRESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListMiniPlayer;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/library/ListMiniPlayer;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    .line 593
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 594
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x1

    .line 598
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 599
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_4e

    .line 620
    :goto_b
    return-void

    .line 602
    :pswitch_c
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-wide v2, v1, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_44

    .line 608
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-static {v1}, Lcom/pantech/app/music/library/ListMiniPlayer;->access$500(Lcom/pantech/app/music/library/ListMiniPlayer;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 609
    const-string v1, "ListMiniPlayer"

    const-string v2, "mSetProgressToZero == fals   mSeekBar.setProgress(0);"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 611
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-static {v1, v6}, Lcom/pantech/app/music/library/ListMiniPlayer;->access$502(Lcom/pantech/app/music/library/ListMiniPlayer;Z)Z

    .line 613
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPosition()J

    move-result-wide v2

    mul-long/2addr v2, v8

    iget-object v4, p0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-wide v4, v4, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 616
    :cond_44
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v6, v1}, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 617
    .local v0, "retryMsg":Landroid/os/Message;
    invoke-virtual {p0, v0, v8, v9}, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    .line 599
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method
