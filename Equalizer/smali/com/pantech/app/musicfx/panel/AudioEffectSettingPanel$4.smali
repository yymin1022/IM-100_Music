.class Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;
.super Landroid/content/BroadcastReceiver;
.source "AudioEffectSettingPanel.java"


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
    .line 206
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 209
    if-eqz p2, :cond_60

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 211
    const-string v1, "VMusicFX_SettingP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUIPanelRefreshListener:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.pantech.app.musicfx.panel.AudioEffectSettingPanel.action.refresh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 215
    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 217
    .local v0, "isHeadsetConnected":Z
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v1

    if-nez v1, :cond_61

    move v1, v2

    :goto_42
    invoke-static {v3, v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1200(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;ZZ)V

    .line 218
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v1

    if-nez v1, :cond_6c

    move v1, v2

    :goto_50
    invoke-static {v3, v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1300(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;ZZ)V

    .line 219
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1400(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v3

    if-nez v3, :cond_77

    :goto_5d
    invoke-static {v1, v0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;ZZ)V

    .line 222
    .end local v0    # "isHeadsetConnected":Z
    :cond_60
    return-void

    .line 217
    .restart local v0    # "isHeadsetConnected":Z
    :cond_61
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    goto :goto_42

    .line 218
    :cond_6c
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    goto :goto_50

    .line 219
    :cond_77
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1400(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    goto :goto_5d
.end method
