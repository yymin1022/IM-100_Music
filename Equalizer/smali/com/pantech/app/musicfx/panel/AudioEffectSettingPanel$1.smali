.class Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;
.super Ljava/lang/Object;
.source "AudioEffectSettingPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v3, 0x1

    .line 101
    if-nez p1, :cond_4

    .line 113
    :cond_3
    :goto_3
    return-void

    .line 103
    :cond_4
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-ne p3, v3, :cond_23

    .line 106
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$002(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I)I

    .line 108
    :cond_23
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$300(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z

    goto :goto_3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 89
    if-nez p1, :cond_3

    .line 97
    :goto_2
    return-void

    .line 91
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$302(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z

    .line 94
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$002(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I)I

    .line 96
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v3, 0x1

    .line 77
    if-nez p1, :cond_4

    .line 85
    :goto_3
    return-void

    .line 79
    :cond_4
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VirtualizerProgress onStopTrackingTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_47

    .line 82
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z

    .line 84
    :cond_47
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$302(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z

    goto :goto_3
.end method
