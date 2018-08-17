.class public Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
.super Ljava/lang/Object;
.source "AudioEffectInstance.java"


# static fields
.field public static final BASSBOOST:I = 0x2

.field public static final EQUALIZER:I = 0x1

.field public static final LOUDNESSMAXIMIZER:I = 0x6

.field public static final PRESETREVRB:I = 0x4

.field public static final TREBLEENHANCE:I = 0x5

.field public static final VIRTUALIZER:I = 0x3


# instance fields
.field public mAudioSessionID:I

.field private mBackupBassBoostValue:S

.field private mBackupLoudnessMaximizerValue:S

.field private mBackupVirtualizerValue:S

.field public mBassBoost:Landroid/media/audiofx/BassBoost;

.field private mContext:Landroid/content/Context;

.field public mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

.field private mHandler:Landroid/os/Handler;

.field private mIsBassBoostBackuped:Z

.field private mIsLoudnessMaximizerBackuped:Z

.field private mIsVirtualizerBackuped:Z

.field public mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

.field public mPackageName:Ljava/lang/String;

.field public mPresetReverb:Landroid/media/audiofx/PresetReverb;

.field private mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

.field public mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

.field public mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    .line 37
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    .line 38
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 39
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    .line 40
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    .line 41
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    .line 42
    iput-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    .line 44
    iput-boolean v8, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    .line 45
    iput-boolean v8, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    .line 46
    iput-boolean v8, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z

    .line 48
    iput-short v8, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    .line 49
    iput-short v8, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    .line 50
    iput-short v8, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupLoudnessMaximizerValue:S

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPackageName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .line 62
    if-eqz p1, :cond_9d

    const-string v0, "com.pantech.app.movie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v6, "builder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 69
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_78

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_78

    .line 70
    invoke-direct {p0, v7}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->loadDefaultValue(Landroid/database/Cursor;)V

    .line 72
    :cond_78
    if-eqz v7, :cond_7d

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_7d
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v0

    if-eqz v0, :cond_110

    move v0, v8

    :goto_86
    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    .line 76
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v0

    if-eqz v0, :cond_113

    move v0, v8

    :goto_91
    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    .line 77
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v0

    if-eqz v0, :cond_116

    :goto_9b
    iput-boolean v9, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z

    .line 80
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_9d
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Value >> BASSBOOST   backuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Value >> VIRTUALIZER backuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup Value >> LOUDNESSMAX backuped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupLoudnessMaximizerValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_110
    move v0, v9

    .line 75
    goto/16 :goto_86

    :cond_113
    move v0, v9

    .line 76
    goto/16 :goto_91

    :cond_116
    move v9, v8

    .line 77
    goto :goto_9b
.end method

.method private declared-synchronized IsHasControl(I)Z
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 890
    monitor-enter p0

    const/4 v0, 0x0

    .line 891
    .local v0, "nRet":Z
    packed-switch p1, :pswitch_data_5a

    .line 924
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AudioEffectInstance : IsHasControl : NOT Support Type "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 890
    :catchall_d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 894
    :pswitch_10
    :try_start_10
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v2, :cond_1a

    .line 895
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->hasControl()Z
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_d

    move-result v0

    :cond_1a
    move v1, v0

    .line 921
    .end local v0    # "nRet":Z
    .local v1, "nRet":Z
    :goto_1b
    monitor-exit p0

    return v1

    .line 899
    .end local v1    # "nRet":Z
    .restart local v0    # "nRet":Z
    :pswitch_1d
    :try_start_1d
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v2, :cond_27

    .line 900
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2}, Landroid/media/audiofx/BassBoost;->hasControl()Z

    move-result v0

    :cond_27
    move v1, v0

    .line 901
    .end local v0    # "nRet":Z
    .restart local v1    # "nRet":Z
    goto :goto_1b

    .line 904
    .end local v1    # "nRet":Z
    .restart local v0    # "nRet":Z
    :pswitch_29
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v2, :cond_33

    .line 905
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->hasControl()Z

    move-result v0

    :cond_33
    move v1, v0

    .line 906
    .end local v0    # "nRet":Z
    .restart local v1    # "nRet":Z
    goto :goto_1b

    .line 909
    .end local v1    # "nRet":Z
    .restart local v0    # "nRet":Z
    :pswitch_35
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    if-eqz v2, :cond_3f

    .line 910
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v2}, Landroid/media/audiofx/PresetReverb;->hasControl()Z

    move-result v0

    :cond_3f
    move v1, v0

    .line 911
    .end local v0    # "nRet":Z
    .restart local v1    # "nRet":Z
    goto :goto_1b

    .line 914
    .end local v1    # "nRet":Z
    .restart local v0    # "nRet":Z
    :pswitch_41
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    if-eqz v2, :cond_4b

    .line 915
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->hasControl()Z

    move-result v0

    :cond_4b
    move v1, v0

    .line 916
    .end local v0    # "nRet":Z
    .restart local v1    # "nRet":Z
    goto :goto_1b

    .line 919
    .end local v1    # "nRet":Z
    .restart local v0    # "nRet":Z
    :pswitch_4d
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v2, :cond_57

    .line 920
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v2}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->hasControl()Z
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_d

    move-result v0

    :cond_57
    move v1, v0

    .line 921
    .end local v0    # "nRet":Z
    .restart local v1    # "nRet":Z
    goto :goto_1b

    .line 891
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1d
        :pswitch_29
        :pswitch_35
        :pswitch_41
        :pswitch_4d
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)S
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;

    .prologue
    .line 22
    iget-short v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    return v0
