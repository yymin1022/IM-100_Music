.class Lcom/pantech/app/music/player/AudioPreview$2;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 150
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 12
    .param p1, "bar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromuser"    # Z

    .prologue
    .line 158
    if-nez p3, :cond_3

    .line 168
    :goto_2
    return-void

    .line 162
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/player/AudioPreview;->access$502(Lcom/pantech/app/music/player/AudioPreview;J)J

    .line 163
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$600(Lcom/pantech/app/music/player/AudioPreview;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/AudioPreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v3}, Lcom/pantech/app/music/player/AudioPreview;->access$500(Lcom/pantech/app/music/player/AudioPreview;)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_29

    goto :goto_2

    .line 165
    :catch_29
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/AudioPreview;->access$402(Lcom/pantech/app/music/player/AudioPreview;Z)Z

    .line 154
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8
    .param p1, "bar"    # Landroid/widget/SeekBar;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pantech/app/music/player/AudioPreview;->access$402(Lcom/pantech/app/music/player/AudioPreview;Z)Z

    .line 174
    :try_start_6
    const-string v1, "AudioPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mPosOverride : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v3}, Lcom/pantech/app/music/player/AudioPreview;->access$500(Lcom/pantech/app/music/player/AudioPreview;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v1}, Lcom/pantech/app/music/player/AudioPreview;->access$100(Lcom/pantech/app/music/player/AudioPreview;)Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview$2;->this$0:Lcom/pantech/app/music/player/AudioPreview;

    invoke-static {v2}, Lcom/pantech/app/music/player/AudioPreview;->access$500(Lcom/pantech/app/music/player/AudioPreview;)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->seekTo(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_35

    .line 179
    :goto_34
    return-void

    .line 176
    :catch_35
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method
