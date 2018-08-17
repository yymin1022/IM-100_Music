.class public Lcom/pantech/app/music/assist/MusicMotionIRControl;
.super Ljava/lang/Object;
.source "MusicMotionIRControl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/pantech/app/music/assist/MusicMotionInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;,
        Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;
    }
.end annotation


# static fields
.field private static final MASTER_STREAM_TYPE:I = 0x2

.field private static final MOTION_SOUND_4WAYS:Ljava/lang/String; = "motion_sound_up"

.field private static final MSG_HANDLER_MOTION_DISABLE:I = 0x4

.field private static final MSG_HANDLER_MOTION_ENABLE:I = 0x3

.field private static final SENSOR_TYPE_MOTION_RECOG:I = 0x18

.field private static final SENSOR_VALUE_CLOCKWISE:I = 0x8

.field private static final SENSOR_VALUE_COVERED:I = 0x1

.field private static final SENSOR_VALUE_C_CLOCKWISE:I = 0x9

.field private static final SENSOR_VALUE_FORWARD:I = 0x6

.field private static final SENSOR_VALUE_LEFT:I = 0x3

.field private static final SENSOR_VALUE_RIGHT:I = 0x2

.field private static final SENSOR_VALUE_UNKNOWN:I = 0x0

.field private static final SENSOR_VALUE_WAVE:I = 0xa

.field private static final SOUND_ID_LEFT:I = 0x0

.field private static final SOUND_ID_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicMotionIRControl"

.field private static final TIME_IGNORE_EVENT_WHEN_COVER_OPEN:I = 0x3e8


# instance fields
.field final MAX_FEEDBACK_VOLUME:F

.field final MIN_FEEDBACK_VOLUME:F

.field private isMotionEventByCover:Z

.field private mContext:Landroid/content/Context;

.field private mCoverTimer:Ljava/util/Timer;

.field private mCtlHandler:Landroid/os/Handler;

.field private mFeedbackVolume:F

.field private mIRSensing:Landroid/hardware/Sensor;

