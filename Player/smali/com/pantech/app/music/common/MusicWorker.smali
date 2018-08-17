.class public Lcom/pantech/app/music/common/MusicWorker;
.super Ljava/lang/Object;
.source "MusicWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mLockStart:Ljava/lang/Object;

.field private final mLockStop:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/common/MusicWorker;-><init>(Ljava/lang/String;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    const/16 v2, 0xa

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStart:Ljava/lang/Object;

    .line 11
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStop:Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/lang/Thread;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 64
    .local v1, "t":Ljava/lang/Thread;
    if-le p2, v2, :cond_1c

    move p2, v2

    .end local p2    # "priority":I
    :cond_1c
    invoke-virtual {v1, p2}, Ljava/lang/Thread;->setPriority(I)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 66
    iget-object v3, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStart:Ljava/lang/Object;

    monitor-enter v3

    .line 68
    :goto_25
    :try_start_25
    iget-object v2, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_34

    if-nez v2, :cond_37

    .line 72
    :try_start_29
    iget-object v2, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStart:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    goto :goto_25

    .line 74
    :catch_2f
    move-exception v0

    .line 76
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_25

    .line 79
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_34
    move-exception v2

    monitor-exit v3
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v2

    :cond_37
    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_34

    .line 80
    return-void
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public run()V
    .registers 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStart:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;

    .line 94
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStart:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 95
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_37

    .line 97
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 99
    iget-object v1, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStop:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_18
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStop:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;

    .line 103
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_3a

    .line 105
    const-string v0, "VMusicWorkerTag"

    const-string v1, "-------------------"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "VMusicWorkerTag"

    const-string v1, "MusicWorker Stopped"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "VMusicWorkerTag"

    const-string v1, "-------------------"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 95
    :catchall_37
    move-exception v0

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v0

    .line 103
    :catchall_3a
    move-exception v0

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public stopWorker()V
    .registers 4

    .prologue
    .line 112
    const-string v1, "VMusicWorkerTag"

    const-string v2, "stopWorker "

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 116
    iget-object v2, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStop:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    :goto_f
    :try_start_f
    iget-object v1, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_1e

    if-eqz v1, :cond_21

    .line 122
    :try_start_13
    iget-object v1, p0, Lcom/pantech/app/music/common/MusicWorker;->mLockStop:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_19
    .catchall {:try_start_13 .. :try_end_18} :catchall_1e

    goto :goto_f

    .line 124
    :catch_19
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_f

    .line 129
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v1

    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 130
    return-void
.end method

.method public stopWorkerNoSync()V
    .registers 3

    .prologue
    .line 134
    const-string v0, "VMusicWorkerTag"

    const-string v1, "stopWorkerNoSync "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_10

    .line 137
    iget-object v0, p0, Lcom/pantech/app/music/common/MusicWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 139
    :cond_10
    return-void
.end method
