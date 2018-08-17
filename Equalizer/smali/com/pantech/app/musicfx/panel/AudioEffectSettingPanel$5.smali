.class Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$5;
.super Ljava/lang/Object;
.source "AudioEffectSettingPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 806
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$5;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 810
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-nez p2, :cond_3

    .line 827
    :cond_2
    :goto_2
    return-void

    .line 813
    :cond_3
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpinChangeSeleced = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$5;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_2

    .line 818
    if-nez p3, :cond_38

    .line 820
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$5;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1600(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z

    goto :goto_2

    .line 824
    :cond_38
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$5;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    const/4 v1, 0x1

    invoke-static {v0, p3, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1600(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 833
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