.end method

.method static synthetic access$100(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;II[II)V
    .registers 5
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # [I
    .param p4, "x4"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->setAudioEffect(II[II)V

    return-void
.end method

.method private declared-synchronized allocEffect(II)Z
    .registers 9
    .param p1, "type"    # I
    .param p2, "audioSessionID"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    monitor-enter p0

    :try_start_3
    const-string v3, "VMusicFX_Ins"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "allocEffect("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") audioSessionID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_43

    .line 162
    packed-switch p1, :pswitch_data_138

    .line 233
    :try_start_2c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "AudioEffectInstance : allocEffect : NOT Support Type "

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_34
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2c .. :try_end_34} :catch_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_43

    .line 236
    :catch_34
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_35
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 240
    packed-switch p1, :pswitch_data_148

    .line 261
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "AudioEffectInstance : allocEffect : NOT Support Type "

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_43
    .catchall {:try_start_35 .. :try_end_43} :catchall_43

    .line 158
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catchall_43
    move-exception v1

    monitor-exit p0

    throw v1

    .line 165
    :pswitch_46
    :try_start_46
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v3, :cond_4f

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    invoke-virtual {v3}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->release()V

    .line 167
    :cond_4f
    new-instance v3, Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;-><init>(II)V

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    .line 168
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setEnabled(Z)V
    :try_end_5d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_46 .. :try_end_5d} :catch_34
    .catchall {:try_start_46 .. :try_end_5d} :catchall_43

    .line 267
    :goto_5d
    monitor-exit p0

    return v1

    .line 172
    :pswitch_5f
    :try_start_5f
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v3}, Landroid/media/audiofx/BassBoost;->release()V

    .line 174
    :cond_68
    new-instance v3, Landroid/media/audiofx/BassBoost;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 176
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 177
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    goto :goto_5d

    .line 179
    :cond_7f
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    goto :goto_5d

    .line 183
    :pswitch_86
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v3, :cond_8f

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v3}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->release()V

    .line 185
    :cond_8f
    new-instance v3, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;-><init>(II)V

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    .line 187
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 188
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    goto :goto_5d

    .line 190
    :cond_a6
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    goto :goto_5d

    .line 194
    :pswitch_ad
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v3}, Landroid/media/audiofx/PresetReverb;->release()V

    .line 196
    :cond_b6
    new-instance v3, Landroid/media/audiofx/PresetReverb;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Landroid/media/audiofx/PresetReverb;-><init>(II)V

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    .line 197
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/audiofx/PresetReverb;->setEnabled(Z)I

    goto :goto_5d

    .line 201
    :pswitch_c5
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 203
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    if-eqz v3, :cond_d4

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    invoke-virtual {v3}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->release()V

    .line 205
    :cond_d4
    new-instance v3, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;-><init>(II)V

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    .line 206
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->setEnabled(Z)V

    goto/16 :goto_5d

    .line 210
    :cond_e4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    goto/16 :goto_5d

    .line 215
    :pswitch_e9
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 217
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v3, :cond_f8

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v3}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->release()V

    .line 219
    :cond_f8
    new-instance v3, Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p2}, Lcom/lifevibes/audiofx/LoudnessMaximizer;-><init>(II)V

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    .line 221
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 222
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I

    goto/16 :goto_5d

    .line 224
    :cond_110
    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I

    goto/16 :goto_5d

    .line 228
    :cond_118
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;
    :try_end_11b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5f .. :try_end_11b} :catch_34
    .catchall {:try_start_5f .. :try_end_11b} :catchall_43

    goto/16 :goto_5d

    .line 243
    .restart local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :pswitch_11d
    const/4 v1, 0x0

    :try_start_11e
    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    :goto_120
    move v1, v2

    .line 264
    goto/16 :goto_5d

    .line 246
    :pswitch_123
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    goto :goto_120

    .line 249
    :pswitch_127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    goto :goto_120

    .line 252
    :pswitch_12b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    goto :goto_120

    .line 255
    :pswitch_12f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    goto :goto_120

    .line 258
    :pswitch_133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;
    :try_end_136
    .catchall {:try_start_11e .. :try_end_136} :catchall_43

    goto :goto_120

    .line 162
    nop

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_46
        :pswitch_5f
        :pswitch_86
        :pswitch_ad
        :pswitch_c5
        :pswitch_e9
    .end packed-switch

    .line 240
    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_11d
        :pswitch_123
        :pswitch_127
        :pswitch_12b
        :pswitch_12f
        :pswitch_133
    .end packed-switch
