.class Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;
.super Landroid/os/Handler;
.source "DetailControllerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/DetailControllerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelayedFinishHandler"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/player/DetailControllerActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 3
    .param p1, "arg"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 619
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 620
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 621
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 625
    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/DetailControllerActivity;

    .line 626
    .local v0, "activity":Lcom/pantech/app/music/player/DetailControllerActivity;
    if-eqz v0, :cond_d

    .line 627
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/DetailControllerActivity;->handleDetailController(Landroid/os/Message;)V

    .line 629
    :cond_d
    return-void
.end method