.field private mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMotionRecogObserver:Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSoundPath_4Ways:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/assist/MusicMotionListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/assist/MusicMotionListener;

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionEventByCover:Z

    .line 55
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 56
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mIRSensing:Landroid/hardware/Sensor;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSoundPath_4Ways:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->MIN_FEEDBACK_VOLUME:F

    .line 70
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->MAX_FEEDBACK_VOLUME:F

    .line 72
    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mMotionRecogObserver:Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

    .line 207
    new-instance v0, Lcom/pantech/app/music/assist/MusicMotionIRControl$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl$1;-><init>(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCtlHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/assist/MusicMotionIRControl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicMotionIRControl;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/assist/MusicMotionIRControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicMotionIRControl;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionGestureEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicMotionIRControl;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->getMotionRecogSensor()V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicMotionIRControl;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->freeMotionRecogSensor()V

    return-void
.end method

.method static synthetic access$400(Lcom/pantech/app/music/assist/MusicMotionIRControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicMotionIRControl;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionEventByCover:Z

    return v0
.end method

.method static synthetic access$402(Lcom/pantech/app/music/assist/MusicMotionIRControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicMotionIRControl;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionEventByCover:Z

    return p1
.end method

.method static synthetic access$502(Lcom/pantech/app/music/assist/MusicMotionIRControl;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/assist/MusicMotionIRControl;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    return-object p1
.end method

.method private freeMotionRecogSensor()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mIRSensing:Landroid/hardware/Sensor;

    if-nez v1, :cond_6

    .line 147
    :cond_5
    :goto_5
    return-void

    .line 134
    :cond_6
    const-string v1, "MusicMotionIRControl"

    const-string v2, "freeMotionRecogSensor()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 136
    iput-object v3, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mIRSensing:Landroid/hardware/Sensor;

    .line 137
    iput-object v3, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 140
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isFocusMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "iconIntent":Landroid/content/Intent;
    const-string v1, "motion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v1, "package"

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "com.pantech.action.motionstatus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_5
.end method

.method private getMotionRecogSensor()V
    .registers 5

    .prologue
    .line 110
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_5

    .line 129
    :cond_4
    :goto_4
    return-void

    .line 112
    :cond_5
    const-string v1, "MusicMotionIRControl"

    const-string v2, "getMotionRecogSensor()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 114
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mIRSensing:Landroid/hardware/Sensor;

    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mIRSensing:Landroid/hardware/Sensor;

    if-eqz v1, :cond_55

    .line 116
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mIRSensing:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 119
    invoke-virtual {p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isFocusMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, "iconIntent":Landroid/content/Intent;
    const-string v1, "motion"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v1, "package"

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "com.pantech.action.motionstatus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4

    .line 128
    .end local v0    # "iconIntent":Landroid/content/Intent;
    :cond_55
    const-string v1, "MusicMotionIRControl"

    const-string v2, "Failure! No Motion Recognition."

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private isMotionGestureEnable()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_recognization_enable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 158
    .local v2, "VTSEnable":I
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_recog_music"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "MUSICEnable":I
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_recog_focus"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 160
    .local v0, "FocusEnable":I
    const-string v5, "MusicMotionIRControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=> VTSEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", MUSICEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-ne v2, v3, :cond_4f

    if-eq v1, v3, :cond_4e

    if-ne v0, v3, :cond_4f

    .line 170
    :cond_4e
    :goto_4e
    return v3

    :cond_4f
    move v3, v4

    goto :goto_4e
.end method

.method private startCoverTime()V
    .registers 5

    .prologue
    .line 299
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionEventByCover:Z

    .line 301
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    if-eqz v0, :cond_14

    .line 302
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 303
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    .line 306
    :cond_14
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    .line 307
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCoverTimer:Ljava/util/Timer;

    new-instance v1, Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl$CoverTimerTask;-><init>(Lcom/pantech/app/music/assist/MusicMotionIRControl;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 308
    return-void
.end method


# virtual methods
.method public isFocusMode()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_recognization_enable"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 177
    .local v2, "VTSEnable":I
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_recog_music"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 178
    .local v1, "MUSICEnable":I
    iget-object v5, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_recog_focus"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, "FocusEnable":I
    const-string v5, "MusicMotionIRControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=> VTSEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", MUSICEnable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-ne v2, v3, :cond_4d

    if-ne v0, v3, :cond_4d

    .line 184
    :goto_4c
    return v3

    :cond_4d
    move v3, v4

    goto :goto_4c
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 226
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_c

    .line 285
    :goto_b
    :pswitch_b
    return-void

    .line 233
    :cond_c
    iget-boolean v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionEventByCover:Z

    if-eqz v0, :cond_30

    .line 234
    const-string v0, "MusicMotionIRControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=>onSensorChanged but ignore motion sensor by cover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iput-boolean v3, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionEventByCover:Z

    goto :goto_b

    .line 239
    :cond_30
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    float-to-int v0, v0

    packed-switch v0, :pswitch_data_ba

    .line 282
    :pswitch_38
    const-string v0, "MusicMotionIRControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 242
    :pswitch_5c
    const-string v0, "MusicMotionIRControl"

    const-string v1, "onSensorChanged(SENSOR_VALUE_COVERED)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->startCoverTime()V

    goto :goto_b

    .line 247
    :pswitch_67
    const-string v0, "MusicMotionIRControl"

    const-string v1, "onSensorChanged(SENSOR_VALUE_LEFT)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

    invoke-interface {v0}, Lcom/pantech/app/music/assist/MusicMotionListener;->onMoveToLeft()V

    goto :goto_b

    .line 253
    :pswitch_74
    const-string v0, "MusicMotionIRControl"

    const-string v1, "onSensorChanged(SENSOR_VALUE_RIGHT)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

    invoke-interface {v0}, Lcom/pantech/app/music/assist/MusicMotionListener;->onMoveToRight()V

    goto :goto_b

    .line 259
    :pswitch_81
    const-string v0, "MusicMotionIRControl"

    const-string v1, "onSensorChanged(SENSOR_VALUE_FORWARD)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

    invoke-interface {v0}, Lcom/pantech/app/music/assist/MusicMotionListener;->onCover()V

    goto/16 :goto_b

    .line 264
    :pswitch_8f
    const-string v0, "MusicMotionIRControl"

    const-string v1, "onSensorChanged(SENSOR_VALUE_CLOCKWISE)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

    invoke-interface {v0}, Lcom/pantech/app/music/assist/MusicMotionListener;->onMoveCW()V

    goto/16 :goto_b

    .line 269
    :pswitch_9d
    const-string v0, "MusicMotionIRControl"

    const-string v1, "onSensorChanged(SENSOR_VALUE_C_CLOCKWISE)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

    invoke-interface {v0}, Lcom/pantech/app/music/assist/MusicMotionListener;->onMoveCCW()V

    goto/16 :goto_b

    .line 274
    :pswitch_ab
    const-string v0, "MusicMotionIRControl"

    const-string v1, "onSensorChanged(SENSOR_VALUE_WAVE)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mListener:Lcom/pantech/app/music/assist/MusicMotionListener;

    invoke-interface {v0}, Lcom/pantech/app/music/assist/MusicMotionListener;->onWave()V

    goto/16 :goto_b

    .line 239
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_b
        :pswitch_5c
        :pswitch_74
        :pswitch_67
        :pswitch_38
        :pswitch_38
        :pswitch_81
        :pswitch_38
        :pswitch_8f
        :pswitch_9d
        :pswitch_ab
    .end packed-switch
.end method

.method public setEnable(Z)V
    .registers 6
    .param p1, "bSet"    # Z

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 81
    if-eqz p1, :cond_1b

    invoke-direct {p0}, Lcom/pantech/app/music/assist/MusicMotionIRControl;->isMotionGestureEnable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 82
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCtlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCtlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 84
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCtlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1a
    :goto_1a
    return-void

    .line 86
    :cond_1b
    if-nez p1, :cond_1a

    .line 87
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCtlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCtlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 89
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mCtlHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1a
.end method

.method public setSettingObserver(Z)V
    .registers 6
    .param p1, "bSet"    # Z

    .prologue
    .line 95
    if-eqz p1, :cond_25

    .line 96
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mMotionRecogObserver:Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

    if-nez v1, :cond_12

    .line 97
    new-instance v1, Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;-><init>(Lcom/pantech/app/music/assist/MusicMotionIRControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mMotionRecogObserver:Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

    .line 99
    :cond_12
    const-string v1, "motion_recognization_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mMotionRecogObserver:Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 107
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_24
    :goto_24
    return-void

    .line 103
    :cond_25
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mMotionRecogObserver:Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

    if-eqz v1, :cond_24

    .line 104
    iget-object v1, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/assist/MusicMotionIRControl;->mMotionRecogObserver:Lcom/pantech/app/music/assist/MusicMotionIRControl$MotionRecogObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_24
.end method
