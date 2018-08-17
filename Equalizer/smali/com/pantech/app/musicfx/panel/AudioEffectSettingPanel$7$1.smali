.class Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;
.super Ljava/lang/Object;
.source "AudioEffectSettingPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;I)V
    .registers 3

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iput p2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1042
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iget-object v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->val$position:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iget-object v4, v4, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1800(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v4

    iget-object v4, v4, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$2100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I[SZ)Z

    move-result v1

    .line 1044
    .local v1, "isOK":Z
    if-eqz v1, :cond_55

    .line 1046
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1047
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iget-object v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    const-class v3, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1048
    const-string v2, "android.media.extra.AUDIO_SESSION"

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iget-object v3, v3, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget v3, v3, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    const-string v2, "android.media.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iget-object v3, v3, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    const-string v2, "mDefaultEqPreset"

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->val$position:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iget-object v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-virtual {v2, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->startActivity(Landroid/content/Intent;)V

    .line 1054
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    iget-object v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$2002(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z

    .line 1056
    .end local v0    # "i":Landroid/content/Intent;
    :cond_55
    return-void
.end method
