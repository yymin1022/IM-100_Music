.class Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$2;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;)V
    .registers 2

    .prologue
    .line 4523
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$2;->this$1:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPlaybackPosition()J
    .registers 6

    .prologue
    .line 4526
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$2;->this$1:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    iget-object v2, v2, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J

    move-result-wide v0

    .line 4527
    .local v0, "position":J
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RCC.onGetPlaybackPosition()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    return-wide v0
.end method
