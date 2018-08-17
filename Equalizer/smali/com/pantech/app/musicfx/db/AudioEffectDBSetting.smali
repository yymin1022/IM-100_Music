.class public Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;
.super Ljava/lang/Object;
.source "AudioEffectDBSetting.java"


# static fields
.field public static final BASSBOOST:I = 0x2

.field public static final EQUALIZER:I = 0x1

.field public static final LOUDNESSMAXIMIZER:I = 0x6

.field public static final PRESETREVRB:I = 0x4

.field public static final TREBLEENHANCE:I = 0x5

.field public static final VIRTUALIZER:I = 0x3


# instance fields
.field public isBassBoost:Z

.field public isEqualizer:Z

.field public isLoudnessMaximizer:Z

.field public isPresetReverb:Z

.field public isTrebleEnhance:Z

.field public isVirtualizer:Z

.field public mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

.field public mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

.field public mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

.field public mPackageName:Ljava/lang/String;

.field public mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

.field public mPresetText:[Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;

.field public mTotalPresetCount:I

.field public mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

.field public mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

.field private where:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 12
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x1f4

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPackageName:Ljava/lang/String;

    .line 29
    iput v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTotalPresetCount:I

    .line 30
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetText:[Ljava/lang/String;

    .line 39
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    .line 40
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    .line 41
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    .line 42
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    .line 43
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    .line 44
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    .line 46
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 47
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    .line 48
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    .line 49
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    .line 50
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    .line 51
    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    .line 56
    const-string v0, "VMusicFX_DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioEffectSetting Constructor: New Instance packagename= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    .line 60
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->getSelectionWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_61

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_e6

    .line 67
    :cond_61
    const-string v0, "VMusicFX_DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPackageName:Ljava/lang/String;

    .line 70
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    .line 71
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    .line 72
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    .line 73
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    .line 74
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    .line 75
    iput-boolean v7, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    .line 77
    new-instance v0, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-direct {v0}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 78
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iput-short v7, v0, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->curPreset:S

    .line 79
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iput-object v2, v0, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    .line 80
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iput-short v7, v0, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->numBands:S

    .line 82
    new-instance v0, Landroid/media/audiofx/BassBoost$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/BassBoost$Settings;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    .line 83
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    iput-short v8, v0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    .line 85
    new-instance v0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    invoke-direct {v0}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    .line 86
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    iput-short v8, v0, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;->strength:S

    .line 88
    new-instance v0, Landroid/media/audiofx/PresetReverb$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/PresetReverb$Settings;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    .line 89
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    iput-short v7, v0, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    .line 91
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 93
    new-instance v0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    invoke-direct {v0}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    .line 94
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    iput-short v8, v0, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;->strength:S

    .line 97
    :cond_cc
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 99
    new-instance v0, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    invoke-direct {v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    .line 100
    iget-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    iput v7, v0, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->strength:I

    .line 104
    :cond_dd
    invoke-direct {p0}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->saveSetting()V

    .line 111
    :goto_e0
    if-eqz v6, :cond_e5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_e5
    return-void

    .line 108
    :cond_e6
    invoke-direct {p0, v6}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->loadSetting(Landroid/database/Cursor;)V

    goto :goto_e0
.end method

.method private getSelectionWhere(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 119
    if-nez p1, :cond_4

    const-string p1, "com.pantech.app.music"

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package_name = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadSetting(Landroid/database/Cursor;)V
    .registers 18
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 130
    const-string v13, "VMusicFX_DB"

    const-string v14, "loadSetting ()"

    invoke-static {v13, v14}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 134
    const-string v13, "eq_onoff"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 135
    .local v3, "equalizerFlag":I
    const-string v13, "bassboost_onoff"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 136
    .local v1, "bassboostFlag":I
    const-string v13, "virtualizer_onoff"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 137
    .local v11, "virtualizerFlag":I
    const-string v13, "presetReverb_onoff"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 139
    .local v7, "presetReverbFlag":I
    if-lez v3, :cond_1f1

    const/4 v13, 0x1

    :goto_45
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    .line 140
    if-lez v1, :cond_1f4

    const/4 v13, 0x1

    :goto_4c
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    .line 141
    if-lez v11, :cond_1f7

    const/4 v13, 0x1

    :goto_53
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    .line 142
    if-lez v7, :cond_1fa

    const/4 v13, 0x1

    :goto_5a
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    .line 144
    const-string v13, "eq_setting"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "equalizerSetting":Ljava/lang/String;
    const-string v13, "bassboost_setting"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "bassboostSetting":Ljava/lang/String;
    const-string v13, "virtualizer_setting"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 147
    .local v12, "virtualizerSetting":Ljava/lang/String;
    const-string v13, "presetReverb_setting"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "presetReverbSetting":Ljava/lang/String;
    new-instance v13, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-direct {v13, v4}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 150
    new-instance v13, Landroid/media/audiofx/BassBoost$Settings;

    invoke-direct {v13, v2}, Landroid/media/audiofx/BassBoost$Settings;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    .line 151
    new-instance v13, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    invoke-direct {v13, v12}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    .line 152
    new-instance v13, Landroid/media/audiofx/PresetReverb$Settings;

    invoke-direct {v13, v8}, Landroid/media/audiofx/PresetReverb$Settings;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    .line 154
    const-string v13, "VMusicFX_DB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-virtual {v15}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v13, "VMusicFX_DB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    invoke-virtual {v15}, Landroid/media/audiofx/BassBoost$Settings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v13, "VMusicFX_DB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    invoke-virtual {v15}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v13, "VMusicFX_DB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    invoke-virtual {v15}, Landroid/media/audiofx/PresetReverb$Settings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v13

    if-eqz v13, :cond_18c

    .line 161
    const-string v13, "trebleEnhance_onoff"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 162
    .local v9, "trebleEnhanceFlag":I
    if-lez v9, :cond_1fd

    const/4 v13, 0x1

    :goto_151
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    .line 163
    const-string v13, "trebleEnhance_setting"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, "trebleEnhanceSetting":Ljava/lang/String;
    new-instance v13, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    invoke-direct {v13, v10}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    .line 165
    const-string v13, "VMusicFX_DB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    invoke-virtual {v15}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v9    # "trebleEnhanceFlag":I
    .end local v10    # "trebleEnhanceSetting":Ljava/lang/String;
    :cond_18c
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v13

    if-eqz v13, :cond_1de

    .line 171
    const-string v13, "loudnessmaximizer_onoff"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 172
    .local v5, "loudnessMaximizerFlag":I
    if-lez v5, :cond_200

    const/4 v13, 0x1

    :goto_1a3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    .line 173
    const-string v13, "loudnessmaximizer_setting"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, "loudnessMaximizerSetting":Ljava/lang/String;
    new-instance v13, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    invoke-direct {v13, v6}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    .line 175
    const-string v13, "VMusicFX_DB"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Load:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    invoke-virtual {v15}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/musicfx/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v5    # "loudnessMaximizerFlag":I
    .end local v6    # "loudnessMaximizerSetting":Ljava/lang/String;
    :cond_1de
    const-string v13, "package_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPackageName:Ljava/lang/String;

    .line 179
    return-void

    .line 139
    .end local v2    # "bassboostSetting":Ljava/lang/String;
    .end local v4    # "equalizerSetting":Ljava/lang/String;
    .end local v8    # "presetReverbSetting":Ljava/lang/String;
    .end local v12    # "virtualizerSetting":Ljava/lang/String;
    :cond_1f1
    const/4 v13, 0x0

    goto/16 :goto_45

    .line 140
    :cond_1f4
    const/4 v13, 0x0

    goto/16 :goto_4c

    .line 141
    :cond_1f7
    const/4 v13, 0x0

    goto/16 :goto_53

    .line 142
    :cond_1fa
    const/4 v13, 0x0

    goto/16 :goto_5a

    .line 162
    .restart local v2    # "bassboostSetting":Ljava/lang/String;
    .restart local v4    # "equalizerSetting":Ljava/lang/String;
    .restart local v8    # "presetReverbSetting":Ljava/lang/String;
    .restart local v9    # "trebleEnhanceFlag":I
    .restart local v12    # "virtualizerSetting":Ljava/lang/String;
    :cond_1fd
    const/4 v13, 0x0

    goto/16 :goto_151

    .line 172
    .end local v9    # "trebleEnhanceFlag":I
    .restart local v5    # "loudnessMaximizerFlag":I
    :cond_200
    const/4 v13, 0x0

    goto :goto_1a3
.end method

.method private saveSetting()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 184
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v0, "values":Landroid/content/ContentValues;
    const-string v4, "eq_onoff"

    iget-boolean v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    if-eqz v1, :cond_1bd

    move v1, v2

    :goto_e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v4, "bassboost_onoff"

    iget-boolean v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    if-eqz v1, :cond_1c0

    move v1, v2

    :goto_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v4, "virtualizer_onoff"

    iget-boolean v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    if-eqz v1, :cond_1c3

    move v1, v2

    :goto_2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v4, "presetReverb_onoff"

    iget-boolean v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    if-eqz v1, :cond_1c6

    move v1, v2

    :goto_38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v4, "eq_setting"

    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    if-nez v1, :cond_1c9

    const-string v1, ""

    :goto_47
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "bassboost_setting"

    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    if-nez v1, :cond_1d1

    const-string v1, ""

    :goto_52
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v4, "virtualizer_setting"

    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    if-nez v1, :cond_1d9

    const-string v1, ""

    :goto_5d
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "presetReverb_setting"

    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    if-nez v1, :cond_1e1

    const-string v1, ""

    :goto_68
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "VMusicFX_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save Equalizer("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Setting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eq_setting"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "VMusicFX_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save BassBoost("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Setting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bassboost_setting"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "VMusicFX_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save Virtualizer("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Setting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "virtualizer_setting"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "VMusicFX_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save PresetReverb("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Setting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "presetReverb_setting"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isTEAvailable()Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 203
    const-string v4, "trebleEnhance_onoff"

    iget-boolean v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    if-eqz v1, :cond_1e9

    move v1, v2

    :goto_120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v4, "trebleEnhance_setting"

    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    if-nez v1, :cond_1ec

    const-string v1, ""

    :goto_12f
    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "VMusicFX_DB"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save TrebleEnhance("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") Setting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "trebleEnhance_setting"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_15c
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isLMAvailable()Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 210
    const-string v1, "loudnessmaximizer_onoff"

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    if-eqz v4, :cond_1f4

    :goto_168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v2, "loudnessmaximizer_setting"

    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    if-nez v1, :cond_1f7

    const-string v1, ""

    :goto_177
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "VMusicFX_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save LoudnessMaximizer("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Setting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "loudnessmaximizer_setting"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1a4
    const-string v1, "package_name"

    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 219
    return-void

    :cond_1bd
    move v1, v3

    .line 186
    goto/16 :goto_e

    :cond_1c0
    move v1, v3

    .line 187
    goto/16 :goto_1c

    :cond_1c3
    move v1, v3

    .line 188
    goto/16 :goto_2a

    :cond_1c6
    move v1, v3

    .line 189
    goto/16 :goto_38

    .line 191
    :cond_1c9
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_47

    .line 192
    :cond_1d1
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    invoke-virtual {v1}, Landroid/media/audiofx/BassBoost$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_52

    .line 193
    :cond_1d9
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5d

    .line 194
    :cond_1e1
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    invoke-virtual {v1}, Landroid/media/audiofx/PresetReverb$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_68

    :cond_1e9
    move v1, v3

    .line 203
    goto/16 :goto_120

    .line 204
    :cond_1ec
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    invoke-virtual {v1}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_12f

    :cond_1f4
    move v2, v3

    .line 210
    goto/16 :goto_168

    .line 211
    :cond_1f7
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    invoke-virtual {v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_177
.end method

.method private updateBassBoost()V
    .registers 7

    .prologue
    .line 236
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 237
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "bassboost_onoff"

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    const-string v3, "bassboost_setting"

    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    if-nez v2, :cond_58

    const-string v2, ""

    :goto_1b
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "count":I
    if-lez v0, :cond_55

    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save BassBoost("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bassboost_setting"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_55
    return-void

    .line 237
    .end local v0    # "count":I
    :cond_56
    const/4 v2, 0x0

    goto :goto_c

    .line 238
    :cond_58
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    invoke-virtual {v2}, Landroid/media/audiofx/BassBoost$Settings;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method private updateEqualizer()V
    .registers 7

    .prologue
    .line 224
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "eq_onoff"

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v3, "eq_setting"

    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    if-nez v2, :cond_58

    const-string v2, ""

    :goto_1b
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, "count":I
    if-lez v0, :cond_55

    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update Equalizer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "eq_setting"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_55
    return-void

    .line 225
    .end local v0    # "count":I
    :cond_56
    const/4 v2, 0x0

    goto :goto_c

    .line 226
    :cond_58
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method private updateLoudnessMaximizer()V
    .registers 7

    .prologue
    .line 284
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "loudnessmaximizer_onoff"

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v3, "loudnessmaximizer_setting"

    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    if-nez v2, :cond_58

    const-string v2, ""

    :goto_1b
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "count":I
    if-lez v0, :cond_55

    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save LoudnessMaximizer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "loudnessmaximizer_setting"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_55
    return-void

    .line 285
    .end local v0    # "count":I
    :cond_56
    const/4 v2, 0x0

    goto :goto_c

    .line 286
    :cond_58
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    invoke-virtual {v2}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method private updatePresetReverb()V
    .registers 7

    .prologue
    .line 260
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "presetReverb_onoff"

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v3, "presetReverb_setting"

    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    if-nez v2, :cond_58

    const-string v2, ""

    :goto_1b
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "count":I
    if-lez v0, :cond_55

    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save PresetReverb("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "presetReverb_setting"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_55
    return-void

    .line 261
    .end local v0    # "count":I
    :cond_56
    const/4 v2, 0x0

    goto :goto_c

    .line 262
    :cond_58
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    invoke-virtual {v2}, Landroid/media/audiofx/PresetReverb$Settings;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method private updateTrebleEnhance()V
    .registers 7

    .prologue
    .line 272
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "trebleEnhance_onoff"

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string v3, "trebleEnhance_setting"

    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    if-nez v2, :cond_58

    const-string v2, ""

    :goto_1b
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "count":I
    if-lez v0, :cond_55

    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save TrebleEnhance("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "trebleEnhance_setting"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_55
    return-void

    .line 273
    .end local v0    # "count":I
    :cond_56
    const/4 v2, 0x0

    goto :goto_c

    .line 274
    :cond_58
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method private updateVirtualizer()V
    .registers 7

    .prologue
    .line 248
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "virtualizer_onoff"

    iget-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    if-eqz v2, :cond_56

    const/4 v2, 0x1

    :goto_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v3, "virtualizer_setting"

    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    if-nez v2, :cond_58

    const-string v2, ""

    :goto_1b
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->where:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "count":I
    if-lez v0, :cond_55

    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Save Virtualizer("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Setting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "virtualizer_setting"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_55
    return-void

    .line 249
    .end local v0    # "count":I
    :cond_56
    const/4 v2, 0x0

    goto :goto_c

    .line 250
    :cond_58
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    invoke-virtual {v2}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method


# virtual methods
.method public declared-synchronized setEffectDBSetting(II[IZ)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "value"    # I
    .param p3, "bandLevels"    # [I
    .param p4, "onoff"    # Z

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEffectDBSetting type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onoff:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    packed-switch p1, :pswitch_data_10c

    .line 422
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "AudioEffectSetting : setEffectSetting : NOT Support Type "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_38

    .line 296
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2

    .line 301
    :pswitch_3b
    :try_start_3b
    const-string v2, "bandLevels"

    invoke-static {v2, p3}, Lcom/pantech/app/musicfx/utils/MLog;->list(Ljava/lang/String;[I)V

    .line 303
    if-eqz p4, :cond_75

    .line 305
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    .line 307
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    if-nez v2, :cond_50

    .line 308
    new-instance v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    invoke-direct {v2}, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    .line 310
    :cond_50
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    int-to-short v3, p2

    iput-short v3, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->curPreset:S

    .line 311
    if-eqz p3, :cond_70

    .line 313
    array-length v2, p3

    new-array v1, v2, [S

    .line 314
    .local v1, "tmp":[S
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    array-length v2, p3

    if-ge v0, v2, :cond_66

    .line 316
    aget v2, p3, v0

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 319
    :cond_66
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    iput-object v1, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->bandLevels:[S

    .line 320
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mEQSetting:Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;

    array-length v3, p3

    int-to-short v3, v3

    iput-short v3, v2, Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;->numBands:S

    .line 328
    .end local v0    # "i":I
    .end local v1    # "tmp":[S
    :cond_70
    :goto_70
    invoke-direct {p0}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->updateEqualizer()V
    :try_end_73
    .catchall {:try_start_3b .. :try_end_73} :catchall_38

    .line 424
    :goto_73
    monitor-exit p0

    return-void

    .line 325
    :cond_75
    const/4 v2, 0x0

    :try_start_76
    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isEqualizer:Z

    goto :goto_70

    .line 332
    :pswitch_79
    if-eqz p4, :cond_92

    .line 334
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    .line 336
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    if-nez v2, :cond_89

    .line 337
    new-instance v2, Landroid/media/audiofx/BassBoost$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/BassBoost$Settings;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    .line 339
    :cond_89
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mBassBoostSetting:Landroid/media/audiofx/BassBoost$Settings;

    int-to-short v3, p2

    iput-short v3, v2, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    .line 346
    :goto_8e
    invoke-direct {p0}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->updateBassBoost()V

    goto :goto_73

    .line 343
    :cond_92
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isBassBoost:Z

    goto :goto_8e

    .line 350
    :pswitch_96
    if-eqz p4, :cond_af

    .line 352
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    .line 354
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    if-nez v2, :cond_a6

    .line 355
    new-instance v2, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    invoke-direct {v2}, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    .line 357
    :cond_a6
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mVirtualizerSetting:Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;

    int-to-short v3, p2

    iput-short v3, v2, Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;->strength:S

    .line 364
    :goto_ab
    invoke-direct {p0}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->updateVirtualizer()V

    goto :goto_73

    .line 361
    :cond_af
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isVirtualizer:Z

    goto :goto_ab

    .line 368
    :pswitch_b3
    if-eqz p4, :cond_cc

    .line 370
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    .line 372
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    if-nez v2, :cond_c3

    .line 373
    new-instance v2, Landroid/media/audiofx/PresetReverb$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/PresetReverb$Settings;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    .line 375
    :cond_c3
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mPresetReverbSetting:Landroid/media/audiofx/PresetReverb$Settings;

    int-to-short v3, p2

    iput-short v3, v2, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    .line 382
    :goto_c8
    invoke-direct {p0}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->updatePresetReverb()V

    goto :goto_73

    .line 379
    :cond_cc
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isPresetReverb:Z

    goto :goto_c8

    .line 386
    :pswitch_d0
    if-eqz p4, :cond_e9

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    .line 390
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    if-nez v2, :cond_e0

    .line 391
    new-instance v2, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    invoke-direct {v2}, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    .line 393
    :cond_e0
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mTrebleEnhanceSetting:Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;

    int-to-short v3, p2

    iput-short v3, v2, Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;->strength:S

    .line 400
    :goto_e5
    invoke-direct {p0}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->updateTrebleEnhance()V

    goto :goto_73

    .line 397
    :cond_e9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isTrebleEnhance:Z

    goto :goto_e5

    .line 404
    :pswitch_ed
    if-eqz p4, :cond_107

    .line 406
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z

    .line 408
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    if-nez v2, :cond_fd

    .line 409
    new-instance v2, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    invoke-direct {v2}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    .line 411
    :cond_fd
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->mLoudnessMaximizerSetting:Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    int-to-short v3, p2

    iput v3, v2, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->strength:I

    .line 418
    :goto_102
    invoke-direct {p0}, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->updateLoudnessMaximizer()V

    goto/16 :goto_73

    .line 415
    :cond_107
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectDBSetting;->isLoudnessMaximizer:Z
    :try_end_10a
    .catchall {:try_start_76 .. :try_end_10a} :catchall_38

    goto :goto_102

    .line 298
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_79
        :pswitch_96
        :pswitch_b3
        :pswitch_d0
        :pswitch_ed
    .end packed-switch
.end method
