.class Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;
.super Ljava/lang/Object;
.source "AudioEffectSettingPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setPresetReverbSpinner(Landroid/widget/Spinner;ZI)V
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
    .line 837
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 841
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 843
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 845
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 857
    :cond_3d
    :goto_3d
    return-void

    .line 854
    :cond_3e
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 855
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3d
.end method
