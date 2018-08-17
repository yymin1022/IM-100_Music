.class Lcom/pantech/app/music/player/MusicPlaybackActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$1;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_1a

    const-string v1, "com.pantech.app.music.action.FINISH_PLAYBACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 221
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "ACTION_FINISH_PLAYBACK"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$1;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    .line 224
    :cond_1a
    return-void
.end method