.end method

.method private declared-synchronized getEffectInstance(I)Landroid/media/audiofx/AudioEffect;
    .registers 4
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 857
    monitor-enter p0

    packed-switch p1, :pswitch_data_3c

    .line 884
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffectInstance : getEffectInstance : NOT Support Type "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 857
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 860
    :pswitch_10
    :try_start_10
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v1, :cond_1a

    .line 861
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getInstance()Landroid/media/audiofx/AudioEffect;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_d

    move-result-object v0

    .line 881
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-object v0

    .line 865
    :pswitch_1c
    :try_start_1c
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    goto :goto_1a

    .line 868
    :pswitch_1f
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v1, :cond_1a

    .line 869
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->getInstance()Landroid/media/audiofx/AudioEffect;

    move-result-object v0

    goto :goto_1a

    .line 873
    :pswitch_2a
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    goto :goto_1a

    .line 876
    :pswitch_2d
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    if-eqz v1, :cond_1a

    .line 877
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->getInstance()Landroid/media/audiofx/AudioEffect;

    move-result-object v0

    goto :goto_1a

    .line 881
    :pswitch_38
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;
    :try_end_3a
    .catchall {:try_start_1c .. :try_end_3a} :catchall_d

    goto :goto_1a

    .line 857
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1c
        :pswitch_1f
        :pswitch_2a
        :pswitch_2d
        :pswitch_38
    .end packed-switch
.end method

