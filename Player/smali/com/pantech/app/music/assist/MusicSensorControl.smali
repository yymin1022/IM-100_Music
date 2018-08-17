.class public Lcom/pantech/app/music/assist/MusicSensorControl;
.super Ljava/lang/Object;
.source "MusicSensorControl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/assist/MusicSensorControl$1;,
        Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;,
        Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;,
        Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;,
        Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;
    }
.end annotation


# static fields
.field private static final AUTHORITY_SKYNOTE:Ljava/lang/String; = "com.pantech.app.skyquicknote"

.field private static final AUTHORITY_SKYPEN:Ljava/lang/String; = "com.pantech.app.skypen"

.field private static final AUTHORITY_SKYPEN_EXTEND:Ljava/lang/String; = "com.pantech.app.skypen_extend"

.field private static final CONTENT_SKYNOTE_SETTING_URI:Landroid/net/Uri;

.field private static final CONTENT_SKYPEN_EXTEND_SETTING_URI:Landroid/net/Uri;

.field private static final CONTENT_SKYPEN_SETTING_URI:Landroid/net/Uri;

.field private static final DATA_X:I = 0x0

.field private static final DATA_Y:I = 0x1

.field private static final DATA_Z:I = 0x2

.field private static final PATH_SETTING:Ljava/lang/String; = "/setting"

.field private static final PHONE_GESTURE_ORIENTATION_DOWN_MAX:F = 135.0f

.field private static final PHONE_GESTURE_ORIENTATION_DOWN_MIN:F = -135.0f

.field private static final PROCESS_SHAKE:I = 0x1

.field private static final SCHEME:Ljava/lang/String; = "content://"

.field private static final SHAKE_THRESHOLD:I = 0x4b0

.field private static final TAG:Ljava/lang/String; = "MusicSensorControl"

.field private static final TAG_SHAKE:Ljava/lang/String; = "shake"

.field private static mShakeThreshold:I


# instance fields
.field private bOverTurn:Z

.field private lastTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mAccelerometer:Landroid/hardware/Sensor;

.field private mAutoRotation:Landroid/content/ContentQueryMap;

.field private mAutoRotationCursor:Landroid/database/Cursor;

.field private mCheckPlaying:Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

.field private mMotionEnable:Landroid/content/ContentQueryMap;

.field private mMotionEnableCursor:Landroid/database/Cursor;

.field private mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

.field private mMotionShuffle:Landroid/content/ContentQueryMap;

.field private mMotionShuffleCursor:Landroid/database/Cursor;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakeHandler:Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;

.field private speed:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/assist/MusicSensorControl;->mShakeThreshold:I

    .line 81
    const-string v0, "content://com.pantech.app.skypen/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/assist/MusicSensorControl;->CONTENT_SKYPEN_SETTING_URI:Landroid/net/Uri;

    .line 82
    const-string v0, "content://com.pantech.app.skypen_extend/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/assist/MusicSensorControl;->CONTENT_SKYPEN_EXTEND_SETTING_URI:Landroid/net/Uri;

    .line 83
    const-string v0, "content://com.pantech.app.skyquicknote/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/assist/MusicSensorControl;->CONTENT_SKYNOTE_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;
    .param p3, "checkPlaying"    # Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->bOverTurn:Z

    .line 63
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mListener:Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    .line 64
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    .line 65
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnable:Landroid/content/ContentQueryMap;

    .line 66
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffle:Landroid/content/ContentQueryMap;

    .line 67
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotation:Landroid/content/ContentQueryMap;

    .line 68
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    .line 69
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    .line 70
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    .line 71
    new-instance v0, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;-><init>(Lcom/pantech/app/music/assist/MusicSensorControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mShakeHandler:Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;

    .line 97
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mPowerManager:Landroid/os/PowerManager;

    .line 98
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 99
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAccelerometer:Landroid/hardware/Sensor;

    .line 100
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mListener:Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    .line 103
    iput-object p3, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mCheckPlaying:Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;

    .line 104
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicSensorControl;->getThresHold()I

    move-result v0

    sput v0, Lcom/pantech/app/music/assist/MusicSensorControl;->mShakeThreshold:I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/assist/MusicSensorControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicSensorControl;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicSensorControl;->isAppUpdateEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/assist/MusicSensorControl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicSensorControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/pantech/app/music/assist/MusicSensorControl;->CONTENT_SKYPEN_SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/pantech/app/music/assist/MusicSensorControl;->CONTENT_SKYPEN_EXTEND_SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/pantech/app/music/assist/MusicSensorControl;->CONTENT_SKYNOTE_SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/assist/MusicSensorControl;)Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicSensorControl;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mListener:Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    return-object v0
