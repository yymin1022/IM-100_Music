.class public Lcom/pantech/app/musicfx/common/SnapshotsNXP;
.super Ljava/lang/Object;
.source "SnapshotsNXP.java"


# static fields
.field static final BB_ENABLED:I = 0x5

.field static final BB_STRENGTH:I = 0x6

.field static final EQ_BAND0_LEVEL:I = 0xa

.field static final EQ_BAND1_LEVEL:I = 0xb

.field static final EQ_BAND2_LEVEL:I = 0xc

.field static final EQ_BAND3_LEVEL:I = 0xd

.field static final EQ_BAND4_LEVEL:I = 0xe

.field static final EQ_BAND5_LEVEL:I = 0xf

.field static final EQ_BAND6_LEVEL:I = 0x10

.field static final EQ_BAND7_LEVEL:I = 0x11

.field static final EQ_BAND8_LEVEL:I = 0x12

.field static final EQ_BAND9_LEVEL:I = 0x13

.field static final EQ_ENABLED:I = 0x9

.field static final PR_ENABLED:I = 0x7

.field static final PR_PRESET:I = 0x8

.field static final TE_ENABLED:I = 0x3

.field static final TE_STRENGTH:I = 0x4

.field static final VIRT_ENABLED:I = 0x0

.field static final VIRT_STRENGTH:I = 0x2

.field static final VIRT_TYPE:I = 0x1

