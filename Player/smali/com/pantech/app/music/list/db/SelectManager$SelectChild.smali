.class Lcom/pantech/app/music/list/db/SelectManager$SelectChild;
.super Ljava/lang/Object;
.source "SelectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/db/SelectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectChild"
.end annotation


# static fields
.field static final EVENT_CALLBACK:I = 0x2711


# instance fields
.field mCallback:Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

.field mContext:Landroid/content/Context;

.field mGroupInfo:Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

.field mHandler:Landroid/os/Handler;

.field mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupInfo"    # Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .param p3, "lock"    # Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .param p4, "callback"    # Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mContext:Landroid/content/Context;

    .line 403
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mGroupInfo:Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 404
    iput-object p4, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mCallback:Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    .line 405
    iput-object p3, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 407
    new-instance v0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/db/SelectManager$SelectChild$1;-><init>(Lcom/pantech/app/music/list/db/SelectManager$SelectChild;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mHandler:Landroid/os/Handler;

    .line 419
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x2711

    .line 425
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mGroupInfo:Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mSyncLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->selectChildAll(Landroid/content/Context;Ljava/util/concurrent/locks/ReentrantReadWriteLock;)I

    .line 431
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 432
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 433
    return-void
.end method
