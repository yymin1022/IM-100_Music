.class public Lcom/pantech/app/music/assist/MusicEQControl;
.super Ljava/lang/Object;
.source "MusicEQControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;
    }
.end annotation


# static fields
.field public static final AUDIOEFFECT_ACTION_KEY_AUDIO_SESSIONID:Ljava/lang/String; = "key_audio_sessionid"

.field public static final AUDIOEFFECT_ACTION_KEY_EQ_ONOFF:Ljava/lang/String; = "key_eq_onoff"

.field public static final AUDIOEFFECT_ACTION_KEY_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field public static final AUDIOEFFECT_ACTION_KEY_PRESET_NUMBER:Ljava/lang/String; = "key_preset_number"

.field public static final AUDIOEFFECT_ACTION_KEY_SET_USER_PRESET:Ljava/lang/String; = "key_set_userpreset"

.field public static final AUDIOEFFECT_ACTION_NAME_SET_PRESET:Ljava/lang/String; = "com.pantech.music.player.action.SET_PRESET"

.field public static final AUDIOEFFECT_ACTION_NAME_USER_PRESET:Ljava/lang/String; = "com.pantech.musicfx.audiofx.action.START_EQ_PANEL"

.field public static final AUDIOEFFECT_AUTHORITY:Ljava/lang/String; = "com.pantech.app.musicfx.db.audioeffectprovider"

.field public static final AUDIOEFFECT_COLUMN_EQ_ONOFF:Ljava/lang/String; = "eq_onoff"

.field public static final AUDIOEFFECT_COLUMN_EQ_SETTING:Ljava/lang/String; = "eq_setting"

.field public static final AUDIOEFFECT_COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final AUDIOEFFECT_COLUMN_PRESET_NAMES:Ljava/lang/String; = "preset_names"

.field public static final AUDIOEFFECT_COLUMN_PRESET_TOTAL_COUNT:Ljava/lang/String; = "preset_totalcount"

.field public static final AUDIOEFFECT_DEFAULT_WHERE:Ljava/lang/String; = "package_name = \'com.pantech.app.music\'"

.field public static final AUDIOEFFECT_PRESET_CONTAIN_KEY:Ljava/lang/String; = "curPreset="

.field public static final AUDIOEFFECT_SERVICE_BROADCAST_NAME:Ljava/lang/String; = "com.pantech.app.musicfx.audiofx.AudioEffectManageService$Receiver"

.field public static final AUDIOEFFECT_SERVICE_NAME:Ljava/lang/String; = "com.pantech.app.musicfx.audiofx.AudioEffectManageService"

.field public static final AUDIOEFFECT_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.pantech.app.musicfx"

.field public static final EXTRAS_DEFAULT_EQ_PRESET:Ljava/lang/String; = "mDefaultEqPreset"

.field private static final STONEEQ:Z = true

.field private static final TAG:Ljava/lang/String; = "MusicEQControl"


# instance fields
.field public final AUDIOEFFECT_CONTENT_URI:Landroid/net/Uri;

.field private bDisableUserPresetBySafeBox:Z

.field private mContext:Landroid/content/Context;

.field private mEQDialog:Landroid/app/AlertDialog;

.field private mIsEqualizerOnOff:Ljava/lang/String;

.field mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

.field private mMenuPreset:I

.field private mPresetCount:I

