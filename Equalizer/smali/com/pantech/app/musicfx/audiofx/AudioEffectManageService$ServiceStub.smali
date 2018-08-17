.class Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;
.super Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;
.source "AudioEffectManageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)V
    .registers 3
    .param p1, "service"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 530
    invoke-direct {p0}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;-><init>()V

    .line 531
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 532
    return-void
.end method


# virtual methods
.method public getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v0

    return-object v0
.end method

.method public getEqualizerBands(I)[I
    .registers 3
    .param p1, "audioSessionID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEqualizerBands(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v0

    return-object v0
.end method

.method public isHeadsetConnected()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isHeadsetConnected()Z

    move-result v0

    return v0
.end method

.method public isSTONEConnected()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isStoneConnected()Z

    move-result v0

    return v0
.end method

.method public releaseEffectDirectly(IZ)Z
    .registers 4
    .param p1, "audioSessionID"    # I
    .param p2, "fRelease"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 576
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->releaseEffectDirectly(IZ)Z

    move-result v0

    return v0
.end method

.method public setBassBoost(Ljava/lang/String;IIZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setBassBoost(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public setEqualizer(Ljava/lang/String;II[IZ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "presetNum"    # I
    .param p4, "bandLevels"    # [I
    .param p5, "onoff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z

    move-result v0

    return v0
.end method

.method public setEqualizerPreview(Ljava/lang/String;II[I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "presetNum"    # I
    .param p4, "bandLevels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setEqualizerPreview(Ljava/lang/String;II[I)Z

    move-result v0

    return v0
.end method

.method public setLoudnessMaximizer(Ljava/lang/String;IIZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setLoudnessMaximizer(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public setPresetReverb(Ljava/lang/String;IIZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "presetNum"    # I
    .param p4, "onoff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setPresetReverb(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public setTrebleEnhance(Ljava/lang/String;IIZ)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setTrebleEnhance(Ljava/lang/String;IIZ)Z

    move-result v0

    return v0
.end method

.method public setVirtualizer(Ljava/lang/String;IIZI)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "audioSessionID"    # I
    .param p3, "strength"    # I
    .param p4, "onoff"    # Z
    .param p5, "virtualizerType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->setVirtualizer(Ljava/lang/String;IIZI)Z

    move-result v0

    return v0
.end method
