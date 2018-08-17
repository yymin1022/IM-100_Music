.class Lcom/pantech/app/music/player/AudioPreview$1;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 111
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 6
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    packed-switch p1, :pswitch_data_ac

    .line 147
    :cond_4
    :goto_4
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$300(Lcom/pantech/app/music/player/AudioPreview;)V

    .line 148
    :goto_9
    return-void

    .line 116
    :pswitch_a
    const-string v0, "AudioPreview"

    const-string v1, "-->AudioFocus: AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0, v2}, Lcom/pantech/app/music/player/AudioPreview;->access$002(Lcom/pantech/app/music/player/AudioPreview;Z)Z

    .line 118
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 119
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_4

    .line 124
    :pswitch_28
    const-string v0, "AudioPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->AudioFocus: AUDIOFOCUS_LOSS_TRANSIENT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/AudioPreview;->access$002(Lcom/pantech/app/music/player/AudioPreview;Z)Z

    .line 127
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->pause()V

    goto :goto_4

    .line 131
    :pswitch_64
    const-string v0, "AudioPreview"

    const-string v1, "-->AudioFocus: AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$000(Lcom/pantech/app/music/player/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 133
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0, v2}, Lcom/pantech/app/music/player/AudioPreview;->access$002(Lcom/pantech/app/music/player/AudioPreview;Z)Z

    .line 134
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview;->isCallState()Z

    .line 136
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    iget-object v0, v0, Lcom/pantech/app/music/player/AudioPreview;->mAudioPreviewHandler:Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 139
    :cond_89
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/AudioPreview;->access$200(Lcom/pantech/app/music/player/AudioPreview;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.pantech.app.mms.ui.ComposeMessageActivity"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->isActivityRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    :cond_a5
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$1;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/AudioPreview;->finish()V

    goto/16 :goto_9

    .line 114
    :pswitch_data_ac
    .packed-switch -0x3
        :pswitch_28
        :pswitch_28
        :pswitch_a
        :pswitch_4
        :pswitch_64
    .end packed-switch
.end method
