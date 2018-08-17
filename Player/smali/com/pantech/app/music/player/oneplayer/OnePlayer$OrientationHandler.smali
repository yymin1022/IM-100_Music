.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;
.super Landroid/os/Handler;
.source "OnePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OrientationHandler"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/player/oneplayer/OnePlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V
    .registers 3
    .param p1, "arg"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 1516
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1517
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 1518
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1522
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .line 1523
    .local v0, "player":Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    if-eqz v0, :cond_d

    .line 1524
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->handleMessage(Landroid/os/Message;)V

    .line 1526
    :cond_d
    return-void
.end method
