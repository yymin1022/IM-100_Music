.class public Lcom/pantech/app/musicfx/effect/EffectVirtualizer;
.super Ljava/lang/Object;
.source "EffectVirtualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;
    }
.end annotation


# instance fields
.field mSolution:I

.field mVirtualizer:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "priority"    # I
    .param p2, "sessionID"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getSolution()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    .line 18
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 19
    new-instance v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-direct {v0, p1, p2}, Lcom/lifevibes/audiofx/LVVirtualizer;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    .line 22
    :goto_15
    return-void

    .line 21
    :cond_16
    new-instance v0, Landroid/media/audiofx/Virtualizer;

    invoke-direct {v0, p1, p2}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    goto :goto_15
.end method


# virtual methods
.method public getEnabled()Z
    .registers 3

    .prologue
    .line 54
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 55
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getEnabled()Z

    move-result v0

    .line 57
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->getEnabled()Z

    move-result v0

    goto :goto_d
.end method

.method public getInstance()Landroid/media/audiofx/AudioEffect;
    .registers 3

    .prologue
    .line 27
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 28
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    .line 30
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    goto :goto_9
.end method

.method public getRoundedStrength()S
    .registers 3

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 73
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getRoundedStrength()S

    move-result v0

    .line 75
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->getRoundedStrength()S

    move-result v0

    goto :goto_d
.end method

.method public hasControl()Z
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 82
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->hasControl()Z

    move-result v0

    .line 84
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->hasControl()Z

    move-result v0

    goto :goto_d
.end method

.method public release()V
    .registers 3

    .prologue
    .line 36
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 37
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->release()V

    .line 40
    :goto_c
    return-void

    .line 39
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Virtualizer;->release()V

    goto :goto_c
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "b"    # Z

    .prologue
    .line 45
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 46
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setEnabled(Z)I

    .line 49
    :goto_c
    return-void

    .line 48
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Virtualizer;->setEnabled(Z)I

    goto :goto_c
.end method

.method public setStrength(S)V
    .registers 4
    .param p1, "value"    # S

    .prologue
    .line 63
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 64
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setStrength(S)V

    .line 67
    :goto_c
    return-void

    .line 66
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Landroid/media/audiofx/Virtualizer;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/Virtualizer;->setStrength(S)V

    goto :goto_c
.end method

.method public setType(S)V
    .registers 4
    .param p1, "lvType"    # S

    .prologue
    .line 94
    iget v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mSolution:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 95
    iget-object v0, p0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->mVirtualizer:Ljava/lang/Object;

    check-cast v0, Lcom/lifevibes/audiofx/LVVirtualizer;

    invoke-virtual {v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setType(I)V

    .line 96
    :cond_c
    return-void
.end method
