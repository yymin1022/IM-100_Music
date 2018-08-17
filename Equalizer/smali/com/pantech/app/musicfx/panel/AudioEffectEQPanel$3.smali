.class Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;
.super Ljava/lang/Object;
.source "AudioEffectEQPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayEqSelectSpinner(Landroid/widget/Spinner;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)V
    .registers 2

    .prologue
    .line 611
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 615
    const-string v0, "VMusicFX_EQP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSpinChangeSeleced["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    sget v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne p3, v0, :cond_2e

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v0

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v0, v1, :cond_2e

    .line 661
    :cond_2d
    :goto_2d
    return-void

    .line 624
    :cond_2e
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_2d

    .line 627
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$1100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;IZ)V

    .line 629
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    int-to-short v1, p3

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$102(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;I)I

    .line 631
    sget v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne p3, v0, :cond_72

    .line 633
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v1, p3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->loadUserPreset(I)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$202(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 634
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget v1, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v2

    iget-object v2, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-static {v0, v1, p3, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$900(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;II[S)Z

    .line 642
    :goto_60
    if-eqz p2, :cond_6c

    .line 645
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p2, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    :cond_6c
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->invalidateOptionsMenu()V

    goto :goto_2d

    .line 638
    :cond_72
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$202(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 639
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget v1, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    invoke-static {v0, v1, p3, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$900(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;II[S)Z

    goto :goto_60
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p1, "adapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "VMusicFX_EQP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNothingSelected["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    return-void
.end method
