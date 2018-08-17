.class Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;
.super Landroid/os/Handler;
.source "OnePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/oneplayer/OnePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UIHandler"
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
    .line 1500
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1501
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 1502
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1506
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .line 1507
    .local v0, "player":Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    if-eqz v0, :cond_d

    .line 1508
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->handleMessage(Landroid/os/Message;)V

    .line 1510
    :cond_d
    return-void
.end method