.method private getEffectString(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 930
    packed-switch p1, :pswitch_data_1e

    .line 951
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffectInstance : getEffectString : NOT Support Type "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :pswitch_b
    const-string v0, "EQUALIZER"

    .line 948
    :goto_d
    return-object v0

    .line 936
    :pswitch_e
    const-string v0, "BASSBOOST"

    goto :goto_d

    .line 939
    :pswitch_11
    const-string v0, "VIRTUALIZER"

    goto :goto_d

    .line 942
    :pswitch_14
    const-string v0, "PRESETREVRB"

    goto :goto_d

    .line 945
    :pswitch_17
    const-string v0, "TREBLEENHANCE"

    goto :goto_d

    .line 948
    :pswitch_1a
    const-string v0, "LOUDNESSMAXIMIZER"

    goto :goto_d

    .line 930
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private loadDefaultOnOFFEarphoneEffect(I)Z
    .registers 13
    .param p1, "effectType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 111
    const/4 v8, 0x0

    .line 113
    .local v8, "isEffectOn":Z
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPackageName:Ljava/lang/String;

    const-string v1, "com.pantech.app.movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v6, "builder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package_name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 120
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_55

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_55

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    packed-switch p1, :pswitch_data_bc

    .line 140
    :cond_55
    :goto_55
    :pswitch_55
    if-eqz v7, :cond_5a

    .line 141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadDefaultOnOFFEarphoneEffect() type("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") isEffectOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") strength = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Z)V

    .line 146
    return v8

    .line 127
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "c":Landroid/database/Cursor;
    :pswitch_8b
    const-string v0, "bassboost_onoff"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_99

    move v8, v9

    .line 128
    :goto_98
    goto :goto_55

    :cond_99
    move v8, v10

    .line 127
    goto :goto_98

    .line 131
    :pswitch_9b
    const-string v0, "virtualizer_onoff"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_a9

    move v8, v9

    .line 132
    :goto_a8
    goto :goto_55

    :cond_a9
    move v8, v10

    .line 131
    goto :goto_a8

    .line 135
    :pswitch_ab
    const-string v0, "loudnessmaximizer_onoff"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_b9

    move v8, v9

    :goto_b8
    goto :goto_55

    :cond_b9
    move v8, v10

    goto :goto_b8

    .line 124
    nop

    :pswitch_data_bc
    .packed-switch 0x2
        :pswitch_8b
        :pswitch_9b
        :pswitch_55
        :pswitch_55
        :pswitch_ab
    .end packed-switch
.end method

.method private loadDefaultValue(Landroid/database/Cursor;)V
    .registers 10
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "bassSetting":Landroid/media/audiofx/BassBoost$Settings;
    const/4 v4, 0x0

    .line 92
    .local v4, "virSetting":Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;
    const/4 v2, 0x0

    .line 94
    .local v2, "lmSetting":Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;
    const-string v6, "bassboost_setting"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "bassStr":Ljava/lang/String;
    const-string v6, "virtualizer_setting"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "virStr":Ljava/lang/String;
    const-string v6, "loudnessmaximizer_setting"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "lmStr":Ljava/lang/String;
    if-eqz v1, :cond_2b

    new-instance v0, Landroid/media/audiofx/BassBoost$Settings;

    .end local v0    # "bassSetting":Landroid/media/audiofx/BassBoost$Settings;
    invoke-direct {v0, v1}, Landroid/media/audiofx/BassBoost$Settings;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v0    # "bassSetting":Landroid/media/audiofx/BassBoost$Settings;
    :cond_2b
    if-eqz v5, :cond_32

    new-instance v4, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    .end local v4    # "virSetting":Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;
    invoke-direct {v4, v5}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v4    # "virSetting":Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;
    :cond_32
    if-eqz v3, :cond_39

    new-instance v2, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    .end local v2    # "lmSetting":Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;
    invoke-direct {v2, v3}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v2    # "lmSetting":Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;
    :cond_39
    if-eqz v0, :cond_3f

    iget-short v6, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    iput-short v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    .line 103
    :cond_3f
    if-eqz v4, :cond_45

    iget-short v6, v4, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;->strength:S

    iput-short v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    .line 104
    :cond_45
    if-eqz v2, :cond_4c

    iget v6, v2, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->strength:I

    int-to-short v6, v6

    iput-short v6, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupLoudnessMaximizerValue:S

    .line 106
    :cond_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadDefaultOnOFFEarphoneEffect() bassSetting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", virSetting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-short v7, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private declared-synchronized setAudioEffect(II[II)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "bandlevels"    # [I
    .param p4, "virtualizerType"    # I

    .prologue
    const/4 v5, 0x2

    .line 273
    monitor-enter p0

    :try_start_2
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffect type("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") value("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    packed-switch p1, :pswitch_data_270

    .line 420
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AudioEffectInstance : setEffect : NOT Support Type "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_39

    .line 273
    :catchall_39
    move-exception v2

    monitor-exit p0

    throw v2

    .line 278
    :pswitch_3c
    :try_start_3c
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v2, :cond_a1

    .line 280
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 282
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v0

    .line 284
    .local v0, "equalizerInfo":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / bandlevels="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-ltz p2, :cond_a3

    iget v2, v0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    if-ge p2, v2, :cond_a3

    .line 288
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    int-to-short v3, p2

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->usePreset(S)V

    .line 340
    :cond_82
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " EQUALIZER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " applied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_a1
    .catchall {:try_start_3c .. :try_end_a1} :catchall_39

    .line 422
    .end local v0    # "equalizerInfo":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    :cond_a1
    :goto_a1
    monitor-exit p0

    return-void

    .line 292
    .restart local v0    # "equalizerInfo":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    :cond_a3
    if-eqz p3, :cond_82

    .line 295
    :try_start_a5
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isNXPSolution()Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ac
    array-length v2, p3

    if-ge v1, v2, :cond_82

    .line 299
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_e9

    .line 308
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    int-to-short v3, v1

    aget v4, p3, v1

    int-to-short v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setBandLevel(SS)V

    .line 326
    :goto_bc
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EQ ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_ac

    .line 313
    :cond_e9
    if-ne v1, v5, :cond_106

    .line 315
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    int-to-short v3, v1

    const v4, 0x17318

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setCenterFreq(SI)V

    .line 316
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    int-to-short v3, v1

    const/16 v4, 0x3c

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setQFactor(SS)V

    .line 323
    :cond_fc
    :goto_fc
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    int-to-short v3, v1

    aget v4, p3, v1

    int-to-short v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setBandLevel(SS)V

    goto :goto_bc

    .line 318
    :cond_106
    if-ge v1, v5, :cond_fc

    .line 320
    const/4 v2, 0x0

    aput v2, p3, v1

    goto :goto_fc

    .line 331
    .end local v1    # "i":I
    :cond_10c
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10d
    array-length v2, p3

    if-ge v1, v2, :cond_82

    .line 333
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    int-to-short v3, v1

    aget v4, p3, v1

    int-to-short v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setBandLevel(SS)V

    .line 334
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EQ ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    add-int/lit8 v1, v1, 0x1

    goto :goto_10d

    .line 346
    .end local v0    # "equalizerInfo":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    .end local v1    # "i":I
    :pswitch_146
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v2, :cond_a1

    .line 348
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 350
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    int-to-short v3, p2

    invoke-virtual {v2, v3}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    .line 351
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BASSBOOST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " applied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 354
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    goto/16 :goto_a1

    .line 358
    :cond_17c
    const-string v2, "VMusicFX_Ins"

    const-string v3, "BassBoost can\'t Enable!!! Don\'t Set BassBoost Effect !!"

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 364
    :pswitch_185
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v2, :cond_a1

    .line 366
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_1cb

    .line 368
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    int-to-short v3, p2

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setStrength(S)V

    .line 369
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    int-to-short v3, p4

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setType(S)V

    .line 370
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " VIRTUALIZER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " applied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 373
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    goto/16 :goto_a1

    .line 377
    :cond_1cb
    const-string v2, "VMusicFX_Ins"

    const-string v3, "Virtualizer can\'t Enable!!! Don\'t Set Virtualizer Effect !!"

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 383
    :pswitch_1d4
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    if-eqz v2, :cond_a1

    .line 385
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v2}, Landroid/media/audiofx/PresetReverb;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 387
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    int-to-short v3, p2

    invoke-virtual {v2, v3}, Landroid/media/audiofx/PresetReverb;->setPreset(S)V

    .line 388
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " PRESETREVRB "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " applied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_a1

    .line 394
    :pswitch_207
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    if-eqz v2, :cond_a1

    .line 396
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 398
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    int-to-short v3, p2

    invoke-virtual {v2, v3}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->setStrength(S)V

    .line 399
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " TREBLEENHANCE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " applied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_a1

    .line 405
    :pswitch_23a
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v2, :cond_a1

    .line 407
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v2}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 410
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v2, p2}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setStrength(I)V

    .line 411
    const-string v2, "VMusicFX_Ins"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LOUDNESSMAXIMIZER "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " applied"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 414
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z
    :try_end_26d
    .catchall {:try_start_a5 .. :try_end_26d} :catchall_39

    goto/16 :goto_a1

    .line 275
    nop

    :pswitch_data_270
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_146
        :pswitch_185
        :pswitch_1d4
        :pswitch_207
        :pswitch_23a
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized backupEffect(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 528
    monitor-enter p0

    :try_start_2
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    packed-switch p1, :pswitch_data_1be

    .line 640
    :pswitch_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Just Support Virtualizer or BassBoost or LoudnessMaximizer !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_2f

    .line 528
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    :pswitch_32
    :try_start_32
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    if-ne v0, v3, :cond_3f

    .line 539
    const-string v0, "VMusicFX_Ins"

    const-string v1, "Already BassBoost backup is done. Don\'t back up effect !"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_2f

    .line 642
    :goto_3d
    monitor-exit p0

    return-void

    .line 542
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_ad

    .line 545
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->hasControl()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 547
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->getRoundedStrength()S

    move-result v0

    iput-short v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    .line 549
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupEffect complted: BassBoost backup value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 552
    :cond_76
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 554
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEffectRelease()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 556
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupEffect BassBoost release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v2}, Landroid/media/audiofx/BassBoost;->hasControl()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 557
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 566
    :cond_a9
    :goto_a9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    goto :goto_3d

    .line 563
    :cond_ad
    const-string v0, "VMusicFX_Ins"

    const-string v1, "backupEffect() BassBoost Instance is null. Don\'t backup"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9

    .line 572
    :pswitch_b5
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    if-ne v0, v3, :cond_c2

    .line 574
    const-string v0, "VMusicFX_Ins"

    const-string v1, "Already Virtualizer backup is done. Don\'t back up effect !"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 577
    :cond_c2
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v0, :cond_131

    .line 580
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->hasControl()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 582
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->getRoundedStrength()S

    move-result v0

    iput-short v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    .line 584
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupEffect complted: Virtualizer backup value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 587
    :cond_f9
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    .line 589
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEffectRelease()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 591
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupEffect Virtualizer release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->hasControl()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 592
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->release()V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    .line 601
    :cond_12c
    :goto_12c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    goto/16 :goto_3d

    .line 598
    :cond_131
    const-string v0, "VMusicFX_Ins"

    const-string v1, "backupEffect() Virtualizer Instance is null. Don\'t backup"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12c

    .line 607
    :pswitch_139
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z

    if-ne v0, v3, :cond_146

    .line 609
    const-string v0, "VMusicFX_Ins"

    const-string v1, "Already LoudnessMaximizer backup is done. Don\'t back up effect !"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 612
    :cond_146
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v0, :cond_1b6

    .line 615
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_17e

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->hasControl()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 617
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getStrength()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupLoudnessMaximizerValue:S

    .line 619
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupEffect complted: LoudnessMaximizer backup value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupLoudnessMaximizerValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 622
    :cond_17e
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I

    .line 624
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEffectRelease()Z

    move-result v0

    if-eqz v0, :cond_1b1

    .line 626
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupEffect LoudnessMaximizer release: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v2}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->hasControl()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 627
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->release()V

    .line 628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    .line 636
    :cond_1b1
    :goto_1b1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z

    goto/16 :goto_3d

    .line 633
    :cond_1b6
    const-string v0, "VMusicFX_Ins"

    const-string v1, "backupEffect() LoudnessMaximizer Instance is null. Don\'t backup"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bd
    .catchall {:try_start_3f .. :try_end_1bd} :catchall_2f

    goto :goto_1b1

    .line 530
    :pswitch_data_1be
    .packed-switch 0x2
        :pswitch_32
        :pswitch_b5
        :pswitch_27
        :pswitch_27
        :pswitch_139
    .end packed-switch
