.class Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;
.super Ljava/lang/Object;
.source "AudioEffectEQPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;)V
    .registers 2

    .prologue
    .line 645
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 649
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$1200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)[Landroid/widget/SeekBar;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 651
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    iget-object v1, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-static {v1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    iget-object v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1, v3, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$1300(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;[IZI)V

    .line 657
    :goto_2e
    return-void

    .line 655
    :cond_2f
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    iget-object v1, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getCurrentEqulizerBands()[I

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3$1;->this$1:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    iget-object v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0, v1, v3, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$1400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;[IZI)V

    goto :goto_2e
.end method
