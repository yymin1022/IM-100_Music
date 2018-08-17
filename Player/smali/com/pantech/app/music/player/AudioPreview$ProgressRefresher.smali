.class Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRefresher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/AudioPreview;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/AudioPreview;)V
    .registers 2

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$400(Lcom/pantech/app/music/player/AudioPreview;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1300(Lcom/pantech/app/music/player/AudioPreview;)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 1189
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1400(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1190
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$600(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v2}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->getCurrentPosition()I

    move-result v2

    add-int/lit16 v2, v2, 0x1f4

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1192
    :cond_4d
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1500(Lcom/pantech/app/music/player/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1193
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v0}, Lcom/pantech/app/music/player/AudioPreview;->access$1500(Lcom/pantech/app/music/player/AudioPreview;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-direct {v1, v2}, Lcom/pantech/app/music/player/AudioPreview$ProgressRefresher;-><init>(Lcom/pantech/app/music/player/AudioPreview;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1194
    return-void
.end method
