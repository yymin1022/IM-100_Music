.class Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;
.super Landroid/os/Handler;
.source "ListMiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListMiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiniPlayerHandler"
.end annotation


# instance fields
.field final reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/library/ListMiniPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pantech/app/music/library/ListMiniPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListMiniPlayer;Lcom/pantech/app/music/library/ListMiniPlayer;)V
    .registers 4
    .param p2, "activity"    # Lcom/pantech/app/music/library/ListMiniPlayer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/ListMiniPlayer;

    .line 110
    .local v0, "activity":Lcom/pantech/app/music/library/ListMiniPlayer;
    if-eqz v0, :cond_d

    .line 111
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/library/ListMiniPlayer;->handleMessageForMiniPlayer(Landroid/os/Message;)V

    .line 113
    :cond_d
    return-void
.end method
