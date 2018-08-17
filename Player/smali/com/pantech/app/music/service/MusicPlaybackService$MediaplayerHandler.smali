.class Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;
.super Landroid/os/Handler;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaplayerHandler"
.end annotation


# instance fields
.field reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/service/MusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 3
    .param p1, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 369
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/service/MusicPlaybackService;

    .line 374
    .local v0, "service":Lcom/pantech/app/music/service/MusicPlaybackService;
    if-eqz v0, :cond_d

    .line 375
    invoke-static {v0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$000(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/os/Message;)V

    .line 377
    :cond_d
    return-void
.end method
