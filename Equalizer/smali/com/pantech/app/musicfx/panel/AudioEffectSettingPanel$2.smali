.class Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;
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
    .line 118
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

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

    .line 145
    if-nez p1, :cond_4

    .line 157
    :cond_3
    :goto_3
    return-void

    .line 147
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

    .line 149
    if-ne p3, v3, :cond_23

    .line 150
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$402(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I)I

    .line 152
    :cond_23
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$600(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z

    goto :goto_3
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 133
    if-nez p1, :cond_3

    .line 141
    :goto_2
    return-void

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$702(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z

    .line 138
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$402(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I)I

    .line 140
    const-string v0, "VMusicFX_SettingP"

    const-string v1, "onStartTrackingTouch = "

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v3, 0x1

    .line 121
    if-nez p1, :cond_4

    .line 129
    :goto_3
    return-void

    .line 123
    :cond_4
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BassBoostProgress onStopTrackingTouch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_47

    .line 126
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$600(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z

    .line 128
    :cond_47
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$702(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z

    goto :goto_3
.end method
