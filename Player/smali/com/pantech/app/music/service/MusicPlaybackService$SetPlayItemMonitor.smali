.class Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnSetPlayItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetPlayItemMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;Lcom/pantech/app/music/service/MusicPlaybackService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p2, "x1"    # Lcom/pantech/app/music/service/MusicPlaybackService$1;

    .prologue
    .line 1806
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onSetPlayItem(IJ)V
    .registers 8
    .param p1, "scope"    # I
    .param p2, "uid"    # J

    .prologue
    .line 1810
    const-string v0, "MusicPlaybackService"

    const-string v1, "onSetPlayItem"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;

    move-result-object v0

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1812
    return-void
.end method
