.class public Lcom/pantech/app/music/service/MusicPlaybackControl;
.super Ljava/lang/Object;
.source "MusicPlaybackControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;,
        Lcom/pantech/app/music/service/MusicPlaybackControl$MultiPlayerListener;
    }
.end annotation


# static fields
.field public static final DRM_RO_ERROR:Ljava/lang/String; = "com.pantech.app.music.safebox.drmroerror"

.field private static final FADEDOWN:I = 0x5

.field private static final FADEUP:I = 0x6

.field private static final FOCUSCHANGE:I = 0x4

.field private static final MAX_HISTORY_SIZE:I = 0x64

.field public static final META_CHANGED:Ljava/lang/String; = "com.pantech.app.music.safebox.metachanged"

.field private static final NEXT_PROCESS:I = 0x7

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.pantech.app.music.safebox.playstatechanged"

.field private static final PREV_PROCESS:I = 0x8

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.pantech.app.music.safebox.queuechanged"

.field private static final RECOMPOSE_QUEUE:I = 0x9

.field public static final SETTING_CHANGED:Ljava/lang/String; = "com.pantech.app.music.safebox.settingchanged"

.field private static final TAG:Ljava/lang/String; = "MusicPlaybackControl"

.field public static final TRACK_ENDED:I = 0x1

.field public static final VERIFY_ACTION:Ljava/lang/String; = "com.pantech.app.music.safebox.musicservicecommand.verify"


# instance fields
.field private bReqForce:Z

.field private bWasPlaying:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field mCallback:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mFakeBinding:Ljava/lang/Runnable;

.field final mHandler:Landroid/os/Handler;

.field private mHistory:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field private mLastPos:I

.field private mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

.field private mNextReqCnt:I

.field private mOpenFailedCounter:I

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field private mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPrevReqCnt:I

.field private mQuietMode:Z

.field private final mRand:Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;

.field private mRepeatMode:I

.field private mServiceInUse:Z

.field private mShuffleMode:I

.field private mToast:Landroid/widget/Toast;

.field private mVerifySyncObject:Ljava/lang/Object;

