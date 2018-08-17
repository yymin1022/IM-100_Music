.class public Lcom/pantech/app/music/service/MusicPlaybackService;
.super Landroid/app/Service;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;,
        Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;,
        Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;,
        Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;,
        Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;,
        Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;,
        Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;,
        Lcom/pantech/app/music/service/MusicPlaybackService$GetNowPlayingEntriesMonitor;,
        Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;,
        Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;,
        Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;,
        Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;
    }
.end annotation


# static fields
.field public static final ACTION_PANTECH_SHUTDOWN:Ljava/lang/String; = "com.pantech.intent.action.PANTECH_SHUTDOWN"

.field public static final ALBUMART_UPDATED:Ljava/lang/String; = "com.pantech.app.music.albumartupdated"

.field static final ARRAYRUN_OPENCOMPLETE_IDX:Ljava/lang/Integer;

.field static final ARRAYRUN_TURNOFF_AUDIOEFFECT_IDX:Ljava/lang/Integer;

.field public static final ATTRIBUTE_ALL:B = -0x1t

.field public static final ATTRIBUTE_EQUALIZER:B = 0x1t

.field public static final ATTRIBUTE_REPEATMODE:B = 0x2t

.field public static final ATTRIBUTE_SCANMODE:B = 0x4t

.field public static final ATTRIBUTE_SHUFFLEMODE:B = 0x3t

.field public static final BUFFERING:Ljava/lang/String; = "buffering"

.field public static final BUFFERING_END:I = 0x12

.field public static final BUFFERING_START:I = 0x11

.field public static final CHANGETITLE:Ljava/lang/String; = "com.pantech.app.music.changetitle"

.field public static final CMDCLEARQUEUE:Ljava/lang/String; = "clearQueue"

.field public static final CMDFF:Ljava/lang/String; = "fastforward"

.field public static final CMDGET:Ljava/lang/String; = "get"

.field public static final CMDHEADPLAY:Ljava/lang/String; = "headsetplay"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPLAY:Ljava/lang/String; = "play"

.field public static final CMDPREFERENCE:Ljava/lang/String; = "reloadpreference"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDREPEAT:Ljava/lang/String; = "repeat"

.field public static final CMDREW:Ljava/lang/String; = "rewind"

.field public static final CMDSET:Ljava/lang/String; = "set"

.field public static final CMDSETSHUFFLE:Ljava/lang/String; = "shuffle"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDSTOPSELF:Ljava/lang/String; = "stopselfservice"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMD_APP_WIDGET_ADD:Ljava/lang/String; = "appwidgetadd"

.field public static final DRM_RO_ERROR:Ljava/lang/String; = "com.pantech.app.music.drmroerror"

.field public static final ERROR_NOTSUPPORTED:B = -0x1t

.field public static final ESOUND_COMPLETE:I = 0xf

.field private static final EXTRA_ATTIBUTE_ID_ARRAY:Ljava/lang/String; = "Attributes"

.field private static final EXTRA_ATTRIBUTE_ID:Ljava/lang/String; = "Attribute"

.field private static final EXTRA_ATTRIBUTE_STRING_ARRAY:Ljava/lang/String; = "AttributeStrings"

.field private static final EXTRA_ATTRIB_VALUE_PAIRS:Ljava/lang/String; = "AttribValuePairs"

.field private static final EXTRA_GET_COMMAND:Ljava/lang/String; = "commandExtra"

.field private static final EXTRA_GET_RESPONSE:Ljava/lang/String; = "Response"

.field private static final EXTRA_VALUE_ID_ARRAY:Ljava/lang/String; = "Values"

.field private static final EXTRA_VALUE_STRING_ARRAY:Ljava/lang/String; = "ValueStrings"

.field public static final FADE_DOWN:I = 0x6

.field public static final FADE_UP:I = 0x5

.field public static final FEATURE_USE_OFFLOAD:Z

.field public static final FEATURE_USE_RCC:Z

.field private static final FFREW_INTERVAL:J = 0xbb8L

.field public static final FOCUS_CHANGE:I = 0xb

.field private static final GET_ATTRIBUTE_IDS:I = 0x0

.field private static final GET_ATTRIBUTE_TEXT:I = 0x2

.field private static final GET_ATTRIBUTE_VALUES:I = 0x4

.field private static final GET_ATTR_INVALID:B = 0x7ft

.field private static final GET_INVALID:I = 0xff

.field private static final GET_NOW_PLAYING_ENTRIES:I = 0x3eb

.field private static final GET_VALUE_IDS:I = 0x1

.field private static final GET_VALUE_TEXT:I = 0x3

.field private static final IDLE_DELAY:I = 0x2bf20

.field public static final INFO_CHANGED:Ljava/lang/String; = "com.pantech.app.music.infochanged"

.field public static final META_CHANGED:Ljava/lang/String; = "com.pantech.app.music.metachanged"

.field public static final MODE_IN_CALL:I = 0xa

.field public static final NETWORK_BANDWIDTH:I = 0x13

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.next"

.field private static final NOTIFY_ATTRIBUTE_VALUES:I = 0x5

.field public static final NOW:I = 0x1

.field public static final OPEN_FAILED:Ljava/lang/String; = "com.pantech.app.music.openfailed"

.field public static final PANTECHCMD:Ljava/lang/String; = "com.pantech.app.music.servicecommand"

.field public static final PAUSED:Ljava/lang/String; = "paused"

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_ALL_REMOVED:Ljava/lang/String; = "com.pantech.app.music.playbackallremoved"

.field private static final PLAYERSETTINGS_REQUEST:Ljava/lang/String; = "org.codeaurora.music.playersettingsrequest"

.field private static final PLAYERSETTINGS_RESPONSE:Ljava/lang/String; = "org.codeaurora.music.playersettingsresponse"

.field public static final PLAYING:Ljava/lang/String; = "playing"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.pantech.app.music.playstatechanged"

.field public static final PLAYSTATUS_REQUEST:Ljava/lang/String; = "com.qualcomm.music.playstatusrequest"

.field public static final PLAYSTATUS_RESPONSE:Ljava/lang/String; = "com.qualcomm.music.playstatusresponse"

.field public static final PLAY_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.play"

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.pantech.app.music.queuechanged"

.field public static final READY:Ljava/lang/String; = "ready"

.field public static final REFRESH_WIDGET:Ljava/lang/String; = "com.pantech.app.music.refreshwidget"

.field public static final RELEASE_WAKELOCK:I = 0x2

.field public static final REMOVE_EXTRAPLAYER:Ljava/lang/String; = "com.pantech.app.music.removeextraplayer"

.field public static final REPEAT_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.repeat"

.field public static final REPEAT_ALL:I = 0x2

.field public static final REPEAT_CURRENT:I = 0x1

.field public static final REPEAT_NONE:I = 0x0

.field public static final RMS_ACTION:Ljava/lang/String; = "com.pantech.app.music.rmsaction"

.field private static final SCOPE_FILE_SYSTEM:I = 0x1

.field private static final SCOPE_NOW_PLAYING:I = 0x3

.field public static final SELECTPLAY_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.selectplay"

.field public static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field public static final SERVICE_RESTARTED:Ljava/lang/String; = "com.pantech.app.music.servicerestarted"

.field public static final SETTING_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.setting"

.field public static final SETTING_CHANGED:Ljava/lang/String; = "com.pantech.app.music.settingchanged"

.field private static final SET_ADDRESSED_PLAYER:Ljava/lang/String; = "org.codeaurora.music.setaddressedplayer"

.field private static final SET_ATTRIBUTE_VALUES:I = 0x6

.field private static final SET_BROWSED_PLAYER:I = 0x3e9

.field private static final SET_PLAY_ITEM:I = 0x3ea

.field public static final SHUFFLE_AUTO:I = 0x2

.field public static final SHUFFLE_NONE:I = 0x0

.field public static final SHUFFLE_NORMAL:I = 0x1

.field public static final STATUS_REQUEST:Ljava/lang/String; = "com.pantech.app.music.playstatusrequest"

.field public static final STATUS_RESPONSE:Ljava/lang/String; = "com.pantech.app.music.playstatusresponse"

.field public static final STOPSELF_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.stopself"

.field public static final STOPSERVICE_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.stopservice"

.field public static final STREAM_TIMEOUT:I = 0x10

.field public static final STREAM_TIME_OUT:J = 0xea60L

.field public static final TAG:Ljava/lang/String; = "MusicPlaybackService"

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.pantech.app.music.musicservicecommand.togglepause"

.field public static final TOGGLE_RATING:Ljava/lang/String; = "toggleRating"

.field public static final TOGGLE_REPEAT:Ljava/lang/String; = "toggleRepeat"

.field public static final TOGGLE_SHUFFLE:Ljava/lang/String; = "toggleShuffle"

.field public static final TRACK_END:Ljava/lang/String; = "track_end"

.field public static final TRACK_ENDED:I = 0x1

.field public static final VALUE_REPEATMODE_ALL:B = 0x3t

.field public static final VALUE_REPEATMODE_GROUP:B = 0x4t

.field public static final VALUE_REPEATMODE_OFF:B = 0x1t

.field public static final VALUE_REPEATMODE_SINGLE:B = 0x2t

.field public static final VALUE_SHUFFLEMODE_ALL:B = 0x2t

.field public static final VALUE_SHUFFLEMODE_GROUP:B = 0x3t

.field public static final VALUE_SHUFFLEMODE_OFF:B = 0x1t

