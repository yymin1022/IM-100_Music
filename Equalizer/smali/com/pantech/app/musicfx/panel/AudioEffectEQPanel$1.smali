.class Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;
.super Ljava/lang/Object;
.source "AudioEffectEQPanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
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
    .line 81
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 86
    .local v0, "index":S
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$000()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v1, v2, v4

    if-ltz v1, :cond_71

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$002(J)J

    .line 90
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v1

    sget v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne v1, v2, :cond_72

    .line 92
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 94
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$300(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v2

    sub-int v2, p2, v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 96
    const-string v1, "VMusicFX_EQP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUserPresetSetting.bandLevels["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_71
    :goto_71
    return-void

    .line 99
    :cond_72
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v1

    sget v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v1, v2, :cond_71

    .line 101
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    if-eqz v1, :cond_71

    .line 103
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$300(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v2

    sub-int v2, p2, v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 105
    const-string v1, "VMusicFX_EQP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTempPresetSetting.bandLevels["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v2

    .line 119
    .local v2, "index":S
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v3

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ge v3, v4, :cond_ae

    .line 122
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getCurrentEqulizerBands()[I

    move-result-object v0

    .line 124
    .local v0, "bands":[I
    if-eqz v0, :cond_ae

    .line 126
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    new-instance v4, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-direct {v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>()V

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$402(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 127
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$502(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;I)I

    .line 128
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v4

    sget v5, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    int-to-short v5, v5

    iput-short v5, v4, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->curPreset:S

    invoke-static {v3, v5}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$102(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;I)I

    .line 129
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$600(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Landroid/widget/Spinner;

    move-result-object v3

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 131
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$600(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Landroid/widget/Spinner;

    move-result-object v3

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 134
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$700(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v4

    iget-short v4, v4, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    iput-short v4, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->numBands:S

    .line 135
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v4

    iget-short v4, v4, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->numBands:S

    new-array v4, v4, [S

    iput-object v4, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7a
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    if-eqz v3, :cond_ae

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    array-length v3, v3

    if-ge v1, v3, :cond_ae

    .line 139
    array-length v3, v0

    if-ge v1, v3, :cond_a2

    .line 141
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget v4, v0, v1

    int-to-short v4, v4

    aput-short v4, v3, v1

    .line 137
    :goto_9f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 145
    :cond_a2
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    const/4 v4, 0x0

    aput-short v4, v3, v1

    goto :goto_9f

    .line 151
    .end local v0    # "bands":[I
    .end local v1    # "i":I
    :cond_ae
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v3

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne v3, v4, :cond_f2

    .line 153
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    if-eqz v3, :cond_ec

    .line 155
    const-string v3, "VMusicFX_EQP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartTrackingTouch["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v5}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v5

    iget-object v5, v5, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget-short v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_ec
    :goto_ec
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-virtual {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->invalidateOptionsMenu()V

    .line 167
    return-void

    .line 158
    :cond_f2
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v3

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v3, v4, :cond_ec

    .line 160
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    if-eqz v3, :cond_ec

    .line 162
    const-string v3, "VMusicFX_EQP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EQUALIZER_PRESET_TEMP onStartTrackingTouch["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v5}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v5

    iget-object v5, v5, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget-short v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 176
    .local v0, "index":S
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$802(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Z)Z

    .line 178
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v1

    sget v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne v1, v2, :cond_8d

    .line 180
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 182
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$300(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 184
    const-string v1, "VMusicFX_EQP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v4

    iget-object v4, v4, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$900(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;II[S)Z

    .line 188
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->saveUserPreset(ILcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)V

    .line 202
    :cond_8c
    :goto_8c
    return-void

    .line 191
    :cond_8d
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v1

    sget v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v1, v2, :cond_8c

    .line 193
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 195
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$300(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 197
    const-string v1, "VMusicFX_EQP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    iget v2, v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;->this$0:Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    invoke-static {v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v4

    iget-object v4, v4, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->access$900(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;II[S)Z

    goto :goto_8c
.end method
