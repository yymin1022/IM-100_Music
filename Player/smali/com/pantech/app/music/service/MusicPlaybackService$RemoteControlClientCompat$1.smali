.class Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


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
    .line 4516
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$1;->this$1:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .registers 6
    .param p1, "position"    # J

    .prologue
    .line 4519
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media playback position is requested to be updated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4520
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$1;->this$1:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    .line 4521
    return-void
.end method