.field private mPresetItems:[Ljava/lang/String;

.field private mPresetPreValue:I

.field private mTempPreset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "content://com.pantech.app.musicfx.db.audioeffectprovider/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->AUDIOEFFECT_CONTENT_URI:Landroid/net/Uri;

    .line 67
    iput v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetCount:I

    .line 69
    iput v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mMenuPreset:I

    .line 70
    iput v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    .line 73
    iput-boolean v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->bDisableUserPresetBySafeBox:Z

    .line 76
    iput-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    .line 103
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/assist/MusicEQControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicEQControl;

    .prologue
    .line 37
    iget v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/app/music/assist/MusicEQControl;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicEQControl;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/assist/MusicEQControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicEQControl;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicEQControl;->getAudioEffectServiceLive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/assist/MusicEQControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicEQControl;

    .prologue
    .line 37
    iget v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/assist/MusicEQControl;IIZ)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicEQControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/assist/MusicEQControl;->setPreset(IIZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/pantech/app/music/assist/MusicEQControl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicEQControl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/assist/MusicEQControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicEQControl;

    .prologue
    .line 37
    iget v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mMenuPreset:I

    return v0
.end method

.method private getAudioEffectServiceLive()Z
    .registers 8

    .prologue
    .line 387
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 388
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v4, 0x64

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 390
    .local v2, "rs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5a

    .line 393
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 394
    .local v3, "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v4, "MusicEQControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MusicEQSetting::Process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with component "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.pantech.app.musicfx.audiofx.AudioEffectManageService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 398
    const/4 v4, 0x1

    .line 402
    .end local v3    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_56
    return v4

    .line 390
    .restart local v3    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 402
    .end local v3    # "rsi":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_5a
    const/4 v4, 0x0

    goto :goto_56
.end method

.method private getCurrentPreset()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->AUDIOEFFECT_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "package_name = \'com.pantech.app.music\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 212
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v1, "MusicEQControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicEQSetting::showPopupList() cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4b

    .line 217
    :cond_31
    const-string v1, "MusicEQControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicEQSetting::getCurrentPreset() Cursor is not Available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    .line 240
    :goto_4a
    return v1

    .line 221
    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 224
    const-string v1, "eq_setting"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, "presetPreValueStr":Ljava/lang/String;
    const-string v1, "eq_onoff"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mIsEqualizerOnOff:Ljava/lang/String;

    .line 226
    invoke-direct {p0, v7}, Lcom/pantech/app/music/assist/MusicEQControl;->getPresetPreNumber(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    .line 230
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mIsEqualizerOnOff:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    iget v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_7e

    .line 231
    const-string v1, "0"

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mIsEqualizerOnOff:Ljava/lang/String;

    .line 234
    :cond_7e
    const-string v1, "MusicEQControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicEQSetting::getCurrentPreset() isEqualizerOnOff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mIsEqualizerOnOff:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "MusicEQControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicEQSetting::getCurrentPreset() presetPreValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    if-eqz v6, :cond_b7

    .line 238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_b7
    const/4 v1, 0x1

    goto :goto_4a
.end method

.method private getEqualizerText(Landroid/content/Context;Z)[Ljava/lang/String;
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "withUnset"    # Z

    .prologue
    const v12, 0x7f080178

    const v11, 0x7f080175

    const v10, 0x7f080170

    const v9, 0x7f080169

    const v8, 0x7f080167

    .line 447
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v4, "spinItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_20

    .line 450
    const v5, 0x7f080093

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_20
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isNXPSolution()Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isQSoundSolution()Z

    move-result v5

    if-eqz v5, :cond_15b

    :cond_2c
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_15b

    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, "equalizerNumOver":Z
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelID()Ljava/lang/String;

    move-result-object v2

    .line 456
    .local v2, "modelID":Ljava/lang/String;
    const-string v5, "IM-A830S"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    const-string v5, "IM-A830K"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    const-string v5, "IM-A830L"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 457
    :cond_4f
    const/4 v0, 0x1

    .line 459
    :cond_50
    const-string v5, "MusicEQControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEqualizerText equalizerNumOver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const v5, 0x7f080165

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const v5, 0x7f080173

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    const v5, 0x7f08017d

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const v5, 0x7f080164

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    const v5, 0x7f080166

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    const v5, 0x7f080168

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    const v5, 0x7f08016a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    if-eqz v0, :cond_c8

    .line 472
    const v5, 0x7f08016d

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_c8
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    const v5, 0x7f080171

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const v5, 0x7f080172

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    const v5, 0x7f080176

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    const v5, 0x7f080177

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const v5, 0x7f080179

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    const v5, 0x7f08017a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    const v5, 0x7f08017b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const v5, 0x7f08017c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    if-eqz v0, :cond_139

    .line 487
    const v5, 0x7f08017e

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    .end local v0    # "equalizerNumOver":Z
    .end local v2    # "modelID":Ljava/lang/String;
    :cond_139
    :goto_139
    const v5, 0x7f080094

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 520
    .local v3, "presetItems":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_216

    .line 522
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v1

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_14a

    .line 489
    .end local v1    # "i":I
    .end local v3    # "presetItems":[Ljava/lang/String;
    :cond_15b
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSAPlusSolution()Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 490
    const-string v5, "MusicEQControl"

    const-string v6, "getEqualizerText() SAPlus Solution"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const v5, 0x7f080174

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const v5, 0x7f08016b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const v5, 0x7f08016c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const v5, 0x7f08016e

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    const v5, 0x7f08016f

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 504
    :cond_1bf
    const v5, 0x7f080174

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    const v5, 0x7f08016b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    const v5, 0x7f08016c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    const v5, 0x7f08016e

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    const v5, 0x7f08016f

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_139

    .line 525
    .restart local v1    # "i":I
    .restart local v3    # "presetItems":[Ljava/lang/String;
    :cond_216
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 526
    const/4 v4, 0x0

    .line 528
    return-object v3
.end method

.method private getPresetPreNumber(Ljava/lang/String;)I
    .registers 8
    .param p1, "presetPreValueStr"    # Ljava/lang/String;

    .prologue
    .line 420
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v3, ";"

    invoke-direct {v0, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v0, "st":Ljava/util/StringTokenizer;
    const-string v2, ""

    .line 423
    .local v2, "temp1":Ljava/lang/String;
    :cond_9
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 425
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 427
    const-string v3, "curPreset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 429
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 430
    .local v1, "start":I
    const-string v3, "MusicEQControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicEQSetting::showPopupList() start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 436
    .end local v1    # "start":I
    :cond_3f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private sendAudioEffectStartServiceIntent()V
    .registers 5

    .prologue
    .line 406
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    if-nez v2, :cond_5

    .line 416
    :cond_4
    :goto_4
    return-void

    .line 408
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    invoke-interface {v2}, Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;->onReqSessionID()I

    move-result v1

    .line 409
    .local v1, "sessionID":I
    if-ltz v1, :cond_4

    .line 411
    const-string v2, "MusicEQControl"

    const-string v3, "MusicEQSetting:: service is not alive. send start service action"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string v2, "android.media.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setPreset(IIZ)V
    .registers 13
    .param p1, "menuPreset"    # I
    .param p2, "count"    # I
    .param p3, "bShowUserSettingIfNeeded"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 329
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    if-nez v3, :cond_8

    .line 383
    :cond_7
    :goto_7
    return-void

    .line 331
    :cond_8
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    invoke-interface {v3}, Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;->onReqSessionID()I

    move-result v2

    .line 332
    .local v2, "sessionID":I
    if-ltz v2, :cond_7

    .line 335
    const-string v3, "MusicEQControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MusicEQSetting::setPreset menuPreset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.pantech.music.player.action.SET_PRESET"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, "i":Landroid/content/Intent;
    const-string v3, "key_package_name"

    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v3, "key_audio_sessionid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    if-nez p1, :cond_6e

    .line 343
    const-string v3, "key_preset_number"

    iget v4, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string v3, "key_eq_onoff"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 379
    :cond_66
    :goto_66
    if-lez p1, :cond_d2

    .line 380
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    invoke-interface {v3, v6}, Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;->onResult(Z)V

    goto :goto_7

    .line 347
    :cond_6e
    add-int/lit8 v3, p2, -0x1

    if-lt p1, v3, :cond_c0

    .line 350
    const-string v3, "key_preset_number"

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v3, "key_eq_onoff"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    const-string v3, "key_set_userpreset"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 356
    if-eqz p3, :cond_66

    .line 358
    iget-boolean v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->bDisableUserPresetBySafeBox:Z

    if-eqz v3, :cond_97

    .line 359
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    const v4, 0x7f0801bd

    invoke-static {v3, v4}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_66

    .line 362
    :cond_97
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.musicfx.audiofx.action.START_EQ_PANEL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 363
    .local v1, "newIntent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 364
    const-string v3, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v3, "android.media.extra.PACKAGE_NAME"

    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v3, "mDefaultEqPreset"

    add-int/lit8 v4, p2, -0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_66

    .line 374
    .end local v1    # "newIntent":Landroid/content/Intent;
    :cond_c0
    const-string v3, "key_preset_number"

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v3, "key_eq_onoff"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 376
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_66

    .line 382
    :cond_d2
    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mListener:Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;

    invoke-interface {v3, v8}, Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;->onResult(Z)V

    goto/16 :goto_7
.end method

.method private showPopupList()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 245
    const-string v2, "MusicEQControl"

    const-string v3, "MusicEQSetting::showPopupList()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicEQControl;->getCurrentPreset()Z

    move-result v0

    .line 249
    .local v0, "isAudioEffectOK":Z
    if-nez v0, :cond_f

    .line 326
    :goto_e
    return-void

    .line 252
    :cond_f
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mIsEqualizerOnOff:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 254
    iget v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mMenuPreset:I

    .line 255
    iget v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mMenuPreset:I

    iput v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    .line 266
    :goto_23
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/pantech/app/music/assist/MusicEQControl;->getEqualizerText(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetItems:[Ljava/lang/String;

    .line 267
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetItems:[Ljava/lang/String;

    array-length v2, v2

    iput v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetCount:I

    .line 270
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    const v4, 0x10306df

    invoke-direct {v2, v3, v4}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v1, "mMenuDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080086

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 272
    const v2, 0x7f08001b

    new-instance v3, Lcom/pantech/app/music/assist/MusicEQControl$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/assist/MusicEQControl$1;-><init>(Lcom/pantech/app/music/assist/MusicEQControl;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 283
    const v2, 0x7f0800af

    new-instance v3, Lcom/pantech/app/music/assist/MusicEQControl$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/assist/MusicEQControl$2;-><init>(Lcom/pantech/app/music/assist/MusicEQControl;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetItems:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mMenuPreset:I

    new-instance v4, Lcom/pantech/app/music/assist/MusicEQControl$3;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/assist/MusicEQControl$3;-><init>(Lcom/pantech/app/music/assist/MusicEQControl;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    new-instance v2, Lcom/pantech/app/music/assist/MusicEQControl$4;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/assist/MusicEQControl$4;-><init>(Lcom/pantech/app/music/assist/MusicEQControl;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    goto :goto_e

    .line 259
    .end local v1    # "mMenuDialog":Landroid/app/AlertDialog$Builder;
    :cond_77
    iput v4, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    .line 260
    iput v4, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mMenuPreset:I

    goto :goto_23
.end method


# virtual methods
.method public checkAndChoiceItemIfShowingPopup()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 171
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicEQControl;->getCurrentPreset()Z

    .line 175
    iget v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    if-nez v0, :cond_20

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 186
    :cond_1f
    :goto_1f
    return-void

    .line 179
    :cond_20
    iget v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    iget v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_1f

    .line 181
    iget v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mPresetPreValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    .line 182
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 183
    const-string v0, "MusicEQControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicEQSetting::checkAndChoiceItemIfShowingPopup() changed preset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mTempPreset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public closeDialogAndclearMusicEQInstance()V
    .registers 3

    .prologue
    .line 189
    const-string v0, "MusicEQControl"

    const-string v1, "closeDialogAndclearMusicEQInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 192
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 193
    :cond_18
    return-void
.end method

.method public isEqualizerOn()Z
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 112
    const/4 v7, 0x0

    .line 114
    .local v7, "isEqualizerOnOff":Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->AUDIOEFFECT_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "package_name = \'com.pantech.app.music\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3a

    .line 118
    :cond_1b
    const-string v1, "MusicEQControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEqualizerOn() : query error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-eqz v6, :cond_38

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_38
    move v1, v10

    .line 142
    :goto_39
    return v1

    .line 124
    :cond_3a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    const-string v1, "eq_onoff"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 129
    const-string v1, "eq_setting"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, "presetPreValueStr":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/pantech/app/music/assist/MusicEQControl;->getPresetPreNumber(Ljava/lang/String;)I

    move-result v8

    .line 131
    .local v8, "presetNumber":I
    const/16 v1, -0x64

    if-ne v8, v1, :cond_63

    const-string v1, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 132
    const-string v7, "0"

    .line 133
    :cond_63
    const-string v1, "MusicEQControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEqualizerOn() : query presetNum"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", onoff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz v6, :cond_8a

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_8a
    if-eqz v7, :cond_96

    const-string v1, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 140
    const/4 v1, 0x1

    goto :goto_39

    :cond_96
    move v1, v10

    .line 142
    goto :goto_39
.end method

.method public requestPopupList()V
    .registers 5

    .prologue
    .line 146
    const-string v2, "MusicEQControl"

    const-string v3, "requestPopupList()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 149
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 153
    :cond_18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, "checkInstalledIntent":Landroid/content/Intent;
    const-string v2, "com.pantech.app.musicfx"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_38

    .line 157
    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicEQControl;->mContext:Landroid/content/Context;

    const v3, 0x7f08007a

    invoke-static {v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 167
    :goto_37
    return-void

    .line 162
    :cond_38
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicEQControl;->getAudioEffectServiceLive()Z

    move-result v1

    .line 164
    .local v1, "isServiceAlive":Z
    if-nez v1, :cond_41

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicEQControl;->sendAudioEffectStartServiceIntent()V

    .line 166
    :cond_41
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicEQControl;->showPopupList()V

    goto :goto_37
.end method

.method public setUserPresetDisableBySafeBox(Z)V
    .registers 2
    .param p1, "bSet"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/pantech/app/music/assist/MusicEQControl;->bDisableUserPresetBySafeBox:Z

    .line 197
    return-void
.end method
