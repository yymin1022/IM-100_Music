.class Lcom/pantech/app/music/list/module/RearrangeQueue$1;
.super Landroid/os/Handler;
.source "RearrangeQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/RearrangeQueue;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/RearrangeQueue;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/RearrangeQueue;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pantech/app/music/list/module/RearrangeQueue$1;->this$0:Lcom/pantech/app/music/list/module/RearrangeQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 37
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    move-object v1, v2

    check-cast v1, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 41
    .local v1, "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_start_c
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RearrangeQueue$1;->this$0:Lcom/pantech/app/music/list/module/RearrangeQueue;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/RearrangeQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 43
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RearrangeQueue$1;->this$0:Lcom/pantech/app/music/list/module/RearrangeQueue;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/RearrangeQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_21} :catch_29

    .line 51
    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RearrangeQueue$1;->this$0:Lcom/pantech/app/music/list/module/RearrangeQueue;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/RearrangeQueue;->mCallback:Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

    invoke-interface {v2}, Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;->onRearrangeComplete()V

    .line 53
    .end local v1    # "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_28
    return-void

    .line 46
    .restart local v1    # "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :catch_29
    move-exception v0

    .line 48
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_21
.end method
