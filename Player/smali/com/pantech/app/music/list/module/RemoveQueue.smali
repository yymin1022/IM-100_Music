.class public Lcom/pantech/app/music/list/module/RemoveQueue;
.super Ljava/lang/Object;
.source "RemoveQueue.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/content/ServiceConnection;


# instance fields
.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mDebug:Z

.field mDeleteList:[J

.field mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mServiceConnectionLock:Ljava/util/concurrent/CountDownLatch;

.field mServiceDisConnectionLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/ArrayList;)V
    .registers 11
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v6, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDebug:Z

    .line 29
    iput-object v1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceConnectionLock:Ljava/util/concurrent/CountDownLatch;

    .line 30
    iput-object v1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceDisConnectionLock:Ljava/util/concurrent/CountDownLatch;

    .line 36
    iput-object p1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 38
    iput-object p2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 40
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDeleteList:[J

    .line 41
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 43
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDeleteList:[J

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 46
    :cond_30
    iget-object v1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    if-nez v1, :cond_5c

    .line 48
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceConnectionLock:Ljava/util/concurrent/CountDownLatch;

    .line 49
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceDisConnectionLock:Ljava/util/concurrent/CountDownLatch;

    .line 51
    iget-object v1, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v3}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, p0, v6}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 53
    :cond_5c
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "DBInterfaceCommon"

    const-string v1, "RemoveQueue:onServiceConnected"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_b
    check-cast p2, Lcom/pantech/app/music/service/IMusicPlaybackService;

    .end local p2    # "service":Landroid/os/IBinder;
    iput-object p2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 121
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceConnectionLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 122
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDebug:Z

    if-eqz v0, :cond_b

    const-string v0, "DBInterfaceCommon"

    const-string v1, "RemoveQueue:onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceDisConnectionLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 131
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 62
    iget-boolean v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDebug:Z

    if-eqz v2, :cond_b

    const-string v2, "DBInterfaceCommon"

    const-string v3, "RemoveQueue:start"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_b
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceConnectionLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_14

    .line 71
    :try_start_f
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceConnectionLock:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_14} :catch_65

    .line 78
    :cond_14
    :goto_14
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v2, v3, :cond_3c

    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq v2, v3, :cond_3c

    .line 83
    :try_start_20
    iget-boolean v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDebug:Z

    if-eqz v2, :cond_2d

    const-string v2, "DBInterfaceCommon"

    const-string v3, "removeQueues"

    iget-object v4, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDeleteList:[J

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/utils/MLog;->list(Ljava/lang/String;Ljava/lang/String;[J)V

    .line 85
    :cond_2d
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    if-nez v2, :cond_6a

    .line 86
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    iget-object v3, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDeleteList:[J

    invoke-interface {v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->removeQueues([J)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3c} :catch_76

    .line 97
    :cond_3c
    :goto_3c
    iget-boolean v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDebug:Z

    if-eqz v2, :cond_47

    const-string v2, "DBInterfaceCommon"

    const-string v3, "RemoveQueue:unbind"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_47
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceDisConnectionLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_5d

    .line 101
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 104
    :try_start_54
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mServiceDisConnectionLock:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x320

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5d
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_5d} :catch_7b

    .line 110
    :cond_5d
    :goto_5d
    const-string v2, "DBInterfaceCommon"

    const-string v3, "RemoveQueue:end"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 72
    :catch_65
    move-exception v1

    .line 73
    .local v1, "e1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_14

    .line 88
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_6a
    :try_start_6a
    iget-object v2, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/module/RemoveQueue;->mDeleteList:[J

    invoke-interface {v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->removeQueues([J)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_75} :catch_76

    goto :goto_3c

    .line 90
    :catch_76
    move-exception v0

    .line 93
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3c

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_7b
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5d
.end method