.end method

.method static synthetic access$602(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 26
    sput p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mShakeThreshold:I

    return p0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/assist/MusicSensorControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicSensorControl;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicSensorControl;->getThresHold()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/pantech/app/music/assist/MusicSensorControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicSensorControl;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicSensorControl;->isShakeEnable()Z

    move-result v0

    return v0
.end method

.method private getThresHold()I
    .registers 5

    .prologue
    .line 364
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 365
    .local v0, "value":I
    mul-int/lit16 v1, v0, 0x4b0

    return v1
.end method

.method private isAppUpdateEnable()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 354
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_gesture_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 355
    .local v1, "MotionEnable":I
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_recog_update"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 357
    .local v0, "AppUpdateEnable":I
    if-ne v1, v2, :cond_1f

    if-ne v0, v2, :cond_1f

    .line 360
    :goto_1e
    return v2

    :cond_1f
    move v2, v3

    goto :goto_1e
.end method

.method private isShakeEnable()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 332
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_gesture_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 333
    .local v0, "MotionEnable":I
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_recog_shuffle"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 335
    .local v1, "ShakeEnable":I
    if-ne v0, v2, :cond_1f

    if-ne v1, v2, :cond_1f

    .line 338
    :goto_1e
    return v2

    :cond_1f
    move v2, v3

    goto :goto_1e
.end method

.method private isUpsideDownEnable()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 343
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_gesture_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 344
    .local v0, "MotionEnable":I
    iget-object v4, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_recog_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 346
    .local v1, "UpsideDownEnable":I
    if-ne v0, v2, :cond_1f

    if-ne v1, v2, :cond_1f

    .line 349
    :goto_1e
    return v2

    :cond_1f
    move v2, v3

    goto :goto_1e
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 6
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 129
    const-string v0, "MusicSensorControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccuracyChanged() sensor type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", accuracy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 14
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 135
    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_fa

    .line 184
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 138
    :pswitch_a
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 139
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mCheckPlaying:Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;

    invoke-interface {v5}, Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;->isMusicPlaying()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 141
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastTime:J

    sub-long v2, v0, v6

    .line 142
    .local v2, "gabOfTime":J
    const-wide/16 v6, 0x64

    cmp-long v5, v2, v6

    if-lez v5, :cond_9

    .line 143
    iput-wide v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastTime:J

    .line 145
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->x:F

    .line 146
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->y:F

    .line 147
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->z:F

    .line 149
    iget v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->x:F

    iget v6, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastX:F

    sub-float/2addr v5, v6

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    iget v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->y:F

    iget v8, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastY:F

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    iget v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->z:F

    iget v8, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastZ:F

    sub-float/2addr v5, v8

    float-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 150
    .local v4, "interval":I
    mul-int/lit16 v5, v4, 0x2710

    int-to-long v6, v5

    div-long/2addr v6, v2

    long-to-float v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->speed:F

    .line 151
    iget v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->speed:F

    sget v6, Lcom/pantech/app/music/assist/MusicSensorControl;->mShakeThreshold:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a6

    .line 152
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mListener:Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    if-eqz v5, :cond_a6

    .line 153
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mShakeHandler:Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->removeMessages(I)V

    .line 154
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mShakeHandler:Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;

    const/4 v6, 0x1

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Lcom/pantech/app/music/assist/MusicSensorControl$shakeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    const-string v5, "MusicSensorControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PROCESS_SHAKE speed:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->speed:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_a6
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastX:F

    .line 159
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastY:F

    .line 160
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->lastZ:F

    goto/16 :goto_9

    .line 167
    .end local v0    # "currentTime":J
    .end local v2    # "gabOfTime":J
    .end local v4    # "interval":I
    :pswitch_bd
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->x:F

    .line 168
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->y:F

    .line 169
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iput v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->z:F

    .line 171
    iget v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->y:F

    const/high16 v6, -0x3cf90000    # -135.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_e2

    iget v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->y:F

    const/high16 v6, 0x43070000    # 135.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_f4

    .line 172
    :cond_e2
    iget-boolean v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->bOverTurn:Z

    if-nez v5, :cond_9

    .line 173
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->bOverTurn:Z

    .line 174
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mListener:Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    if-eqz v5, :cond_9

    .line 175
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mListener:Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;

    invoke-interface {v5}, Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;->onOverTurn()V

    goto/16 :goto_9

    .line 180
    :cond_f4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->bOverTurn:Z

    goto/16 :goto_9

    .line 135
    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_bd
    .end packed-switch
.end method

.method public sensorObserverCreate(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    if-nez v0, :cond_9e

    .line 277
    new-instance v0, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;-><init>(Lcom/pantech/app/music/assist/MusicSensorControl;Lcom/pantech/app/music/assist/MusicSensorControl$1;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    .line 278
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_17

    .line 279
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 281
    :cond_17
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "motion_gesture_enable"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    .line 282
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v6, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnable:Landroid/content/ContentQueryMap;

    .line 283
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnable:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 284
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_47

    .line 285
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "motion_recog_shuffle"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    .line 288
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v6, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffle:Landroid/content/ContentQueryMap;

    .line 289
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffle:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 291
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_77

    .line 292
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_77
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "accelerometer_rotation"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    .line 295
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v6, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotation:Landroid/content/ContentQueryMap;

    .line 296
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotation:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 298
    :cond_9e
    return-void
.end method

.method public sensorObserverDestory()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_a

    .line 302
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_a
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnableCursor:Landroid/database/Cursor;

    .line 305
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnable:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnable:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->countObservers()I

    move-result v0

    if-lez v0, :cond_1d

    .line 306
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnable:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->deleteObservers()V

    .line 308
    :cond_1d
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionEnable:Landroid/content/ContentQueryMap;

    .line 309
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_28

    .line 310
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_28
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffleCursor:Landroid/database/Cursor;

    .line 314
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffle:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffle:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->countObservers()I

    move-result v0

    if-lez v0, :cond_3b

    .line 315
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffle:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->deleteObservers()V

    .line 317
    :cond_3b
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionShuffle:Landroid/content/ContentQueryMap;

    .line 318
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_46

    .line 319
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 321
    :cond_46
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotationCursor:Landroid/database/Cursor;

    .line 322
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotation:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotation:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->countObservers()I

    move-result v0

    if-lez v0, :cond_59

    .line 323
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotation:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->deleteObservers()V

    .line 325
    :cond_59
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAutoRotation:Landroid/content/ContentQueryMap;

    .line 326
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mMotionObserver:Lcom/pantech/app/music/assist/MusicSensorControl$sensorObserver;

    .line 327
    return-void
.end method

.method public setShakeEnable(Z)V
    .registers 5
    .param p1, "bSet"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicSensorControl;->isShakeEnable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 109
    const-string v0, "MusicSensorControl"

    const-string v1, "setShake(true)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAccelerometer:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 116
    :cond_17
    :goto_17
    return-void

    .line 112
    :cond_18
    if-nez p1, :cond_17

    .line 113
    const-string v0, "MusicSensorControl"

    const-string v1, "setShake(false)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_17
.end method

.method public setUpsideDown(Z)V
    .registers 5
    .param p1, "bSet"    # Z

    .prologue
    const/4 v2, 0x3

    .line 119
    if-eqz p1, :cond_15

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicSensorControl;->isUpsideDownEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 120
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 125
    :cond_14
    :goto_14
    return-void

    .line 122
    :cond_15
    if-nez p1, :cond_14

    .line 123
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicSensorControl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_14
.end method
