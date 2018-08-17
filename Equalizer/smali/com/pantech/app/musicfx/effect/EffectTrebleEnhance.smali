.class public Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;
.super Ljava/lang/Object;
.source "EffectTrebleEnhance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;
    }
.end annotation


# instance fields
.field mSolution:I

.field mTrebleEnhance:Ljava/lang/Object;


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

    iput v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    .line 19
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 20
    new-instance v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    invoke-direct {v0, p1, p2}, Lcom/lifevibes/audiofx/TrebleEnhancement;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    .line 25
    :goto_15
    return-void

    .line 21
    :cond_16
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_22

    .line 22
    new-instance v0, Landroid/media/audiofx/Exciter;

    invoke-direct {v0, p1, p2}, Landroid/media/audiofx/Exciter;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    goto :goto_15

    .line 24
    :cond_22
    const-string v0, "EffectTrebleEnhance() "

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_15
.end method


# virtual methods
.method public getEnabled()Z
    .registers 3

    .prologue
    .line 61
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 62
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->getEnabled()Z

    move-result v0

    .line 67
    :goto_d
    return v0

    .line 63
    :cond_e
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_1b

    .line 64
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Exciter;

    invoke-virtual {v0}, Landroid/media/audiofx/Exciter;->getEnabled()Z

    move-result v0

    goto :goto_d

    .line 66
    :cond_1b
    const-string v0, "getEnabled() return false"

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getInstance()Landroid/media/audiofx/AudioEffect;
    .registers 3

    .prologue
    .line 30
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 31
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    .line 36
    :goto_9
    return-object v0

    .line 32
    :cond_a
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_13

    .line 33
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Exciter;

    goto :goto_9

    .line 35
    :cond_13
    const-string v0, "AudioEffect getInstance() return 0"

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getRoundedStrength()S
    .registers 3

    .prologue
    .line 83
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 84
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->getRoundedStrength()S

    move-result v0

    .line 89
    :goto_d
    return v0

    .line 85
    :cond_e
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_1b

    .line 86
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Exciter;

    invoke-virtual {v0}, Landroid/media/audiofx/Exciter;->getRoundedStrength()S

    move-result v0

    goto :goto_d

    .line 88
    :cond_1b
    const-string v0, "getRoundedStrength() return 0"

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasControl()Z
    .registers 3

    .prologue
    .line 96
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 97
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->hasControl()Z

    move-result v0

    .line 102
    :goto_d
    return v0

    .line 98
    :cond_e
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_1b

    .line 99
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Exciter;

    invoke-virtual {v0}, Landroid/media/audiofx/Exciter;->hasControl()Z

    move-result v0

    goto :goto_d

    .line 101
    :cond_1b
    const-string v0, "getRoundedStrength() return false"

    invoke-static {v0}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public release()V
    .registers 3

    .prologue
    .line 43
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 44
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->release()V

    .line 47
    :cond_c
    :goto_c
    return-void

    .line 45
    :cond_d
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_c

    .line 46
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Exciter;

    invoke-virtual {v0}, Landroid/media/audiofx/Exciter;->release()V

    goto :goto_c
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "b"    # Z

    .prologue
    .line 52
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 53
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/TrebleEnhancement;->setEnabled(Z)I

    .line 56
    :cond_c
    :goto_c
    return-void

    .line 54
    :cond_d
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_c

    .line 55
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Exciter;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Exciter;->setEnabled(Z)I

    goto :goto_c
.end method

.method public setStrength(S)V
    .registers 4
    .param p1, "value"    # S

    .prologue
    .line 74
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 75
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/TrebleEnhancement;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/TrebleEnhancement;->setStrength(S)V

    .line 78
    :cond_c
    :goto_c
    return-void

    .line 76
    :cond_d
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mSolution:I

    if-nez v0, :cond_c

    .line 77
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->mTrebleEnhance:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Exciter;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Exciter;->setStrength(S)V

    goto :goto_c
.end method
