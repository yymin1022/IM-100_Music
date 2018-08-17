.class Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EQListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 4410
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReqSessionID()I
    .registers 2

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public onResult(Z)V
    .registers 3
    .param p1, "bSet"    # Z

    .prologue
    .line 4413
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setEQImgSelected(Z)V

    .line 4414
    return-void
.end method

.method public onShowAudioEffectActivity()V
    .registers 4

    .prologue
    .line 4423
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 4424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL_OEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4425
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4426
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4428
    .end local v0    # "i":Landroid/content/Intent;
    :cond_24
    return-void
.end method

.method public onShowHifiAudioControl()V
    .registers 3

    .prologue
    .line 4432
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkAndShowHifiAudioControl(Z)Z

    .line 4433
    return-void
.end method
