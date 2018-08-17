.class public Lcom/pantech/app/musicfx/effect/EffectEqualizer;
.super Ljava/lang/Object;
.source "EffectEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    }
.end annotation


# instance fields
.field mEqualizer:Ljava/lang/Object;

.field mSolution:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "sessionID"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getSolution()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    .line 19
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 20
    new-instance v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-direct {v0, p1, p2}, Lcom/lifevibes/audiofx/LVEqualizer;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    .line 23
    :goto_15
    return-void

    .line 22
    :cond_16
    new-instance v0, Landroid/media/audiofx/Equalizer;

    invoke-direct {v0, p1, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    goto :goto_15
.end method


# virtual methods
.method public getBandLevel(S)I
    .registers 4
    .param p1, "bandNum"    # S

    .prologue
    .line 46
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 47
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVEqualizer;->getBandLevel(S)S

    move-result v0

    .line 49
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v0

    goto :goto_d
.end method

.method public getBandLevelRange()[S
    .registers 3

    .prologue
    .line 55
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 56
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVEqualizer;->getBandLevelRange()[S

    move-result-object v0

    .line 58
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v0

    goto :goto_d
.end method

.method public getCenterFreq(S)I
    .registers 4
    .param p1, "bandNum"    # S

    .prologue
    .line 82
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 83
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVEqualizer;->getCenterFreq(S)I

    move-result v0

    .line 85
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v0

    goto :goto_d
.end method

.method public getEnabled()Z
    .registers 3

    .prologue
    .line 109
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 110
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVEqualizer;->getEnabled()Z

    move-result v0

    .line 112
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getEnabled()Z

    move-result v0

    goto :goto_d
.end method

.method public getInstance()Landroid/media/audiofx/AudioEffect;
    .registers 3

    .prologue
    .line 28
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 29
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    .line 31
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    goto :goto_9
.end method

.method public getNumberOfBands()S
    .registers 3

    .prologue
    .line 37
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 38
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVEqualizer;->getNumberOfBands()S

    move-result v0

    .line 40
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v0

    goto :goto_d
.end method

.method public getNumberOfPresets()I
    .registers 3

    .prologue
    .line 64
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 65
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVEqualizer;->getNumberOfPresets()S

    move-result v0

    .line 67
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v0

    goto :goto_d
.end method

.method public getPresetName(S)Ljava/lang/Object;
    .registers 4
    .param p1, "bandNum"    # S

    .prologue
    .line 73
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 74
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVEqualizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public hasControl()Z
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 137
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVEqualizer;->hasControl()Z

    move-result v0

    .line 139
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->hasControl()Z

    move-result v0

    goto :goto_d
.end method

.method public release()V
    .registers 3

    .prologue
    .line 91
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 92
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVEqualizer;->release()V

    .line 95
    :goto_c
    return-void

    .line 94
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    goto :goto_c
.end method

.method public setBandLevel(SS)V
    .registers 5
    .param p1, "bandNum"    # S
    .param p2, "level"    # S

    .prologue
    .line 127
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 128
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1, p2}, Lcom/lifevibes/audiofx/LVEqualizer;->setBandLevel(SS)V

    .line 131
    :goto_c
    return-void

    .line 130
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    goto :goto_c
.end method

.method public setCenterFreq(SI)V
    .registers 5
    .param p1, "band"    # S
    .param p2, "level"    # I

    .prologue
    .line 163
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NXP setCenterFreq(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1, p2}, Lcom/lifevibes/audiofx/LVEqualizer;->setCenterFreq(SI)V

    .line 172
    :goto_2c
    return-void

    .line 169
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "??? setCenterFreq(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "b"    # Z

    .prologue
    .line 100
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 101
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVEqualizer;->setEnabled(Z)I

    .line 104
    :goto_c
    return-void

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    goto :goto_c
.end method

.method public setQFactor(SS)V
    .registers 5
    .param p1, "band"    # S
    .param p2, "qFactor"    # S

    .prologue
    .line 177
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NXP setQFactor(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1, p2}, Lcom/lifevibes/audiofx/LVEqualizer;->setQFactor(SS)V

    .line 185
    :goto_2c
    return-void

    .line 183
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setQFactor(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public usePreset(S)V
    .registers 4
    .param p1, "value"    # S

    .prologue
    .line 118
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 119
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVEqualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVEqualizer;->usePreset(S)V

    .line 122
    :goto_c
    return-void

    .line 121
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->mEqualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    goto :goto_c
.end method
