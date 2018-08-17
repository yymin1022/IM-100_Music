.class Lcom/pantech/app/music/service/MusicPlaybackService$1;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$1;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$1;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAudioSessionId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$1;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$1;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 318
    return-void
.end method
