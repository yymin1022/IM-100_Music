.class Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 4048
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverTurn()V
    .registers 1

    .prologue
    .line 4051
    return-void
.end method

.method public onShake()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4055
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v0

    if-ne v0, v4, :cond_1c

    .line 4056
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const v2, 0x7f0800bc

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4800(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    .line 4061
    :goto_1b
    return-void

    .line 4058
    :cond_1c
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const v2, 0x7f0800bb

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4800(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    .line 4059
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJ)V

    goto :goto_1b
.end method
