.class Lcom/pantech/app/music/player/AudioPreview$3;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/AudioPreview;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/AudioPreview;)V
    .registers 2

    .prologue
    .line 181
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$3;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    if-nez p1, :cond_8

    .line 186
    const-string v1, "mButtonReceiver context is null"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 208
    :cond_7
    :goto_7
    return-void

    .line 190
    :cond_8
    if-nez p2, :cond_10

    .line 191
    const-string v1, "mButtonReceiver intent is null"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_7

    .line 195
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 198
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$3;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 199
    const-string v1, "mButtonReceiver mPlayer is null"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_7

    .line 203
    :cond_2a
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$3;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 204
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$3;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->pause()V

    .line 205
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$3;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$300(Lcom/pantech/app/music/player/AudioPreview;)V

    goto :goto_7
.end method
