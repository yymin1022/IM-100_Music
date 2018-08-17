.class Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;
.super Landroid/os/Handler;
.source "CircularLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateUIHandler"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;)V
    .registers 3
    .param p1, "layout"    # Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .prologue
    .line 1359
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1360
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 1361
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1365
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout$UpdateUIHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .line 1366
    .local v0, "layout":Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
    if-eqz v0, :cond_d

    .line 1367
    invoke-static {v0, p1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->access$100(Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;Landroid/os/Message;)V

    .line 1369
    :cond_d
    return-void
.end method
