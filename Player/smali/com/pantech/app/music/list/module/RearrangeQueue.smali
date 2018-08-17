.class public Lcom/pantech/app/music/list/module/RearrangeQueue;
.super Ljava/lang/Object;
.source "RearrangeQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mCallback:Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mCursor:Landroid/database/Cursor;

.field mCursorLock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;)V
    .registers 7
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "cursorLock"    # Ljava/lang/Object;
    .param p4, "callback"    # Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mCursorLock:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 25
    iput-object p2, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mCursor:Landroid/database/Cursor;

    .line 26
    iput-object p3, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mCursorLock:Ljava/lang/Object;

    .line 27
    iput-object p4, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mCallback:Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;

    .line 29
    new-instance v0, Lcom/pantech/app/music/list/module/RearrangeQueue$1;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/module/RearrangeQueue$1;-><init>(Lcom/pantech/app/music/list/module/RearrangeQueue;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v5, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mCursorLock:Ljava/lang/Object;

    monitor-enter v5

    .line 64
    :try_start_5
    iget-object v0, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mCursor:Landroid/database/Cursor;

    .line 66
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_20

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 69
    .local v2, "nCount":I
    new-array v3, v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_20

    .line 73
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 74
    new-instance v4, Lcom/pantech/app/music/list/MusicItemInfo;

    const/4 v6, 0x1

    invoke-direct {v4, v0, v6}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    aput-object v4, v3, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 77
    .end local v1    # "i":I
    .end local v2    # "nCount":I
    :cond_20
    monitor-exit v5
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_2b

    .line 79
    iget-object v4, p0, Lcom/pantech/app/music/list/module/RearrangeQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 80
    return-void

    .line 77
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_2b
    move-exception v4

    :try_start_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v4
.end method
