.class public Lcom/pantech/app/music/service/MultiPlayer;
.super Ljava/lang/Object;
.source "MultiPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;
    }
.end annotation


# static fields
.field public static final LAST_CONNECTION_BLUETOOTH:I = 0x2

.field public static final LAST_CONNECTION_HEADPHONE:I = 0x1

.field public static final LAST_CONNECTION_NONE:I = 0x0

.field private static final MEDIA_INFO_COUNT_LOWPOWER_MODE_OBJECT:I = 0x3e8

.field public static final MEDIA_INFO_LOWPOWER:I = 0x0

.field public static final MEDIA_INFO_NON_LOWPOWER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MultiPlayer"

.field private static mBTConnection:Z

.field private static mIsLowPowerMode:Z

.field private static mLastConnection:I


# instance fields
.field bufferingUpadateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field infoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mAR:Lcom/pantech/app/music/common/ArrayRunnable;

.field private mContext:Landroid/content/Context;

.field private mDRMErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mIsSafeBoxMode:Z

.field private mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

.field mLowPowerInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOpenFailed:Z

.field private mPercent:I

.field private mPlaying:Z

.field private mPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/app/music/service/MultiPlayer;->mIsLowPowerMode:Z

    .line 40
    sput-boolean v1, Lcom/pantech/app/music/service/MultiPlayer;->mBTConnection:Z

    .line 45
    sput v1, Lcom/pantech/app/music/service/MultiPlayer;->mLastConnection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/pantech/app/music/service/MultiPlayer;-><init>(Landroid/content/Context;ZLcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;Lcom/pantech/app/music/common/ArrayRunnable;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bSafeBox"    # Z
    .param p3, "listener"    # Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pantech/app/music/service/MultiPlayer;-><init>(Landroid/content/Context;ZLcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;Lcom/pantech/app/music/common/ArrayRunnable;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;Lcom/pantech/app/music/common/ArrayRunnable;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bSafeBox"    # Z
    .param p3, "listener"    # Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;
    .param p4, "ar"    # Lcom/pantech/app/music/common/ArrayRunnable;

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    new-instance v2, Lcom/pantech/app/music/common/ArrayRunnable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3}, Lcom/pantech/app/music/common/ArrayRunnable;-><init>(Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    .line 26
    iput v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPercent:I

    .line 28
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsSafeBoxMode:Z

    .line 29
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 30
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    .line 31
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPlaying:Z

    .line 32
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    .line 33
    iput v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mDRMErrorCode:I

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    .line 259
    new-instance v2, Lcom/pantech/app/music/service/MultiPlayer$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MultiPlayer$1;-><init>(Lcom/pantech/app/music/service/MultiPlayer;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->bufferingUpadateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 267
    new-instance v2, Lcom/pantech/app/music/service/MultiPlayer$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MultiPlayer$2;-><init>(Lcom/pantech/app/music/service/MultiPlayer;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 296
    new-instance v2, Lcom/pantech/app/music/service/MultiPlayer$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MultiPlayer$3;-><init>(Lcom/pantech/app/music/service/MultiPlayer;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mLowPowerInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 61
    iput-boolean p2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsSafeBoxMode:Z

    .line 62
    iput-object p1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mContext:Landroid/content/Context;

    .line 63
    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 64
    iput-object p3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    .line 65
    if-eqz p4, :cond_6c

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4e
    invoke-virtual {p4}, Lcom/pantech/app/music/common/ArrayRunnable;->size()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v0, v2, :cond_6c

    .line 67
    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/pantech/app/music/common/ArrayRunnable;->getRunable(Ljava/lang/Integer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/music/common/ArrayRunnable;->add(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 72
    .end local v0    # "i":I
    :cond_6c
    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 73
    .local v1, "manager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    sput-boolean v2, Lcom/pantech/app/music/service/MultiPlayer;->mBTConnection:Z

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/pantech/app/music/service/MultiPlayer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MultiPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 20
    iput p1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPercent:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MultiPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MultiPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/pantech/app/music/service/MultiPlayer;->mBTConnection:Z

    return v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/service/MultiPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MultiPlayer;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/service/MultiPlayer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MultiPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MultiPlayer;->setIsLowPowerSystemMode(Z)V

    return-void
.end method

.method private getDrmErrorSKT(Landroid/media/MediaPlayer;)I
    .registers 9
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "errcode":I
    const-class v3, Landroid/media/MediaPlayer;

    .line 168
    .local v3, "pl":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/media/MediaPlayer;>;"
    :try_start_3
    const-string v4, "getErrorCode_DRM"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 169
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_33

    .line 170
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    const-string v4, "MultiPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=>erorr code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_34

    .line 179
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_33
    :goto_33
    return v1

    .line 174
    :catch_34
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MultiPlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrmErrorSKT() exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    goto :goto_33
.end method

.method public static getIsBTConnection()Z
    .registers 3

    .prologue
    .line 462
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsBTConnection()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/pantech/app/music/service/MultiPlayer;->mBTConnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    sget-boolean v0, Lcom/pantech/app/music/service/MultiPlayer;->mBTConnection:Z

    return v0
.end method

.method public static getLastConnection()I
    .registers 1

    .prologue
    .line 478
    sget v0, Lcom/pantech/app/music/service/MultiPlayer;->mLastConnection:I

    return v0
.end method

.method public static isLowPowerSystemMode()Z
    .registers 1

    .prologue
    .line 452
    sget-boolean v0, Lcom/pantech/app/music/service/MultiPlayer;->mIsLowPowerMode:Z

    return v0
.end method

.method private requestCallback(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "arrayrun_id"    # Ljava/lang/Integer;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/common/ArrayRunnable;->getRunable(Ljava/lang/Integer;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 344
    :try_start_c
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/common/ArrayRunnable;->getRunable(Ljava/lang/Integer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_15} :catch_16

    .line 349
    :cond_15
    :goto_15
    return-void

    .line 345
    :catch_16
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static setIsBTConnection(Z)V
    .registers 1
    .param p0, "connected"    # Z

    .prologue
    .line 457
    sput-boolean p0, Lcom/pantech/app/music/service/MultiPlayer;->mBTConnection:Z

    .line 458
    return-void
.end method

.method private setIsLowPowerSystemMode(Z)V
    .registers 2
    .param p1, "lowPowerMode"    # Z

    .prologue
    .line 447
    sput-boolean p1, Lcom/pantech/app/music/service/MultiPlayer;->mIsLowPowerMode:Z

    .line 448
    return-void
.end method

.method public static setLastConnection(IZ)V
    .registers 3
    .param p0, "connectionType"    # I
    .param p1, "connected"    # Z

    .prologue
    .line 468
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 469
    sput p0, Lcom/pantech/app/music/service/MultiPlayer;->mLastConnection:I

    .line 475
    :cond_5
    :goto_5
    return-void

    .line 471
    :cond_6
    sget v0, Lcom/pantech/app/music/service/MultiPlayer;->mLastConnection:I

    if-ne v0, p0, :cond_5

    .line 472
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/service/MultiPlayer;->mLastConnection:I

    goto :goto_5
.end method


# virtual methods
.method public buffering_percent()I
    .registers 2

    .prologue
    .line 379
    iget v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPercent:I

    return v0
.end method

.method public duration()J
    .registers 3

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    :goto_b
    return-wide v0

    :cond_c
    const-wide/16 v0, -0x1

    goto :goto_b
.end method

.method public getAudioSessionID()I
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getErrorDRM()I
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mDRMErrorCode:I

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public isOpenFailed()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    return v0
.end method

.method public isOpenSuccess()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPlaying()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 239
    :try_start_1
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPlaying:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_f

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    .line 243
    :cond_e
    :goto_e
    return v1

    .line 241
    :catch_f
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "MultiPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPlaying() exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public isPrepared()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    return v0
.end method

.method public isPreparing()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 7
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v4, 0x2

    .line 436
    const-string v0, "MultiPlayer"

    const-string v1, "onCompletion()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    if-eqz v0, :cond_11

    .line 438
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 440
    :cond_11
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 442
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 443
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 395
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    const-string v0, "MultiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer.onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    packed-switch p2, :pswitch_data_74

    .line 420
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    .line 423
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    if-ne v0, v4, :cond_45

    .line 424
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 425
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    if-eqz v0, :cond_45

    .line 426
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;->onError(Landroid/media/MediaPlayer;II)V

    .line 431
    :cond_45
    :goto_45
    return v4

    .line 401
    :pswitch_46
    const-string v0, "MultiPlayer"

    const-string v1, "=>MediaPlayer.MEDIA_ERROR_SERVER_DIED:"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 403
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    .line 404
    sget-object v0, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_TURNOFF_AUDIOEFFECT_IDX:Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MultiPlayer;->requestCallback(Ljava/lang/Integer;)V

    .line 405
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 409
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 410
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 411
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    if-eqz v0, :cond_45

    .line 412
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;->onMediaServerDied(Landroid/media/MediaPlayer;)V

    goto :goto_45

    .line 398
    nop

    :pswitch_data_74
    .packed-switch 0x64
        :pswitch_46
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 384
    const-string v0, "MultiPlayer"

    const-string v1, "onPrepared()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    .line 388
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    if-eqz v0, :cond_1a

    .line 389
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mListener:Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 391
    :cond_1a
    return-void
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 203
    const-string v0, "MultiPlayer"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPlaying:Z

    .line 206
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .registers 4

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MultiPlayer;->stop()V

    .line 214
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    sget-object v2, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_TURNOFF_AUDIOEFFECT_IDX:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/common/ArrayRunnable;->getRunable(Ljava/lang/Integer;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 216
    :try_start_11
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mAR:Lcom/pantech/app/music/common/ArrayRunnable;

    sget-object v2, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_TURNOFF_AUDIOEFFECT_IDX:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/common/ArrayRunnable;->getRunable(Ljava/lang/Integer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_22

    .line 222
    :cond_1c
    :goto_1c
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 223
    return-void

    .line 217
    :catch_22
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release() exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public seek(J)J
    .registers 6
    .param p1, "whereto"    # J

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    if-eqz v0, :cond_a

    .line 361
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 363
    :cond_a
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPlaying:Z

    .line 123
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    .line 124
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 125
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    .line 126
    iput v4, p0, Lcom/pantech/app/music/service/MultiPlayer;->mDRMErrorCode:I

    .line 128
    :try_start_2a
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 129
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 130
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 131
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 135
    :goto_48
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 136
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUseHifiAudio()Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-boolean v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsSafeBoxMode:Z

    if-nez v1, :cond_5f

    .line 137
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mLowPowerInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 138
    :cond_5f
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 140
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    .line 142
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPercent:I

    .line 143
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource() mOpenFailed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_87} :catch_98
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_87} :catch_b4

    .line 160
    :cond_87
    :goto_87
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 161
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 162
    return-void

    .line 133
    :cond_92
    :try_start_92
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_97} :catch_98
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_97} :catch_b4

    goto :goto_48

    .line 144
    :catch_98
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    .line 146
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource() IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 147
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_b4
    move-exception v0

    .line 148
    .local v0, "ex":Ljava/lang/Exception;
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    .line 149
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSource() Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 157
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->getDrmErrorSKT(Landroid/media/MediaPlayer;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mDRMErrorCode:I

    goto :goto_87
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 85
    const-string v1, "MultiPlayer"

    const-string v2, "setDataSourceAsync()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_a
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 89
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 91
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_25} :catch_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_25} :catch_70

    .line 109
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    if-eqz v1, :cond_53

    .line 110
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 111
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 112
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 113
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->infoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 114
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->bufferingUpadateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 118
    :cond_53
    :goto_53
    return-void

    .line 96
    :catch_54
    move-exception v0

    .line 98
    .local v0, "ex":Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 99
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync() IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 102
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_70
    move-exception v0

    .line 104
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 105
    const-string v1, "MultiPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataSourceAsync() IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 257
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .param p1, "vol"    # F

    .prologue
    .line 367
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 368
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 183
    const-string v0, "MultiPlayer"

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPlaying:Z

    .line 187
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 190
    const-string v0, "MultiPlayer"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPlaying:Z

    .line 193
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mPrepared:Z

    .line 194
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mIsInitialized:Z

    .line 195
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mOpenFailed:Z

    .line 196
    iput v2, p0, Lcom/pantech/app/music/service/MultiPlayer;->mDRMErrorCode:I

    .line 197
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/pantech/app/music/service/MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 200
    return-void
.end method
