.class public Lcom/pantech/app/music/list/module/RefreshQueue;
.super Ljava/lang/Object;
.source "RefreshQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V
    .registers 2
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/pantech/app/music/list/module/RefreshQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/list/module/RefreshQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 23
    iget-object v1, p0, Lcom/pantech/app/music/list/module/RefreshQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->refreshQueue()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 30
    :cond_11
    :goto_11
    return-void

    .line 25
    :catch_12
    move-exception v0

    .line 28
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_11
.end method