.end method

.method public declared-synchronized controlEffect(III[IZI)Z
    .registers 15
    .param p1, "audioSessionID"    # I
    .param p2, "type"    # I
    .param p3, "value"    # I
    .param p4, "bandLevels"    # [I
    .param p5, "onoff"    # Z
    .param p6, "virtualizerType"    # I

    .prologue
    .line 957
    monitor-enter p0

    const/4 v6, 0x1

    .line 959
    .local v6, "nRet":Z
    :try_start_2
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlEffect audioSessionID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onoff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 961
    iget v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_81

    .line 962
    iput p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    .line 971
    :cond_44
    if-eqz p5, :cond_126

    .line 973
    invoke-direct {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectInstance(I)Landroid/media/audiofx/AudioEffect;

    move-result-object v0

    if-nez v0, :cond_b3

    .line 975
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-direct {p0, p2, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->allocEffect(II)Z

    move-result v6

    .line 978
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->setAudioEffect(II[II)V
    :try_end_7f
    .catchall {:try_start_2 .. :try_end_7f} :catchall_b0

    .line 1016
    :goto_7f
    monitor-exit p0

    return v6

    .line 965
    :cond_81
    :try_start_81
    iget v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    if-eq v0, p1, :cond_44

    .line 967
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioEffectInstance : this.audioSessionID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") != audioSessionID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b0
    .catchall {:try_start_81 .. :try_end_b0} :catchall_b0

    .line 957
    :catchall_b0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 982
    :cond_b3
    :try_start_b3
    invoke-direct {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->IsHasControl(I)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 984
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->enableEffect(I)V

    .line 988
    iget-object v7, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$3;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;II[II)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7f

    .line 998
    :cond_f4
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has NO Control ReInitiate value("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-virtual {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    .line 1002
    invoke-direct {p0, p2, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->allocEffect(II)Z

    move-result v6

    .line 1003
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->setAudioEffect(II[II)V

    goto/16 :goto_7f

    .line 1009
    :cond_126
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isEffectRelease()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 1010
    invoke-virtual {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->releaseEffect(I)V

    goto/16 :goto_7f

    .line 1012
    :cond_131
    invoke-virtual {p0, p2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->disableEffect(I)V
    :try_end_134
    .catchall {:try_start_b3 .. :try_end_134} :catchall_b0

    goto/16 :goto_7f
.end method

.method public declared-synchronized disableEffect(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 478
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectInstance(I)Landroid/media/audiofx/AudioEffect;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 479
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    :goto_2a
    packed-switch p1, :pswitch_data_aa

    .line 516
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffectInstance : releaseEffect : NOT Support Type "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_35

    .line 478
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 481
    :cond_38
    :try_start_38
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") instance is null. can\'t disable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 486
    :pswitch_5b
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v0, :cond_65

    .line 487
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setEnabled(Z)V
    :try_end_65
    .catchall {:try_start_38 .. :try_end_65} :catchall_35

    .line 518
    :cond_65
    :goto_65
    monitor-exit p0

    return-void

    .line 491
    :pswitch_67
    :try_start_67
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_65

    .line 492
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    goto :goto_65

    .line 496
    :pswitch_72
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v0, :cond_65

    .line 497
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    goto :goto_65

    .line 501
    :pswitch_7d
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    if-eqz v0, :cond_65

    .line 502
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/PresetReverb;->setEnabled(Z)I

    goto :goto_65

    .line 506
    :pswitch_88
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    if-eqz v0, :cond_65

    .line 507
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->setEnabled(Z)V

    goto :goto_65

    .line 511
    :pswitch_99
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v0, :cond_65

    .line 512
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I
    :try_end_a9
    .catchall {:try_start_67 .. :try_end_a9} :catchall_35

    goto :goto_65

    .line 483
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_67
        :pswitch_72
        :pswitch_7d
        :pswitch_88
        :pswitch_99
    .end packed-switch
.end method

.method public declared-synchronized enableEffect(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 427
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectInstance(I)Landroid/media/audiofx/AudioEffect;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 428
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") isHeadset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 432
    :goto_3a
    packed-switch p1, :pswitch_data_11a

    .line 471
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffectInstance : releaseEffect : NOT Support Type "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_45

    .line 427
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 430
    :cond_48
    :try_start_48
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") instance is null. can\'t enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 435
    :pswitch_6b
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v0, :cond_75

    .line 436
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setEnabled(Z)V
    :try_end_75
    .catchall {:try_start_48 .. :try_end_75} :catchall_45

    .line 473
    :cond_75
    :goto_75
    monitor-exit p0

    return-void

    .line 440
    :pswitch_77
    :try_start_77
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 441
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    goto :goto_75

    .line 443
    :cond_8a
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEffect() Headset is not connected or instance null. Don\'t set BASSBOOST Effect!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 447
    :pswitch_a5
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 448
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    goto :goto_75

    .line 450
    :cond_b8
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEffect() Headset is not connected or instance null. Don\'t set VIRTUALIZER Effect!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 454
    :pswitch_d3
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    if-eqz v0, :cond_75

    .line 455
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/PresetReverb;->setEnabled(Z)I

    goto :goto_75

    .line 459
    :pswitch_de
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    if-eqz v0, :cond_75

    .line 460
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->setEnabled(Z)V

    goto :goto_75

    .line 464
    :pswitch_e9
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mService:Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    invoke-virtual {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z

    move-result v0

    if-nez v0, :cond_fd

    .line 465
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I

    goto/16 :goto_75

    .line 467
    :cond_fd
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEffect() Headset is connected or instance null. Don\'t set LOUDNESSMAXIMIZER Effect!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_117
    .catchall {:try_start_77 .. :try_end_117} :catchall_45

    goto/16 :goto_75

    .line 432
    nop

    :pswitch_data_11a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_77
        :pswitch_a5
        :pswitch_d3
        :pswitch_de
        :pswitch_e9
    .end packed-switch
.end method

.method public isHeadsetConnected(Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;)Z
    .registers 3
    .param p1, "service"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;

    .prologue
    .line 1022
    invoke-virtual {p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectManageService;->isHeadsetConnected()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized releaseEffect(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 776
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectInstance(I)Landroid/media/audiofx/AudioEffect;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 777
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 781
    :goto_2a
    packed-switch p1, :pswitch_data_10c

    .line 850
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "AudioEffectInstance : releaseEffect : NOT Support Type "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_35

    .line 776
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0

    .line 779
    :cond_38
    :try_start_38
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") instance is null. can\'t release"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 784
    :pswitch_5b
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    if-eqz v0, :cond_75

    .line 786
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectEqualizer;->release()V

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mEQ:Lcom/pantech/app/musicfx/effect/EffectEqualizer;

    .line 790
    const-string v0, "VMusicFX_Ins"

    const-string v1, "EQUALIZER released"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_75
    .catchall {:try_start_38 .. :try_end_75} :catchall_35

    .line 852
    :cond_75
    :goto_75
    monitor-exit p0

    return-void

    .line 795
    :pswitch_77
    :try_start_77
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_75

    .line 797
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 798
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    .line 801
    const-string v0, "VMusicFX_Ins"

    const-string v1, "BASSBOOST released"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_75

    .line 806
    :pswitch_92
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v0, :cond_75

    .line 808
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    .line 809
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->release()V

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    .line 812
    const-string v0, "VMusicFX_Ins"

    const-string v1, "VIRTUALIZER released"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_75

    .line 817
    :pswitch_ad
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    if-eqz v0, :cond_75

    .line 819
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/PresetReverb;->setEnabled(Z)I

    .line 820
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    invoke-virtual {v0}, Landroid/media/audiofx/PresetReverb;->release()V

    .line 821
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPresetReverb:Landroid/media/audiofx/PresetReverb;

    .line 823
    const-string v0, "VMusicFX_Ins"

    const-string v1, "PRESETREVRB released"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_75

    .line 828
    :pswitch_c8
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    if-eqz v0, :cond_75

    .line 830
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->setEnabled(Z)V

    .line 831
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    invoke-virtual {v0}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;->release()V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mTrebleEnhancement:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;

    .line 834
    const-string v0, "VMusicFX_Ins"

    const-string v1, "TREBLEENHANCE released"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_75

    .line 839
    :pswitch_e9
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v0, :cond_75

    .line 841
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I

    .line 842
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    invoke-virtual {v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->release()V

    .line 843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    .line 845
    const-string v0, "VMusicFX_Ins"

    const-string v1, "LOUDNESSMAXIMIZER released"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_109
    .catchall {:try_start_77 .. :try_end_109} :catchall_35

    goto/16 :goto_75

    .line 781
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_77
        :pswitch_92
        :pswitch_ad
        :pswitch_c8
        :pswitch_e9
    .end packed-switch
.end method

.method public declared-synchronized restoreEffect(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 653
    monitor-enter p0

    :try_start_1
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreEffect("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->getEffectString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") , sessionID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    packed-switch p1, :pswitch_data_1c0

    .line 769
    :pswitch_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Just Support Virtualizer or BassBoost or LoudnessMaximizer !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_40

    .line 653
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0

    .line 658
    :pswitch_43
    :try_start_43
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    if-nez v0, :cond_50

    .line 660
    const-string v0, "VMusicFX_Ins"

    const-string v1, "Already BassBoost restore is done. Not restore eEffect !"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_40

    .line 771
    :goto_4e
    monitor-exit p0

    return-void

    .line 663
    :cond_50
    :try_start_50
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-nez v0, :cond_85

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->loadDefaultOnOFFEarphoneEffect(I)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 665
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreEffect BassBoost make Instance, mBackupBassBoostValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$1;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    :goto_81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsBassBoostBackuped:Z

    goto :goto_4e

    .line 683
    :cond_85
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_e6

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->loadDefaultOnOFFEarphoneEffect(I)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 685
    const-string v0, "VMusicFX_Ins"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreEffect BassBoost Instance is exist. only setEnable, mBackupBassBoostValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 687
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IM-100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 688
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance$2;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_81

    .line 696
    :cond_d7
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect() BassBoost.setStrength"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBassBoost:Landroid/media/audiofx/BassBoost;

    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupBassBoostValue:S

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setStrength(S)V

    goto :goto_81

    .line 702
    :cond_e6
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect() BassBoost Instance is null. Don\'t restore"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 711
    :pswitch_ee
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    if-nez v0, :cond_fb

    .line 713
    const-string v0, "VMusicFX_Ins"

    const-string v1, "Already Virtualizer restore is done. Not restore eEffect !"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 716
    :cond_fb
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-nez v0, :cond_12f

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->loadDefaultOnOFFEarphoneEffect(I)Z

    move-result v0

    if-eqz v0, :cond_12f

    .line 718
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect Virtualizer make Instance"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    new-instance v0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    .line 720
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    .line 721
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setStrength(S)V

    .line 722
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setType(S)V

    .line 737
    :goto_12a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsVirtualizerBackuped:Z

    goto/16 :goto_4e

    .line 725
    :cond_12f
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    if-eqz v0, :cond_155

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->loadDefaultOnOFFEarphoneEffect(I)Z

    move-result v0

    if-eqz v0, :cond_155

    .line 727
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect Virtualizer Instance is exist. only setEnable"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setEnabled(Z)V

    .line 729
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupVirtualizerValue:S

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setStrength(S)V

    .line 730
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mVirtualizer:Lcom/pantech/app/musicfx/effect/EffectVirtualizer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer;->setType(S)V

    goto :goto_12a

    .line 734
    :cond_155
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect() Virtualizer Instance is null. Don\'t restore"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12a

    .line 741
    :pswitch_15d
    iget-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z

    if-nez v0, :cond_16a

    .line 743
    const-string v0, "VMusicFX_Ins"

    const-string v1, "Already LoudnessMaximizer restore is done. Not restore eEffect !"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 746
    :cond_16a
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-nez v0, :cond_198

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->loadDefaultOnOFFEarphoneEffect(I)Z

    move-result v0

    if-eqz v0, :cond_198

    .line 748
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect LoudnessMaximizer make Instance"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    new-instance v0, Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mAudioSessionID:I

    invoke-direct {v0, v1, v2}, Lcom/lifevibes/audiofx/LoudnessMaximizer;-><init>(II)V

    iput-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    .line 750
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I

    .line 751
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupLoudnessMaximizerValue:S

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setStrength(I)V

    .line 765
    :goto_193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mIsLoudnessMaximizerBackuped:Z

    goto/16 :goto_4e

    .line 754
    :cond_198
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    if-eqz v0, :cond_1b8

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->loadDefaultOnOFFEarphoneEffect(I)Z

    move-result v0

    if-eqz v0, :cond_1b8

    .line 756
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect LoudnessMaximizer Instance is exist. only setEnable"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setEnabled(Z)I

    .line 758
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mLoudnessMaximizer:Lcom/lifevibes/audiofx/LoudnessMaximizer;

    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectInstance;->mBackupLoudnessMaximizerValue:S

    invoke-virtual {v0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setStrength(I)V

    goto :goto_193

    .line 762
    :cond_1b8
    const-string v0, "VMusicFX_Ins"

    const-string v1, "restoreEffect() LoudnessMaximizer Instance is null. Don\'t restore"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bf
    .catchall {:try_start_50 .. :try_end_1bf} :catchall_40

    goto :goto_193

    .line 655
    :pswitch_data_1c0
    .packed-switch 0x2
        :pswitch_43
        :pswitch_ee
        :pswitch_38
        :pswitch_38
        :pswitch_15d
    .end packed-switch
.end method
