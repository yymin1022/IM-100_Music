.class public Lcom/pantech/app/musicfx/audiofx/SettingParcel;
.super Ljava/lang/Object;
.source "SettingParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/app/musicfx/audiofx/SettingParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isBassBoost:Z

.field public isEqualizer:Z

.field public isLoudnessMaximizer:Z

.field public isPresetReverb:Z

.field public isTrebleEnhance:Z

.field public isVirtualizer:Z

.field public mBassBoostStrength:S

.field public mEQPreset:S

.field public mEQPresetArray:[S

.field public mLoudnessMaximizerStrength:S

.field public mPresetReverbPreset:S

.field public mTrebleEnhanceStrength:S

.field public mVirtualizerStrength:S

.field public mVirtualizerType:S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/SettingParcel$1;

    invoke-direct {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel$1;-><init>()V

    sput-object v0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    .line 12
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    .line 13
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    .line 14
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    .line 15
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    .line 16
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    .line 18
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    .line 21
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    .line 22
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    .line 23
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    .line 24
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    .line 25
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    .line 28
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerType:S

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    .line 12
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    .line 13
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    .line 14
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    .line 15
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    .line 16
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    .line 18
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    .line 21
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    .line 22
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    .line 23
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    .line 24
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    .line 25
    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    .line 28
    const/4 v0, 0x3

    iput-short v0, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerType:S

    .line 38
    invoke-virtual {p0, p1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/app/musicfx/audiofx/SettingParcel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/pantech/app/musicfx/audiofx/SettingParcel$1;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static convertIntArray([S)[I
    .registers 4
    .param p0, "bandLevels"    # [S

    .prologue
    .line 127
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 135
    :cond_3
    return-object v1

    .line 129
    :cond_4
    array-length v2, p0

    new-array v1, v2, [I

    .line 130
    .local v1, "tmp":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 132
    aget-short v2, p0, v0

    aput v2, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static convertShortArray([I)[S
    .registers 4
    .param p0, "bandLevels"    # [I

    .prologue
    .line 141
    if-nez p0, :cond_4

    const/4 v1, 0x0

    .line 149
    :cond_3
    return-object v1

    .line 143
    :cond_4
    array-length v2, p0

    new-array v1, v2, [S

    .line 144
    .local v1, "tmp":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 146
    aget v2, p0, v0

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getEQPreset()S
    .registers 2

    .prologue
    .line 167
    iget-short v0, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    return v0
.end method

.method public getEQPresetArray()[S
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    return-object v0
.end method

.method public isEqualizer()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6c

    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6e

    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_70

    move v1, v2

    :goto_1b
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_72

    move v1, v2

    :goto_24
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_74

    move v1, v2

    :goto_2d
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_76

    :goto_35
    iput-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "temp":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 108
    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertShortArray([I)[S

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    .line 109
    return-void

    .end local v0    # "temp":[I
    :cond_6c
    move v1, v3

    .line 92
    goto :goto_9

    :cond_6e
    move v1, v3

    .line 93
    goto :goto_12

    :cond_70
    move v1, v3

    .line 94
    goto :goto_1b

    :cond_72
    move v1, v3

    .line 95
    goto :goto_24

    :cond_74
    move v1, v3

    .line 96
    goto :goto_2d

    :cond_76
    move v2, v3

    .line 97
    goto :goto_35
.end method

.method public setEQPreset(S)V
    .registers 2
    .param p1, "mEQPreset"    # S

    .prologue
    .line 173
    iput-short p1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 174
    return-void
.end method

.method public setEQPresetArray([S)V
    .registers 2
    .param p1, "mEQPresetArray"    # [S

    .prologue
    .line 185
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    .line 186
    return-void
.end method

.method public setEqualizer(Z)V
    .registers 2
    .param p1, "isEqualizer"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isEqualizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][mEQPreset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "szMessage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[isBassBoost="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][mBassBoostStrength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[isVirtualizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][mVirtualizerStrength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[isPresetReverb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][mPresetReverbPreset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[isTrebleEnhance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][mTrebleEnhanceStrength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[isLoudnessMaximizer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "][mLoudnessMaximizerStrength"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 65
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    if-ne v1, v2, :cond_59

    move v1, v2

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    if-ne v1, v2, :cond_5b

    move v1, v2

    :goto_f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    if-ne v1, v2, :cond_5d

    move v1, v2

    :goto_17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    if-ne v1, v2, :cond_5f

    move v1, v2

    :goto_1f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    if-ne v1, v2, :cond_61

    move v1, v2

    :goto_27
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    if-ne v1, v2, :cond_63

    :goto_2e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mLoudnessMaximizerStrength:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    invoke-static {v1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v0

    .line 80
    .local v0, "temp":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 81
    return-void

    .end local v0    # "temp":[I
    :cond_59
    move v1, v3

    .line 65
    goto :goto_7

    :cond_5b
    move v1, v3

    .line 66
    goto :goto_f

    :cond_5d
    move v1, v3

    .line 67
    goto :goto_17

    :cond_5f
    move v1, v3

    .line 68
    goto :goto_1f

    :cond_61
    move v1, v3

    .line 69
    goto :goto_27

    :cond_63
    move v2, v3

    .line 70
    goto :goto_2e
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 87
    return-void
.end method