.field public static mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field AttrStr:[Ljava/lang/String;

.field private bitmapAlbumArt:Landroid/graphics/Bitmap;

.field private mA2dpReceiver:Landroid/content/BroadcastReceiver;

.field private mAttributePairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoPlugPlay:Ljava/lang/Runnable;

.field private mAvrcpHandler:Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;

.field private final mBinder:Landroid/os/IBinder;

.field private mBlockingNextRequestOnCompletionForAWhile:Z

.field private mCurrentVolume:F

.field private mCursor:Landroid/database/Cursor;

.field private mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

.field private mExtraUIControllers:Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

.field private mFileToPlay:Ljava/lang/String;

.field private mFromBGP:Z

.field private mGetNowPlayingEntriesMonitor:Lcom/pantech/app/music/service/MusicPlaybackService$GetNowPlayingEntriesMonitor;

.field private mGotoIdleState:Ljava/lang/Runnable;

.field private mInfoChangeNotified:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field mMainControlHandler:Landroid/os/Handler;

.field private mMediaMountedCount:I

.field private mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

.field private mMiracastConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

.field private mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

.field private mNeedToPlayAfterPrepared:Z

.field private mNeedToReOpen:Z

.field private mOpenAndPlay:Ljava/lang/Runnable;

.field mOpenAsyncComplete:Ljava/lang/Runnable;

.field private mPauseRequest:Ljava/lang/Runnable;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayRequest:Ljava/lang/Runnable;

.field private mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mQuietMode:Z

.field private mReadyToOpen:Z

.field private mReloadQueue:Ljava/lang/Runnable;

.field private mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

.field private mRemoteControlResponder:Landroid/content/ComponentName;

.field private mResetQueue:Ljava/lang/Runnable;

.field private mRetryCount:I

.field private mRetryIfFailed:Z

.field private mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mSetBrowsedPlayerMonitor:Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;

.field private mSetPlayItemMonitor:Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;

.field private mShutdownInProgress:Z

.field private mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

.field mTurnOffAudioEffect:Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;

.field mTurnOnAudioEffect:Ljava/lang/Runnable;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVerifyQueue:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mYouMayUpdatePlayCount:Z

.field private supportedAttributes:[B

.field private supportedRepeatValues:[B

.field private supportedShuffleValues:[B

.field private unsupportedList:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x13

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_25

    move v0, v1

    :goto_9
    sput-boolean v0, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_RCC:Z

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_27

    move v0, v1

    :goto_10
    sput-boolean v0, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_OFFLOAD:Z

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_TURNOFF_AUDIOEFFECT_IDX:Ljava/lang/Integer;

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_OPENCOMPLETE_IDX:Ljava/lang/Integer;

    .line 307
    invoke-static {}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getInstance()Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    return-void

    :cond_25
    move v0, v2

    .line 115
    goto :goto_9

    :cond_27
    move v0, v2

    .line 116
    goto :goto_10
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 750
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    .line 231
    new-array v0, v2, [B

    fill-array-data v0, :array_ea

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->supportedAttributes:[B

    .line 241
    new-array v0, v6, [B

    fill-array-data v0, :array_f0

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->supportedRepeatValues:[B

    .line 251
    new-array v0, v2, [B

    fill-array-data v0, :array_f6

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->supportedShuffleValues:[B

    .line 256
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "Equalizer"

    aput-object v1, v0, v5

    const-string v1, "Repeat Mode"

    aput-object v1, v0, v2

    const-string v1, "Shuffle Mode"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Scan Mode"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->AttrStr:[Ljava/lang/String;

    .line 264
    new-array v0, v5, [B

    aput-byte v3, v0, v3

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->unsupportedList:[B

    .line 305
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    .line 308
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;

    invoke-direct {v0, p0, v5}, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mTurnOffAudioEffect:Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;

    .line 311
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$1;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mTurnOnAudioEffect:Ljava/lang/Runnable;

    .line 321
    iput v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaMountedCount:I

    .line 329
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mInfoChangeNotified:Z

    .line 331
    iput-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 332
    iput-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    iput-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    iput-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMiracastConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 336
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceStartId:I

    .line 337
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceInUse:Z

    .line 338
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 339
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mYouMayUpdatePlayCount:Z

    .line 340
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    .line 341
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    .line 345
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFromBGP:Z

    .line 347
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 351
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    .line 353
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mShutdownInProgress:Z

    .line 354
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mBlockingNextRequestOnCompletionForAWhile:Z

    .line 355
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryIfFailed:Z

    .line 356
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    .line 357
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    .line 358
    iput v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryCount:I

    .line 362
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    .line 535
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$3;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 541
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$4;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPauseRequest:Ljava/lang/Runnable;

    .line 547
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$5;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayRequest:Ljava/lang/Runnable;

    .line 555
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    .line 594
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$6;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mGotoIdleState:Ljava/lang/Runnable;

    .line 603
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$7;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$7;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReloadQueue:Ljava/lang/Runnable;

    .line 609
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$8;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mVerifyQueue:Ljava/lang/Runnable;

    .line 615
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$9;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOpenAndPlay:Ljava/lang/Runnable;

    .line 664
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$10;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$10;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAutoPlugPlay:Ljava/lang/Runnable;

    .line 696
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$11;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$11;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOpenAsyncComplete:Ljava/lang/Runnable;

    .line 704
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$12;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$12;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 742
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$13;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$13;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mResetQueue:Ljava/lang/Runnable;

    .line 1824
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAvrcpHandler:Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;

    .line 751
    return-void

    .line 231
    nop

    :array_ea
    .array-data 1
        0x2t
        0x3t
    .end array-data

    .line 241
    nop

    :array_f0
    .array-data 1
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 251
    :array_f6
    .array-data 1
        0x1t
        0x2t
    .end array-data
.end method

.method private abnormalProcess()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2209
    const-string v1, "MusicPlaybackService"

    const-string v2, "abnormalProcess()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    if-eqz v1, :cond_19

    .line 2212
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/assist/MusicSensorControl;->setShakeEnable(Z)V

    .line 2213
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-virtual {v1}, Lcom/pantech/app/music/assist/MusicSensorControl;->sensorObserverDestory()V

    .line 2214
    iput-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    .line 2217
    :cond_19
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v1, :cond_24

    .line 2218
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MultiPlayer;->release()V

    .line 2219
    iput-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    .line 2221
    :cond_24
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceInUse:Z

    .line 2222
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 2225
    new-instance v0, Lcom/pantech/app/music/assist/MusicAutoStopControl;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/assist/MusicAutoStopControl;-><init>(Landroid/content/Context;)V

    .line 2226
    .local v0, "mAutoStopControl":Lcom/pantech/app/music/assist/MusicAutoStopControl;
    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicAutoStopControl;->resetAlarm()V

    .line 2229
    const-string v1, "com.pantech.app.music.servicerestarted"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2230
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->handleMessageForMediaPlayer(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->stop(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    return-void
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/service/MusicPlaybackService;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1208(Lcom/pantech/app/music/service/MusicPlaybackService;)I
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/service/MusicPlaybackService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/drm/MusicDrm;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->showErrorMsg()V

    return-void
.end method

.method static synthetic access$1700(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->handleActionCommand(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/pantech/app/music/service/MusicPlaybackService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mShutdownInProgress:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mShutdownInProgress:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mResetQueue:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mVerifyQueue:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceAlive(Z)V

    return-void
.end method

.method static synthetic access$3102(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/assist/MusicSensorControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAutoPlugPlay:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mBlockingNextRequestOnCompletionForAWhile:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyAttributeIDs(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;B)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # B

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyValueIDs(Ljava/lang/String;B)V

    return-void
.end method

.method static synthetic access$3700(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;[B)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyAttributesText(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$3800(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;I[B)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # [B

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyAttributeValuesText(Ljava/lang/String;I[B)V

    return-void
.end method

.method static synthetic access$3900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->handleMessageForDelayedStop(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/pantech/app/music/service/MusicPlaybackService;[B)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # [B

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->setValidAttributes([B)V

    return-void
.end method

.method static synthetic access$4100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAvrcpHandler:Lcom/pantech/app/music/service/MusicPlaybackService$AvrcpHandler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->handleMessageForAvrcp(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600()Landroid/widget/Toast;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/pantech/app/music/service/MusicPlaybackService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$4602(Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 1
    .param p0, "x0"    # Landroid/widget/Toast;

    .prologue
    .line 111
    sput-object p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/pantech/app/music/service/MusicPlaybackService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    return p1
.end method

.method static synthetic access$500(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mExtraUIControllers:Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->reloadQueue(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/pantech/app/music/service/MusicPlaybackService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryIfFailed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p1, "x1"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    return p1
.end method

.method private getAlbumArtData()Z
    .registers 9

    .prologue
    .line 4139
    const/4 v1, 0x0

    .line 4141
    .local v1, "getAlbumArt":Z
    new-instance v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 4142
    .local v2, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumId()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 4143
    sget v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_FORCE_SYNC:I

    sget v4, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_LARGE_SIZE:I

    or-int/2addr v3, v4

    sget v4, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_NO_CACHE:I

    or-int/2addr v3, v4

    iput v3, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 4144
    const-string v3, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAlbumArtData() AlbumId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    iget-wide v4, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_3a

    .line 4146
    const/4 v3, 0x0

    .line 4178
    :goto_39
    return v3

    .line 4150
    :cond_3a
    const-string v3, "get albumart "

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->performance(Ljava/lang/String;Z)V

    .line 4151
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v0

    .line 4152
    .local v0, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v3, Lcom/pantech/app/music/service/MusicPlaybackService$19;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$19;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    .line 4170
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_71

    .line 4171
    const-string v3, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAlbumArtData() getAlbumArt!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->bitmapAlbumArt:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4172
    const/4 v1, 0x1

    :goto_6f
    move v3, v1

    .line 4178
    goto :goto_39

    .line 4175
    :cond_71
    const-string v3, "MusicPlaybackService"

    const-string v4, "getAlbumArtData() getAlbumArt  NULL!!!"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f
.end method

.method private getBookmark()J
    .registers 4

    .prologue
    .line 3306
    monitor-enter p0

    .line 3307
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    .line 3308
    const-wide/16 v0, 0x0

    monitor-exit p0

    .line 3310
    :goto_8
    return-wide v0

    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "bookmark"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    monitor-exit p0

    goto :goto_8

    .line 3311
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private getCursor(Ljava/lang/String;)V
    .registers 14
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2586
    const-string v2, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCursor("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2591
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "content://media/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 2592
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2593
    .local v1, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 2594
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2600
    .local v4, "selectionArgs":[Ljava/lang/String;
    :goto_32
    const-string v2, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=>uri("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    :try_start_50
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_59

    .line 2604
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2606
    :cond_59
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2607
    .local v8, "tc":Landroid/database/Cursor;
    const/4 v2, 0x0

    invoke-static {v8, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2608
    if-eqz v8, :cond_6b

    .line 2609
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2611
    :cond_6b
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_86

    .line 2612
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_92

    .line 2613
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2614
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2615
    const-string v2, "MusicPlaybackService"

    const-string v5, "=>query fail, no cursor returned!!"

    invoke-static {v2, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_50 .. :try_end_86} :catch_cf

    .line 2628
    .end local v8    # "tc":Landroid/database/Cursor;
    :cond_86
    :goto_86
    return-void

    .line 2596
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_87
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2597
    .restart local v1    # "uri":Landroid/net/Uri;
    const-string v3, "_data=?"

    .line 2598
    .restart local v3    # "where":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    goto :goto_32

    .line 2617
    .restart local v8    # "tc":Landroid/database/Cursor;
    :cond_92
    :try_start_92
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 2619
    const/4 v2, 0x1

    new-array v7, v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 2620
    .local v7, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v2, 0x0

    new-instance v5, Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v9, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-direct {v5, v9, v10}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    aput-object v5, v7, v2

    .line 2621
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    const/4 v5, 0x0

    invoke-virtual {v2, v7, v5}, Lcom/pantech/app/music/service/MusicQueue;->setQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 2622
    const-string v2, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "=>audio id from new cursor:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/service/MusicQueue;->getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_92 .. :try_end_ce} :catch_cf

    goto :goto_86

    .line 2625
    .end local v7    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v8    # "tc":Landroid/database/Cursor;
    :catch_cf
    move-exception v6

    .line 2626
    .local v6, "ex":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_86
.end method

.method private getCursorForId(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;
    .registers 12
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const/4 v2, 0x0

    .line 2309
    const/4 v6, 0x0

    .line 2310
    .local v6, "c":Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 2312
    .local v8, "id":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 2314
    .local v9, "tc":Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_2c
    invoke-static {v9, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_41

    move-result-object v6

    .line 2318
    :goto_30
    if-eqz v9, :cond_35

    .line 2319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2322
    :cond_35
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_46

    .line 2323
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2329
    :goto_40
    return-object v6

    .line 2315
    :catch_41
    move-exception v7

    .line 2316
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 2325
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_46
    const-string v0, "MusicPlaybackService"

    const-string v1, "->No valid Records for the cursor !!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "->uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/pantech/app/music/utils/ContentUtils;->getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    const/4 v6, 0x0

    goto :goto_40
.end method

.method private getNowPlayingEntries()V
    .registers 9

    .prologue
    .line 1871
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v0

    .line 1872
    .local v0, "count":I
    const-string v5, "MusicPlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNowPlayingEntries: num of items: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    new-array v4, v0, [J

    .line 1874
    .local v4, "nowPlayingList":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v0, :cond_4a

    .line 1875
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5, v1}, Lcom/pantech/app/music/service/MusicQueue;->getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    .line 1876
    .local v2, "id":J
    const-string v5, "MusicPlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAudioID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    aput-wide v2, v4, v1

    .line 1874
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1879
    .end local v2    # "id":J
    :cond_4a
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-static {v5, v4}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->access$4300(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;[J)V

    .line 1880
    return-void
.end method

.method private gotoIdleState()V
    .registers 3

    .prologue
    .line 3409
    const-string v0, "MusicPlaybackService"

    const-string v1, "gotoIdleState()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3410
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3411
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mGotoIdleState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3412
    return-void
.end method

.method private handleActionCommand(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 16
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v10, 0xbb8

    const/4 v8, 0x1

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    .line 821
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleActionCommand() =>action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cmd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v4, "next"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "com.pantech.app.music.musicservicecommand.next"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 824
    :cond_38
    invoke-virtual {p0, v8, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJ)V

    .line 901
    :cond_3b
    :goto_3b
    return-void

    .line 825
    :cond_3c
    const-string v4, "previous"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    const-string v4, "com.pantech.app.music.musicservicecommand.previous"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 826
    :cond_4c
    invoke-virtual {p0, v7, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->prevRequest(ZJ)V

    goto :goto_3b

    .line 827
    :cond_50
    const-string v4, "play"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_60

    const-string v4, "com.pantech.app.music.musicservicecommand.play"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 828
    :cond_60
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->playRequest()V

    goto :goto_3b

    .line 829
    :cond_64
    const-string v4, "fastforward"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 830
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J

    move-result-wide v2

    add-long v0, v2, v10

    .line 831
    .local v0, "newpos":J
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_7e

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v0

    .line 832
    :cond_7e
    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    goto :goto_3b

    .line 833
    .end local v0    # "newpos":J
    :cond_82
    const-string v4, "rewind"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 834
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J

    move-result-wide v4

    sub-long v0, v4, v10

    .line 835
    .restart local v0    # "newpos":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_98

    .line 836
    :goto_94
    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    goto :goto_3b

    :cond_98
    move-wide v0, v2

    .line 835
    goto :goto_94

    .line 837
    .end local v0    # "newpos":J
    :cond_9a
    const-string v2, "pause"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_aa

    const-string v2, "com.pantech.app.music.musicservicecommand.pause"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 838
    :cond_aa
    const-string v2, "frombgp"

    invoke-virtual {p3, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFromBGP:Z

    .line 839
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->pauseRequest()V

    .line 840
    iput-boolean v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFromBGP:Z

    goto :goto_3b

    .line 841
    :cond_b8
    const-string v2, "stop"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 842
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->stopEx()V

    goto/16 :goto_3b

    .line 843
    :cond_c5
    const-string v2, "stopselfservice"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d5

    const-string v2, "com.pantech.app.music.musicservicecommand.stopself"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 844
    :cond_d5
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->gotoIdleState()V

    goto/16 :goto_3b

    .line 845
    :cond_da
    const-string v2, "togglepause"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ea

    const-string v2, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 849
    :cond_ea
    const-string v2, "frombgp"

    invoke-virtual {p3, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFromBGP:Z

    .line 850
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 851
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->pauseRequest()V

    .line 855
    :goto_fb
    iput-boolean v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFromBGP:Z

    goto/16 :goto_3b

    .line 853
    :cond_ff
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->playRequest()V

    goto :goto_fb

    .line 856
    :cond_103
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12c

    .line 857
    const-string v2, "clearQueue"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 858
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->resetQueue()V

    .line 859
    invoke-direct {p0, v8}, Lcom/pantech/app/music/service/MusicPlaybackService;->stop(Z)V

    goto/16 :goto_3b

    .line 860
    :cond_11d
    const-string v2, "appwidgetupdate"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 861
    const-string v2, "com.pantech.app.music.refreshwidget"

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 863
    :cond_12c
    const-string v2, "com.pantech.app.music.servicecommand"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 864
    const-string v2, "reloadpreference"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 865
    invoke-direct {p0, v7}, Lcom/pantech/app/music/service/MusicPlaybackService;->reloadQueue(Z)V

    goto/16 :goto_3b

    .line 867
    :cond_141
    const-string v2, "com.pantech.app.music.musicservicecommand.setting"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 868
    const-string v2, "toggleRating"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_156

    .line 869
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleRating()V

    goto/16 :goto_3b

    .line 870
    :cond_156
    const-string v2, "toggleRepeat"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    .line 871
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleRepeat()V

    goto/16 :goto_3b

    .line 872
    :cond_163
    const-string v2, "toggleShuffle"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 873
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleShuffle()V

    goto/16 :goto_3b

    .line 875
    :cond_170
    const-string v2, "com.pantech.app.music.playstatusrequest"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17f

    .line 876
    const-string v2, "com.pantech.app.music.playstatusresponse"

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 879
    :cond_17f
    const-string v2, "com.pantech.app.oneplayer.action"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 884
    sget-object v2, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->show(Landroid/content/Context;Lcom/pantech/app/music/service/MusicPlaybackService;)V

    goto/16 :goto_3b

    .line 888
    :cond_192
    const-string v2, "com.pantech.app.oneplayer.action.exit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a1

    .line 893
    sget-object v2, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    goto/16 :goto_3b

    .line 896
    :cond_1a1
    const-string v2, "com.pantech.app.music.musicservicecommand.stopservice"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 897
    const-string v2, "MusicPlaybackService"

    const-string v3, "STOPSERVICE_ACTION "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->gotoIdleState()V

    .line 899
    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->stopSelf(I)V

    goto/16 :goto_3b
.end method

.method private handleMessageForAvrcp(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1843
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 1855
    :goto_5
    return-void

    .line 1845
    :pswitch_6
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setBrowsedPlayer()V

    goto :goto_5

    .line 1848
    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->playItem(IJ)V

    goto :goto_5

    .line 1851
    :pswitch_18
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getNowPlayingEntries()V

    goto :goto_5

    .line 1843
    :pswitch_data_1c
    .packed-switch 0x3e9
        :pswitch_6
        :pswitch_a
        :pswitch_18
    .end packed-switch
.end method

.method private handleMessageForDelayedStop(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 576
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessageForDelayedStop()  mServiceInUse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceInUse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPausedByTransientLossOfFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_49

    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-nez v0, :cond_49

    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceInUse:Z

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_49

    sget-object v0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 580
    :cond_49
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_52

    .line 581
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->gotoIdleState()V

    .line 583
    :cond_52
    const-string v0, "MusicPlaybackService"

    const-string v1, "Music service will keep alive!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_59
    return-void

    .line 586
    :cond_5a
    const-string v0, "MusicPlaybackService"

    const-string v1, "stopSelf()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->stopSelf(I)V

    goto :goto_59
.end method

.method private handleMessageForMediaPlayer(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3d4ccccd    # 0.05f

    const/16 v4, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 381
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22c

    .line 533
    :cond_e
    :goto_e
    :pswitch_e
    return-void

    .line 383
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAudioManager.getMode():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_41

    .line 385
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeMessages(I)V

    .line 386
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_e

    .line 388
    :cond_41
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    .line 389
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    .line 390
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    goto :goto_e

    .line 395
    :pswitch_4f
    const-string v0, "MusicPlaybackService"

    const-string v1, "SERVER_DIED:"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->isMounted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 398
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_66

    .line 399
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJ)V

    goto :goto_e

    .line 405
    :cond_66
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    goto :goto_e

    .line 409
    :pswitch_6a
    const-string v0, "MusicPlaybackService"

    const-string v1, "TRACK_ENDED:"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-string v1, "track_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mBlockingNextRequestOnCompletionForAWhile:Z

    if-eqz v0, :cond_87

    .line 414
    const-string v0, "MusicPlaybackService"

    const-string v1, "->blocking play request with next item after completion for a while"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 417
    :cond_87
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getRepeatMode()I

    move-result v0

    if-ne v0, v2, :cond_9b

    .line 418
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mYouMayUpdatePlayCount:Z

    .line 419
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    .line 420
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    goto/16 :goto_e

    .line 422
    :cond_9b
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJ)V

    goto/16 :goto_e

    .line 427
    :pswitch_a2
    const-string v0, "MusicPlaybackService"

    const-string v1, "RELEASE_WAKELOCK:"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_e

    .line 432
    :pswitch_b0
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    sub-float/2addr v0, v5

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    .line 433
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_cf

    .line 434
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 438
    :goto_c6
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    goto/16 :goto_e

    .line 436
    :cond_cf
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    goto :goto_c6

    .line 442
    :pswitch_d5
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    add-float/2addr v0, v5

    iput v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    .line 443
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_10b

    .line 444
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 448
    :goto_e8
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " FADE_UP : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    goto/16 :goto_e

    .line 446
    :cond_10b
    iput v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    goto :goto_e8

    .line 454
    :pswitch_10e
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_256

    .line 499
    :pswitch_113
    const-string v0, "MusicPlaybackService"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 456
    :pswitch_11c
    const-string v0, "MusicPlaybackService"

    const-string v1, "-->AudioFocus: AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 458
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 459
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mTurnOffAudioEffect:Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->run()V

    .line 461
    :cond_130
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->pause()V

    goto/16 :goto_e

    .line 464
    :pswitch_135
    const-string v0, "MusicPlaybackService"

    const-string v1, "-->AudioFocus: AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeMessages(I)V

    .line 466
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 469
    :pswitch_14a
    const-string v0, "MusicPlaybackService"

    const-string v1, "-->AudioFocus: AUDIOFOCUS_LOSS_TRANSIENT, getCallState = "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iput v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    .line 471
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    .line 472
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_162

    .line 473
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 475
    :cond_162
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->pause()V

    goto/16 :goto_e

    .line 478
    :pswitch_167
    const-string v0, "MusicPlaybackService"

    const-string v1, "-->AudioFocus: AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audiofocus :: =>isPlaying():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPausedByTransientLossOfFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bShownNotification : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mExtraUIControllers:Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    iget-boolean v2, v2, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->bShownNotification:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1e9

    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_1e9

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mExtraUIControllers:Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    iget-boolean v0, v0, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->bShownNotification:Z

    if-eqz v0, :cond_1e9

    .line 481
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 482
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d4

    .line 483
    const-string v0, "MusicPlaybackService"

    const-string v1, "audiofocus :: mAudioManager.getMode() == AudioManager.MODE_IN_CALL"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v4, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_e

    .line 487
    :cond_1d4
    const-string v0, "MusicPlaybackService"

    const-string v1, "audiofocus :: play() in AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iput v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    .line 489
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCurrentVolume:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setVolume(F)V

    .line 490
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    goto/16 :goto_e

    .line 493
    :cond_1e9
    const-string v0, "MusicPlaybackService"

    const-string v1, "audiofocus :: sendEmptyMessage(FADE_UP)"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 504
    :pswitch_1fe
    const-string v0, "com.pantech.app.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 508
    :pswitch_205
    const-string v0, "com.pantech.app.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 515
    :pswitch_20c
    const-string v0, "MusicPlaybackService"

    const-string v1, "...STREAM_TIMEOUT...."

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 517
    new-instance v0, Lcom/pantech/app/music/service/MusicPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$2;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_e

    .line 381
    nop

    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_a2
        :pswitch_4f
        :pswitch_e
        :pswitch_d5
        :pswitch_b0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_20c
        :pswitch_1fe
        :pswitch_205
        :pswitch_e
    .end packed-switch

    .line 454
    :pswitch_data_256
    .packed-switch -0x3
        :pswitch_135
        :pswitch_14a
        :pswitch_11c
        :pswitch_113
        :pswitch_167
    .end packed-switch
.end method

.method private isPodcast()Z
    .registers 4

    .prologue
    .line 3300
    monitor-enter p0

    .line 3301
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "is_podcast"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_16
    monitor-exit p0

    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_16

    .line 3302
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private isServiceAlive()Z
    .registers 5

    .prologue
    .line 2184
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "ServiceAlive"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2185
    .local v0, "bAlive":Z
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceAlive()  bAlive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    return v0
.end method

.method private isValidCloudSession(I)Z
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 2304
    invoke-static {p1, p0}, Lcom/pantech/app/music/cloud/SessionFactory;->getCloudSessionInstance(ILandroid/content/Context;)Lcom/pantech/app/music/cloud/CloudSession;

    move-result-object v0

    .line 2305
    .local v0, "mCloudSessionControl":Lcom/pantech/app/music/cloud/CloudSession;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/pantech/app/music/cloud/CloudSession;->isValidSession()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private isValidRepeatMode(B)Z
    .registers 4
    .param p1, "value"    # B

    .prologue
    const/4 v0, 0x0

    .line 1772
    if-nez p1, :cond_4

    .line 1779
    :cond_3
    :goto_3
    return v0

    .line 1775
    :cond_4
    add-int/lit8 v1, p1, -0x1

    int-to-byte p1, v1

    .line 1776
    if-ltz p1, :cond_3

    const/4 v1, 0x2

    if-gt p1, v1, :cond_3

    .line 1777
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private isValidShuffleMode(B)Z
    .registers 4
    .param p1, "value"    # B

    .prologue
    const/4 v0, 0x0

    .line 1786
    if-nez p1, :cond_4

    .line 1794
    :cond_3
    :goto_3
    return v0

    .line 1789
    :cond_4
    add-int/lit8 v1, p1, -0x1

    int-to-byte p1, v1

    .line 1791
    if-ltz p1, :cond_3

    const/4 v1, 0x2

    if-gt p1, v1, :cond_3

    .line 1792
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private makeAutoPlayList()Z
    .registers 15

    .prologue
    const/4 v13, 0x5

    const/4 v11, 0x0

    .line 2931
    const-string v4, "MusicPlaybackService"

    const-string v5, "makeAutoPlayList()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2933
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2934
    .local v0, "res":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2938
    .local v6, "c":Landroid/database/Cursor;
    :try_start_e
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "limit"

    const/16 v12, 0x1e

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2939
    .local v1, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v4}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v2

    .line 2940
    .local v2, "projection":[Ljava/lang/String;
    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v5, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>()V

    invoke-static {v4, v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v3

    .line 2941
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "RANDOM()"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2943
    if-eqz v6, :cond_44

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_52

    .line 2944
    :cond_44
    const-string v4, "MusicPlaybackService"

    const-string v5, "=>Query is not working!!!"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_4b} :catch_ac
    .catchall {:try_start_e .. :try_end_4b} :catchall_d1

    .line 2971
    if-eqz v6, :cond_50

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_50
    move v4, v11

    .line 2975
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :cond_51
    :goto_51
    return v4

    .line 2948
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    :cond_52
    :try_start_52
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2949
    .local v9, "len":I
    new-array v10, v9, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 2950
    .local v10, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_59
    if-ge v8, v9, :cond_69

    .line 2951
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 2952
    new-instance v4, Lcom/pantech/app/music/list/MusicItemInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v5}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    aput-object v4, v10, v8

    .line 2950
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 2955
    :cond_69
    const/4 v8, 0x0

    :goto_6a
    array-length v4, v10

    if-ge v8, v4, :cond_b7

    const/4 v4, 0x6

    if-ge v8, v4, :cond_b7

    .line 2956
    if-lt v8, v13, :cond_77

    array-length v4, v10

    add-int/lit8 v4, v4, -0x1

    if-ne v8, v4, :cond_a2

    .line 2957
    :cond_77
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "=>["

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "]:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v12, v10, v8

    invoke-virtual {v12}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    :cond_9f
    :goto_9f
    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 2958
    :cond_a2
    if-ne v8, v13, :cond_9f

    .line 2959
    const-string v4, "MusicPlaybackService"

    const-string v5, "=>..."

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_ab} :catch_ac
    .catchall {:try_start_52 .. :try_end_ab} :catchall_d1

    goto :goto_9f

    .line 2968
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "len":I
    .end local v10    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :catch_ac
    move-exception v7

    .line 2969
    .local v7, "ex":Ljava/lang/RuntimeException;
    :try_start_ad
    invoke-virtual {v7}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_d1

    .line 2971
    if-eqz v6, :cond_b5

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b5
    move v4, v11

    .line 2975
    goto :goto_51

    .line 2962
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "len":I
    .restart local v10    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_b7
    :try_start_b7
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/pantech/app/music/service/MusicQueue;->setQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 2964
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v4

    if-lez v4, :cond_ca

    .line 2965
    const-string v4, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/RuntimeException; {:try_start_b7 .. :try_end_ca} :catch_ac
    .catchall {:try_start_b7 .. :try_end_ca} :catchall_d1

    .line 2967
    :cond_ca
    const/4 v4, 0x1

    .line 2971
    if-eqz v6, :cond_51

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_51

    .line 2971
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "len":I
    .end local v10    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :catchall_d1
    move-exception v4

    if-eqz v6, :cond_d7

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_d7
    throw v4
.end method

.method private notifyAttributeIDs(Ljava/lang/String;)V
    .registers 5
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 1567
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1568
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "Response"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1569
    const-string v1, "Attributes"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->supportedAttributes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1570
    const-string v1, "MusicPlaybackService"

    const-string v2, "notifying attributes"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1572
    return-void
.end method

.method private notifyAttributeValuesText(Ljava/lang/String;I[B)V
    .registers 15
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "attribute"    # I
    .param p3, "valIds"    # [B

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 1620
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1621
    .local v2, "intent":Landroid/content/Intent;
    array-length v4, p3

    new-array v0, v4, [Ljava/lang/String;

    .line 1622
    .local v0, "ValueStrings":[Ljava/lang/String;
    const-string v4, "Response"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1623
    const-string v4, "Attribute"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1624
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attrib is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    const/4 v3, 0x0

    .line 1626
    .local v3, "valueStrs":[Ljava/lang/String;
    packed-switch p2, :pswitch_data_b0

    .line 1643
    :goto_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    array-length v4, p3

    if-ge v1, v4, :cond_a7

    .line 1644
    if-eqz v3, :cond_3d

    aget-byte v4, p3, v1

    array-length v5, v3

    if-lt v4, v5, :cond_a0

    .line 1646
    :cond_3d
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value id is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "which is not supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v4, ""

    aput-object v4, v0, v1

    .line 1643
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1628
    .end local v1    # "i":I
    :pswitch_64
    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/String;

    .end local v3    # "valueStrs":[Ljava/lang/String;
    const-string v4, ""

    aput-object v4, v3, v8

    const v4, 0x7f08018f

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f08018e

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const v4, 0x7f08018d

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 1634
    .restart local v3    # "valueStrs":[Ljava/lang/String;
    goto :goto_32

    .line 1636
    :pswitch_87
    new-array v3, v7, [Ljava/lang/String;

    .end local v3    # "valueStrs":[Ljava/lang/String;
    const-string v4, ""

    aput-object v4, v3, v8

    const v4, 0x7f0801a0

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f0801a1

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .restart local v3    # "valueStrs":[Ljava/lang/String;
    goto :goto_32

    .line 1649
    .restart local v1    # "i":I
    :cond_a0
    aget-byte v4, p3, v1

    aget-object v4, v3, v4

    aput-object v4, v0, v1

    goto :goto_61

    .line 1652
    :cond_a7
    const-string v4, "ValueStrings"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1653
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1654
    return-void

    .line 1626
    :pswitch_data_b0
    .packed-switch 0x2
        :pswitch_64
        :pswitch_87
    .end packed-switch
.end method

.method private notifyAttributesText(Ljava/lang/String;[B)V
    .registers 9
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "attrIds"    # [B

    .prologue
    .line 1600
    array-length v3, p2

    new-array v0, v3, [Ljava/lang/String;

    .line 1601
    .local v0, "AttribStrings":[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "Response"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1603
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    array-length v3, p2

    if-ge v1, v3, :cond_49

    .line 1604
    aget-byte v3, p2, v1

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->AttrStr:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_40

    .line 1605
    const-string v3, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attrib id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "which is not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const-string v3, ""

    aput-object v3, v0, v1

    .line 1603
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1608
    :cond_40
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->AttrStr:[Ljava/lang/String;

    aget-byte v4, p2, v1

    aget-object v3, v3, v4

    aput-object v3, v0, v1

    goto :goto_3d

    .line 1611
    :cond_49
    const-string v3, "AttributeStrings"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1613
    return-void
.end method

.method private notifyChange(Ljava/lang/String;)V
    .registers 8
    .param p1, "what"    # Ljava/lang/String;

    .prologue
    .line 2055
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2057
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0}, Lcom/pantech/app/music/service/MusicCache;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/service/MusicCache;

    move-result-object v1

    .line 2059
    .local v1, "musicCache":Lcom/pantech/app/music/service/MusicCache;
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2060
    const-string v2, "status"

    const-string v3, "play"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2065
    :goto_34
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1e6

    :cond_3c
    :goto_3c
    packed-switch v2, :pswitch_data_208

    .line 2120
    :goto_3f
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mExtraUIControllers:Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    if-eqz v2, :cond_48

    .line 2121
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mExtraUIControllers:Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;->notifyChange(Landroid/content/Intent;)V

    .line 2125
    :cond_48
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    if-eqz v2, :cond_51

    .line 2126
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->notifyChange(Landroid/content/Intent;)V

    .line 2130
    :cond_51
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2131
    return-void

    .line 2062
    :cond_55
    const-string v2, "status"

    const-string v3, "pause"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_34

    .line 2065
    :sswitch_5d
    const-string v3, "com.pantech.app.music.queuechanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x0

    goto :goto_3c

    :sswitch_67
    const-string v3, "com.pantech.app.music.metachanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x1

    goto :goto_3c

    :sswitch_71
    const-string v3, "com.qualcomm.music.playstatusresponse"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x2

    goto :goto_3c

    :sswitch_7b
    const-string v3, "com.pantech.app.music.refreshwidget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x3

    goto :goto_3c

    :sswitch_85
    const-string v3, "com.pantech.app.music.playstatusresponse"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x4

    goto :goto_3c

    :sswitch_8f
    const-string v3, "com.pantech.app.music.infochanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x5

    goto :goto_3c

    :sswitch_99
    const-string v3, "com.pantech.app.music.playstatechanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x6

    goto :goto_3c

    :sswitch_a3
    const-string v3, "com.pantech.app.music.settingchanged"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const/4 v2, 0x7

    goto :goto_3c

    .line 2067
    :pswitch_ad
    const-string v2, "ListSize"

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2068
    const-string v2, "queueposition"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2069
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicCache;->setQueueLength(I)V

    goto/16 :goto_3f

    .line 2073
    :pswitch_cc
    const-string v2, "MusicPlaybackService"

    const-string v3, "notification() - META_CHANGED"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumArtData()Z

    .line 2075
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/service/MusicCache;->setDuration(J)V

    .line 2080
    :pswitch_dd
    const-string v2, "id"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAudioId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2081
    const-string v2, "artist"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2082
    const-string v2, "album"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2083
    const-string v2, "track"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2084
    const-string v2, "playing"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2085
    const-string v2, "position"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2086
    const-string v2, "duration"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2087
    const-string v2, "rating"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getRating()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2088
    const-string v2, "repeat"

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getRepeatMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2089
    const-string v2, "shuffle"

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getShuffleMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2090
    const-string v2, "ListSize"

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2091
    const-string v2, "queueposition"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2092
    const-string v2, "path"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getDataPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 2096
    :pswitch_15e
    const-string v2, "MusicPlaybackService"

    const-string v3, "notification() - INFO_CHANGED"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicCache;->setQueuePosition(I)V

    .line 2099
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/service/MusicQueue;->getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicCache;->setMusicItem(Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto/16 :goto_3f

    .line 2103
    :pswitch_17b
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification() - PLAYSTATE_CHANGED  isPlaying(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceStopTimer()V

    .line 2105
    const-string v2, "playing"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2106
    const-string v2, "position"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2107
    const-string v2, "frombgp"

    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFromBGP:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2108
    const-string v2, "queueposition"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2109
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicCache;->setPlayingState(Z)V

    goto/16 :goto_3f

    .line 2113
    :pswitch_1c5
    const-string v2, "rating"

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getRating()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2114
    const-string v2, "repeat"

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getRepeatMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2115
    const-string v2, "shuffle"

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getShuffleMode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_3f

    .line 2065
    :sswitch_data_1e6
    .sparse-switch
        -0x7c55eeaa -> :sswitch_71
        -0x45b8dc5b -> :sswitch_85
        -0x441f710b -> :sswitch_99
        0x37ee5aa2 -> :sswitch_a3
        0x3fba56c8 -> :sswitch_8f
        0x55b15ce1 -> :sswitch_7b
        0x5f30dc41 -> :sswitch_5d
        0x6a25c591 -> :sswitch_67
    .end sparse-switch

    :pswitch_data_208
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_cc
        :pswitch_dd
        :pswitch_dd
        :pswitch_dd
        :pswitch_15e
        :pswitch_17b
        :pswitch_1c5
    .end packed-switch
.end method

.method private notifyValueIDs(Ljava/lang/String;B)V
    .registers 7
    .param p1, "what"    # Ljava/lang/String;
    .param p2, "attribute"    # B

    .prologue
    .line 1578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1579
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Response"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1580
    const-string v1, "Attribute"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 1581
    packed-switch p2, :pswitch_data_46

    .line 1589
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported attribute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v1, "Values"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->unsupportedList:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1593
    :goto_32
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1594
    return-void

    .line 1583
    :pswitch_36
    const-string v1, "Values"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->supportedRepeatValues:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_32

    .line 1586
    :pswitch_3e
    const-string v1, "Values"

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->supportedShuffleValues:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_32

    .line 1581
    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_36
        :pswitch_3e
    .end packed-switch
.end method

.method private openCurrent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2337
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCurrent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mInfoChangeNotified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mInfoChangeNotified:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    invoke-direct {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->stop(Z)V

    .line 2341
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 2342
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-static {v0, p0}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 2343
    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 2347
    :goto_43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mYouMayUpdatePlayCount:Z

    .line 2348
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    .line 2350
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mInfoChangeNotified:Z

    if-nez v1, :cond_5a

    .line 2351
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mInfoChangeNotified:Z

    .line 2352
    const-string v1, "MusicPlaybackService"

    const-string v2, "openCurrent() INFO_CHANGED"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const-string v1, "com.pantech.app.music.infochanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2355
    :cond_5a
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2356
    return-void

    .line 2345
    :cond_60
    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openLocalFile(Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_43
.end method

.method private openItem(J)Z
    .registers 16
    .param p1, "playItemUid"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 1960
    const/4 v7, 0x0

    .line 1961
    .local v7, "isSuccess":Z
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 1962
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1963
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1965
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v0

    if-nez v0, :cond_20

    .line 1966
    const-string v0, "MusicPlaybackService"

    const-string v2, "Playlist Length = 0"

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 1983
    .end local v7    # "isSuccess":Z
    .local v8, "isSuccess":I
    :goto_1f
    return v8

    .line 1969
    .end local v8    # "isSuccess":I
    .restart local v7    # "isSuccess":Z
    :cond_20
    invoke-direct {p0, v10}, Lcom/pantech/app/music/service/MusicPlaybackService;->stop(Z)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1972
    .local v1, "uri":Landroid/net/Uri;
    new-array v9, v11, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1973
    .local v9, "item":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1974
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_7d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 1975
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {v0, v6, v10}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    aput-object v0, v9, v10

    .line 1976
    invoke-virtual {p0, v9, v11}, Lcom/pantech/app/music/service/MusicPlaybackService;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 1977
    const-string v0, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opened UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const/4 v7, 0x1

    .line 1979
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_7b
    move v8, v7

    .line 1983
    .restart local v8    # "isSuccess":I
    goto :goto_1f

    .line 1981
    .end local v8    # "isSuccess":I
    :cond_7d
    const-string v0, "MusicPlaybackService"

    const-string v2, "Cursor could not be fetched"

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b
.end method

.method private openLocalFile(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 8
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 2359
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2b

    .line 2360
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->skip cause audioid is less than 0 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->stop(Z)V

    .line 2425
    :cond_2a
    :goto_2a
    return-void

    .line 2365
    :cond_2b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_9c

    .line 2366
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_94

    .line 2367
    const-string v2, "MusicPlaybackService"

    const-string v3, "openLocalFile() PERMISSION_GRANTED "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2368
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getCursorForId(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2376
    :goto_46
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2a

    .line 2380
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 2381
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/drm/MusicDrm;->verify(Ljava/lang/String;)V

    .line 2382
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->isROVerifyFailed()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 2383
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    .line 2384
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->isAvailableROUpdate()Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 2385
    const-string v2, "com.pantech.app.music.drmroerror"

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2389
    :goto_72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pantech/app/music/utils/ContentUtils;->getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    goto :goto_2a

    .line 2370
    :cond_94
    const-string v2, "MusicPlaybackService"

    const-string v3, "openLocalFile() PERMISSION_DENIED "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    .line 2374
    :cond_9c
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getCursorForId(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    goto :goto_46

    .line 2387
    :cond_a3
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->showErrorMsg()V

    goto :goto_72

    .line 2412
    :cond_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pantech/app/music/utils/ContentUtils;->getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->open(Ljava/lang/String;)V

    .line 2413
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPodcast()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 2414
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getBookmark()J

    move-result-wide v0

    .line 2417
    .local v0, "bookmark":J
    const-wide/16 v2, 0x1388

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    .line 2421
    .end local v0    # "bookmark":J
    :cond_da
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MultiPlayer;->isOpenFailed()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2422
    const-string v2, "MusicPlaybackService"

    const-string v3, "openLocalFile() isOpenFailed"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->showErrorMsg()V

    goto/16 :goto_2a
.end method

.method private openStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 3
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 2428
    iget v0, p1, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    packed-switch v0, :pswitch_data_20

    .line 2437
    :goto_5
    return-void

    .line 2430
    :pswitch_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isValidCloudSession(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2431
    invoke-virtual {p1, p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAsync(Ljava/lang/String;)V

    goto :goto_5

    .line 2433
    :cond_15
    const v0, 0x7f0801b5

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_5

    .line 2428
    :pswitch_data_20
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method

.method private playItem(IJ)V
    .registers 10
    .param p1, "scope"    # I
    .param p2, "playItemUid"    # J

    .prologue
    .line 1913
    const/4 v1, 0x0

    .line 1915
    .local v1, "success":Z
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playItem uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scope: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_2f

    .line 1917
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-static {v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->access$4500(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Z)V

    .line 1935
    :goto_2e
    return-void

    .line 1919
    :cond_2f
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3c

    .line 1920
    invoke-direct {p0, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openItem(J)Z

    move-result v1

    .line 1934
    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-static {v2, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->access$4500(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Z)V

    goto :goto_2e

    .line 1921
    :cond_3c
    const/4 v2, 0x3

    if-ne p1, v2, :cond_36

    .line 1922
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_40
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_6f

    .line 1923
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_76

    .line 1924
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Now Playing list contains UID at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    const/4 v1, 0x1

    .line 1929
    :cond_6f
    if-eqz v1, :cond_36

    .line 1930
    invoke-direct {p0, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openItem(J)Z

    move-result v1

    goto :goto_36

    .line 1922
    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_40
.end method

.method private registerPlaybackActionListener()V
    .registers 3

    .prologue
    .line 1308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1309
    .local v0, "commandFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1310
    const-string v1, "com.pantech.app.music.servicecommand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1311
    const-string v1, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1312
    const-string v1, "com.pantech.app.music.musicservicecommand.pause"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1313
    const-string v1, "com.pantech.app.music.musicservicecommand.play"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1314
    const-string v1, "com.pantech.app.music.musicservicecommand.next"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1315
    const-string v1, "com.pantech.app.music.musicservicecommand.previous"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1316
    const-string v1, "com.pantech.app.music.rmsaction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    const-string v1, "com.pantech.app.music.changetitle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    const-string v1, "com.pantech.app.music.musicservicecommand.stopself"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1319
    const-string v1, "com.pantech.app.music.musicservicecommand.setting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1320
    const-string v1, "appwidgetupdate"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1321
    const-string v1, "com.pantech.app.music.playstatusrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1322
    const-string v1, "com.pantech.app.music.musicservicecommand.stopservice"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1323
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1325
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1326
    return-void
.end method

.method private reloadQueue(Z)V
    .registers 14
    .param p1, "full"    # Z

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v8, 0x0

    .line 1111
    const-string v1, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reloadQueue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")-start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->reloadMode()V

    .line 1117
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "seekpos"

    const-wide/16 v6, 0x0

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1120
    .local v2, "seekpos":J
    if-eqz p1, :cond_97

    .line 1121
    iput-boolean v8, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1124
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->reloadQueue()V

    .line 1127
    const-wide/16 v4, 0x12c

    :try_start_3b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_a8

    .line 1136
    :goto_3e
    const-string v1, "MusicPlaybackService"

    const-string v4, "reloadQueue ()()() >>> verifyQueue"

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->verifyQueue()V

    .line 1142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    .line 1143
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 1144
    iput-boolean v8, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    .line 1147
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v1, :cond_7d

    .line 1148
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1149
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-lez v1, :cond_c3

    cmp-long v1, v2, v10

    if-lez v1, :cond_c3

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    sub-long/2addr v4, v10

    cmp-long v1, v2, v4

    if-lez v1, :cond_c3

    .line 1150
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    .line 1156
    :cond_7d
    :goto_7d
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8d

    .line 1157
    const v1, 0x7f0800fd

    invoke-direct {p0, v1, v8}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 1161
    :cond_8d
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1162
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1164
    :cond_97
    const-string v1, "MusicPlaybackService"

    const-string v4, "reloadQueue()-stop"

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    return-void

    .line 1128
    :catch_9f
    move-exception v0

    .line 1129
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MusicPlaybackService"

    const-string v4, "thread sleep is interrupted by playRequest"

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 1130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_a8
    move-exception v0

    .line 1131
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 1152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c3
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    goto :goto_7d
.end method

.method private setBrowsedPlayer()V
    .registers 5

    .prologue
    .line 1883
    const-string v1, "MusicPlaybackService"

    const-string v2, "setBrowsedPlayer"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1885
    .local v0, "uri":Landroid/net/Uri;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-static {v1, v0}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->access$4400(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Landroid/net/Uri;)V

    .line 1887
    return-void
.end method

.method private setPlayingState(Z)V
    .registers 3
    .param p1, "bPlaying"    # Z

    .prologue
    .line 2797
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    if-eqz v0, :cond_5

    .line 2801
    :goto_4
    return-void

    .line 2800
    :cond_5
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingStateForce(Z)V

    goto :goto_4
.end method

.method private setPlayingStateForce(Z)V
    .registers 6
    .param p1, "bPlaying"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2779
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayingStateForce()  bPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsSupposedToBePlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mNeedToPlayAfterPrepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    if-eqz p1, :cond_40

    .line 2781
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_3f

    .line 2782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2783
    const-string v0, "com.pantech.app.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2794
    :cond_3f
    :goto_3f
    return-void

    .line 2786
    :cond_40
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_4c

    .line 2787
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    .line 2788
    const-string v0, "com.pantech.app.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3f

    .line 2789
    :cond_4c
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    if-eqz v0, :cond_3f

    .line 2790
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    .line 2791
    const-string v0, "com.pantech.app.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3f
.end method

.method private setServiceAlive(Z)V
    .registers 7
    .param p1, "bAlive"    # Z

    .prologue
    .line 2196
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setServiceAlive()  bAlive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    :try_start_18
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2199
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ServiceAlive"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2200
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_26} :catch_27

    .line 2205
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    :goto_26
    return-void

    .line 2201
    :catch_27
    move-exception v0

    .line 2203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method private setValidAttributes([B)V
    .registers 8
    .param p1, "attribValuePairs"    # [B

    .prologue
    .line 1693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_52

    .line 1694
    aget-byte v0, p1, v1

    .line 1695
    .local v0, "attrib":B
    add-int/lit8 v3, v1, 0x1

    aget-byte v2, p1, v3

    .line 1696
    .local v2, "value":B
    packed-switch v0, :pswitch_data_54

    .line 1708
    const-string v3, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v3, "org.codeaurora.music.playersettingsresponse"

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v5, 0x6

    invoke-virtual {p0, v3, v4, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 1693
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1698
    :pswitch_32
    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->isValidRepeatMode(B)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1699
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getMappingRepeatMode(B)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/service/MusicQueue;->setRepeatMode(I)Z

    goto :goto_2f

    .line 1703
    :pswitch_42
    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->isValidShuffleMode(B)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1704
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getMappingShuffleMode(B)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/service/MusicQueue;->setShuffleMode(I)Z

    goto :goto_2f

    .line 1714
    .end local v0    # "attrib":B
    .end local v2    # "value":B
    :cond_52
    return-void

    .line 1696
    nop

    :pswitch_data_54
    .packed-switch 0x2
        :pswitch_32
        :pswitch_42
    .end packed-switch
.end method

.method private showErrorMsg()V
    .registers 11

    .prologue
    const v9, 0x7f08002a

    const v8, 0x7f08001d

    const v7, 0x7f080098

    const v6, 0x7f080097

    const/4 v5, 0x1

    .line 2478
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    if-eqz v2, :cond_12

    .line 2583
    :cond_11
    :goto_11
    return-void

    .line 2481
    :cond_12
    const-string v2, "MusicPlaybackService"

    const-string v3, "showErrorMsg()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    const/4 v0, 0x0

    .line 2484
    .local v0, "DrmError":I
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 2486
    .local v1, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 2487
    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/ContentUtils;->isDCFFileType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2488
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MultiPlayer;->getErrorDRM()I

    move-result v0

    .line 2489
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->SKT DRM errorcode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2491
    :cond_4e
    const/16 v2, -0x7db

    if-ne v0, v2, :cond_56

    .line 2492
    invoke-direct {p0, v8, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_11

    .line 2493
    :cond_56
    const/16 v2, -0x7dc

    if-ne v0, v2, :cond_61

    .line 2494
    const v2, 0x7f08001f

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_11

    .line 2495
    :cond_61
    const/16 v2, -0x7dd

    if-ne v0, v2, :cond_6c

    .line 2496
    const v2, 0x7f08001e

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_11

    .line 2497
    :cond_6c
    const/16 v2, -0x7de

    if-ne v0, v2, :cond_77

    .line 2498
    const v2, 0x7f080021

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_11

    .line 2499
    :cond_77
    const/16 v2, -0x7df

    if-ne v0, v2, :cond_82

    .line 2500
    const v2, 0x7f080024

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_11

    .line 2501
    :cond_82
    const/16 v2, -0x7e0

    if-ne v0, v2, :cond_8d

    .line 2502
    const v2, 0x7f080020

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_11

    .line 2503
    :cond_8d
    const/16 v2, -0x7e1

    if-ne v0, v2, :cond_99

    .line 2504
    const v2, 0x7f080023

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2505
    :cond_99
    const/16 v2, -0x7e2

    if-ne v0, v2, :cond_a5

    .line 2506
    const v2, 0x7f080022

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2508
    :cond_a5
    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->isNotSupportFileType(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2509
    invoke-direct {p0, v7, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2511
    :cond_b0
    invoke-direct {p0, v6, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2514
    :cond_b5
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v2

    if-eqz v2, :cond_1c1

    .line 2515
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->isROVerifyFailed()Z

    move-result v2

    if-eqz v2, :cond_1b1

    .line 2516
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->isIgnoreErrorPopup()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2520
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isAirPlaneMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 2521
    const v2, 0x7f080016

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 2522
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->resetRoUpdate()V

    goto/16 :goto_11

    .line 2525
    :cond_de
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 2526
    const v2, 0x7f080014

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 2527
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->resetRoUpdate()V

    goto/16 :goto_11

    .line 2530
    :cond_f1
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isNetworkDisable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 2531
    const v2, 0x7f08005e

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 2532
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->resetRoUpdate()V

    goto/16 :goto_11

    .line 2536
    :cond_104
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v2}, Lcom/pantech/app/music/drm/MusicDrm;->getErrorCode()I

    move-result v0

    .line 2537
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->LGU DRM errorcode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    const/4 v2, -0x1

    if-ne v0, v2, :cond_12a

    .line 2539
    invoke-direct {p0, v8, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2540
    :cond_12a
    const/4 v2, -0x2

    if-ne v0, v2, :cond_132

    .line 2541
    invoke-direct {p0, v9, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2542
    :cond_132
    const/4 v2, -0x3

    if-ne v0, v2, :cond_13d

    .line 2543
    const v2, 0x7f080033

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2544
    :cond_13d
    const/4 v2, -0x4

    if-ne v0, v2, :cond_148

    .line 2545
    const v2, 0x7f080037

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2546
    :cond_148
    const/4 v2, -0x5

    if-ne v0, v2, :cond_153

    .line 2547
    const v2, 0x7f080036

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2548
    :cond_153
    const/4 v2, -0x6

    if-ne v0, v2, :cond_15e

    .line 2549
    const v2, 0x7f080035

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2550
    :cond_15e
    const/4 v2, -0x7

    if-ne v0, v2, :cond_169

    .line 2551
    const v2, 0x7f08002b

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2552
    :cond_169
    const/4 v2, -0x8

    if-ne v0, v2, :cond_174

    .line 2553
    const v2, 0x7f08002f

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2554
    :cond_174
    const/16 v2, -0x9

    if-ne v0, v2, :cond_17d

    .line 2555
    invoke-direct {p0, v9, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2556
    :cond_17d
    const/16 v2, -0xa

    if-ne v0, v2, :cond_189

    .line 2557
    const v2, 0x7f08002d

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2558
    :cond_189
    const/16 v2, -0xb

    if-ne v0, v2, :cond_195

    .line 2559
    const v2, 0x7f08002e

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2560
    :cond_195
    const/16 v2, -0xc

    if-ne v0, v2, :cond_1a1

    .line 2561
    const v2, 0x7f08002c

    invoke-direct {p0, v2, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2563
    :cond_1a1
    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->isNotSupportFileType(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1ac

    .line 2564
    invoke-direct {p0, v7, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2566
    :cond_1ac
    invoke-direct {p0, v6, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2570
    :cond_1b1
    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->isNotSupportFileType(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 2571
    invoke-direct {p0, v7, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2573
    :cond_1bc
    invoke-direct {p0, v6, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2577
    :cond_1c1
    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->isNotSupportFileType(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 2578
    invoke-direct {p0, v7, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11

    .line 2580
    :cond_1cc
    invoke-direct {p0, v6, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto/16 :goto_11
.end method

.method private showMsgOnToast(IZ)V
    .registers 4
    .param p1, "tokenID"    # I
    .param p2, "bFilename"    # Z

    .prologue
    .line 2919
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    .line 2921
    return-void
.end method

.method private showMsgOnToast(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2894
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    if-eqz v0, :cond_5

    .line 2912
    :goto_4
    return-void

    .line 2897
    :cond_5
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMsgOnToast("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    new-instance v1, Lcom/pantech/app/music/service/MusicPlaybackService$18;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$18;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method private stop(Z)V
    .registers 5
    .param p1, "remove_status_icon"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2712
    if-eqz p1, :cond_a

    .line 2713
    const-string v0, "MusicPlaybackService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2715
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v0, :cond_1b

    .line 2716
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2717
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->stop()V

    .line 2720
    :cond_1b
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 2721
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_28

    .line 2722
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2723
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 2725
    :cond_28
    if-eqz p1, :cond_31

    .line 2726
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    .line 2727
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->gotoIdleState()V

    .line 2729
    :cond_31
    return-void
.end method

.method private unRegisterPlaybackActionListener()V
    .registers 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1330
    return-void
.end method


# virtual methods
.method public autoPlugPlay()V
    .registers 5

    .prologue
    .line 3512
    const-string v0, "MusicPlaybackService"

    const-string v1, "autoPlugPlay()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3513
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3514
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAutoPlugPlay:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3515
    return-void
.end method

.method public duration()J
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 3319
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-nez v2, :cond_b

    .line 3325
    :cond_a
    :goto_a
    return-wide v0

    .line 3322
    :cond_b
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3323
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->duration()J

    move-result-wide v0

    goto :goto_a
.end method

.method public enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    .registers 7
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "fPlay"    # Z

    .prologue
    .line 2141
    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_6

    .line 2168
    :cond_5
    :goto_5
    return-void

    .line 2144
    :cond_6
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueue(list, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") list length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMusicQueue Length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    const/4 v0, -0x1

    .line 2156
    .local v0, "newpos":I
    if-eqz p2, :cond_42

    .line 2157
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v0

    .line 2159
    :cond_42
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/pantech/app/music/service/MusicQueue;->addQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 2161
    if-ltz v0, :cond_5e

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5e

    .line 2162
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(IZ)V

    .line 2164
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 2165
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 2167
    :cond_5e
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_5
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2028
    const-string v0, "MusicPlaybackService"

    const-string v1, "========================================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const-string v0, "MusicPlaybackService"

    const-string v1, " finalize()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    const-string v0, "MusicPlaybackService"

    const-string v1, "========================================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2042
    return-void
.end method

.method public getAlbumId()J
    .registers 3

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3288
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName(Z)Ljava/lang/String;
    .registers 3
    .param p1, "full"    # Z

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbum(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 3251
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_7

    .line 3259
    :cond_6
    :goto_6
    return-wide v2

    .line 3254
    :cond_7
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "artist_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 3256
    .local v0, "idx":I
    if-ltz v0, :cond_6

    .line 3257
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_6
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName(Z)Ljava/lang/String;
    .registers 3
    .param p1, "full"    # Z

    .prologue
    .line 3276
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .registers 3

    .prologue
    .line 3296
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .registers 2

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->getAudioSessionID()I

    move-result v0

    return v0
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3144
    monitor-enter p0

    .line 3145
    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 3146
    const/4 v0, 0x0

    monitor-exit p0

    .line 3148
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    goto :goto_7

    .line 3149
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getIsBTConnection()Z
    .registers 2

    .prologue
    .line 3129
    invoke-static {}, Lcom/pantech/app/music/service/MultiPlayer;->getIsBTConnection()Z

    move-result v0

    return v0
.end method

.method public getLastConnection()I
    .registers 2

    .prologue
    .line 3132
    invoke-static {}, Lcom/pantech/app/music/service/MultiPlayer;->getLastConnection()I

    move-result v0

    return v0
.end method

.method getMappingRepeatMode(B)I
    .registers 3
    .param p1, "repeatVal"    # B

    .prologue
    const/4 v0, 0x0

    .line 1743
    packed-switch p1, :pswitch_data_a

    .line 1752
    :goto_4
    :pswitch_4
    return v0

    .line 1747
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1750
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 1743
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method getMappingRepeatVal(I)B
    .registers 3
    .param p1, "repeatMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 1717
    packed-switch p1, :pswitch_data_a

    .line 1725
    :goto_4
    :pswitch_4
    return v0

    .line 1721
    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    .line 1723
    :pswitch_7
    const/4 v0, 0x3

    goto :goto_4

    .line 1717
    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method getMappingShuffleMode(B)I
    .registers 3
    .param p1, "shuffleVal"    # B

    .prologue
    const/4 v0, 0x0

    .line 1757
    packed-switch p1, :pswitch_data_8

    .line 1764
    :goto_4
    :pswitch_4
    return v0

    .line 1762
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 1757
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method getMappingShuffleVal(I)B
    .registers 4
    .param p1, "shuffleMode"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1730
    packed-switch p1, :pswitch_data_a

    .line 1738
    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    move v0, v1

    .line 1734
    goto :goto_5

    :pswitch_8
    move v0, v1

    .line 1736
    goto :goto_5

    .line 1730
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMediaMountedCount()I
    .registers 2

    .prologue
    .line 3126
    iget v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3140
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2175
    const-string v0, "buffering"

    .line 2179
    :goto_12
    return-object v0

    .line 2176
    :cond_13
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    if-eqz v0, :cond_1a

    .line 2177
    const-string v0, "playing"

    goto :goto_12

    .line 2179
    :cond_1a
    const-string v0, "paused"

    goto :goto_12
.end method

.method public getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 2

    .prologue
    .line 2288
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 2292
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/service/MusicQueue;->getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 2293
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_15

    .line 2294
    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 2296
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getQueueLength()I
    .registers 2

    .prologue
    .line 2300
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v0

    return v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 3158
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v0

    return v0
.end method

.method public getRating()J
    .registers 3

    .prologue
    .line 3122
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getRating()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 3114
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrackName(Z)Ljava/lang/String;
    .registers 3
    .param p1, "full"    # Z

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMusicPlaying()Z
    .registers 2

    .prologue
    .line 2805
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 2775
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method public makeRequestPermissionDialog(Ljava/lang/String;)Z
    .registers 7
    .param p1, "checkPermissions"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3544
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_38

    .line 3545
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_16

    .line 3546
    const-string v2, "MusicPlaybackService"

    const-string v3, "makeRequestPermissionDialog() PERMISSION_GRANTED "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    :goto_15
    return v1

    .line 3549
    :cond_16
    const-string v1, "MusicPlaybackService"

    const-string v3, "makeRequestPermissionDialog() PERMISSION_DENIED"

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3551
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "RequestPermission"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3552
    const-string v1, "FromService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3553
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3554
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    .line 3556
    goto :goto_15

    .line 3560
    .end local v0    # "i":Landroid/content/Intent;
    :cond_38
    const-string v2, "MusicPlaybackService"

    const-string v3, "makeRequestPermissionDialog() : Build.VERSION_CODES.L \uc774\ud558 "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method public next(Z)Z
    .registers 7
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2869
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2871
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v2

    if-gtz v2, :cond_30

    .line 2872
    const-string v1, "MusicPlaybackService"

    const-string v2, "=>there is no item in queue!!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2890
    :goto_2f
    return v0

    .line 2875
    :cond_30
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2876
    const-string v1, "MusicPlaybackService"

    const-string v2, "=>prev request in call!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    const v1, 0x7f080126

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_2f

    .line 2880
    :cond_48
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->isMounted()Z

    move-result v2

    if-nez v2, :cond_59

    .line 2881
    const v1, 0x7f080099

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_2f

    .line 2885
    :cond_59
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2, p1, v1}, Lcom/pantech/app/music/service/MusicQueue;->moveToNext(ZI)Z

    move-result v2

    if-nez v2, :cond_68

    .line 2886
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 2887
    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    goto :goto_2f

    :cond_68
    move v0, v1

    .line 2890
    goto :goto_2f
.end method

.method public nextRequest(ZJ)V
    .registers 8
    .param p1, "bForce"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 3427
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextRequest()  bForce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJZ)V

    .line 3430
    return-void
.end method

.method public nextRequest(ZJZ)V
    .registers 11
    .param p1, "bForce"    # Z
    .param p2, "delay"    # J
    .param p4, "removeHandlerCallbackAll"    # Z

    .prologue
    const/4 v4, 0x1

    .line 3433
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextRequest()  bForce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removeHandlerCallbackAll: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3436
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3438
    if-ne p4, v4, :cond_3f

    .line 3439
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3441
    :cond_3f
    const/4 v0, 0x0

    .line 3442
    .local v0, "success":Z
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 3443
    const/4 v1, 0x1

    :try_start_44
    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryIfFailed:Z

    .line 3444
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->next(Z)Z

    move-result v0

    .line 3445
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_7b

    .line 3447
    if-eqz v0, :cond_7e

    .line 3448
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openAndPlay()  in nextRequest()  success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    invoke-virtual {p0, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    .line 3451
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_7a

    .line 3452
    const-string v1, "MusicPlaybackService"

    const-string v2, "nextRequest() INFO_CHANGED"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3454
    const-string v1, "com.pantech.app.music.infochanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3462
    :cond_7a
    :goto_7a
    return-void

    .line 3445
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v1

    .line 3457
    :cond_7e
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    if-eqz v1, :cond_7a

    .line 3458
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    .line 3459
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openAndPlay()  in nextRequest()  mNeedToReOpen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3460
    invoke-virtual {p0, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    goto :goto_7a
.end method

.method public notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V
    .registers 12
    .param p1, "what"    # Ljava/lang/String;
    .param p3, "extra"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1660
    .local p2, "attrIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Byte;Ljava/lang/Boolean;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1661
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "Response"

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1662
    const/4 v4, 0x0

    .line 1663
    .local v4, "j":I
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    new-array v5, v6, [B

    .line 1664
    .local v5, "retValarray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_22

    .line 1665
    const/4 v6, 0x0

    aput-byte v6, v5, v1

    .line 1664
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1668
    :cond_22
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 1669
    .local v0, "attribute":Ljava/lang/Byte;
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1670
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v4

    .line 1671
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_60

    .line 1672
    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v7}, Lcom/pantech/app/music/service/MusicQueue;->getRepeatMode()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/pantech/app/music/service/MusicPlaybackService;->getMappingRepeatVal(I)B

    move-result v7

    aput-byte v7, v5, v6

    .line 1676
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x2

    goto :goto_2a

    .line 1673
    :cond_60
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5d

    .line 1674
    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v7}, Lcom/pantech/app/music/service/MusicQueue;->getShuffleMode()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/pantech/app/music/service/MusicPlaybackService;->getMappingShuffleVal(I)B

    move-result v7

    aput-byte v7, v5, v6

    goto :goto_5d

    .line 1678
    :cond_76
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v4

    .line 1679
    add-int/lit8 v6, v4, 0x1

    const/4 v7, -0x1

    aput-byte v7, v5, v6

    .line 1680
    add-int/lit8 v4, v4, 0x2

    goto :goto_2a

    .line 1683
    .end local v0    # "attribute":Ljava/lang/Byte;
    :cond_84
    const-string v6, "AttribValuePairs"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1684
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1685
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1187
    const-string v0, "MusicPlaybackService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceInUse:Z

    .line 1192
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 910
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 911
    const-string v6, "MusicPlaybackService"

    const-string v7, "onCreate() start"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-wide/16 v4, 0x0

    .line 915
    .local v4, "ll":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 916
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance] service onCreate  Startup:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/pantech/app/music/common/Global;->mStartLap:J

    sub-long v8, v4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 920
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerPlaybackActionListener()V

    .line 922
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1ad

    .line 923
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1aa

    .line 924
    const/4 v2, 0x1

    .line 928
    .local v2, "hasPermission":Z
    :goto_3f
    const-string v6, "MusicPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate() hasPermission :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :goto_57
    invoke-static {p0}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->allocInstance(Landroid/content/Context;)V

    .line 939
    new-instance v1, Landroid/os/HandlerThread;

    const-string v6, "Music serivce control thread"

    const/16 v7, 0xa

    invoke-direct {v1, v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 940
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 941
    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    .line 944
    const-string v6, "musicLibraryPreference"

    invoke-virtual {p0, v6, v11}, Lcom/pantech/app/music/service/MusicPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 946
    new-instance v6, Lcom/pantech/app/music/service/MusicQueue;

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {v6, p0, v7}, Lcom/pantech/app/music/service/MusicQueue;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    .line 949
    new-instance v6, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    invoke-direct {v6, p0, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mExtraUIControllers:Lcom/pantech/app/music/service/MusicPlaybackService$ExtraUIControllers;

    .line 952
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isServiceAlive()Z

    move-result v6

    if-eqz v6, :cond_1b0

    .line 953
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->abnormalProcess()V

    .line 959
    :goto_92
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    .line 960
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlResponder:Landroid/content/ComponentName;

    .line 961
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlResponder:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 964
    new-instance v6, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v8, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlResponder:Landroid/content/ComponentName;

    invoke-direct {v6, p0, v7, v8}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/media/AudioManager;Landroid/content/ComponentName;)V

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    .line 965
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->register()V

    .line 968
    .line 969
    .line 971
    .line 972
    .line 974
    .line 975
    .line 979
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 980
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 981
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v11}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 984
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerExternalStorageListener()V

    .line 985
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerSystemChangeListener()V

    .line 986
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerA2dpServiceListener()V

    .line 987
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerMiracastConnectListener()V

    .line 990
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v0, Lcom/pantech/app/music/common/ArrayRunnable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v6}, Lcom/pantech/app/music/common/ArrayRunnable;-><init>(Ljava/util/ArrayList;)V

    .line 998
    .local v0, "ar":Lcom/pantech/app/music/common/ArrayRunnable;
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mTurnOffAudioEffect:Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;

    sget-object v7, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_TURNOFF_AUDIOEFFECT_IDX:Ljava/lang/Integer;

    invoke-virtual {v0, v6, v7}, Lcom/pantech/app/music/common/ArrayRunnable;->add(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    .line 999
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOpenAsyncComplete:Ljava/lang/Runnable;

    sget-object v7, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_OPENCOMPLETE_IDX:Ljava/lang/Integer;

    invoke-virtual {v0, v6, v7}, Lcom/pantech/app/music/common/ArrayRunnable;->add(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    .line 1000
    new-instance v6, Lcom/pantech/app/music/service/MultiPlayer;

    new-instance v7, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;

    invoke-direct {v7, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    invoke-direct {v6, p0, v11, v7, v0}, Lcom/pantech/app/music/service/MultiPlayer;-><init>(Landroid/content/Context;ZLcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;Lcom/pantech/app/music/common/ArrayRunnable;)V

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    .line 1001
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/service/MultiPlayer;->setHandler(Landroid/os/Handler;)V

    .line 1004
    invoke-static {}, Lcom/pantech/app/music/drm/MusicDrm;->getInstance()Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    .line 1005
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v6}, Lcom/pantech/app/music/drm/MusicDrm;->libraryLoad()V

    .line 1009
    if-eqz v2, :cond_153

    .line 1010
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReloadQueue:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    :cond_153
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceStopTimer()V

    .line 1020
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isAccelSensorSupport()Z

    move-result v6

    if-eqz v6, :cond_172

    .line 1021
    new-instance v6, Lcom/pantech/app/music/assist/MusicSensorControl;

    new-instance v7, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;

    invoke-direct {v7, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$SensorListener;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    invoke-direct {v6, p0, v7, p0}, Lcom/pantech/app/music/assist/MusicSensorControl;-><init>(Landroid/content/Context;Lcom/pantech/app/music/assist/MusicSensorControl$OnMusicSensorListener;Lcom/pantech/app/music/assist/MusicSensorControl$MusicPlayingCheck;)V

    iput-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    .line 1022
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-virtual {v6, v10}, Lcom/pantech/app/music/assist/MusicSensorControl;->setShakeEnable(Z)V

    .line 1023
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-virtual {v6, p0}, Lcom/pantech/app/music/assist/MusicSensorControl;->sensorObserverCreate(Landroid/content/Context;)V

    .line 1027
    :cond_172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1028
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance] service onCreate  end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/pantech/app/music/common/Global;->mStartLap:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lap:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1030
    const-string v6, "MusicPlaybackService"

    const-string v7, "onCreate()-2"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void

    .line 926
    .end local v0    # "ar":Lcom/pantech/app/music/common/ArrayRunnable;
    .end local v1    # "handlerThread":Landroid/os/HandlerThread;
    .end local v2    # "hasPermission":Z
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_1aa
    const/4 v2, 0x0

    .restart local v2    # "hasPermission":Z
    goto/16 :goto_3f

    .line 931
    .end local v2    # "hasPermission":Z
    :cond_1ad
    const/4 v2, 0x1

    .restart local v2    # "hasPermission":Z
    goto/16 :goto_57

    .line 955
    .restart local v1    # "handlerThread":Landroid/os/HandlerThread;
    :cond_1b0
    invoke-direct {p0, v10}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceAlive(Z)V

    goto/16 :goto_92
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1035
    const-string v0, "MusicPlaybackService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1039
    const-string v0, "MusicPlaybackService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->release()V

    .line 1044
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    .line 1046
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->access$2600(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;)V

    .line 1048
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1049
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlResponder:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1052
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1053
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1055
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_45

    .line 1056
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1057
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1060
    :cond_45
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->unRegisterPlaybackActionListener()V

    .line 1062
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_53

    .line 1063
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1064
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1066
    :cond_53
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5e

    .line 1067
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1068
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1070
    :cond_5e
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_69

    .line 1071
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1072
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 1075
    :cond_69
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    if-eqz v0, :cond_72

    .line 1076
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAttributePairs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1079
    :cond_72
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMiracastConnectReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_7d

    .line 1080
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMiracastConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1081
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMiracastConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 1083
    :cond_7d
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1084
    invoke-static {}, Lcom/pantech/app/music/albumart/AlbumArtCache;->clearAll()V

    .line 1087
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->libraryUnload()V

    .line 1090
    invoke-static {}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->clearInstance()V

    .line 1092
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    if-eqz v0, :cond_9d

    .line 1093
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/assist/MusicSensorControl;->setShakeEnable(Z)V

    .line 1094
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicSensorControl;->sensorObserverDestory()V

    .line 1095
    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSensorControl:Lcom/pantech/app/music/assist/MusicSensorControl;

    .line 1098
    :cond_9d
    invoke-direct {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceAlive(Z)V

    .line 1099
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1100
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 2019
    const-string v0, "MusicPlaybackService"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    invoke-static {}, Lcom/pantech/app/music/albumart/AlbumArtCache;->clearAll()V

    .line 2023
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 2024
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1197
    const-string v0, "MusicPlaybackService"

    const-string v1, "onRebind()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceInUse:Z

    .line 1201
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1237
    const-string v6, "MusicPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    iput p3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceStartId:I

    .line 1248
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1250
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1251
    .local v0, "action":Ljava/lang/String;
    const-string v6, "command"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1252
    .local v1, "cmd":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_f6

    .line 1253
    const-string v6, "next"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "com.pantech.app.music.musicservicecommand.next"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "previous"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "com.pantech.app.music.musicservicecommand.previous"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "play"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "com.pantech.app.music.musicservicecommand.play"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "togglepause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "com.pantech.app.music.musicservicecommand.togglepause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "appwidgetadd"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    const-string v6, "appwidgetadd"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 1259
    :cond_96
    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1261
    .local v4, "requestPermission":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->makeRequestPermissionDialog(Ljava/lang/String;)Z

    move-result v3

    .line 1269
    .end local v4    # "requestPermission":Ljava/lang/String;
    .local v3, "hasPermission":Z
    :goto_9c
    const-string v6, "MusicPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStartCommand() cmd : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", hasPermission :  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    if-eqz p1, :cond_14a

    if-eqz v3, :cond_14a

    .line 1271
    invoke-direct {p0, v0, v1, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->handleActionCommand(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 1273
    const-string v6, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d5

    const-string v6, "com.pantech.app.music.musicservicecommand.selectplay"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_108

    .line 1274
    :cond_d5
    const-string v6, "com.pantech.app.music.widget.CMDselectedPosition"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1275
    .local v5, "viewIndex":I
    const-string v6, "com.pantech.app.music.widget.CMD"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1277
    .local v2, "cmdwidget":Ljava/lang/String;
    const-string v6, "playposition"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 1278
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/pantech/app/music/service/MusicPlaybackService;->setQueuePosition(IJ)V

    .line 1297
    .end local v2    # "cmdwidget":Ljava/lang/String;
    .end local v5    # "viewIndex":I
    :cond_ef
    :goto_ef
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceStopTimer()V

    .line 1304
    const/4 v6, 0x2

    return v6

    .line 1263
    .end local v3    # "hasPermission":Z
    :cond_f4
    const/4 v3, 0x1

    .restart local v3    # "hasPermission":Z
    goto :goto_9c

    .line 1266
    .end local v3    # "hasPermission":Z
    :cond_f6
    const/4 v3, 0x1

    .restart local v3    # "hasPermission":Z
    goto :goto_9c

    .line 1279
    .restart local v2    # "cmdwidget":Ljava/lang/String;
    .restart local v5    # "viewIndex":I
    :cond_f8
    const-string v6, "toapp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 1280
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/widget/WidgetUtils;->startBaselist(Landroid/content/Context;)V

    goto :goto_ef

    .line 1282
    .end local v2    # "cmdwidget":Ljava/lang/String;
    .end local v5    # "viewIndex":I
    :cond_108
    const-string v6, "headsetplay"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_118

    iget-boolean v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mShutdownInProgress:Z

    if-nez v6, :cond_118

    .line 1283
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->autoPlugPlay()V

    goto :goto_ef

    .line 1284
    :cond_118
    const-string v6, "repeat"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_128

    const-string v6, "com.pantech.app.music.musicservicecommand.repeat"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_131

    .line 1285
    :cond_128
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleRepeat()V

    .line 1286
    const-string v6, "com.pantech.app.music.settingchanged"

    invoke-direct {p0, v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_ef

    .line 1287
    :cond_131
    const-string v6, "shuffle"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_141

    const-string v6, "shuffle"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 1288
    :cond_141
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleShuffle()V

    .line 1289
    const-string v6, "com.pantech.app.music.settingchanged"

    invoke-direct {p0, v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_ef

    .line 1292
    :cond_14a
    const-string v6, "MusicPlaybackService"

    const-string v7, "onStartCommand() PERMISSION_DENIED "

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ef
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 1205
    const-string v0, "MusicPlaybackService"

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mServiceInUse:Z

    .line 1208
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_16

    .line 1216
    :cond_15
    :goto_15
    return v2

    .line 1215
    :cond_16
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceStopTimer()V

    goto :goto_15
.end method

.method public open(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2440
    const-string v0, "MusicPlaybackService"

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

    .line 2441
    if-nez p1, :cond_21

    .line 2463
    :goto_20
    return-void

    .line 2444
    :cond_21
    monitor-enter p0

    .line 2446
    :try_start_22
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_29

    .line 2447
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getCursor(Ljava/lang/String;)V

    .line 2449
    :cond_29
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 2452
    invoke-static {}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->getInstance()Lcom/pantech/app/music/list/module/CommonThreadHandler;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 2453
    invoke-static {}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->getInstance()Lcom/pantech/app/music/list/module/CommonThreadHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->checkAudioMetadata(Ljava/lang/String;J)V

    .line 2456
    :cond_40
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2457
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isOpenFailed()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 2458
    const-string v0, "MusicPlaybackService"

    const-string v1, "open() isOpenFailed"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    .line 2460
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->showErrorMsg()V

    .line 2462
    :cond_5d
    monitor-exit p0

    goto :goto_20

    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_22 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public open([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 10
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 2240
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open(list, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")->new playlist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    monitor-enter p0

    .line 2243
    if-nez p1, :cond_31

    .line 2244
    :try_start_21
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MusicQueue;->resetQueue()V

    .line 2245
    const-string v4, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2246
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->stop(Z)V

    .line 2247
    monitor-exit p0

    .line 2279
    :goto_30
    return-void

    .line 2249
    :cond_31
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "->count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    array-length v2, p1

    .line 2252
    .local v2, "listlength":I
    const/4 v3, 0x1

    .line 2253
    .local v3, "newlist":Z
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_84

    move-result v4

    if-ne v2, v4, :cond_67

    .line 2255
    const/4 v3, 0x0

    .line 2257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_56
    if-ge v1, v2, :cond_67

    .line 2258
    :try_start_58
    aget-object v4, p1, v1

    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5, v1}, Lcom/pantech/app/music/service/MusicQueue;->getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/MusicItemInfo;->equals(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_8a
    .catchall {:try_start_58 .. :try_end_63} :catchall_84

    move-result v4

    if-nez v4, :cond_87

    .line 2259
    const/4 v3, 0x1

    .line 2268
    .end local v1    # "i":I
    :cond_67
    :goto_67
    if-eqz v3, :cond_8f

    .line 2269
    :try_start_69
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v4, p1, p2}, Lcom/pantech/app/music/service/MusicQueue;->setQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 2270
    const-string v4, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2275
    :goto_73
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 2276
    const-string v4, "MusicPlaybackService"

    const-string v5, "openAndPlay()  in open()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    .line 2278
    monitor-exit p0

    goto :goto_30

    .end local v2    # "listlength":I
    .end local v3    # "newlist":Z
    :catchall_84
    move-exception v4

    monitor-exit p0
    :try_end_86
    .catchall {:try_start_69 .. :try_end_86} :catchall_84

    throw v4

    .line 2257
    .restart local v1    # "i":I
    .restart local v2    # "listlength":I
    .restart local v3    # "newlist":Z
    :cond_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_56

    .line 2263
    :catch_8a
    move-exception v0

    .line 2264
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_67

    .line 2272
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":I
    :cond_8f
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v4, p2}, Lcom/pantech/app/music/service/MusicQueue;->setPosition(I)V
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_84

    goto :goto_73
.end method

.method public openAndPlay(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    .line 3532
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openAndPlay()  delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    .line 3535
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOpenAndPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3536
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOpenAndPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3537
    return-void
.end method

.method public openAsync(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2466
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openAsync("

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

    .line 2467
    monitor-enter p0

    .line 2468
    :try_start_1f
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 2469
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setDataSourceAsync(Ljava/lang/String;)V

    .line 2470
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_33

    .line 2472
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mQuietMode:Z

    if-nez v0, :cond_32

    .line 2473
    const-string v0, "com.pantech.app.music.playstatechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2475
    :cond_32
    return-void

    .line 2470
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2741
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-nez v0, :cond_6

    .line 2765
    :goto_5
    return-void

    .line 2743
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeMessages(I)V

    .line 2745
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2746
    const-string v0, "MusicPlaybackService"

    const-string v1, "=>pause request but player is not prepared!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    .line 2748
    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    goto :goto_5

    .line 2751
    :cond_22
    const-string v0, "MusicPlaybackService"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    monitor-enter p0

    .line 2753
    :try_start_2a
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2754
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v0, :cond_39

    .line 2755
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->pause()V

    .line 2758
    :cond_39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_4a

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isAudioEffectPauseRelease()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2759
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mTurnOffAudioEffect:Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;->run()V

    .line 2761
    :cond_4a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingStateForce(Z)V

    .line 2764
    :cond_4e
    monitor-exit p0

    goto :goto_5

    :catchall_50
    move-exception v0

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_2a .. :try_end_52} :catchall_50

    throw v0
.end method

.method public pauseRequest()V
    .registers 3

    .prologue
    .line 3504
    const-string v0, "MusicPlaybackService"

    const-string v1, "pauseRequest()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 3507
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3508
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPauseRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3509
    return-void
.end method

.method public play()V
    .registers 11

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2634
    const-string v3, "MusicPlaybackService"

    const-string v4, "play()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2636
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-nez v3, :cond_17

    .line 2637
    const-string v3, "MusicPlaybackService"

    const-string v4, "=> mPlayer is null!!"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2709
    :cond_16
    :goto_16
    return-void

    .line 2641
    :cond_17
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_16

    .line 2644
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->isPreparing()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2645
    const-string v3, "MusicPlaybackService"

    const-string v4, "=>play request but player is not prepared!!"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    iput-boolean v8, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToPlayAfterPrepared:Z

    goto :goto_16

    .line 2649
    :cond_31
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2650
    const-string v3, "MusicPlaybackService"

    const-string v4, "=>play request in call!!"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2651
    invoke-direct {p0, v9}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    .line 2652
    const v3, 0x7f080126

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_16

    .line 2659
    :cond_4c
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->isMounted()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 2660
    const v3, 0x7f080099

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_16

    .line 2663
    :cond_5d
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v3}, Lcom/pantech/app/music/drm/MusicDrm;->IsNeedToRoUpdate()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2664
    const-string v3, "MusicPlaybackService"

    const-string v4, "->need to RO Update!!"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 2669
    :cond_6d
    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    if-eqz v3, :cond_7b

    .line 2670
    const-string v3, "MusicPlaybackService"

    const-string v4, "->If it is not open actually, open file here before play"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 2674
    :cond_7b
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_10a

    .line 2675
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_b8

    .line 2676
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5, v8}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    .line 2677
    .local v2, "result":I
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlResponder:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2678
    const-string v4, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=>audiofocus request result: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v2, v8, :cond_db

    const-string v3, "Ok"

    :goto_a8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->register()V

    .line 2684
    .end local v2    # "result":I
    :cond_b8
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v0

    .line 2685
    .local v0, "duration":J
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getRepeatMode()I

    move-result v3

    if-eq v3, v8, :cond_de

    cmp-long v3, v0, v6

    if-lez v3, :cond_de

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v4

    sub-long v6, v0, v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_de

    .line 2686
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v8, v4, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJ)V

    goto/16 :goto_16

    .line 2678
    .end local v0    # "duration":J
    .restart local v2    # "result":I
    :cond_db
    const-string v3, "Fail"

    goto :goto_a8

    .line 2690
    .end local v2    # "result":I
    .restart local v0    # "duration":J
    :cond_de
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->start()V

    .line 2691
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mTurnOnAudioEffect:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 2693
    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mYouMayUpdatePlayCount:Z

    if-eqz v3, :cond_f3

    .line 2694
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->addPlayCount()V

    .line 2695
    iput-boolean v9, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mYouMayUpdatePlayCount:Z

    .line 2700
    :cond_f3
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeMessages(I)V

    .line 2701
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessage(I)Z

    .line 2705
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->isPlaying()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    goto/16 :goto_16

    .line 2707
    .end local v0    # "duration":J
    :cond_10a
    invoke-direct {p0, v9}, Lcom/pantech/app/music/service/MusicPlaybackService;->setPlayingState(Z)V

    goto/16 :goto_16
.end method

.method public playRequest()V
    .registers 3

    .prologue
    .line 3489
    const-string v0, "MusicPlaybackService"

    const-string v1, "playRequest()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3499
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3500
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3501
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v0, :cond_13

    .line 3333
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3334
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v0

    .line 3338
    :goto_12
    return-wide v0

    :cond_13
    const-wide/16 v0, -0x1

    goto :goto_12
.end method

.method public postCheckPlayStatus(Z)Z
    .registers 7
    .param p1, "open"    # Z

    .prologue
    const/4 v2, 0x0

    .line 754
    const-string v3, "MusicPlaybackService"

    const-string v4, "postCheckPlayStatus()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v3

    if-gtz v3, :cond_1c

    .line 758
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->makeAutoPlayList()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 759
    const v3, 0x7f0800ed

    invoke-direct {p0, v3, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 779
    :cond_1c
    if-eqz p1, :cond_6e

    .line 781
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    if-eqz v3, :cond_43

    .line 782
    :cond_2a
    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    if-eqz v3, :cond_30

    .line 783
    iput-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    .line 785
    :cond_30
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicDrm:Lcom/pantech/app/music/drm/MusicDrm;

    invoke-virtual {v3}, Lcom/pantech/app/music/drm/MusicDrm;->isROVerifyFailed()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 810
    :cond_38
    :goto_38
    return v2

    .line 773
    :cond_39
    const v3, 0x7f080138

    invoke-direct {p0, v3, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_38

    .line 794
    :cond_40
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 798
    :cond_43
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 799
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 800
    .local v1, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 803
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 805
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mVerifyQueue:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_38

    .line 810
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_6e
    const/4 v2, 0x1

    goto :goto_38
.end method

.method public prev(Z)Z
    .registers 12
    .param p1, "force"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2831
    const-string v3, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prev("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v3

    if-gtz v3, :cond_32

    .line 2834
    const-string v2, "MusicPlaybackService"

    const-string v3, "=>there is no item in queue!!!"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2859
    :goto_31
    return v1

    .line 2837
    :cond_32
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 2838
    const-string v2, "MusicPlaybackService"

    const-string v3, "=>prev request in call!!"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    const v2, 0x7f080126

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_31

    .line 2842
    :cond_4a
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->isMounted()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 2843
    const v2, 0x7f080099

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_31

    .line 2846
    :cond_5b
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v3, :cond_79

    .line 2847
    if-nez p1, :cond_79

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    cmp-long v3, v4, v6

    if-ltz v3, :cond_79

    .line 2848
    invoke-virtual {p0, v8, v9}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    goto :goto_31

    .line 2852
    :cond_79
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v0

    .line 2853
    .local v0, "prevPos":I
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->moveToPrev()V

    .line 2854
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v1

    if-ne v0, v1, :cond_91

    .line 2855
    invoke-virtual {p0, v8, v9}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    move v1, v2

    .line 2856
    goto :goto_31

    :cond_91
    move v1, v2

    .line 2859
    goto :goto_31
.end method

.method public prevRequest(ZJ)V
    .registers 8
    .param p1, "bForce"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 3465
    const-string v1, "MusicPlaybackService"

    const-string v2, "prevRequest()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3468
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3470
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3472
    const/4 v0, 0x0

    .line 3474
    .local v0, "success":Z
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 3475
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->prev(Z)Z

    move-result v0

    .line 3476
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_52

    .line 3477
    if-eqz v0, :cond_3d

    .line 3478
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openAndPlay()  in prevRequest()  success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    invoke-virtual {p0, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    .line 3481
    :cond_3d
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-lez v1, :cond_51

    if-eqz v0, :cond_51

    .line 3482
    const-string v1, "MusicPlaybackService"

    const-string v2, "prevRequest() INFO_CHANGED"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    const-string v1, "com.pantech.app.music.infochanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3486
    :cond_51
    return-void

    .line 3476
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method public rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 9
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 3226
    const-string v5, "MusicPlaybackService"

    const-string v6, "rearrangeQueue(list)"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3227
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    .line 3228
    .local v0, "audioid":J
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v2

    .line 3230
    .local v2, "newpos":I
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/pantech/app/music/service/MusicQueue;->setQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 3232
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5, v0, v1}, Lcom/pantech/app/music/service/MusicQueue;->findPosById(J)I

    move-result v3

    .line 3233
    .local v3, "pos":I
    if-ltz v3, :cond_38

    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_38

    .line 3234
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5, v3}, Lcom/pantech/app/music/service/MusicQueue;->updatePosition(I)V

    .line 3247
    :cond_32
    :goto_32
    const-string v5, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3248
    return-void

    .line 3236
    :cond_38
    const-string v5, "MusicPlaybackService"

    const-string v6, "->rearrange queue has problem!! you should check it"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v5, v2}, Lcom/pantech/app/music/service/MusicQueue;->updatePosition(I)V

    .line 3238
    const/4 v4, 0x0

    .line 3239
    .local v4, "wasPlaying":Z
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 3240
    const/4 v4, 0x1

    .line 3242
    :cond_4c
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 3243
    if-eqz v4, :cond_32

    .line 3244
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    goto :goto_32
.end method

.method public refreshQueue()V
    .registers 3

    .prologue
    .line 1103
    const-string v0, "MusicPlaybackService"

    const-string v1, "refreshQueue()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->refreshQueue()V

    .line 1106
    const-string v0, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1107
    const-string v0, "com.pantech.app.music.metachanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1108
    return-void
.end method

.method public registerA2dpServiceListener()V
    .registers 3

    .prologue
    .line 1463
    new-instance v1, Lcom/pantech/app/music/service/MusicPlaybackService$16;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$16;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    .line 1551
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1552
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "com.qualcomm.music.playstatusrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1553
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1555
    const-string v1, "org.codeaurora.music.setaddressedplayer"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1556
    const-string v1, "org.codeaurora.music.playersettingsrequest"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1559
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mA2dpReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1560
    return-void
.end method

.method public registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 1339
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1371
    :goto_4
    return-void

    .line 1342
    :cond_5
    new-instance v1, Lcom/pantech/app/music/service/MusicPlaybackService$14;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$14;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 1364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1365
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1366
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1367
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1368
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1369
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1370
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method

.method public registerMiracastConnectListener()V
    .registers 3

    .prologue
    .line 1991
    sget-boolean v1, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_OFFLOAD:Z

    if-eqz v1, :cond_1a

    .line 1992
    new-instance v1, Lcom/pantech/app/music/service/MusicPlaybackService$17;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$17;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMiracastConnectReceiver:Landroid/content/BroadcastReceiver;

    .line 2011
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2012
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.miracast.Audio_Device"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2013
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMiracastConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2015
    .end local v0    # "iFilter":Landroid/content/IntentFilter;
    :cond_1a
    return-void
.end method

.method public registerSystemChangeListener()V
    .registers 4

    .prologue
    .line 1377
    const-string v1, "MusicPlaybackService"

    const-string v2, "registerSystemChangeListener()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_c

    .line 1460
    :goto_b
    return-void

    .line 1381
    :cond_c
    new-instance v1, Lcom/pantech/app/music/service/MusicPlaybackService$15;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$15;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    iput-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1447
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1448
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1449
    const-string v1, "com.pantech.intent.action.PANTECH_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1450
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1451
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1452
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1453
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1454
    const-string v1, "android.mtp.action.MTP_DELETE_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1456
    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_b
.end method

.method public removeControlHandlerCallbacksAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3518
    iget-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    if-eqz v0, :cond_a

    .line 3519
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    .line 3520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mNeedToReOpen:Z

    .line 3522
    :cond_a
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryIfFailed:Z

    .line 3523
    iput v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryCount:I

    .line 3524
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRetryCount = 0  in removeControlHandlerCallbacksAll()  mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    iput-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mInfoChangeNotified:Z

    .line 3526
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mOpenAndPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3527
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayRequest:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3528
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAutoPlugPlay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3529
    return-void
.end method

.method public removeTrack(J)I
    .registers 8
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x1

    .line 3013
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTracks(audioid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/service/MusicQueue;->removeTrack(J)I

    .line 3017
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v1

    if-ne v1, v4, :cond_38

    .line 3018
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    .line 3019
    .local v0, "wasPlaying":Z
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 3020
    if-eqz v0, :cond_38

    .line 3021
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 3024
    .end local v0    # "wasPlaying":Z
    :cond_38
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3025
    return v4
.end method

.method public removeTracks(II)I
    .registers 8
    .param p1, "first"    # I
    .param p2, "last"    # I

    .prologue
    .line 2988
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTracks(index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 2991
    .local v0, "count":I
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2, p1, v0}, Lcom/pantech/app/music/service/MusicQueue;->removeTracks(II)I

    .line 2993
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_47

    .line 2994
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v1

    .line 2995
    .local v1, "wasPlaying":Z
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 2996
    if-eqz v1, :cond_47

    .line 2997
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 3000
    .end local v1    # "wasPlaying":Z
    :cond_47
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_56

    .line 3001
    const-string v2, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3003
    :cond_56
    return v0
.end method

.method public removeTracks([J)I
    .registers 5
    .param p1, "list"    # [J

    .prologue
    .line 3029
    const-string v1, "MusicPlaybackService"

    const-string v2, "removeTracks(list)"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/service/MusicQueue;->removeTrack([J)I

    .line 3033
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    .line 3034
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    .line 3035
    .local v0, "wasPlaying":Z
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 3036
    if-eqz v0, :cond_22

    .line 3037
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 3040
    .end local v0    # "wasPlaying":Z
    :cond_22
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_31

    .line 3041
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3043
    :cond_31
    const/4 v1, 0x1

    return v1
.end method

.method public retryRequest()V
    .registers 5

    .prologue
    .line 3415
    const/4 v0, 0x0

    .line 3417
    .local v0, "success":Z
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 3418
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->next(Z)Z

    move-result v0

    .line 3419
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_19

    .line 3420
    if-eqz v0, :cond_18

    .line 3421
    const-string v1, "MusicPlaybackService"

    const-string v2, "openAndPlay()  in retryRequest()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3422
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    .line 3424
    :cond_18
    return-void

    .line 3419
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public seek(J)J
    .registers 14
    .param p1, "pos"    # J

    .prologue
    const-wide/16 v8, 0x1f4

    const-wide/16 v2, 0x0

    .line 3347
    iget-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mReadyToOpen:Z

    if-eqz v4, :cond_a

    move-wide v0, v2

    .line 3367
    :goto_9
    return-wide v0

    .line 3350
    :cond_a
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seek("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    const-wide/16 v0, -0x1

    .line 3352
    .local v0, "seekpos":J
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    if-eqz v4, :cond_6b

    .line 3353
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 3354
    cmp-long v4, p1, v2

    if-gez v4, :cond_3c

    const-wide/16 p1, 0x0

    .line 3355
    :cond_3c
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_48

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide p1

    .line 3358
    :cond_48
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_65

    cmp-long v4, p1, v8

    if-lez v4, :cond_65

    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    sub-long/2addr v4, v8

    cmp-long v4, p1, v4

    if-lez v4, :cond_65

    .line 3359
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJ)V

    move-wide v0, v2

    .line 3360
    goto :goto_9

    .line 3362
    :cond_65
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPlayer:Lcom/pantech/app/music/service/MultiPlayer;

    invoke-virtual {v2, p1, p2}, Lcom/pantech/app/music/service/MultiPlayer;->seek(J)J

    move-result-wide v0

    .line 3365
    :cond_6b
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seek() seekpos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlClientCompat:Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->access$4700(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;)V

    goto/16 :goto_9
.end method

.method public setCurrentQueuePosition(IJ)V
    .registers 8
    .param p1, "pos"    # I
    .param p2, "delay"    # J

    .prologue
    .line 3196
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentQueuePosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMusicQueue.getPos() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3200
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v0

    if-ne p1, v0, :cond_44

    .line 3204
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 3223
    :goto_43
    return-void

    .line 3210
    :cond_44
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3213
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/service/MusicQueue;->updatePosition(I)V

    .line 3216
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_5e

    .line 3217
    const-string v0, "MusicPlaybackService"

    const-string v1, "setQueuePosition() INFO_CHANGED"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    const-string v0, "com.pantech.app.music.infochanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3221
    :cond_5e
    const-string v0, "MusicPlaybackService"

    const-string v1, "openAndPlay()  in setCurrentQueuePosition()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    invoke-virtual {p0, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    goto :goto_43
.end method

.method public setFileTagChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "audioID"    # J
    .param p3, "newTitle"    # Ljava/lang/String;
    .param p4, "newAlbum"    # Ljava/lang/String;
    .param p5, "newArtist"    # Ljava/lang/String;

    .prologue
    .line 3375
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFileTagChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3377
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2, p1, p2}, Lcom/pantech/app/music/service/MusicQueue;->getPos(J)I

    move-result v1

    .line 3378
    .local v1, "pos":I
    if-gez v1, :cond_3f

    .line 3400
    :goto_3e
    return-void

    .line 3381
    :cond_3f
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/service/MusicQueue;->getItem(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->clone()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 3382
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v0, p3}, Lcom/pantech/app/music/list/MusicItemInfo;->setTitle(Ljava/lang/String;)V

    .line 3383
    invoke-virtual {v0, p4}, Lcom/pantech/app/music/list/MusicItemInfo;->setAlbum(Ljava/lang/String;)V

    .line 3384
    invoke-virtual {v0, p5}, Lcom/pantech/app/music/list/MusicItemInfo;->setArtist(Ljava/lang/String;)V

    .line 3385
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2, v1, v0}, Lcom/pantech/app/music/service/MusicQueue;->updateTrack(ILcom/pantech/app/music/list/MusicItemInfo;)V

    .line 3388
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_63

    .line 3389
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3390
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 3392
    :cond_63
    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->getCursorForId(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 3395
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v2

    if-ne v1, v2, :cond_76

    .line 3396
    const-string v2, "com.pantech.app.music.metachanged"

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3399
    :cond_76
    const-string v2, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public setMusicButtonReceiver()V
    .registers 3

    .prologue
    .line 3403
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_b

    .line 3404
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mRemoteControlResponder:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 3406
    :cond_b
    return-void
.end method

.method public setQueuePosition(IJ)V
    .registers 8
    .param p1, "pos"    # I
    .param p2, "delay"    # J

    .prologue
    .line 3167
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQueuePosition("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMusicQueue.getPos(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getPos()I

    move-result v0

    if-ne p1, v0, :cond_55

    .line 3170
    const-string v0, "MusicPlaybackService"

    const-string v1, "pos == mMusicQueue.getPos()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3172
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->pause()V

    .line 3193
    :goto_50
    return-void

    .line 3174
    :cond_51
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    goto :goto_50

    .line 3180
    :cond_55
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeControlHandlerCallbacksAll()V

    .line 3183
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/service/MusicQueue;->updatePosition(I)V

    .line 3186
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_6f

    .line 3187
    const-string v0, "MusicPlaybackService"

    const-string v1, "setQueuePosition() INFO_CHANGED"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    const-string v0, "com.pantech.app.music.infochanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3191
    :cond_6f
    const-string v0, "MusicPlaybackService"

    const-string v1, "openAndPlay()  in setQueuePosition()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    invoke-virtual {p0, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    goto :goto_50
.end method

.method public setServiceStopTimer()V
    .registers 5

    .prologue
    .line 2924
    const-string v1, "MusicPlaybackService"

    const-string v2, "setServiceStopTimer()->180sec"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2926
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2927
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mDelayedStopHandler:Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService$DelayedStopHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2928
    return-void
.end method

.method public stopEx()V
    .registers 3

    .prologue
    .line 2732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mPausedByTransientLossOfFocus:Z

    .line 2733
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMediaplayerHandler:Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeMessages(I)V

    .line 2734
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->stop(Z)V

    .line 2735
    return-void
.end method

.method public toggleRating()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 3047
    const-string v2, "MusicPlaybackService"

    const-string v3, "toggleRating()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3050
    const v2, 0x7f080197

    invoke-direct {p0, v2, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 3068
    :goto_1c
    return-void

    .line 3054
    :cond_1d
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicQueue;->getRating()J

    move-result-wide v0

    .line 3055
    .local v0, "rating":J
    cmp-long v2, v0, v6

    if-nez v2, :cond_43

    .line 3056
    invoke-static {}, Lcom/pantech/app/music/list/utility/ListUtil;->getCurrentTimeSec()J

    move-result-wide v0

    .line 3061
    :goto_2b
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v2, v0, v1}, Lcom/pantech/app/music/service/MusicQueue;->setRating(J)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3062
    cmp-long v2, v0, v6

    if-lez v2, :cond_46

    .line 3063
    const v2, 0x7f0800b8

    invoke-direct {p0, v2, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 3067
    :cond_3d
    :goto_3d
    const-string v2, "com.pantech.app.music.settingchanged"

    invoke-direct {p0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto :goto_1c

    .line 3058
    :cond_43
    const-wide/16 v0, 0x0

    goto :goto_2b

    .line 3065
    :cond_46
    const v2, 0x7f0800b7

    invoke-direct {p0, v2, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_3d
.end method

.method public toggleRepeat()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 3090
    const-string v1, "MusicPlaybackService"

    const-string v2, "toggleRepeat()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getRepeatMode()I

    move-result v0

    .line 3093
    .local v0, "repeat":I
    if-nez v0, :cond_2b

    .line 3094
    const/4 v0, 0x2

    .line 3101
    :goto_11
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/service/MusicQueue;->setRepeatMode(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3102
    if-nez v0, :cond_31

    .line 3103
    const v1, 0x7f08018f

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    .line 3110
    :cond_25
    :goto_25
    const-string v1, "com.pantech.app.music.settingchanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3111
    return-void

    .line 3095
    :cond_2b
    if-ne v0, v3, :cond_2f

    .line 3096
    const/4 v0, 0x1

    goto :goto_11

    .line 3098
    :cond_2f
    const/4 v0, 0x0

    goto :goto_11

    .line 3104
    :cond_31
    if-ne v0, v3, :cond_3e

    .line 3105
    const v1, 0x7f08018d

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_25

    .line 3107
    :cond_3e
    const v1, 0x7f08018e

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(Ljava/lang/String;)V

    goto :goto_25
.end method

.method public toggleShuffle()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3071
    const-string v1, "MusicPlaybackService"

    const-string v2, "toggleShuffle()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getShuffleMode()I

    move-result v0

    .line 3074
    .local v0, "shuffle":I
    if-nez v0, :cond_27

    .line 3075
    const/4 v0, 0x1

    .line 3080
    :goto_11
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/service/MusicQueue;->setShuffleMode(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 3081
    if-nez v0, :cond_29

    .line 3082
    const v1, 0x7f0801a0

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 3086
    :cond_21
    :goto_21
    const-string v1, "com.pantech.app.music.settingchanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 3087
    return-void

    .line 3077
    :cond_27
    const/4 v0, 0x0

    goto :goto_11

    .line 3084
    :cond_29
    const v1, 0x7f0801a1

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    goto :goto_21
.end method

.method public verifyQueue()V
    .registers 4

    .prologue
    .line 1168
    const-string v1, "MusicPlaybackService"

    const-string v2, "verifyQueue()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->verifyQueue()V

    .line 1171
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_27

    .line 1172
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    .line 1173
    .local v0, "wasPlaying":Z
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1174
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->openCurrent()V

    .line 1175
    if-eqz v0, :cond_27

    .line 1176
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 1179
    .end local v0    # "wasPlaying":Z
    :cond_27
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMusicQueue:Lcom/pantech/app/music/service/MusicQueue;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->returnVal()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3d

    .line 1180
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-direct {p0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1181
    const v1, 0x7f0800fd

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->showMsgOnToast(IZ)V

    .line 1183
    :cond_3d
    return-void
.end method
