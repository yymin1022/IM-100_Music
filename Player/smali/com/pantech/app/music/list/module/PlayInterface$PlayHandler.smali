.class Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;
.super Landroid/os/Handler;
.source "PlayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayHandler"
.end annotation


# static fields
.field public static final EVENT_PLAY:I


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/pantech/app/music/list/module/PlayInterface;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/module/PlayInterface;Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V
    .registers 4
    .param p2, "wrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .prologue
    .line 618
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->this$0:Lcom/pantech/app/music/list/module/PlayInterface;

    .line 619
    invoke-interface {p2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 613
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 621
    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 622
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 633
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 635
    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 668
    :cond_b
    :goto_b
    return-void

    .line 638
    :cond_c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    goto :goto_b

    .line 641
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 643
    const/4 v7, 0x0

    .line 645
    .local v7, "ret":Z
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    .line 647
    .local v6, "playInfo":Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;
    if-eqz v6, :cond_5d

    iget-object v0, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_5d

    iget-object v0, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v0, v0

    if-lez v0, :cond_5d

    .line 650
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mOdfNotAvailable:Z

    if-eqz v0, :cond_35

    .line 652
    iget-object v0, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mStartPlayer:Z

    .line 656
    :cond_35
    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    iget-object v2, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v3, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mList:[Lcom/pantech/app/music/list/MusicItemInfo;

    iget v4, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mStartPosition:I

    iget-object v5, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget v5, v5, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mIntentFlag:I

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/module/PlayInterface;->playPlayer(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;[Lcom/pantech/app/music/list/MusicItemInfo;II)Z

    move-result v7

    .line 663
    :goto_4f
    iget-object v0, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayCallback:Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

    if-eqz v0, :cond_b

    .line 664
    iget-object v0, v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v0, v0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayCallback:Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;

    invoke-interface {v0, v7, v6}, Lcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;->onPlayResult(ZLcom/pantech/app/music/list/module/PlayInterface$PlayInfo;)V

    goto :goto_b

    .line 660
    :cond_5d
    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080138

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_4f

    .line 638
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public terminate()V
    .registers 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$PlayHandler;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 627
    return-void
.end method
