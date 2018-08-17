.class Lcom/pantech/app/music/list/db/SelectManager$SelectChild$1;
.super Landroid/os/Handler;
.source "SelectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/SelectManager$SelectChild;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;Ljava/util/concurrent/locks/ReentrantReadWriteLock;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/db/SelectManager$SelectChild;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/db/SelectManager$SelectChild;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild$1;->this$0:Lcom/pantech/app/music/list/db/SelectManager$SelectChild;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 415
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_10

    .line 416
    iget-object v0, p0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild$1;->this$0:Lcom/pantech/app/music/list/db/SelectManager$SelectChild;

    iget-object v0, v0, Lcom/pantech/app/music/list/db/SelectManager$SelectChild;->mCallback:Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;

    invoke-interface {v0}, Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;->onSelectDone()V

    .line 417
    :cond_10
    return-void
.end method