.field private mVeriryReady:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field newArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v2, -0x1

    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mLastPos:I

    .line 65
    iput v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    .line 67
    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 69
    iput v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    .line 70
    iput v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    .line 72
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 73
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mQuietMode:Z

    .line 77
    iput-boolean v5, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mServiceInUse:Z

    .line 80
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPausedByTransientLossOfFocus:Z

    .line 82
    new-instance v2, Ljava/util/Vector;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    .line 83
    new-instance v2, Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;

    invoke-direct {v2, v6}, Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl$1;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRand:Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;

    .line 96
    iput v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    .line 97
    iput v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPrevReqCnt:I

    .line 98
    iput v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mOpenFailedCounter:I

    .line 99
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bReqForce:Z

    .line 100
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bWasPlaying:Z

    .line 169
    new-instance v2, Lcom/pantech/app/music/service/MusicPlaybackControl$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MusicPlaybackControl$1;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mFakeBinding:Ljava/lang/Runnable;

    .line 178
    new-instance v2, Lcom/pantech/app/music/service/MusicPlaybackControl$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MusicPlaybackControl$2;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 184
    new-instance v2, Lcom/pantech/app/music/service/MusicPlaybackControl$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MusicPlaybackControl$3;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    .line 1081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->newArray:Ljava/util/ArrayList;

    .line 1082
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mVerifySyncObject:Ljava/lang/Object;

    .line 1083
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mVeriryReady:Z

    .line 1237
    new-instance v2, Lcom/pantech/app/music/service/MusicPlaybackControl$6;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MusicPlaybackControl$6;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    .line 105
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 106
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x6

    const-string v3, "VoiceRecorder"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mAudioManager:Landroid/media/AudioManager;

    .line 108
    const-string v2, "musicLibraryPreference"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPreferences:Landroid/content/SharedPreferences;

    .line 110
    new-instance v2, Lcom/pantech/app/music/service/MultiPlayer;

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/pantech/app/music/service/MusicPlaybackControl$MultiPlayerListener;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/service/MusicPlaybackControl$MultiPlayerListener;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    invoke-direct {v2, v3, v5, v4}, Lcom/pantech/app/music/service/MultiPlayer;-><init>(Landroid/content/Context;ZLcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    .line 111
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/service/MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 113
    invoke-static {}, Lcom/pantech/app/music/drm/MusicDrm;->getInstance()Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    .line 115
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->reloadPreference()V

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    .local v0, "commandFilter":Landroid/content/IntentFilter;
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/service/MusicPlaybackControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->nextProcess()V

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/pantech/app/music/service/MusicPlaybackControl;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/service/MusicPlaybackControl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mVerifySyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/service/MusicPlaybackControl;)[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/service/MusicPlaybackControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mVeriryReady:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/pantech/app/music/service/MusicPlaybackControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mVeriryReady:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/service/MusicPlaybackControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/service/MusicPlaybackControl;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->prevProcess()V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/music/service/MusicPlaybackControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/service/MusicPlaybackControl;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/service/MusicPlaybackControl;)Lcom/pantech/app/music/service/MultiPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/service/MusicPlaybackControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$602(Lcom/pantech/app/music/service/MusicPlaybackControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$700(Lcom/pantech/app/music/service/MusicPlaybackControl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$800(Lcom/pantech/app/music/service/MusicPlaybackControl;)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/pantech/app/music/service/MusicPlaybackControl;Ljava/util/ArrayList;J)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackControl;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # J

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->recomposeQueue(Ljava/util/ArrayList;J)V

    return-void
.end method

.method private addToPlayList([Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 6
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 316
    array-length v0, p1

    .line 317
    .local v0, "addlen":I
    new-array v2, v0, [Lcom/pantech/app/music/list/MusicItemInfo;

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_15

    .line 320
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v3

    aput-object v3, v2, v1

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 322
    :cond_15
    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    .line 323
    return-void
.end method

.method private getCursorForId(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;
    .registers 12
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const/4 v2, 0x0

    .line 728
    const/4 v6, 0x0

    .line 729
    .local v6, "c":Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 731
    .local v8, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/pantech/app/music/utils/ContentUtils;->getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 733
    .local v9, "tc":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_2e
    invoke-static {v9, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_43

    move-result-object v6

    .line 737
    :goto_32
    if-eqz v9, :cond_37

    .line 738
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 741
    :cond_37
    if-eqz v6, :cond_48

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_48

    .line 742
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 748
    :goto_42
    return-object v6

    .line 734
    :catch_43
    move-exception v7

    .line 735
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32

    .line 745
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_48
    const-string v0, "MusicPlaybackControl"

    const-string v1, "No valid Records for the cursor !!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v6, 0x0

    goto :goto_42
.end method

.method private moveNextPosition(ZI)Z
    .registers 16
    .param p1, "force"    # Z
    .param p2, "count"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 523
    const-string v8, "MusicPlaybackControl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "moveNextPosition("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    if-ne v8, v10, :cond_37

    if-nez p1, :cond_37

    .line 526
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    if-gez v8, :cond_35

    .line 593
    :goto_34
    return v9

    :cond_35
    move v9, v10

    .line 527
    goto :goto_34

    .line 529
    :cond_37
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    if-ne v8, v10, :cond_bd

    .line 534
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    if-ltz v8, :cond_4a

    .line 535
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    iget v11, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_4a
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    if-eqz v8, :cond_5d

    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    const/16 v11, 0x64

    if-le v8, v11, :cond_5d

    .line 538
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->removeElementAt(I)V

    .line 541
    :cond_5d
    iget v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    .line 542
    .local v4, "numTracks":I
    new-array v7, v4, [I

    .line 543
    .local v7, "tracks":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_62
    if-ge v1, v4, :cond_69

    .line 544
    aput v1, v7, v1

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 547
    :cond_69
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v3

    .line 548
    .local v3, "numHistory":I
    move v5, v4

    .line 549
    .local v5, "numUnplayed":I
    const/4 v1, 0x0

    :goto_71
    if-ge v1, v3, :cond_8d

    .line 550
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 551
    .local v2, "idx":I
    if-ge v2, v4, :cond_8a

    aget v8, v7, v2

    if-ltz v8, :cond_8a

    .line 552
    add-int/lit8 v5, v5, -0x1

    .line 553
    const/4 v8, -0x1

    aput v8, v7, v2

    .line 549
    :cond_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 559
    .end local v2    # "idx":I
    :cond_8d
    if-gtz v5, :cond_a7

    .line 561
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    const/4 v11, 0x2

    if-eq v8, v11, :cond_96

    if-eqz p1, :cond_9f

    .line 563
    :cond_96
    move v5, v4

    .line 564
    const/4 v1, 0x0

    :goto_98
    if-ge v1, v4, :cond_a7

    .line 565
    aput v1, v7, v1

    .line 564
    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    .line 569
    :cond_9f
    const-string v8, "MusicPlaybackControl"

    const-string v10, "=>Shuffle : everything\'s already been played!!"

    invoke-static {v8, v10}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 573
    :cond_a7
    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRand:Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;

    invoke-virtual {v8, v5}, Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;->nextInt(I)I

    move-result v6

    .line 574
    .local v6, "skip":I
    const/4 v0, -0x1

    .line 576
    .local v0, "cnt":I
    :cond_ae
    add-int/lit8 v0, v0, 0x1

    aget v8, v7, v0

    if-ltz v8, :cond_ae

    .line 578
    add-int/lit8 v6, v6, -0x1

    .line 579
    if-gez v6, :cond_ae

    .line 582
    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    move v9, v10

    .line 583
    goto/16 :goto_34

    .line 586
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    .end local v3    # "numHistory":I
    .end local v4    # "numTracks":I
    .end local v5    # "numUnplayed":I
    .end local v6    # "skip":I
    .end local v7    # "tracks":[I
    :cond_bd
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    iget v11, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mLastPos:I

    if-ne v8, v11, :cond_d2

    .line 587
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    if-nez v8, :cond_d2

    if-nez p1, :cond_d2

    .line 588
    const-string v8, "MusicPlaybackControl"

    const-string v10, "=>we\'re at the end of the list!!"

    invoke-static {v8, v10}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_34

    .line 592
    :cond_d2
    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    add-int/2addr v8, p2

    iget v11, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-ge v8, v11, :cond_e1

    iget v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    add-int/2addr v8, p2

    :goto_dc
    iput v8, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    move v9, v10

    .line 593
    goto/16 :goto_34

    :cond_e1
    move v8, v9

    .line 592
    goto :goto_dc
.end method

.method private nextProcess()V
    .registers 6

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x0

    .line 633
    const-string v0, "MusicPlaybackControl"

    const-string v1, "nextProcess()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bReqForce:Z

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->moveNextPosition(ZI)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 636
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openCurrent()V

    .line 637
    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    .line 648
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 649
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mOpenFailedCounter:I

    if-lez v0, :cond_26

    .line 651
    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mOpenFailedCounter:I

    .line 653
    :cond_26
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    .line 677
    :cond_29
    :goto_29
    return-void

    .line 640
    :cond_2a
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_35

    .line 641
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 642
    const-string v0, "com.pantech.app.music.safebox.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 644
    :cond_35
    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    goto :goto_29

    .line 656
    :cond_38
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mOpenFailedCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mOpenFailedCounter:I

    .line 658
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mOpenFailedCounter:I

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-lt v0, v1, :cond_55

    .line 659
    const-string v0, "MusicPlaybackControl"

    const-string v1, "No more next item to play!!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackControl;->stop(Z)V

    .line 661
    const v0, 0x7f080138

    invoke-direct {p0, v0, v2}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    goto :goto_29

    .line 667
    :cond_55
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=>mOpenFailedCounter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mOpenFailedCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->isAvailableROUpdate()Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->IsNeedToRoUpdate()Z

    move-result v0

    if-nez v0, :cond_29

    .line 672
    :cond_7f
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    .line 673
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 674
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_29
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 6
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 804
    const-string v1, "MusicPlaybackControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 808
    return-void
.end method

.method private openCurrent()V
    .registers 4

    .prologue
    .line 756
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCurrent()-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->stop(Z)V

    .line 759
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-lez v0, :cond_49

    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-ge v0, v1, :cond_49

    .line 760
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 761
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-static {v0}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 762
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 771
    :goto_3d
    const-string v0, "com.pantech.app.music.safebox.metachanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 772
    return-void

    .line 764
    :cond_43
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openLocalFile(Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_3d

    .line 768
    :cond_49
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=>pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private openLocalFile(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 6
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 775
    if-nez p1, :cond_3

    .line 798
    :goto_2
    return-void

    .line 779
    :cond_3
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 780
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/drm/MusicDrm;->verify(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->isROVerifyFailed()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->setPlaying(Z)V

    .line 783
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->IsNeedToRoUpdate()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->isAvailableROUpdate()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 784
    const-string v0, "com.pantech.app.music.safebox.drmroerror"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    goto :goto_2

    .line 786
    :cond_34
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showErrorMsg()V

    goto :goto_2

    .line 792
    :cond_38
    monitor-enter p0

    .line 793
    :try_start_39
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->getCursorForId(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCursor:Landroid/database/Cursor;

    .line 794
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_65

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pantech/app/music/utils/ContentUtils;->getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->open(Ljava/lang/String;)V

    .line 797
    :cond_65
    monitor-exit p0

    goto :goto_2

    :catchall_67
    move-exception v0

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_39 .. :try_end_69} :catchall_67

    throw v0
.end method

.method private openStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 2
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 801
    return-void
.end method

.method private prevProcess()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 707
    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 709
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    .line 710
    .local v0, "histsize":I
    if-nez v0, :cond_1a

    .line 711
    const v2, 0x7f0801a2

    invoke-direct {p0, v2, v4}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    .line 712
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->seek(J)J

    .line 725
    .end local v0    # "histsize":I
    :goto_19
    return-void

    .line 715
    .restart local v0    # "histsize":I
    :cond_1a
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 716
    .local v1, "pos":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    .line 721
    .end local v0    # "histsize":I
    .end local v1    # "pos":Ljava/lang/Integer;
    :goto_2a
    iput v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPrevReqCnt:I

    .line 723
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openCurrent()V

    .line 724
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    goto :goto_19

    .line 719
    :cond_33
    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    iget v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPrevReqCnt:I

    sub-int/2addr v2, v3

    if-ltz v2, :cond_42

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    iget v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPrevReqCnt:I

    sub-int/2addr v2, v3

    :goto_3f
    iput v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    goto :goto_2a

    :cond_42
    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_3f
.end method

.method private recomposeQueue(Ljava/util/ArrayList;J)V
    .registers 12
    .param p2, "playingID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "newArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/4 v6, 0x0

    .line 1158
    const-string v3, "MusicPlaybackControl"

    const-string v4, "recomposeQueue()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const v3, 0x7f0800fd

    invoke-direct {p0, v3, v6}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    .line 1161
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1a

    .line 1162
    :cond_16
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->resetQueue()V

    .line 1191
    :cond_19
    :goto_19
    return-void

    .line 1165
    :cond_1a
    const-string v3, "MusicPlaybackControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=>old:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/pantech/app/music/list/MusicItemInfo;

    iput-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1168
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1169
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v3, v3

    iput v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    .line 1170
    iput v6, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    .line 1172
    const/4 v0, 0x0

    .line 1173
    .local v0, "bKeepPlaying":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_58
    iget v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-ge v1, v3, :cond_6e

    .line 1174
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    cmp-long v3, p2, v4

    if-nez v3, :cond_6b

    .line 1175
    iput v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    .line 1176
    const/4 v0, 0x1

    .line 1173
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 1179
    :cond_6e
    const-string v3, "com.pantech.app.music.safebox.queuechanged"

    invoke-direct {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 1181
    if-eqz v0, :cond_7e

    .line 1182
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    iget v4, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    aget-object v3, v3, v4

    iput-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    goto :goto_19

    .line 1185
    :cond_7e
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->isPlaying()Z

    move-result v2

    .line 1186
    .local v2, "wasPlaying":Z
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openCurrent()V

    .line 1187
    if-eqz v2, :cond_19

    .line 1188
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    goto :goto_19
.end method

.method private reloadPreference()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 940
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "repeatmode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 941
    .local v0, "repmode":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    if-eq v0, v5, :cond_10

    .line 942
    const/4 v0, 0x0

    .line 944
    :cond_10
    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    .line 946
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "shufflemode"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 947
    .local v1, "shufmode":I
    if-eq v1, v5, :cond_1d

    .line 948
    const/4 v1, 0x0

    .line 950
    :cond_1d
    iput v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    .line 951
    return-void
.end method

.method private resetQueue()V
    .registers 2

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_16

    .line 1195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->stop(Z)V

    .line 1196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1197
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    .line 1198
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    .line 1199
    const-string v0, "com.pantech.app.music.safebox.queuechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 1201
    :cond_16
    return-void
.end method

.method private savePreference()V
    .registers 4

    .prologue
    .line 931
    const-string v1, "MusicPlaybackControl"

    const-string v2, "savePreference()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 933
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v1, "repeatmode"

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 934
    const-string v1, "shufflemode"

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 935
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 936
    return-void
.end method

.method private setPlaying(Z)V
    .registers 3
    .param p1, "bPlaying"    # Z

    .prologue
    .line 1204
    if-eqz p1, :cond_f

    .line 1205
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_e

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 1207
    const-string v0, "com.pantech.app.music.safebox.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 1216
    :cond_e
    :goto_e
    return-void

    .line 1211
    :cond_f
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_e

    .line 1212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 1213
    const-string v0, "com.pantech.app.music.safebox.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    goto :goto_e
.end method

.method private setRepeatMode(I)V
    .registers 5
    .param p1, "repeatmode"    # I

    .prologue
    .line 865
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    if-ne v0, p1, :cond_5

    .line 872
    :goto_4
    return-void

    .line 866
    :cond_5
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepeatMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    monitor-enter p0

    .line 869
    :try_start_24
    iput p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    .line 870
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->savePreference()V

    .line 871
    monitor-exit p0

    goto :goto_4

    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private showErrorMsg()V
    .registers 9

    .prologue
    const v7, 0x7f08002a

    const v6, 0x7f08001d

    const v5, 0x7f080112

    .line 954
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mQuietMode:Z

    if-eqz v2, :cond_e

    .line 1044
    :cond_d
    :goto_d
    return-void

    .line 957
    :cond_e
    const-string v2, "MusicPlaybackControl"

    const-string v3, "showErrorMsg()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const/4 v0, 0x0

    .line 959
    .local v0, "DrmError":I
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 960
    .local v1, "title":Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 961
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/ContentUtils;->isDCFFileType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 962
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MultiPlayer;->getErrorDRM()I

    move-result v0

    .line 963
    const-string v2, "MusicPlaybackControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=>SKT DRM errorcode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    :cond_4c
    const/16 v2, -0x7db

    if-ne v0, v2, :cond_54

    .line 966
    invoke-direct {p0, v6, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto :goto_d

    .line 967
    :cond_54
    const/16 v2, -0x7dc

    if-ne v0, v2, :cond_5f

    .line 968
    const v2, 0x7f08001f

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto :goto_d

    .line 969
    :cond_5f
    const/16 v2, -0x7dd

    if-ne v0, v2, :cond_6a

    .line 970
    const v2, 0x7f08001e

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto :goto_d

    .line 971
    :cond_6a
    const/16 v2, -0x7de

    if-ne v0, v2, :cond_75

    .line 972
    const v2, 0x7f080021

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto :goto_d

    .line 973
    :cond_75
    const/16 v2, -0x7df

    if-ne v0, v2, :cond_80

    .line 974
    const v2, 0x7f080024

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto :goto_d

    .line 975
    :cond_80
    const/16 v2, -0x7e0

    if-ne v0, v2, :cond_8b

    .line 976
    const v2, 0x7f080020

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto :goto_d

    .line 977
    :cond_8b
    const/16 v2, -0x7e1

    if-ne v0, v2, :cond_97

    .line 978
    const v2, 0x7f080023

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 979
    :cond_97
    const/16 v2, -0x7e2

    if-ne v0, v2, :cond_a3

    .line 980
    const v2, 0x7f080022

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 982
    :cond_a3
    invoke-direct {p0, v5, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 985
    :cond_a8
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v2

    if-eqz v2, :cond_1a4

    .line 986
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->isROVerifyFailed()Z

    move-result v2

    if-eqz v2, :cond_19f

    .line 987
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->isIgnoreErrorPopup()Z

    move-result v2

    if-nez v2, :cond_d

    .line 991
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/app/music/utils/TelephonyUtils;->isAirPlaneMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 992
    const v2, 0x7f080016

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    .line 993
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->resetRoUpdate()V

    goto/16 :goto_d

    .line 996
    :cond_d3
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/app/music/utils/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 997
    const v2, 0x7f080014

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->resetRoUpdate()V

    goto/16 :goto_d

    .line 1001
    :cond_e8
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/app/music/utils/TelephonyUtils;->isNetworkDisable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 1002
    const v2, 0x7f08005e

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    .line 1003
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->resetRoUpdate()V

    goto/16 :goto_d

    .line 1007
    :cond_fd
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->getErrorCode()I

    move-result v0

    .line 1008
    const-string v2, "MusicPlaybackControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=>LGU DRM errorcode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/4 v2, -0x1

    if-ne v0, v2, :cond_123

    .line 1010
    invoke-direct {p0, v6, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1011
    :cond_123
    const/4 v2, -0x2

    if-ne v0, v2, :cond_12b

    .line 1012
    invoke-direct {p0, v7, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1013
    :cond_12b
    const/4 v2, -0x3

    if-ne v0, v2, :cond_136

    .line 1014
    const v2, 0x7f080033

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1015
    :cond_136
    const/4 v2, -0x4

    if-ne v0, v2, :cond_141

    .line 1016
    const v2, 0x7f080037

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1017
    :cond_141
    const/4 v2, -0x5

    if-ne v0, v2, :cond_14c

    .line 1018
    const v2, 0x7f080036

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1019
    :cond_14c
    const/4 v2, -0x6

    if-ne v0, v2, :cond_157

    .line 1020
    const v2, 0x7f080035

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1021
    :cond_157
    const/4 v2, -0x7

    if-ne v0, v2, :cond_162

    .line 1022
    const v2, 0x7f08002b

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1023
    :cond_162
    const/4 v2, -0x8

    if-ne v0, v2, :cond_16d

    .line 1024
    const v2, 0x7f08002f

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1025
    :cond_16d
    const/16 v2, -0x9

    if-ne v0, v2, :cond_176

    .line 1026
    invoke-direct {p0, v7, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1027
    :cond_176
    const/16 v2, -0xa

    if-ne v0, v2, :cond_182

    .line 1028
    const v2, 0x7f08002d

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1029
    :cond_182
    const/16 v2, -0xb

    if-ne v0, v2, :cond_18e

    .line 1030
    const v2, 0x7f08002e

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1031
    :cond_18e
    const/16 v2, -0xc

    if-ne v0, v2, :cond_19a

    .line 1032
    const v2, 0x7f08002c

    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1034
    :cond_19a
    invoke-direct {p0, v5, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1038
    :cond_19f
    invoke-direct {p0, v5, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d

    .line 1042
    :cond_1a4
    invoke-direct {p0, v5, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(ILjava/lang/String;)V

    goto/16 :goto_d
.end method

.method private showErrorMsgOnToast()V
    .registers 3

    .prologue
    .line 1051
    const v0, 0x7f080112

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    .line 1052
    return-void
.end method

.method private showMsgOnToast(ILjava/lang/String;)V
    .registers 5
    .param p1, "tokenID"    # I
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method private showMsgOnToast(IZ)V
    .registers 5
    .param p1, "tokenID"    # I
    .param p2, "bFilename"    # Z

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mQuietMode:Z

    if-eqz v0, :cond_5

    .line 1063
    :goto_4
    return-void

    .line 1057
    :cond_5
    if-eqz p2, :cond_34

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getDisaplyTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_4

    .line 1061
    :cond_34
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private showMsgOnToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/music/service/MusicPlaybackControl$4;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackControl$4;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1079
    return-void
.end method

.method private stop(Z)V
    .registers 3
    .param p1, "remove_status_icon"    # Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 415
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->stop()V

    .line 417
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    .line 418
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCursor:Landroid/database/Cursor;

    .line 421
    :cond_19
    if-eqz p1, :cond_1f

    .line 422
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->setPlaying(Z)V

    .line 424
    :cond_1f
    return-void
.end method


# virtual methods
.method public duration()J
    .registers 3

    .prologue
    .line 913
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 914
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->duration()J

    move-result-wide v0

    .line 916
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method

.method public fakeBind(Landroid/content/ServiceConnection;)V
    .registers 5
    .param p1, "callback"    # Landroid/content/ServiceConnection;

    .prologue
    .line 140
    const-string v1, "MusicPlaybackControl"

    const-string v2, "fakeBind"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mServiceInUse:Z

    .line 143
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCallback:Landroid/content/ServiceConnection;

    .line 144
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mFakeBinding:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.music.musicservicecommand.stopself"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method public fakeUnBind()V
    .registers 4

    .prologue
    .line 152
    const-string v1, "MusicPlaybackControl"

    const-string v2, "fakeUnBind"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mServiceInUse:Z

    .line 155
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mFakeBinding:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->pause()V

    .line 159
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCallback:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_1e

    .line 160
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mCallback:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 164
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.music.servicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "reloadpreference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 826
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 831
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getAudioId()J
    .registers 3

    .prologue
    .line 815
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    .line 816
    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    goto :goto_6
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->getAudioSessionID()I

    move-result v0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 843
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 844
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 5

    .prologue
    .line 467
    monitor-enter p0

    .line 468
    :try_start_1
    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    .line 469
    .local v1, "len":I
    new-array v2, v1, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 470
    .local v2, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v1, :cond_15

    .line 471
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v3

    aput-object v3, v2, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 473
    :cond_15
    monitor-exit p0

    return-object v2

    .line 474
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :catchall_17
    move-exception v3

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v3
.end method

.method public getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 478
    monitor-enter p0

    .line 479
    const/4 v0, 0x0

    .line 481
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-lez v1, :cond_18

    if-ltz p1, :cond_18

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-ge p1, v1, :cond_18

    .line 482
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayList:[Lcom/pantech/app/music/list/MusicItemInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 484
    :cond_18
    monitor-exit p0

    return-object v0

    .line 485
    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getQueueLength()I
    .registers 2

    .prologue
    .line 839
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    return v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 835
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 875
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 861
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 821
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public next(Z)V
    .registers 7
    .param p1, "force"    # Z

    .prologue
    const/4 v4, 0x7

    .line 607
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-gtz v0, :cond_2b

    .line 610
    const-string v0, "MusicPlaybackControl"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_2a
    :goto_2a
    return-void

    .line 613
    :cond_2b
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    if-nez p1, :cond_2a

    .line 616
    :cond_35
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->isMounted()Z

    move-result v0

    if-nez v0, :cond_43

    .line 617
    const v0, 0x7f080099

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    goto :goto_2a

    .line 621
    :cond_43
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    .line 622
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bReqForce:Z

    .line 623
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mNextReqCnt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_63

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->isPlaying()Z

    move-result v0

    :goto_54
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bWasPlaying:Z

    .line 625
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 626
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2a

    .line 623
    :cond_63
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bWasPlaying:Z

    goto :goto_54
.end method

.method public open(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 427
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    if-nez p1, :cond_21

    .line 443
    :goto_20
    return-void

    .line 431
    :cond_21
    monitor-enter p0

    .line 432
    :try_start_22
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/service/MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_45

    .line 435
    const-string v0, "MusicPlaybackControl"

    const-string v1, "=>fail to initialize!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showErrorMsgOnToast()V

    .line 437
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_45

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 439
    const-string v0, "com.pantech.app.music.safebox.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 442
    :cond_45
    monitor-exit p0

    goto :goto_20

    :catchall_47
    move-exception v0

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_47

    throw v0
.end method

.method public open([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 6
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 289
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open(list, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - request new playlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    monitor-enter p0

    .line 292
    if-nez p1, :cond_29

    .line 293
    const/4 v0, 0x0

    :try_start_22
    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    .line 295
    monitor-exit p0

    .line 312
    :goto_28
    return-void

    .line 297
    :cond_29
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->addToPlayList([Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 298
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=>count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 302
    if-ltz p2, :cond_61

    .line 303
    iput p2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    .line 307
    :goto_4e
    if-lez p2, :cond_6c

    add-int/lit8 v0, p2, -0x1

    :goto_52
    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mLastPos:I

    .line 308
    const-string v0, "com.pantech.app.music.safebox.queuechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openCurrent()V

    .line 311
    monitor-exit p0

    goto :goto_28

    :catchall_5e
    move-exception v0

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_22 .. :try_end_60} :catchall_5e

    throw v0

    .line 305
    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mRand:Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl$Shuffler;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    goto :goto_4e

    .line 307
    :cond_6c
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_5e

    add-int/lit8 v0, v0, -0x1

    goto :goto_52
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 392
    const-string v0, "MusicPlaybackControl"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 394
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->pause()V

    .line 395
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_2d

    .line 397
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 398
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 400
    :cond_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 401
    const-string v0, "com.pantech.app.music.safebox.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 407
    :cond_2d
    :goto_2d
    return-void

    .line 404
    :cond_2e
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 405
    const-string v0, "MusicPlaybackControl"

    const-string v1, "=> player is not prepared!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public play()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 362
    const-string v0, "MusicPlaybackControl"

    const-string v1, "play()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 365
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 366
    const v0, 0x7f080126

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    .line 389
    :cond_1f
    :goto_1f
    return-void

    .line 370
    :cond_20
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 371
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->start()V

    .line 372
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_3d

    .line 374
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 376
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 377
    const-string v0, "com.pantech.app.music.safebox.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 382
    :cond_3d
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1f

    .line 385
    :cond_4a
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 386
    const-string v0, "MusicPlaybackControl"

    const-string v1, "=> player is not prepared!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bWasPlaying:Z

    goto :goto_1f
.end method

.method public playEx()V
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isOpenFailed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 352
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openCurrent()V

    .line 356
    :cond_13
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 357
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    .line 359
    :cond_1e
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 920
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 921
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v0

    .line 923
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, -0x1

    goto :goto_e
.end method

.method public prev(Z)V
    .registers 7
    .param p1, "force"    # Z

    .prologue
    const/16 v4, 0x8

    .line 680
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prev("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-gtz v0, :cond_2c

    .line 683
    const-string v0, "MusicPlaybackControl"

    const-string v1, "No play queue"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_2b
    :goto_2b
    return-void

    .line 686
    :cond_2c
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 689
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->isMounted()Z

    move-result v0

    if-nez v0, :cond_42

    .line 690
    const v0, 0x7f080099

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    goto :goto_2b

    .line 693
    :cond_42
    if-nez p1, :cond_65

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_65

    .line 694
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->seek(J)J

    .line 695
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    goto :goto_2b

    .line 699
    :cond_65
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPrevReqCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPrevReqCnt:I

    .line 700
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPrevReqCnt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_83

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->isPlaying()Z

    move-result v0

    :goto_74
    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bWasPlaying:Z

    .line 702
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 703
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2b

    .line 700
    :cond_83
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->bWasPlaying:Z

    goto :goto_74
.end method

.method public release()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->release()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    .line 132
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIsSupposedToBePlaying:Z

    .line 133
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 136
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    return-void
.end method

.method public resetPlayItem()V
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 328
    return-void
.end method

.method public seek(J)J
    .registers 8
    .param p1, "pos"    # J

    .prologue
    .line 446
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 448
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2e

    const-wide/16 p1, 0x0

    .line 449
    :cond_2e
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3e

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->duration()J

    move-result-wide p1

    .line 452
    :cond_3e
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->duration()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    sub-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_4f

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->next(Z)V

    .line 455
    :cond_4f
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/service/MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 457
    :goto_55
    return-wide v0

    :cond_56
    const-wide/16 v0, -0x1

    goto :goto_55
.end method

.method public setQueuePosition(IZ)V
    .registers 7
    .param p1, "pos"    # I
    .param p2, "bForceToPlay"    # Z

    .prologue
    .line 493
    const-string v1, "MusicPlaybackControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setQueuePosition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    if-ltz v1, :cond_28

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I

    if-lt v1, v2, :cond_29

    .line 515
    :cond_28
    :goto_28
    return-void

    .line 497
    :cond_29
    monitor-enter p0

    .line 498
    :try_start_2a
    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5f

    .line 499
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_4a

    .line 501
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHistory:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 503
    :cond_4a
    iput p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    .line 509
    :goto_4c
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->isPlaying()Z

    move-result v0

    .line 510
    .local v0, "bWasPlaying":Z
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->openCurrent()V

    .line 511
    if-nez p2, :cond_57

    if-eqz v0, :cond_5a

    .line 512
    :cond_57
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->play()V

    .line 514
    :cond_5a
    monitor-exit p0

    goto :goto_28

    .end local v0    # "bWasPlaying":Z
    :catchall_5c
    move-exception v1

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_2a .. :try_end_5e} :catchall_5c

    throw v1

    .line 505
    :cond_5f
    :try_start_5f
    iput p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I
    :try_end_61
    .catchall {:try_start_5f .. :try_end_61} :catchall_5c

    goto :goto_4c
.end method

.method public setShuffleMode(I)V
    .registers 5
    .param p1, "shufflemode"    # I

    .prologue
    .line 848
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    if-ne v0, p1, :cond_5

    .line 858
    :goto_4
    return-void

    .line 849
    :cond_5
    const-string v0, "MusicPlaybackControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShuffleMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    monitor-enter p0

    .line 852
    :try_start_24
    iput p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    .line 853
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mShuffleMode:I

    if-nez v0, :cond_34

    .line 854
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    if-lez v0, :cond_3c

    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayPos:I

    add-int/lit8 v0, v0, -0x1

    :goto_32
    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mLastPos:I

    .line 856
    :cond_34
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->savePreference()V

    .line 857
    monitor-exit p0

    goto :goto_4

    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_39

    throw v0

    .line 854
    :cond_3c
    :try_start_3c
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mPlayListLen:I
    :try_end_3e
    .catchall {:try_start_3c .. :try_end_3e} :catchall_39

    add-int/lit8 v0, v0, -0x1

    goto :goto_32
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->stop(Z)V

    .line 411
    return-void
.end method

.method public toggleRepeat()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 894
    const-string v1, "MusicPlaybackControl"

    const-string v2, "toggleRepeat()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->getRepeatMode()I

    move-result v0

    .line 897
    .local v0, "repeat":I
    if-nez v0, :cond_1e

    .line 898
    invoke-direct {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackControl;->setRepeatMode(I)V

    .line 899
    const v1, 0x7f08018d

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    .line 909
    :goto_18
    const-string v1, "com.pantech.app.music.safebox.settingchanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 910
    return-void

    .line 901
    :cond_1e
    if-ne v0, v4, :cond_2b

    .line 902
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->setRepeatMode(I)V

    .line 903
    const v1, 0x7f08018e

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    goto :goto_18

    .line 906
    :cond_2b
    invoke-direct {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->setRepeatMode(I)V

    .line 907
    const v1, 0x7f08018f

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    goto :goto_18
.end method

.method public toggleShuffle()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 879
    const-string v1, "MusicPlaybackControl"

    const-string v2, "toggleShuffle()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackControl;->getShuffleMode()I

    move-result v0

    .line 882
    .local v0, "shuffle":I
    if-ne v0, v4, :cond_1e

    .line 883
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->setShuffleMode(I)V

    .line 884
    const v1, 0x7f0801a0

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    .line 890
    :cond_18
    :goto_18
    const-string v1, "com.pantech.app.music.safebox.settingchanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackControl;->notifyChange(Ljava/lang/String;)V

    .line 891
    return-void

    .line 886
    :cond_1e
    if-nez v0, :cond_18

    .line 887
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackControl;->setShuffleMode(I)V

    .line 888
    const v1, 0x7f0801a1

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    goto :goto_18
.end method

.method public verifyTracks(Z)V
    .registers 5
    .param p1, "bShowMsg"    # Z

    .prologue
    .line 1086
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mVeriryReady:Z

    .line 1087
    if-eqz p1, :cond_c

    .line 1088
    const v1, 0x7f0800fc

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/music/service/MusicPlaybackControl;->showMsgOnToast(IZ)V

    .line 1090
    :cond_c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/service/MusicPlaybackControl$5;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/MusicPlaybackControl$5;-><init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1154
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1155
    return-void
.end method
