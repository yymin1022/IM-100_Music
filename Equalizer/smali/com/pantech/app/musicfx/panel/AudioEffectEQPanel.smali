.class public Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
.super Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;
.source "AudioEffectEQPanel.java"


# static fields
.field public static EQUALIZER_PRESET_TEMP:I = 0x0

.field public static EQUALIZER_PRESET_USER:I = 0x0

.field public static final EXTRAS_DEFAULT_EQ_BACKUP_PRESET:Ljava/lang/String; = "mBackupEqPreset"

.field public static final EXTRAS_DEFAULT_EQ_PRESET:Ljava/lang/String; = "mDefaultEqPreset"

.field public static final EXTRAS_DEFAULT_EQ_TEMPSETTING:Ljava/lang/String; = "mTempEQSettingData"

.field private static final MSG_RELEASE_CLICK_LOCK:I = 0x1

.field private static timestamp:J


# instance fields
.field private mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

.field private mBackupEQPreset:I

.field private mClickLock:Z

.field private mCustomVerticalSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mEQMidLevel:I

.field private mEQPreset:I

.field private mEQSpinner:Landroid/widget/Spinner;

.field private mEqBandsGroupLayout:Landroid/widget/LinearLayout;

.field private mEqualizerUserPresetTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mSeekBarChanged:Z

.field private mSlideMaxValue:I

.field private mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

.field private mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

