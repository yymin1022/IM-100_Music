.class Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;
.super Ljava/lang/Object;
.source "AudioEffectSettingPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->displayEqSelectSpinner(Lcom/pantech/app/musicfx/view/EventSpinner;ZI)V
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
    .line 1014
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1018
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventSpinner onSpinChangeSeleced["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    iget-object v1, v1, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-nez v1, :cond_27

    .line 1069
    :goto_26
    return-void

    .line 1025
    :cond_27
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1800(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v1

    int-to-short v2, p3

    iput-short v2, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 1027
    if-nez p3, :cond_39

    .line 1029
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    const/4 v2, 0x0

    invoke-static {v1, p3, v5, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1900(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I[SZ)Z

    goto :goto_26

    .line 1031
    :cond_39
    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->EQUALIZER_PRESET_USER:I

    if-ne p3, v1, :cond_77

    .line 1033
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventSpinner userpreset isChecked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$2000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$2000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z

    move-result v1

    if-ne v1, v4, :cond_71

    .line 1037
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;

    invoke-direct {v1, p0, p3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7$1;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1058
    .local v0, "th":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_26

    .line 1062
    .end local v0    # "th":Ljava/lang/Thread;
    :cond_71
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$2002(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z

    goto :goto_26

    .line 1067
    :cond_77
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    add-int/lit8 v2, p3, -0x1

    invoke-static {v1, v2, v5, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->access$1900(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I[SZ)Z

    goto :goto_26
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
    .line 1075
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
