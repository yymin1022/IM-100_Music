.class Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioFXReleaseSwitch"
.end annotation


# instance fields
.field fRelease:Z

.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V
    .registers 3
    .param p2, "fRelease"    # Z

    .prologue
    .line 4032
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4033
    iput-boolean p2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->fRelease:Z

    .line 4034
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 4039
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->fRelease:Z

    if-eqz v1, :cond_27

    .line 4040
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION_OEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4041
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4042
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4043
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4045
    .end local v0    # "i":Landroid/content/Intent;
    :cond_27
    return-void
.end method
