.class public Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
.super Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;
.source "AudioEffectSettingPanel.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_PANEL_UI_REFRESH:Ljava/lang/String; = "com.pantech.app.musicfx.panel.AudioEffectSettingPanel.action.refresh"

.field public static EQUALIZER_PRESET_USER:I


# instance fields
.field private mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

.field private mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

.field private mBaseBoostMainText:Landroid/widget/TextView;

.field private mBaseBoostSubText:Landroid/widget/TextView;

.field private mBassBoostByOTG:Z

.field private mBassBoostOnOffButton:Landroid/widget/Switch;

.field private mBassBoostProgress:I

.field private mBassBoostSlide:Landroid/widget/SeekBar;

.field private mBassBoostSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

.field private mIsChecked:Z

.field private mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

.field private mReverbDropdown:Landroid/widget/Spinner;

.field private mTrebleEnhanceByOTG:Z

.field private mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

.field private mTrebleEnhanceProgress:I

.field private mTrebleEnhanceSlide:Landroid/widget/SeekBar;

.field private mTrebleEnhanceSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mUIPanelRefreshListener:Landroid/content/BroadcastReceiver;

.field private mVirtualizerByOTG:Z

.field private mVirtualizerMainText:Landroid/widget/TextView;

.field private mVirtualizerOnOffButton:Landroid/widget/Switch;

.field private mVirtualizerProgress:I

.field private mVirtualizerSlide:Landroid/widget/SeekBar;