.field private mVeticalSeekBarArray:[Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 57
    sput v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    .line 58
    sput v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    .line 59
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->timestamp:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;-><init>()V

    .line 61
    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mSlideMaxValue:I

    .line 62
    iput v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    .line 63
    iput v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    .line 64
    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQMidLevel:I

    .line 65
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mClickLock:Z

    .line 66
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mSeekBarChanged:Z

    .line 68
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    .line 69
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqBandsGroupLayout:Landroid/widget/LinearLayout;

    .line 70
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    .line 72
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .line 73
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 74
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqualizerUserPresetTable:Ljava/util/HashMap;

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mOrientation:I

    .line 80
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$1;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mCustomVerticalSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 206
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$2;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .prologue
    .line 50
    sget-wide v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .registers 2
    .param p0, "x0"    # J

    .prologue
    .line 50
    sput-wide p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->timestamp:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    return v0
.end method

.method static synthetic access$1002(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mClickLock:Z

    return p1
.end method

.method static synthetic access$102(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    return p1
.end method

.method static synthetic access$1100(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->cancelEQSetting(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)[Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;[IZI)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # [I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayBandSlider([IZI)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;[IZI)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # [I
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->updateBandSlider([IZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    return-object v0
.end method

.method static synthetic access$202(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    return-object p1
.end method

.method static synthetic access$300(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQMidLevel:I

    return v0
.end method

.method static synthetic access$400(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    return-object v0
.end method

.method static synthetic access$402(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    return-object p1
.end method

.method static synthetic access$502(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    return p1
.end method

.method static synthetic access$600(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Landroid/widget/Spinner;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    return-object v0
.end method

.method static synthetic access$802(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mSeekBarChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;II[S)Z
    .registers 5
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [S

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->applyEqEffect(II[S)Z

    move-result v0

    return v0
.end method

.method private applyEqEffect(II[S)Z
    .registers 11
    .param p1, "audioSessionID"    # I
    .param p2, "userPresetNum"    # I
    .param p3, "bandLevels"    # [S

    .prologue
    const/4 v3, 0x1

    .line 840
    const-string v0, "VMusicFX_EQP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyEqEffect mPackageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userPresetNum= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v0, "VMusicFX_EQP"

    const-string v1, "applyEqEffect"

    invoke-static {v0, p3, v1, v3}, Lcom/pantech/app/musicfx/utils/MLog;->list(Ljava/lang/String;[SLjava/lang/String;Z)V

    .line 845
    :try_start_36
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_4e

    .line 846
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v4

    const/4 v5, 0x1

    move v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_48} :catch_4a

    move-result v0

    .line 853
    :goto_49
    return v0

    .line 848
    :catch_4a
    move-exception v6

    .line 850
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 853
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4e
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private cancelEQSetting(IZ)V
    .registers 7
    .param p1, "preset"    # I
    .param p2, "applyEffect"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1000
    const-string v0, "VMusicFX_EQP"

    const-string v1, "cancelEQSetting"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v0, v1, :cond_32

    .line 1004
    iput p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    .line 1005
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    .line 1007
    if-eqz p2, :cond_2e

    .line 1009
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-direct {p0, v0, v1, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->applyEqEffect(II[S)Z

    .line 1010
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getCurrentEqulizerBands()[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->updateBandSlider([IZI)V

    .line 1013
    :cond_2e
    iput-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 1014
    iput-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 1017
    :cond_32
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 1018
    return-void
.end method

.method private checkBandLevel([I)[I
    .registers 7
    .param p1, "band"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 816
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v1

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    if-eqz v1, :cond_45

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v1, v1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    if-eqz v1, :cond_45

    .line 818
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v1, p1

    if-ge v0, v1, :cond_45

    .line 820
    aget v1, p1, v0

    if-gez v1, :cond_2c

    aget v1, p1, v0

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v2, v2, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    aget-short v2, v2, v4

    if-ge v1, v2, :cond_2c

    .line 822
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v1, v1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    aget-short v1, v1, v4

    aput v1, p1, v0

    .line 825
    :cond_2c
    aget v1, p1, v0

    if-lez v1, :cond_42

    aget v1, p1, v0

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v2, v2, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    aget-short v2, v2, v3

    if-le v1, v2, :cond_42

    .line 827
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v1, v1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    aget-short v1, v1, v3

    aput v1, p1, v0

    .line 818
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 832
    .end local v0    # "i":I
    :cond_45
    const-string v1, "VMusicFX_EQP"

    const-string v2, "checkBandLevel"

    invoke-static {v1, p1, v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->list(Ljava/lang/String;[ILjava/lang/String;Z)V

    .line 834
    return-object p1
.end method

.method private displayBandSlider([IZI)V
    .registers 24
    .param p1, "band"    # [I
    .param p2, "isEditable"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 710
    const-string v17, "VMusicFX_EQP"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "displayBandSlider band : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isEditable : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    if-nez p1, :cond_2d

    .line 805
    :goto_2c
    return-void

    .line 715
    :cond_2d
    invoke-direct/range {p0 .. p1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->checkBandLevel([I)[I

    move-result-object p1

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-short v14, v17, v18

    .line 718
    .local v14, "minEQLevel":S
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-short v13, v17, v18

    .line 719
    .local v13, "maxEQLevel":S
    sub-int v17, v13, v14

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQMidLevel:I

    .line 720
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQMidLevel:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getBandSlideMaxValue(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mSlideMaxValue:I

    .line 722
    const/4 v15, 0x0

    .line 731
    .local v15, "seekbarResourceID":I
    const v15, 0x7f030031

    .line 734
    const v17, 0x7f0b0052

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqBandsGroupLayout:Landroid/widget/LinearLayout;

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqBandsGroupLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqBandsGroupLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqBandsGroupLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 740
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-short v4, v0

    .line 743
    .local v4, "bands":S
    const/4 v3, 0x0

    .line 744
    .local v3, "bandStartNum":S
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v17

    if-eqz v17, :cond_b5

    const/4 v3, 0x2

    .line 746
    :cond_b5
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 747
    .local v6, "eqBandsLayout":Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 748
    .local v7, "eqBandsLayoutParmas":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 750
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 751
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    .line 753
    new-array v0, v4, [Landroid/widget/SeekBar;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    .line 755
    move v11, v3

    .local v11, "i":S
    :goto_ec
    if-ge v11, v4, :cond_1d5

    .line 757
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    .line 758
    .local v12, "inflater":Landroid/view/LayoutInflater;
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v12, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 760
    .local v8, "eqBarlayout":Landroid/widget/LinearLayout;
    const v17, 0x7f0b0077

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 762
    .local v5, "bar":Landroid/widget/SeekBar;
    if-eqz v5, :cond_150

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    move-object/from16 v17, v0

    aput-object v5, v17, v11

    .line 765
    sub-int v17, v13, v14

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 766
    aget v17, p1, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQMidLevel:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 767
    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 768
    move/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 771
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 773
    const-string v17, "VMusicFX_EQP"

    const-string v18, "displayBandSlider setEnabled"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    if-eqz p2, :cond_150

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mCustomVerticalSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 779
    :cond_150
    const v17, 0x7f0b0079

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 780
    .local v10, "freqTextView":Landroid/widget/TextView;
    const v17, 0x7f0b007a

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 782
    .local v9, "freqTextUnitView":Landroid/widget/TextView;
    const-string v16, ""

    .line 783
    .local v16, "szBandCenterFreq":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    move-object/from16 v17, v0

    aget v17, v17, v11

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v2, v0

    .line 785
    .local v2, "bandCenterFreq":F
    const/high16 v17, 0x447a0000    # 1000.0f

    cmpl-float v17, v2, v17

    if-ltz v17, :cond_1b2

    .line 787
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/high16 v18, 0x447a0000    # 1000.0f

    div-float v18, v2, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 788
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    const-string v17, "KHz"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    :goto_1a8
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 755
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    int-to-short v11, v0

    goto/16 :goto_ec

    .line 793
    :cond_1b2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    float-to-int v0, v2

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 794
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    const-string v17, "Hz"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a8

    .line 801
    .end local v2    # "bandCenterFreq":F
    .end local v5    # "bar":Landroid/widget/SeekBar;
    .end local v8    # "eqBarlayout":Landroid/widget/LinearLayout;
    .end local v9    # "freqTextUnitView":Landroid/widget/TextView;
    .end local v10    # "freqTextView":Landroid/widget/TextView;
    .end local v12    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "szBandCenterFreq":Ljava/lang/String;
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqBandsGroupLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqBandsGroupLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->invalidate()V

    .line 804
    const-string v17, "VMusicFX_EQP"

    const-string v18, "displayBandSlider over"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2c
.end method

.method private displayEQPanelUI(I)V
    .registers 5
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->setContentViewOnCreate()V

    .line 553
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    .line 556
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setLayerType(ILandroid/graphics/Paint;)V

    .line 558
    sget v0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne p1, v0, :cond_45

    .line 560
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayEqSelectSpinner(Landroid/widget/Spinner;I)V

    .line 563
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 566
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iget-object v2, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->applyEqEffect(II[S)Z

    .line 573
    :goto_32
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getCurrentEqulizerBands()[I

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayBandSlider([IZI)V

    .line 576
    return-void

    .line 570
    :cond_45
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayEqSelectSpinner(Landroid/widget/Spinner;I)V

    goto :goto_32
.end method

.method private displayEqSelectSpinner(Landroid/widget/Spinner;I)V
    .registers 10
    .param p1, "eqSpinner"    # Landroid/widget/Spinner;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v6, 0x0

    .line 581
    if-nez p1, :cond_4

    .line 669
    :goto_3
    return-void

    .line 584
    :cond_4
    const-string v3, "VMusicFX_EQP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayEqSelectSpinner defaultValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v6, v4}, Lcom/pantech/app/musicfx/utils/Utils;->getEqualizerText(Landroid/content/Context;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 589
    .local v2, "spinItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v4, v4, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    if-eq v3, v4, :cond_5a

    .line 591
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 593
    const/4 v1, 0x0

    .local v1, "i":S
    :goto_36
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    if-eqz v3, :cond_50

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_50

    .line 595
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_36

    .line 598
    :cond_50
    const v3, 0x7f050028

    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v1    # "i":S
    :cond_5a
    invoke-virtual {p1, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 603
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 604
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 605
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 607
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 608
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 610
    new-instance v3, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;

    invoke-direct {v3, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel$3;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;)V

    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_3
.end method

.method private getBandSlideMaxValue(I)I
    .registers 4
    .param p1, "eqMidLevel"    # I

    .prologue
    .line 1045
    const/16 v0, 0x5dc

    .line 1047
    .local v0, "slideMaxValue":I
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1048
    add-int/lit16 v0, p1, 0x2bc

    .line 1052
    :cond_a
    :goto_a
    return v0

    .line 1049
    :cond_b
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isQSoundSolution()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1050
    add-int/lit16 v0, p1, 0x708

    goto :goto_a
.end method

.method private resetBandSlider()V
    .registers 7

    .prologue
    .line 427
    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->loadUserPreset(I)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v2

    .line 429
    .local v2, "tempSettings":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    iget-short v3, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->numBands:S

    new-array v1, v3, [I

    .line 431
    .local v1, "tempBand":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v3, v1

    if-ge v0, v3, :cond_16

    .line 432
    iget-object v3, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    const/4 v4, 0x0

    aput-short v4, v3, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 434
    :cond_16
    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v3, v4, :cond_30

    .line 436
    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 437
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->saveToUserPresetTempPreset()V

    .line 445
    :cond_21
    :goto_21
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1, v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayBandSlider([IZI)V

    .line 446
    return-void

    .line 439
    :cond_30
    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne v3, v4, :cond_21

    .line 441
    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    iget-object v5, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->applyEqEffect(II[S)Z

    .line 442
    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->saveUserPreset(ILcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)V

    goto :goto_21
.end method

.method private restoreEQSetting()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 983
    const-string v2, "VMusicFX_EQP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEQPreset = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mBackupEQPreset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-ne v0, v3, :cond_64

    move v0, v1

    :goto_37
    invoke-static {v2, v0}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Z)V

    .line 984
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v0, v2, :cond_63

    .line 986
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    iput v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    .line 987
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    .line 989
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-direct {p0, v0, v2, v5}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->applyEqEffect(II[S)Z

    .line 990
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getCurrentEqulizerBands()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->updateBandSlider([IZI)V

    .line 992
    iput-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 993
    iput-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 995
    :cond_63
    return-void

    .line 983
    :cond_64
    const/4 v0, 0x0

    goto :goto_37
.end method

.method private saveToUserPresetTempPreset()V
    .registers 4

    .prologue
    .line 1023
    const-string v0, "VMusicFX_EQP"

    const-string v1, "saveToUserPreset"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v0, v1, :cond_42

    .line 1027
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    int-to-short v1, v1

    iput-short v1, v0, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->curPreset:S

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    .line 1028
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    .line 1030
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->saveUserPreset(ILcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)V

    .line 1031
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1033
    new-instance v0, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 1036
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iget-object v2, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->applyEqEffect(II[S)Z

    .line 1039
    :cond_42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQSpinner:Landroid/widget/Spinner;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAlpha(F)V

    .line 1040
    return-void
.end method

.method private setBandSlideThumb(Landroid/widget/SeekBar;II)V
    .registers 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "value"    # I
    .param p3, "slideMaxValue"    # I

    .prologue
    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;)V

    .line 1061
    if-ne p2, p3, :cond_27

    .line 1062
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1068
    .local v0, "pointerDrawble":Landroid/graphics/drawable/Drawable;
    :goto_23
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    return-void

    .line 1063
    .end local v0    # "pointerDrawble":Landroid/graphics/drawable/Drawable;
    :cond_27
    if-nez p2, :cond_35

    .line 1064
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "pointerDrawble":Landroid/graphics/drawable/Drawable;
    goto :goto_23

    .line 1066
    .end local v0    # "pointerDrawble":Landroid/graphics/drawable/Drawable;
    :cond_35
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02019c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "pointerDrawble":Landroid/graphics/drawable/Drawable;
    goto :goto_23
.end method

.method private updateBandSlider([IZI)V
    .registers 10
    .param p1, "band"    # [I
    .param p2, "isEditable"    # Z
    .param p3, "orientation"    # I

    .prologue
    .line 674
    const-string v4, "VMusicFX_EQP"

    const-string v5, "updateBandSlider"

    invoke-static {v4, v5}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    if-nez p1, :cond_a

    .line 705
    :cond_9
    return-void

    .line 679
    :cond_a
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->checkBandLevel([I)[I

    move-result-object p1

    .line 681
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v4, v4, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    const/4 v5, 0x0

    aget-short v3, v4, v5

    .line 682
    .local v3, "minEQLevel":S
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v4, v4, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    const/4 v5, 0x1

    aget-short v1, v4, v5

    .line 683
    .local v1, "maxEQLevel":S
    sub-int v4, v1, v3

    div-int/lit8 v2, v4, 0x2

    .line 685
    .local v2, "midEQLevel":I
    const-string v4, "band"

    invoke-static {v4, p1}, Lcom/pantech/app/musicfx/utils/MLog;->list(Ljava/lang/String;[I)V

    .line 687
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    array-length v4, p1

    if-ge v0, v4, :cond_9

    .line 689
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    if-eqz v4, :cond_4f

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    if-eqz v4, :cond_4f

    .line 691
    if-eqz p2, :cond_52

    .line 693
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mCustomVerticalSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 701
    :goto_3e
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    aget v5, p1, v0

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 702
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 687
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 698
    :cond_52
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mVeticalSeekBarArray:[Landroid/widget/SeekBar;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_3e
.end method


# virtual methods
.method public getCurrentEqulizerBands()[I
    .registers 8

    .prologue
    .line 859
    const/4 v0, 0x0

    .line 862
    .local v0, "bands":[I
    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v5, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-eq v4, v5, :cond_d

    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v5, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v4, v5, :cond_54

    .line 864
    :cond_d
    const/4 v3, 0x0

    .line 866
    .local v3, "setting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v5, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne v4, v5, :cond_46

    .line 868
    const-string v4, "getCurrentEqulizerBands(): get from user setting"

    invoke-static {v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 869
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mUserPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 877
    :cond_1b
    :goto_1b
    if-eqz v3, :cond_21

    iget-object v4, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    if-nez v4, :cond_2c

    .line 879
    :cond_21
    const-string v4, "getCurrentEqulizerBands(): get from saved data"

    invoke-static {v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 880
    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->loadUserPreset(I)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    move-result-object v3

    .line 883
    :cond_2c
    if-eqz v3, :cond_65

    iget-object v4, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    if-eqz v4, :cond_65

    .line 885
    iget-object v4, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    array-length v4, v4

    new-array v0, v4, [I

    .line 887
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    iget-object v4, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    array-length v4, v4

    if-ge v2, v4, :cond_65

    .line 889
    iget-object v4, v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aget-short v4, v4, v2

    aput v4, v0, v2

    .line 887
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 871
    .end local v2    # "i":I
    :cond_46
    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v5, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v4, v5, :cond_1b

    .line 873
    const-string v4, "getCurrentEqulizerBands(): get from temp setting"

    invoke-static {v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 874
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    goto :goto_1b

    .line 897
    .end local v3    # "setting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    :cond_54
    :try_start_54
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v4, :cond_65

    .line 899
    const-string v4, "getCurrentEqulizerBands(): get from service"

    invoke-static {v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 900
    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    invoke-interface {v4, v5}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->getEqualizerBands(I)[I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_64} :catch_69

    move-result-object v0

    .line 910
    :cond_65
    :goto_65
    if-nez v0, :cond_6e

    .line 912
    const/4 v4, 0x0

    .line 917
    :goto_68
    return-object v4

    .line 903
    :catch_69
    move-exception v1

    .line 905
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_65

    .line 915
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6e
    const-string v4, "VMusicFX_EQP"

    const-string v5, "getCurrentEqulizerBands()"

    const/4 v6, 0x1

    invoke-static {v4, v0, v5, v6}, Lcom/pantech/app/musicfx/utils/MLog;->list(Ljava/lang/String;[ILjava/lang/String;Z)V

    .line 917
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    goto :goto_68
.end method

.method public initValue(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 227
    if-eqz p1, :cond_99

    .line 229
    const-string v1, "VMusicFX_EQP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate savedInstanceState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "mDefaultEqPreset"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    .line 231
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    .line 232
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    .line 234
    const-string v1, "mBackupEqPreset"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    .line 235
    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v1, v2, :cond_4e

    .line 237
    new-instance v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    const-string v2, "mTempEQSettingData"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 255
    :cond_4e
    :goto_4e
    const-string v1, "VMusicFX_EQP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savedInstanceState: mEQPreset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAudioSessionID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mBackupEQPreset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTempPresetSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void

    .line 242
    :cond_99
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, "activityIntent":Landroid/content/Intent;
    if-eqz v0, :cond_4e

    .line 246
    const-string v1, "VMusicFX_EQP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate getIntent() activityIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    .line 248
    const-string v1, "mDefaultEqPreset"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    .line 249
    const-string v1, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    .line 250
    iput v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    goto/16 :goto_4e
.end method

.method public loadUserPreset(I)Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    .registers 10
    .param p1, "userPresetNum"    # I

    .prologue
    const/4 v7, 0x0

    .line 938
    const/4 v1, 0x0

    .line 940
    .local v1, "equalizerSetting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_EQ_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "UserPresetKey":Ljava/lang/String;
    const-string v5, "audioFxSettingPreference"

    invoke-virtual {p0, v5, v7}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 945
    .local v3, "preference":Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqualizerUserPresetTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 947
    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqualizerUserPresetTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "equalizerSetting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    check-cast v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 951
    .restart local v1    # "equalizerSetting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    :cond_39
    if-nez v1, :cond_50

    .line 953
    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 955
    .local v4, "setting":Ljava/lang/String;
    if-eqz v4, :cond_50

    .line 957
    new-instance v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .end local v1    # "equalizerSetting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    invoke-direct {v1, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>(Ljava/lang/String;)V

    .line 958
    .restart local v1    # "equalizerSetting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqualizerUserPresetTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .end local v4    # "setting":Ljava/lang/String;
    :cond_50
    if-nez v1, :cond_76

    .line 965
    new-instance v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .end local v1    # "equalizerSetting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    invoke-direct {v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>()V

    .line 966
    .restart local v1    # "equalizerSetting":Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-short v5, v5, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    iput-short v5, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->numBands:S

    .line 967
    iget-object v5, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-short v5, v5, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    new-array v5, v5, [S

    iput-object v5, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    .line 969
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_66
    iget-object v5, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    if-eqz v5, :cond_76

    iget-object v5, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    array-length v5, v5

    if-ge v2, v5, :cond_76

    .line 971
    iget-object v5, v1, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    aput-short v7, v5, v2

    .line 969
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 975
    .end local v2    # "i":I
    :cond_76
    const-string v5, "VMusicFX_EQP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadUserPreset :: userPresetNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " equalizerSetting="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    return-object v1
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 517
    const-string v0, "VMusicFX_EQP"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v0, v1, :cond_11

    .line 521
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->saveToUserPresetTempPreset()V

    .line 527
    :goto_10
    return-void

    .line 525
    :cond_11
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onBackPressed()V

    goto :goto_10
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 533
    const-string v1, "VMusicFX_EQP"

    const-string v2, "onConfigurationChanged()"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mOrientation:I

    .line 538
    :try_start_b
    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-direct {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayEQPanelUI(I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_14

    .line 545
    :goto_10
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 546
    return-void

    .line 540
    :catch_14
    move-exception v0

    .line 542
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onCreate(Landroid/os/Bundle;)V

    .line 454
    const-string v0, "VMusicFX_EQP"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 334
    const-string v1, "VMusicFX_EQP"

    const-string v2, "onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 337
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 339
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 489
    const-string v0, "VMusicFX_EQP"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mCustomVerticalSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 493
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onDestroy()V

    .line 494
    return-void
.end method

.method public onEffectServiceConnected()V
    .registers 6

    .prologue
    .line 263
    const-string v2, "VMusicFX_EQP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected mService= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-nez v2, :cond_1f

    .line 301
    :goto_1e
    return-void

    .line 269
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    invoke-interface {v2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .line 271
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    if-nez v2, :cond_3a

    .line 273
    const v2, 0x7f05002b

    invoke-static {p0, v2}, Lcom/pantech/app/musicfx/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 274
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->finish()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_34} :catch_35

    goto :goto_1e

    .line 297
    :catch_35
    move-exception v1

    .line 299
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e

    .line 279
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3a
    :try_start_3a
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v0

    .line 281
    .local v0, "audioEffectSetting":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget v2, v2, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    sput v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    .line 282
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget v2, v2, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    .line 285
    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5b

    .line 287
    if-eqz v0, :cond_5b

    .line 288
    iget-short v2, v0, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    iput v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    .line 291
    :cond_5b
    const-string v2, "VMusicFX_EQP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioEffectEQInfoParcel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    invoke-virtual {v4}, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "VMusicFX_EQP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEQPreset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-direct {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->displayEQPanelUI(I)V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_98} :catch_35

    goto :goto_1e
.end method

.method public onEffectServiceDisConnected()V
    .registers 3

    .prologue
    .line 307
    const-string v0, "VMusicFX_EQP"

    const-string v1, "mServiceConnection  onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 383
    const-string v1, "VMusicFX_EQP"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_30

    .line 399
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->setItemClickLock(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 400
    const/4 v0, 0x0

    .line 401
    :goto_18
    return v0

    .line 389
    :sswitch_19
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->saveToUserPresetTempPreset()V

    .line 390
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->finish()V

    goto :goto_18

    .line 394
    :sswitch_20
    const-string v1, "VMusicFX_EQP"

    const-string v2, "onOptionsItemSelected menu_userpreset_reset"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->resetBandSlider()V

    goto :goto_18

    .line 401
    :cond_2b
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_18

    .line 385
    :sswitch_data_30
    .sparse-switch
        0x102002c -> :sswitch_19
        0x7f0b007d -> :sswitch_20
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 345
    const-string v1, "VMusicFX_EQP"

    const-string v4, "onPrepareOptionsMenu"

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const v1, 0x7f0b007d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 350
    .local v0, "item":Landroid/view/MenuItem;
    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v4, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne v1, v4, :cond_29

    move v1, v2

    :goto_17
    iget v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v5, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v4, v5, :cond_2b

    move v4, v2

    :goto_1e
    or-int/2addr v1, v4

    if-eqz v1, :cond_2d

    .line 351
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 375
    :goto_24
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_29
    move v1, v3

    .line 350
    goto :goto_17

    :cond_2b
    move v4, v3

    goto :goto_1e

    .line 353
    :cond_2d
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_24
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 500
    const-string v0, "VMusicFX_EQP"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string v0, "mDefaultEqPreset"

    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    const-string v0, "android.media.extra.AUDIO_SESSION"

    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mAudioSessionID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    const-string v0, "android.media.extra.PACKAGE_NAME"

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v0, "mBackupEqPreset"

    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mBackupEQPreset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_TEMP:I

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    if-eqz v0, :cond_38

    .line 508
    const-string v0, "mTempEQSettingData"

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mTempPresetSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_38
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 511
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 461
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onStart()V

    .line 463
    const-string v0, "VMusicFX_EQP"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_9

    .line 473
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->saveToUserPresetTempPreset()V

    .line 476
    :cond_9
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 478
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mSeekBarChanged:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEQPreset:I

    sget v1, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->EQUALIZER_PRESET_USER:I

    if-ne v0, v1, :cond_1f

    .line 479
    const v0, 0x7f050022

    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 482
    :cond_1f
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onStop()V

    .line 483
    return-void
.end method

.method public saveUserPreset(ILcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;)V
    .registers 9
    .param p1, "userPresetNum"    # I
    .param p2, "equalizerSetting"    # Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .prologue
    .line 923
    const-string v3, "VMusicFX_EQP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveUserPreset(userPresetNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " equalizerSetting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_EQ_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 927
    .local v0, "UserPresetKey":Ljava/lang/String;
    const-string v3, "audioFxSettingPreference"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 928
    .local v2, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 929
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_66

    invoke-virtual {p2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_56
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 930
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 932
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mEqualizerUserPresetTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    return-void

    .line 929
    :cond_66
    const-string v3, ""

    goto :goto_56
.end method

.method public setContentViewOnCreate()V
    .registers 5

    .prologue
    const v3, 0x7f0a0061

    .line 314
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mOrientation:I

    .line 318
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->setContentView(I)V

    .line 324
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 325
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 326
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 327
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    return-void
.end method

.method protected setItemClickLock(I)Z
    .registers 7
    .param p1, "lockTime"    # I

    .prologue
    const/4 v4, 0x1

    .line 408
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mClickLock:Z

    .line 410
    .local v0, "lockBackUp":Z
    iget-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mClickLock:Z

    if-nez v1, :cond_12

    if-lez p1, :cond_12

    .line 412
    iput-boolean v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mClickLock:Z

    .line 413
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    :cond_11
    :goto_11
    return v0

    .line 415
    :cond_12
    if-nez p1, :cond_11

    .line 417
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectEQPanel;->mClickLock:Z

    goto :goto_11
.end method