.field static final actionSnapshot:[S

.field static final horrorSnapshot:[S

.field static final musicSnapshot:[S

.field static final scifiSnapshot:[S

.field static final snapshotNames:[Ljava/lang/String;

.field static final snapshots:[[S

.field static final videoFlat:[S

.field static final warSnapshot:[S


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x14

    .line 35
    new-array v0, v1, [S

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->actionSnapshot:[S

    .line 42
    new-array v0, v1, [S

    fill-array-data v0, :array_82

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->scifiSnapshot:[S

    .line 48
    new-array v0, v1, [S

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->warSnapshot:[S

    .line 54
    new-array v0, v1, [S

    fill-array-data v0, :array_b2

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->horrorSnapshot:[S

    .line 60
    new-array v0, v1, [S

    fill-array-data v0, :array_ca

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->musicSnapshot:[S

    .line 66
    new-array v0, v1, [S

    fill-array-data v0, :array_e2

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->videoFlat:[S

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [[S

    sget-object v1, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->actionSnapshot:[S

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->scifiSnapshot:[S

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->warSnapshot:[S

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->horrorSnapshot:[S

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->musicSnapshot:[S

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->videoFlat:[S

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->snapshots:[[S

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Action & Adventure"

    aput-object v1, v0, v3

    const-string v1, "SF & Fantasy"

    aput-object v1, v0, v4

    const-string v1, "War"

    aput-object v1, v0, v5

    const-string v1, "Horror & Thriller"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Musical"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->snapshotNames:[Ljava/lang/String;

    return-void

    .line 35
    :array_6a
    .array-data 2
        0x1s
        0x1s
        0x3e8s
        0x1s
        0x190s
        0x1s
        0x2bcs
        0x0s
        0x5s
        0x1s
        0x12cs
        0x258s
        0x2bcs
        0x12cs
        0x0s
        -0x64s
        0x0s
        0xc8s
        0x190s
        0x2bcs
    .end array-data

    .line 42
    :array_82
    .array-data 2
        0x1s
        0x1s
        0x3e8s
        0x1s
        0x1f4s
        0x1s
        0x2bcs
        0x0s
        0x5s
        0x1s
        0x0s
        0x0s
        0x258s
        0x1f4s
        0x190s
        0x12cs
        0x64s
        0x64s
        0x1f4s
        0x258s
    .end array-data

    .line 48
    :array_9a
    .array-data 2
        0x1s
        0x1s
        0x3e8s
        0x1s
        0x258s
        0x1s
        0x258s
        0x0s
        0x5s
        0x1s
        0x0s
        0xc8s
        0x320s
        0x258s
        0x12cs
        -0x190s
        -0x64s
        0x2bcs
        0x258s
        0x12cs
    .end array-data

    .line 54
    :array_b2
    .array-data 2
        0x1s
        0x1s
        0x3e8s
        0x1s
        0x190s
        0x1s
        0x320s
        0x0s
        0x5s
        0x1s
        0x0s
        0xc8s
        0x1f4s
        0x2bcs
        0x12cs
        -0x190s
        0x12cs
        0x258s
        0x190s
        0xc8s
    .end array-data

    .line 60
    :array_ca
    .array-data 2
        0x1s
        0x3s
        0x3e8s
        0x1s
        0x15es
        0x1s
        0x190s
        0x0s
        0x5s
        0x1s
        0x0s
        0x0s
        0x258s
        0x1f4s
        0x190s
        0x12cs
        0x64s
        0x64s
        0x1f4s
        0x258s
    .end array-data

    .line 66
    :array_e2
    .array-data 2
        0x0s
        0x3s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableSnapshots()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->snapshotNames:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSnapshot(I)Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    .registers 9
    .param p0, "snapshotIndex"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 79
    sget-object v3, Lcom/pantech/app/musicfx/common/SnapshotsNXP;->snapshots:[[S

    aget-object v0, v3, p0

    .line 80
    .local v0, "currentSnapshot":[S
    new-instance v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    invoke-direct {v2}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;-><init>()V

    .line 83
    .local v2, "tmp":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    const/16 v3, 0x9

    aget-short v3, v0, v3

    if-ne v3, v4, :cond_6a

    move v3, v4

    :goto_12
    iput-boolean v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    .line 84
    const/16 v3, 0x1e

    iput-short v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    .line 86
    const-string v3, "SnapshotsNXP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSnapshot - currentSnapshot.length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/16 v3, 0xa

    const/16 v6, 0x14

    invoke-static {v0, v3, v6}, Ljava/util/Arrays;->copyOfRange([SII)[S

    move-result-object v3

    iput-object v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    .line 90
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    iget-object v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    array-length v3, v3

    if-ge v1, v3, :cond_6c

    .line 91
    const-string v3, "SnapshotsNXP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSnapshot - tmp.mEQPresetArray["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPresetArray:[S

    aget-short v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .end local v1    # "i":I
    :cond_6a
    move v3, v5

    .line 83
    goto :goto_12

    .line 94
    .restart local v1    # "i":I
    :cond_6c
    const/4 v3, 0x5

    aget-short v3, v0, v3

    if-ne v3, v4, :cond_ab

    move v3, v4

    :goto_72
    iput-boolean v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    .line 95
    const/4 v3, 0x6

    aget-short v3, v0, v3

    iput-short v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    .line 98
    aget-short v3, v0, v5

    if-ne v3, v4, :cond_ad

    move v3, v4

    :goto_7e
    iput-boolean v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    .line 99
    const/4 v3, 0x2

    aget-short v3, v0, v3

    iput-short v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    .line 100
    aget-short v3, v0, v4

    iput-short v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerType:S

    .line 103
    const/4 v3, 0x3

    aget-short v3, v0, v3

    if-ne v3, v4, :cond_af

    move v3, v4

    :goto_8f
    iput-boolean v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    .line 104
    const/4 v3, 0x4

    aget-short v3, v0, v3

    iput-short v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    .line 107
    const/4 v3, 0x7

    aget-short v3, v0, v3

    if-ne v3, v4, :cond_b1

    :goto_9b
    iput-boolean v4, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    .line 108
    const/16 v3, 0x8

    aget-short v3, v0, v3

    iput-short v3, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    .line 110
    invoke-virtual {v2}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 111
    return-object v2

    :cond_ab
    move v3, v5

    .line 94
    goto :goto_72

    :cond_ad
    move v3, v5

    .line 98
    goto :goto_7e

    :cond_af
    move v3, v5

    .line 103
    goto :goto_8f

    :cond_b1
    move v4, v5

    .line 107
    goto :goto_9b
.end method