.field private mVirtualizerSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVirtualizerSubText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->EQUALIZER_PRESET_USER:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;-><init>()V

    .line 47
    iput v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostProgress:I

    .line 48
    iput v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerProgress:I

    .line 49
    iput v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceProgress:I

    .line 50
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerByOTG:Z

    .line 51
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostByOTG:Z

    .line 52
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceByOTG:Z

    .line 53
    iput-boolean v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mIsChecked:Z

    .line 55
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    .line 56
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    .line 57
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    .line 58
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    .line 59
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    .line 60
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

    .line 61
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    .line 62
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mReverbDropdown:Landroid/widget/Spinner;

    .line 63
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    .line 64
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostMainText:Landroid/widget/TextView;

    .line 65
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostSubText:Landroid/widget/TextView;

    .line 66
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerMainText:Landroid/widget/TextView;

    .line 67
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSubText:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    .line 70
    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    .line 73
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$1;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 117
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$2;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 161
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$3;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 205
    new-instance v0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$4;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mUIPanelRefreshListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyTEEffect(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceByOTG:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceByOTG:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setBassBoostUIEnabler(ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setVitualizerUIEnabler(ZZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;ZZ)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setLoudnessMaximizerUIEnabler(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyPREffect(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Spinner;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mReverbDropdown:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I[SZ)Z
    .registers 5
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # [S
    .param p3, "x3"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyEqEffect(I[SZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyVTEffect(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mIsChecked:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I[SZ)Z
    .registers 5
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # [S
    .param p3, "x3"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setEqualizerBand(I[SZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerByOTG:Z

    return v0
.end method

.method static synthetic access$302(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerByOTG:Z

    return p1
.end method

.method static synthetic access$400(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostProgress:I

    return v0
.end method

.method static synthetic access$402(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostProgress:I

    return p1
.end method

.method static synthetic access$500(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyBBEffect(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostByOTG:Z

    return v0
.end method

.method static synthetic access$702(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostByOTG:Z

    return p1
.end method

.method static synthetic access$800(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceProgress:I

    return v0
.end method

.method static synthetic access$802(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceProgress:I

    return p1
.end method

.method static synthetic access$900(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)Landroid/widget/Switch;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

    return-object v0
.end method

.method private applyBBEffect(IZ)Z
    .registers 7
    .param p1, "strength"    # I
    .param p2, "onoff"    # Z

    .prologue
    .line 1118
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyBBEffect mPackageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioSessionID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1122
    :try_start_31
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v1, :cond_44

    .line 1123
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setBassBoost(Ljava/lang/String;IIZ)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_40

    move-result v1

    .line 1130
    :goto_3f
    return v1

    .line 1125
    :catch_40
    move-exception v0

    .line 1127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1130
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private applyEqEffect(I[SZ)Z
    .registers 11
    .param p1, "userPresetNum"    # I
    .param p2, "bandLevels"    # [S
    .param p3, "isEqPreset"    # Z

    .prologue
    .line 1082
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyEqEffect mPackageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userPresetNum= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1086
    :try_start_31
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_4a

    .line 1087
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-static {p2}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v4

    move v3, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_44} :catch_46

    move-result v0

    .line 1094
    :goto_45
    return v0

    .line 1089
    :catch_46
    move-exception v6

    .line 1091
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1094
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4a
    const/4 v0, 0x0

    goto :goto_45
.end method

.method private applyLMEffect(IZ)Z
    .registers 7
    .param p1, "strength"    # I
    .param p2, "onoff"    # Z

    .prologue
    .line 1172
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyLMEffect mPackageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioSessionID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1176
    :try_start_31
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v1, :cond_44

    .line 1177
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setLoudnessMaximizer(Ljava/lang/String;IIZ)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_40

    move-result v1

    .line 1184
    :goto_3f
    return v1

    .line 1179
    :catch_40
    move-exception v0

    .line 1181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1184
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private applyPREffect(IZ)Z
    .registers 7
    .param p1, "userPresetNum"    # I
    .param p2, "onoff"    # Z

    .prologue
    .line 1100
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyPREffect mPackageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userPresetNum= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioSessionID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1104
    :try_start_31
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v1, :cond_44

    .line 1105
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setPresetReverb(Ljava/lang/String;IIZ)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_40

    move-result v1

    .line 1112
    :goto_3f
    return v1

    .line 1107
    :catch_40
    move-exception v0

    .line 1109
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1112
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private applyTEEffect(IZ)Z
    .registers 7
    .param p1, "strength"    # I
    .param p2, "onoff"    # Z

    .prologue
    .line 1154
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyTEEffect mPackageName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strength= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " audioSessionID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1158
    :try_start_31
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v1, :cond_44

    .line 1159
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-interface {v1, v2, v3, p1, p2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setTrebleEnhance(Ljava/lang/String;IIZ)Z
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3e} :catch_40

    move-result v1

    .line 1166
    :goto_3f
    return v1

    .line 1161
    :catch_40
    move-exception v0

    .line 1163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1166
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_44
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method private applyVTEffect(IZ)Z
    .registers 10
    .param p1, "strength"    # I
    .param p2, "onoff"    # Z

    .prologue
    .line 1136
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyVTEffect mPackageName= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " strength= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audioSessionID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1140
    :try_start_31
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_47

    .line 1141
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    const/4 v5, 0x3

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setVirtualizer(Ljava/lang/String;IIZI)Z
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_41} :catch_43

    move-result v0

    .line 1148
    :goto_42
    return v0

    .line 1143
    :catch_43
    move-exception v6

    .line 1145
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1148
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_47
    const/4 v0, 0x0

    goto :goto_42
.end method

.method private displayEQPanelUI(ZI)V
    .registers 6
    .param p1, "onoff"    # Z
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 963
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/view/EventSpinner;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    .line 965
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayEQPanelUI mEQSpinner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    invoke-direct {p0, v0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->displayEqSelectSpinner(Lcom/pantech/app/musicfx/view/EventSpinner;ZI)V

    .line 968
    return-void
.end method

.method private displayEqSelectSpinner(Lcom/pantech/app/musicfx/view/EventSpinner;ZI)V
    .registers 12
    .param p1, "eqSpinner"    # Lcom/pantech/app/musicfx/view/EventSpinner;
    .param p2, "onoff"    # Z
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 973
    if-nez p1, :cond_5

    .line 1077
    :goto_4
    return-void

    .line 976
    :cond_5
    const-string v3, "VMusicFX_SettingP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayEqSelectSpinner defaultValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " onoff="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v7}, Lcom/pantech/app/musicfx/utils/Utils;->getEqualizerText(Landroid/content/Context;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 981
    .local v2, "spinItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v4, v4, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x2

    if-eq v3, v4, :cond_6e

    .line 983
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 985
    const v3, 0x7f050027

    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    const/4 v1, 0x0

    .local v1, "i":S
    :goto_4a
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_64

    .line 989
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_4a

    .line 992
    :cond_64
    const v3, 0x7f050028

    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    .end local v1    # "i":S
    :cond_6e
    invoke-virtual {p1, v6}, Lcom/pantech/app/musicfx/view/EventSpinner;->setVisibility(I)V

    .line 997
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 998
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Lcom/pantech/app/musicfx/view/EventSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 999
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1001
    invoke-virtual {p1, v2}, Lcom/pantech/app/musicfx/view/EventSpinner;->setTag(Ljava/lang/Object;)V

    .line 1003
    if-eqz p2, :cond_96

    .line 1005
    add-int/lit8 p3, p3, 0x1

    .line 1006
    invoke-virtual {p1, p3}, Lcom/pantech/app/musicfx/view/EventSpinner;->setSelection(I)V

    .line 1013
    :goto_8c
    new-instance v3, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;

    invoke-direct {v3, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$7;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V

    invoke-virtual {p1, v3}, Lcom/pantech/app/musicfx/view/EventSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto/16 :goto_4

    .line 1010
    :cond_96
    invoke-virtual {p1, v6}, Lcom/pantech/app/musicfx/view/EventSpinner;->setSelection(I)V

    goto :goto_8c
.end method

.method private initUI()V
    .registers 4

    .prologue
    const/16 v2, 0x3e8

    .line 360
    const v0, 0x7f0b0058

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    .line 361
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1d

    .line 363
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 364
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 367
    :cond_1d
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    .line 368
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    if-eqz v0, :cond_38

    .line 370
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 371
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 375
    :cond_38
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 377
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    .line 378
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    if-eqz v0, :cond_59

    .line 380
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 381
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 384
    :cond_59
    return-void
.end method

.method private refreshPanelUI()V
    .registers 6

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x0

    .line 460
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-nez v1, :cond_8

    .line 493
    :goto_7
    return-void

    .line 464
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    .line 465
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    invoke-interface {v1}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_5f

    .line 472
    :goto_1a
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    if-eqz v1, :cond_64

    .line 474
    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v3, v3, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setEqualizerUI(IZI)V

    .line 475
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setBassBoostUI(ZI)V

    .line 476
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setVirtualizerUI(ZI)V

    .line 480
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setPresetReverbUI(ZI)V

    .line 481
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setTrebleEnhanceUI(ZI)V

    .line 482
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    invoke-direct {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setLoudnessMaximizerUI(Z)V

    goto :goto_7

    .line 467
    :catch_5f
    move-exception v0

    .line 469
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1a

    .line 486
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_64
    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-direct {p0, v1, v3, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setEqualizerUI(IZI)V

    .line 487
    invoke-direct {p0, v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setBassBoostUI(ZI)V

    .line 488
    invoke-direct {p0, v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setVirtualizerUI(ZI)V

    .line 489
    invoke-direct {p0, v3, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setPresetReverbUI(ZI)V

    .line 490
    invoke-direct {p0, v3, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setTrebleEnhanceUI(ZI)V

    .line 491
    invoke-direct {p0, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setLoudnessMaximizerUI(Z)V

    goto :goto_7
.end method

.method private setBassBoostUI(ZI)V
    .registers 8
    .param p1, "onoff"    # Z
    .param p2, "defaultValue"    # I

    .prologue
    .line 601
    const-string v2, "VMusicFX_SettingP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBassBoostUI onoff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const v2, 0x7f0b0055

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    .line 604
    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    .line 605
    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostMainText:Landroid/widget/TextView;

    .line 606
    const v2, 0x7f0b0057

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostSubText:Landroid/widget/TextView;

    .line 608
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    if-eqz v2, :cond_5c

    .line 610
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 611
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 615
    :cond_5c
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    if-eqz v2, :cond_74

    .line 617
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 618
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 620
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 621
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 624
    :cond_74
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostMainText:Landroid/widget/TextView;

    if-eqz v2, :cond_7d

    .line 625
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostMainText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 627
    :cond_7d
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostSubText:Landroid/widget/TextView;

    if-eqz v2, :cond_86

    .line 628
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostSubText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 632
    :cond_86
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v2, :cond_93

    .line 636
    :try_start_8a
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    invoke-interface {v2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->isHeadsetConnected()Z

    move-result v1

    .line 638
    .local v1, "isEarjackOn":Z
    invoke-direct {p0, v1, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setBassBoostUIEnabler(ZZ)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_93} :catch_94

    .line 645
    .end local v1    # "isEarjackOn":Z
    :cond_93
    :goto_93
    return-void

    .line 640
    :catch_94
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_93
.end method

.method private setBassBoostUIEnabler(ZZ)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "onoff"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 522
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    if-eqz v0, :cond_10

    .line 524
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 525
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 528
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    if-eqz v0, :cond_27

    .line 530
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 531
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 534
    :cond_27
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    .line 535
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostMainText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 538
    :cond_30
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    .line 539
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBaseBoostSubText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 541
    :cond_39
    return-void

    :cond_3a
    move v0, v2

    .line 530
    goto :goto_1b

    :cond_3c
    move v1, v2

    .line 531
    goto :goto_24
.end method

.method private setEqualizerBand(I[SZ)Z
    .registers 11
    .param p1, "userPresetNum"    # I
    .param p2, "bandLevels"    # [S
    .param p3, "onoff"    # Z

    .prologue
    .line 944
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEqualizerBand userPresetNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onoff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bandLevels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    if-eqz p2, :cond_33

    const-string v0, "Bands"

    invoke-static {v0, p2}, Lcom/pantech/app/musicfx/utils/MLog;->list(Ljava/lang/String;[S)V

    .line 949
    :cond_33
    :try_start_33
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v0, :cond_4c

    .line 950
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-static {p2}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v4

    move v3, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->setEqualizer(Ljava/lang/String;II[IZ)Z
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_46} :catch_48

    move-result v0

    .line 957
    :goto_47
    return v0

    .line 952
    :catch_48
    move-exception v6

    .line 954
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 957
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_4c
    const/4 v0, 0x0

    goto :goto_47
.end method

.method private setEqualizerUI(IZI)V
    .registers 10
    .param p1, "audioSessionID"    # I
    .param p2, "onoff"    # Z
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v5, 0x0

    .line 559
    const-string v2, "VMusicFX_SettingP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEqualizerUI onoff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const v2, 0x7f0b0054

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/musicfx/view/EventSpinner;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    .line 564
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    if-eqz v2, :cond_73

    .line 566
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v2, v2, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 568
    .local v1, "presetText":[Ljava/lang/String;
    const v2, 0x7f050027

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 570
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_45
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v2, v2, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_59

    .line 572
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget-object v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 570
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 575
    :cond_59
    if-eqz p2, :cond_80

    .line 577
    add-int/lit8 p3, p3, 0x1

    .line 578
    const/4 v2, 0x1

    if-lt p3, v2, :cond_74

    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    if-ge p3, v2, :cond_74

    .line 581
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    invoke-virtual {v2, p3}, Lcom/pantech/app/musicfx/view/EventSpinner;->setSelection(I)V

    .line 594
    :goto_6a
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/view/EventSpinner;->setTag(Ljava/lang/Object;)V

    .line 596
    .end local v0    # "i":I
    .end local v1    # "presetText":[Ljava/lang/String;
    :cond_73
    return-void

    .line 586
    .restart local v0    # "i":I
    .restart local v1    # "presetText":[Ljava/lang/String;
    :cond_74
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget v3, v3, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/view/EventSpinner;->setSelection(I)V

    goto :goto_6a

    .line 591
    :cond_80
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mEQSpinner:Lcom/pantech/app/musicfx/view/EventSpinner;

    invoke-virtual {v2, v5}, Lcom/pantech/app/musicfx/view/EventSpinner;->setSelection(I)V

    goto :goto_6a
.end method

.method private setLoudnessMaximizerUI(Z)V
    .registers 7
    .param p1, "onoff"    # Z

    .prologue
    .line 726
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 728
    const-string v2, "VMusicFX_SettingP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLoudnessMaximizerUI onoff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const v2, 0x7f0b0064

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    .line 732
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    if-eqz v2, :cond_41

    .line 734
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 735
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 737
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 738
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 742
    :cond_41
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v2, :cond_4e

    .line 746
    :try_start_45
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    invoke-interface {v2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->isHeadsetConnected()Z

    move-result v1

    .line 748
    .local v1, "isEarjackOn":Z
    invoke-direct {p0, v1, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setLoudnessMaximizerUIEnabler(ZZ)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4e} :catch_4f

    .line 756
    .end local v1    # "isEarjackOn":Z
    :cond_4e
    :goto_4e
    return-void

    .line 750
    :catch_4f
    move-exception v0

    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4e
.end method

.method private setLoudnessMaximizerUIEnabler(ZZ)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "onoff"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    if-eqz v0, :cond_15

    .line 549
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    if-nez p1, :cond_16

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 550
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    if-nez p1, :cond_18

    :goto_12
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 552
    :cond_15
    return-void

    :cond_16
    move v0, v2

    .line 549
    goto :goto_b

    :cond_18
    move v1, v2

    .line 550
    goto :goto_12
.end method

.method private setPresetReverbSpinner(Landroid/widget/Spinner;ZI)V
    .registers 10
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "onoff"    # Z
    .param p3, "defaultValue"    # I

    .prologue
    const/4 v5, 0x0

    .line 771
    if-nez p1, :cond_4

    .line 858
    :goto_3
    return-void

    .line 774
    :cond_4
    const-string v2, "VMusicFX_SettingP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPresetReverbSpinner onoff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v1, "spinItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x7f050052

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    const v2, 0x7f050051

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    const v2, 0x7f05004f

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    const v2, 0x7f05004d

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    const v2, 0x7f05004e

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    const v2, 0x7f05004c

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    const v2, 0x7f050050

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 788
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 789
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 790
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 792
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 795
    if-eqz p2, :cond_9f

    .line 797
    invoke-virtual {p1, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 805
    :goto_8d
    new-instance v2, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$5;

    invoke-direct {v2, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$5;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 836
    new-instance v2, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;

    invoke-direct {v2, p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel$6;-><init>(Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;)V

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 801
    :cond_9f
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_8d
.end method

.method private setPresetReverbUI(ZI)V
    .registers 6
    .param p1, "onoff"    # Z
    .param p2, "defaultValue"    # I

    .prologue
    .line 761
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPresetReverbUI onoff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mReverbDropdown:Landroid/widget/Spinner;

    .line 765
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mReverbDropdown:Landroid/widget/Spinner;

    invoke-direct {p0, v0, p1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setPresetReverbSpinner(Landroid/widget/Spinner;ZI)V

    .line 766
    return-void
.end method

.method private setTrebleEnhanceUI(ZI)V
    .registers 6
    .param p1, "onoff"    # Z
    .param p2, "defaultValue"    # I

    .prologue
    .line 701
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 703
    const-string v0, "VMusicFX_SettingP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrebleEnhanceUI onoff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

    .line 706
    const v0, 0x7f0b005c

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    .line 708
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    if-eqz v0, :cond_4c

    .line 710
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 711
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 714
    :cond_4c
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

    if-eqz v0, :cond_5a

    .line 716
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 717
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 720
    :cond_5a
    return-void
.end method

.method private setVirtualizerUI(ZI)V
    .registers 8
    .param p1, "onoff"    # Z
    .param p2, "defaultValue"    # I

    .prologue
    .line 650
    const-string v2, "VMusicFX_SettingP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVirtualizerUI onoff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const v2, 0x7f0b005d

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    .line 653
    const v2, 0x7f0b0060

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    .line 654
    const v2, 0x7f0b005e

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerMainText:Landroid/widget/TextView;

    .line 655
    const v2, 0x7f0b005f

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSubText:Landroid/widget/TextView;

    .line 658
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    if-eqz v2, :cond_5c

    .line 660
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v2, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 661
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 664
    :cond_5c
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    if-eqz v2, :cond_74

    .line 666
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 667
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 669
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 670
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v2, p1}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 673
    :cond_74
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerMainText:Landroid/widget/TextView;

    if-eqz v2, :cond_7d

    .line 674
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerMainText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 677
    :cond_7d
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSubText:Landroid/widget/TextView;

    if-eqz v2, :cond_86

    .line 678
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSubText:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 682
    :cond_86
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v2, :cond_93

    .line 686
    :try_start_8a
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    invoke-interface {v2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->isHeadsetConnected()Z

    move-result v1

    .line 688
    .local v1, "isEarjackOn":Z
    invoke-direct {p0, v1, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setVitualizerUIEnabler(ZZ)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_93} :catch_94

    .line 695
    .end local v1    # "isEarjackOn":Z
    :cond_93
    :goto_93
    return-void

    .line 690
    :catch_94
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_93
.end method

.method private setVitualizerUIEnabler(ZZ)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "onoff"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    if-eqz v0, :cond_10

    .line 500
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 501
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 504
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    if-eqz v0, :cond_27

    .line 506
    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3a

    if-eqz p2, :cond_3a

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 507
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 510
    :cond_27
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerMainText:Landroid/widget/TextView;

    if-eqz v0, :cond_30

    .line 511
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerMainText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 514
    :cond_30
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_39

    .line 515
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSubText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 517
    :cond_39
    return-void

    :cond_3a
    move v0, v2

    .line 506
    goto :goto_1b

    :cond_3c
    move v1, v2

    .line 507
    goto :goto_24
.end method


# virtual methods
.method public initValue(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.extra.AUDIO_SESSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    .line 231
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    .line 233
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 235
    const v1, 0x7f05002a

    invoke-static {p0, v1}, Lcom/pantech/app/musicfx/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 236
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setBindingFail()V

    .line 237
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->finish()V

    .line 240
    :cond_27
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 864
    if-nez p1, :cond_6

    .line 939
    :cond_5
    :goto_5
    return-void

    .line 865
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v1, :cond_5

    .line 867
    const/4 v0, 0x1

    .line 869
    .local v0, "effectReturn":Z
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/pantech/app/musicfx/utils/Utils;->setHapticFeedBack(Landroid/view/View;I)V

    .line 873
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostOnOffButton:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 875
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 877
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 878
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 879
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 881
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyBBEffect(IZ)Z

    move-result v0

    .line 883
    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    .line 885
    const-string v1, "VMusicFX_SettingP"

    const-string v2, "mService.setBassBoost() fail"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 887
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 888
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mBassBoostSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setFocusable(Z)V

    goto :goto_5

    .line 891
    :cond_65
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 893
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 895
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 896
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 897
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 899
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyVTEffect(IZ)Z

    move-result v0

    .line 901
    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    .line 903
    const-string v1, "VMusicFX_SettingP"

    const-string v2, "mService.setVirtualizer() fail"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 905
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 906
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mVirtualizerSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setFocusable(Z)V

    goto/16 :goto_5

    .line 909
    :cond_a4
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceOnOffButton:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 911
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    if-eqz v1, :cond_5

    .line 913
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 914
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 915
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 917
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyTEEffect(IZ)Z

    move-result v0

    .line 919
    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    .line 921
    const-string v1, "VMusicFX_SettingP"

    const-string v2, "mService.setTrebleEnhance() fail"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 923
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 924
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSlide:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setFocusable(Z)V

    goto/16 :goto_5

    .line 927
    :cond_e3
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 929
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mLoudnessMaximizerOnOffButton:Landroid/widget/Switch;

    if-eqz v1, :cond_5

    .line 931
    invoke-direct {p0, v4, p2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->applyLMEffect(IZ)Z

    move-result v0

    .line 933
    if-eqz p2, :cond_5

    if-nez v0, :cond_5

    .line 935
    const-string v1, "VMusicFX_SettingP"

    const-string v2, "mService.setLoudnessMaximizer() fail"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 437
    const-string v0, "VMusicFX_SettingP"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 440
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    .line 332
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onCreate(Landroid/os/Bundle;)V

    .line 334
    const-string v2, "VMusicFX_SettingP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate>> isTE?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ isLM?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v2

    if-nez v2, :cond_44

    .line 339
    const v2, 0x7f0b0059

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 340
    .local v1, "trebleEnhanceLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 341
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mTrebleEnhanceSliderListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 344
    .end local v1    # "trebleEnhanceLayout":Landroid/widget/LinearLayout;
    :cond_44
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v2

    if-nez v2, :cond_56

    .line 346
    const v2, 0x7f0b0063

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 347
    .local v0, "loudnessMaximizerLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 350
    .end local v0    # "loudnessMaximizerLayout":Landroid/widget/LinearLayout;
    :cond_56
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->initUI()V

    .line 352
    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mUIPanelRefreshListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.pantech.app.musicfx.panel.AudioEffectSettingPanel.action.refresh"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 353
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 427
    const-string v0, "VMusicFX_SettingP"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mUIPanelRefreshListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 431
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onDestroy()V

    .line 432
    return-void
.end method

.method public onEffectServiceConnected()V
    .registers 7

    .prologue
    const/16 v5, 0x1f4

    const/4 v4, 0x0

    .line 246
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected mPackageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAudioSessionID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :try_start_29
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v1, :cond_3f

    .line 252
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    .line 253
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mService:Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    invoke-interface {v1}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;->getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3f} :catch_55

    .line 261
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    if-nez v1, :cond_5a

    .line 263
    const v1, 0x7f05002b

    invoke-static {p0, v1}, Lcom/pantech/app/musicfx/utils/Utils;->showToast(Landroid/content/Context;I)V

    .line 301
    :goto_49
    :try_start_49
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->displayEQPanelUI(ZI)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_54} :catch_d9

    .line 307
    :goto_54
    return-void

    .line 256
    :catch_55
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3f

    .line 270
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5a
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectEQInfoParcel:Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    iget v1, v1, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->EQUALIZER_PRESET_USER:I

    .line 272
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    if-eqz v1, :cond_c3

    .line 274
    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isEqualizer:Z

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v3, v3, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mEQPreset:S

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setEqualizerUI(IZI)V

    .line 275
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isBassBoost:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mBassBoostStrength:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setBassBoostUI(ZI)V

    .line 276
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isVirtualizer:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mVirtualizerStrength:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setVirtualizerUI(ZI)V

    .line 282
    const-string v1, "VMusicFX_SettingP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPresetReverbUI mAudioEffectSettingParcel.mPresetReverbPreset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v3, v3, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isPresetReverb:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mPresetReverbPreset:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setPresetReverbUI(ZI)V

    .line 285
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isTrebleEnhance:Z

    iget-object v2, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-short v2, v2, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->mTrebleEnhanceStrength:S

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setTrebleEnhanceUI(ZI)V

    .line 286
    iget-object v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioEffectSettingParcel:Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    iget-boolean v1, v1, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->isLoudnessMaximizer:Z

    invoke-direct {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setLoudnessMaximizerUI(Z)V

    goto :goto_49

    .line 290
    :cond_c3
    iget v1, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mAudioSessionID:I

    invoke-direct {p0, v1, v4, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setEqualizerUI(IZI)V

    .line 291
    invoke-direct {p0, v4, v5}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setBassBoostUI(ZI)V

    .line 292
    invoke-direct {p0, v4, v5}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setVirtualizerUI(ZI)V

    .line 293
    invoke-direct {p0, v4, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setPresetReverbUI(ZI)V

    .line 294
    invoke-direct {p0, v4, v5}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setTrebleEnhanceUI(ZI)V

    .line 295
    invoke-direct {p0, v4}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setLoudnessMaximizerUI(Z)V

    goto/16 :goto_49

    .line 303
    :catch_d9
    move-exception v0

    .line 305
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_54
.end method

.method public onEffectServiceDisConnected()V
    .registers 3

    .prologue
    .line 313
    const-string v0, "VMusicFX_SettingP"

    const-string v1, "mServiceConnection  onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 446
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 453
    invoke-super {p0, p1}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 449
    :pswitch_c
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->finish()V

    .line 450
    const/4 v0, 0x1

    goto :goto_b

    .line 446
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 399
    const-string v0, "VMusicFX_SettingP"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->refreshPanelUI()V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mIsChecked:Z

    .line 408
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onRestart()V

    .line 409
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 390
    const-string v0, "VMusicFX_SettingP"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onStart()V

    .line 393
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 415
    const-string v0, "VMusicFX_SettingP"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->mIsChecked:Z

    .line 420
    invoke-super {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectBasePanel;->onStop()V

    .line 421
    return-void
.end method

.method public setContentViewOnCreate()V
    .registers 5

    .prologue
    const v3, 0x7f0a0061

    .line 320
    const v1, 0x7f03001c

    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->setContentView(I)V

    .line 322
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 323
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 324
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 325
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/panel/AudioEffectSettingPanel;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void
.end method
