.class public Lcom/pantech/app/music/player/MusicPlaybackActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/list/activity/IListActivity;
.implements Lcom/pantech/app/music/list/activity/ISelectableActivity;
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;,
        Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicInterfaceFunc;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final FEATURE_SEEKBAR_AVOID_LONG_KEY:Z = false

.field public static final KEYCODE_PAN_WHEEL:I = 0x11b

.field public static final MSG_ORIENTATION_CHANGED:I = 0x1

.field private static final MSG_RESUME_AFTER_USERLEAVEHINT:I = 0x28

.field private static final MSG_TOASTPOPUP_NO_TRANSFER:I = 0x23

.field private static final MSG_USERTOUCH_AVAILABLE:I = 0x1e

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MusicPlaybackActivity"

.field private static isHeasetPlugged:Z

.field private static mOrientation4BubbleTip:I


# instance fields
.field private ANIMATION_DURATION:I

.field private ANIMATION_STARTOFFSET:I

.field private DURATION_FAST:I

.field private DURATION_FASTEST:I

.field private DURATION_NORMAL:I

.field private FEATURE_PERFORMANCE_LOG:Z

.field private bStatusRegistered:Z

.field private flagShowBubbleTip:Z

.field private isFinishAnimationWorking:Z

.field private isWheelKeyLongPress:Z

.field mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

.field private mActivityPaused:Z

.field mAddToPlaylistDialog:Lcom/pantech/app/music/list/component/AddToCartDialog;

.field private mAudioMetadataListener:Landroid/content/BroadcastReceiver;

.field private mBtnBubbleTipExit:Landroid/widget/ImageButton;

.field private mBubbleHideAnim:Landroid/view/animation/Animation;

.field private mBubbleTipLayout:Landroid/widget/LinearLayout;

.field private mBubbleTipOnClickListener:Landroid/view/View$OnClickListener;

.field private mBubbleTipOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mDensity:F

.field private mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

.field private mDummyFocus:Landroid/widget/LinearLayout;

.field private mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

.field private final mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

.field private mIsPlayerPanelShown:Z

.field private mLastSeekEventTime:J

.field private mLayoutNoContent:Landroid/widget/LinearLayout;

.field private mLyricsCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

.field private mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

.field private mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

.field private mOrientation:I

.field private mOrientationHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

.field private mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field private mPlayBackFinishListener:Landroid/content/BroadcastReceiver;

.field mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field private mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

.field private mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

.field private mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

.field mPlayerCallType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

.field private mPosOverride:J

.field private mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

.field private mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

.field private mStartLap:J

.field private mStartSeekPos:J

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mUnMountListener:Landroid/content/BroadcastReceiver;

.field private mUserTouchDisable:Z

.field private mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

.field private mVolumeUpdateHandle:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 163
    sput-boolean v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isHeasetPlugged:Z

    .line 164
    sput v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation4BubbleTip:I

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/16 v6, 0x12c

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 165
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    .line 167
    iput-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 173
    iput-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    .line 178
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mIsPlayerPanelShown:Z

    .line 180
    iput-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartSeekPos:J

    .line 181
    iput-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    .line 183
    iput v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation:I

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDensity:F

    .line 185
    iput-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    iput-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    .line 205
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->FEATURE_PERFORMANCE_LOG:Z

    .line 206
    iput-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartLap:J

    .line 207
    iput v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    .line 208
    iput v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_STARTOFFSET:I

    .line 209
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->DURATION_FASTEST:I

    .line 210
    const/16 v0, 0xc8

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->DURATION_FAST:I

    .line 211
    iput v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->DURATION_NORMAL:I

    .line 216
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayBackFinishListener:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$2;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mUnMountListener:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$3;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mAudioMetadataListener:Landroid/content/BroadcastReceiver;

    .line 248
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$4;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLyricsCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    .line 261
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isFinishAnimationWorking:Z

    .line 262
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->bStatusRegistered:Z

    .line 263
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$6;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolumeUpdateHandle:Ljava/lang/Runnable;

    .line 379
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isWheelKeyLongPress:Z

    .line 392
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$7;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$7;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipOnClickListener:Landroid/view/View$OnClickListener;

    .line 401
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$8;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$8;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 414
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientationHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

    .line 4436
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->requestToShowLyrics(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActivityPaused:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isHeasetPlugged:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 150
    sput-boolean p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isHeasetPlugged:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/assist/MusicVolumeControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBtnBubbleTipExit:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleHideAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->flagShowBubbleTip:Z

    return p1
.end method

.method static synthetic access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isFinishAnimationWorking:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolumeUpdateHandle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->handleBubbleTip(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->updateTrackInfo(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    return v0
.end method

.method static synthetic access$3400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->FEATURE_PERFORMANCE_LOG:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartLap:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->DURATION_NORMAL:I

    return v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->DURATION_FAST:I

    return v0
.end method

.method static synthetic access$4300(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->DURATION_FASTEST:I

    return v0
.end method

.method static synthetic access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDensity:F

    return v0
.end method

.method static synthetic access$4600(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startNowPlayingActivity()V

    return-void
.end method

.method static synthetic access$4700(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # J

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->requestToHideSeekbarArea(J)V

    return-void
.end method

.method static synthetic access$4800(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # J

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->requestToShowSeekbarArea(J)V

    return-void
.end method

.method static synthetic access$4900(Lcom/pantech/app/music/player/MusicPlaybackActivity;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # J

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$5000(Lcom/pantech/app/music/player/MusicPlaybackActivity;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 150
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$5100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/assist/MusicEQControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/view/Menu;)Landroid/view/Menu;
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->composeOptionMenu(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/view/MenuItem;)Z
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->processOptionMenu(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->doNext()V

    return-void
.end method

.method static synthetic access$5700(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->doPrev(Z)V

    return-void
.end method

.method static synthetic access$5800(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mUserTouchDisable:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mUserTouchDisable:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->toggleNowPlay()V

    return-void
.end method

.method static synthetic access$6000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->doPauseResume()V

    return-void
.end method

.method static synthetic access$602(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartSeekPos:J

    return-wide p1
.end method

.method static synthetic access$6300(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->updateButtons()V

    return-void
.end method

.method static synthetic access$6500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerStatusListener()V

    return-void
.end method

.method static synthetic access$6600(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->unRegisterStatusListener()V

    return-void
.end method

.method static synthetic access$6700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startPlaybackIfRequest()V

    return-void
.end method

.method static synthetic access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;
    .param p1, "x1"    # J

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    return-object v0
.end method

.method private addToPlayList(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 20
    .param p1, "itemInfo"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 1384
    const-string v2, "MusicPlaybackActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToPlayList("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v16

    .line 1396
    .local v16, "mediaID":J
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getCntsType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_38

    .line 1397
    sget-object v3, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    .line 1398
    .local v3, "uri":Landroid/net/Uri;
    const-string v14, "fileID"

    .line 1401
    .local v14, "fileIDColumn":Ljava/lang/String;
    sget-object v13, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 1410
    .local v13, "addingCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :goto_31
    invoke-virtual/range {p0 .. p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 1434
    :cond_37
    :goto_37
    return-void

    .line 1403
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v13    # "addingCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v14    # "fileIDColumn":Ljava/lang/String;
    :cond_38
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1404
    .restart local v3    # "uri":Landroid/net/Uri;
    const-string v14, "_id"

    .line 1407
    .restart local v14    # "fileIDColumn":Ljava/lang/String;
    sget-object v13, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .restart local v13    # "addingCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    goto :goto_31

    .line 1413
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1415
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_6b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_79

    .line 1416
    :cond_6b
    const v2, 0x7f08013c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    .line 1431
    :goto_73
    if-eqz v6, :cond_37

    .line 1432
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_37

    .line 1418
    :cond_79
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p0

    move-object v5, v13

    invoke-static/range {v4 .. v9}, Lcom/pantech/app/music/list/db/SelectManager;->makeSelectionList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v15

    .line 1419
    .local v15, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v7, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v9, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const/4 v11, 0x0

    const-string v12, ""

    move-object v8, v13

    invoke-direct/range {v7 .. v12}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    .line 1421
    .local v7, "pageInfo":Lcom/pantech/app/music/list/PageInfoType;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    new-instance v4, Lcom/pantech/app/music/player/MusicPlaybackActivity$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$11;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    move-object/from16 v0, p0

    invoke-static {v0, v7, v15, v2, v4}, Lcom/pantech/app/music/list/component/AddToCartDialog;->showAddToCartDialogPlayback(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)Lcom/pantech/app/music/list/component/AddToCartDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mAddToPlaylistDialog:Lcom/pantech/app/music/list/component/AddToCartDialog;

    goto :goto_73
.end method

.method private checkBubbleTip()V
    .registers 4

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "detailcontrollertip"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->flagShowBubbleTip:Z

    .line 721
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkBubbleTip() called with flagShowBubbleTip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->flagShowBubbleTip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->initBubbleLayout()V

    .line 726
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setBubbleTip(I)V

    .line 727
    return-void
.end method

.method private checkLaunchedFromHistory(I)Z
    .registers 4
    .param p1, "flags"    # I

    .prologue
    const/high16 v1, 0x100000

    .line 1250
    and-int v0, p1, v1

    if-ne v0, v1, :cond_f

    .line 1251
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "=>FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const/4 v0, 0x1

    .line 1254
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private composeOptionMenu(Landroid/view/Menu;)Landroid/view/Menu;
    .registers 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v7, 0x7f1001ee

    const/4 v6, 0x0

    .line 1157
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1158
    .local v1, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1160
    .local v0, "inflater":Landroid/view/MenuInflater;
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1162
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getAudioId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_20

    .line 1163
    const v2, 0x7f110010

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1176
    :cond_1f
    :goto_1f
    return-object p1

    .line 1165
    :cond_20
    const v2, 0x7f110011

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1167
    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1168
    const v2, 0x7f1001ef

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1169
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1170
    const v2, 0x7f100207

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1172
    :cond_47
    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->isDrmContent(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1173
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1f
.end method

.method private doNext()V
    .registers 3

    .prologue
    .line 1546
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "doNext()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->next(Z)V

    .line 1548
    return-void
.end method

.method private doPauseResume()V
    .registers 3

    .prologue
    .line 1456
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "doPauseResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    if-eqz v0, :cond_1d

    .line 1458
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1459
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->pause()V

    .line 1463
    :goto_18
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updatePlayButton()V

    .line 1465
    :cond_1d
    return-void

    .line 1461
    :cond_1e
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->play()V

    goto :goto_18
.end method

.method private doPrev(Z)V
    .registers 5
    .param p1, "bForce"    # Z

    .prologue
    .line 1551
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doPrev("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->prev(Z)V

    .line 1553
    return-void
.end method

.method private finishAnimation()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 1640
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishAnimation() called with: mPlayerCallType = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayerCallType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], flagFromLibraryList = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], flagShowNowPlaying = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], mActivityPaused = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActivityPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iget-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isFinishAnimationWorking:Z

    if-eqz v2, :cond_46

    .line 1643
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    .line 1644
    invoke-virtual {p0, v8, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->overridePendingTransition(II)V

    .line 1677
    :goto_45
    return-void

    .line 1648
    :cond_46
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    .line 1650
    .local v1, "total_duration":I
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v2, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideController(J)V

    .line 1651
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v2, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideController(J)V

    .line 1652
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v2, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideMenu(J)V

    .line 1653
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/pantech/app/music/assist/MusicVolumeControl;->hide(JJ)V

    .line 1654
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v2, v6, v7, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideBitrate(JZ)V

    .line 1655
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->finish(J)V

    .line 1657
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isFinishAnimationWorking:Z

    .line 1658
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040021

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1659
    .local v0, "dummy_finish":Landroid/view/animation/Animation;
    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1660
    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$13;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$13;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1676
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDummyFocus:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_45
.end method

.method private finishDownAnimation(Z)V
    .registers 12
    .param p1, "finishAfterAni"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1583
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "finishDownAnimation"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    iget-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isFinishAnimationWorking:Z

    if-eqz v2, :cond_16

    if-eqz p1, :cond_16

    .line 1586
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    .line 1587
    invoke-virtual {p0, v8, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->overridePendingTransition(II)V

    .line 1637
    :goto_15
    return-void

    .line 1591
    :cond_16
    const/4 v1, 0x0

    .line 1596
    .local v1, "startDelay":I
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->finish(J)V

    .line 1597
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->hideAlbumartPager(I)V

    .line 1598
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    int-to-long v4, v1

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    int-to-long v6, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/pantech/app/music/assist/MusicVolumeControl;->hide(JJ)V

    .line 1599
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideController(J)V

    .line 1600
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideMenu(J)V

    .line 1601
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideController(J)V

    .line 1606
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation:I

    if-ne v2, v9, :cond_47

    .line 1607
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showSeekbar()V

    .line 1611
    :cond_47
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideBitrate(JZ)V

    .line 1613
    if-eqz p1, :cond_6f

    .line 1614
    iput-boolean v9, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isFinishAnimationWorking:Z

    .line 1615
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040021

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1616
    .local v0, "dummy_finish":Landroid/view/animation/Animation;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1617
    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$12;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$12;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1633
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDummyFocus:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1636
    .end local v0    # "dummy_finish":Landroid/view/animation/Animation;
    :cond_6f
    iput-boolean v8, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mIsPlayerPanelShown:Z

    goto :goto_15
.end method

.method private handleBubbleTip(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 730
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_17

    .line 731
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getOrientation(Landroid/content/Context;)I

    move-result v0

    .line 732
    .local v0, "orientation":I
    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->onBubbleOrientationChanged(I)V

    .line 733
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientationHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 735
    .end local v0    # "orientation":I
    :cond_17
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 417
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_32

    .line 443
    :cond_5
    :goto_5
    return-void

    .line 419
    :sswitch_6
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->refreshNow()J

    move-result-wide v0

    .line 420
    .local v0, "next":J
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_5

    .line 424
    .end local v0    # "next":J
    :sswitch_e
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "case QUIT"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    goto :goto_5

    .line 429
    :sswitch_19
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mUserTouchDisable:Z

    goto :goto_5

    .line 433
    :sswitch_1d
    const v2, 0x7f0800a7

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto :goto_5

    .line 438
    :sswitch_24
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_5

    .line 439
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->play()V

    goto :goto_5

    .line 417
    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_e
        0x1e -> :sswitch_19
        0x23 -> :sswitch_1d
        0x28 -> :sswitch_24
    .end sparse-switch
.end method

.method private hidePopupDialog()V
    .registers 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    if-eqz v0, :cond_9

    .line 628
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hidePopupMenu()V

    .line 630
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    if-eqz v0, :cond_12

    .line 631
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicOnlineControl;->terminate()V

    .line 633
    :cond_12
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mAddToPlaylistDialog:Lcom/pantech/app/music/list/component/AddToCartDialog;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mAddToPlaylistDialog:Lcom/pantech/app/music/list/component/AddToCartDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 634
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mAddToPlaylistDialog:Lcom/pantech/app/music/list/component/AddToCartDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->dismissAllowingStateLoss()V

    .line 636
    :cond_23
    return-void
.end method

.method private initBubbleLayout()V
    .registers 3

    .prologue
    .line 738
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "initBubbleLayout :"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const v0, 0x7f100176

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    .line 740
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 742
    return-void
.end method

.method private onBubbleOrientationChanged(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 745
    sget v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation4BubbleTip:I

    if-eq v0, p1, :cond_2a

    .line 746
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBubbleOrientationChanged() called with: orientation = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->initBubbleLayout()V

    .line 748
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setBubbleTip(I)V

    .line 749
    sput p1, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation4BubbleTip:I

    .line 751
    :cond_2a
    return-void
.end method

.method private processOptionMenu(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1180
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_46

    .line 1224
    :goto_7
    const/4 v1, 0x0

    :goto_8
    return v1

    .line 1182
    :sswitch_9
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->searchOnYoutube()V

    goto :goto_7

    .line 1186
    :sswitch_d
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->gotoLibraryList()V

    goto :goto_7

    .line 1190
    :sswitch_11
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->searchOnMusicDB()V

    goto :goto_7

    .line 1194
    :sswitch_15
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setAsRingtone(Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_7

    .line 1198
    :sswitch_1b
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->gotoLibraryList()V

    goto :goto_7

    .line 1203
    :sswitch_1f
    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 1204
    .local v0, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlaylistDialog(Landroid/app/FragmentManager;Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_7

    .line 1208
    .end local v0    # "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    :sswitch_2e
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->sendByChooser(J)V

    goto :goto_7

    .line 1212
    :sswitch_38
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->gotoSetting()V

    goto :goto_7

    .line 1216
    :sswitch_3c
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->gotoProperties()V

    .line 1217
    const/4 v1, 0x1

    goto :goto_8

    .line 1220
    :sswitch_41
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->deleteSong()V

    goto :goto_7

    .line 1180
    nop

    :sswitch_data_46
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f1001ee -> :sswitch_2e
        0x7f1001ef -> :sswitch_15
        0x7f1001fb -> :sswitch_11
        0x7f100204 -> :sswitch_1b
        0x7f100205 -> :sswitch_38
        0x7f100206 -> :sswitch_1f
        0x7f100207 -> :sswitch_41
        0x7f100208 -> :sswitch_9
        0x7f100209 -> :sswitch_3c
    .end sparse-switch
.end method

.method private queueNextRefresh(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 1363
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActivityPaused:Z

    if-nez v1, :cond_15

    .line 1364
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1365
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeMessages(I)V

    .line 1366
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1368
    .end local v0    # "msg":Landroid/os/Message;
    :cond_15
    return-void
.end method

.method private refreshNow()J
    .registers 7

    .prologue
    .line 1372
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    if-nez v2, :cond_e

    .line 1373
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "return 500;"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-wide/16 v0, 0x1f4

    .line 1380
    :goto_d
    return-wide v0

    .line 1378
    :cond_e
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->refreshSync()V

    .line 1379
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->position()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setPlaytime(J)J

    move-result-wide v0

    .line 1380
    .local v0, "remaining":J
    goto :goto_d
.end method

.method private registerStatusListener()V
    .registers 4

    .prologue
    .line 1909
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1910
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1911
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1912
    const-string v1, "com.pantech.app.music.infochanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1913
    const-string v1, "com.pantech.app.music.albumartupdated"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1914
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1915
    const-string v1, "com.pantech.app.music.drmroerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1916
    const-string v1, "com.pantech.app.music.settingchanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1917
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1919
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->bStatusRegistered:Z

    .line 1920
    return-void
.end method

.method private registerSystemChangeListener()V
    .registers 3

    .prologue
    .line 1937
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_5

    .line 1972
    :goto_4
    return-void

    .line 1939
    :cond_5
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1966
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1969
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1970
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1971
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method

.method private removeHandlerMsg()V
    .registers 3

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeMessages(I)V

    .line 1469
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeMessages(I)V

    .line 1470
    return-void
.end method

.method private requestToHideSeekbarArea(J)V
    .registers 6
    .param p1, "startOffset"    # J

    .prologue
    .line 1680
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1681
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideTrackInfo(J)V

    .line 1685
    :goto_a
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideRepeatShuffle(J)V

    .line 1686
    return-void

    .line 1683
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hidePlayTime(J)V

    goto :goto_a
.end method

.method private requestToShowLyrics(Z)V
    .registers 6
    .param p1, "bShow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1879
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestToShowLyrics()  bShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPlaybackLyrics: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    if-eqz v0, :cond_36

    .line 1881
    if-eqz p1, :cond_37

    .line 1882
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->requestShow(ZI)V

    .line 1883
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->hideAlbumartPager(I)V

    .line 1889
    :cond_36
    :goto_36
    return-void

    .line 1885
    :cond_37
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-virtual {v0, v3, v3}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->requestShow(ZI)V

    .line 1886
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->showAlbumartPager(I)V

    goto :goto_36
.end method

.method private requestToShowSeekbarArea(J)V
    .registers 6
    .param p1, "startOffset"    # J

    .prologue
    .line 1689
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 1690
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showTrackInfo(J)V

    .line 1694
    :goto_a
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showRepeatShuffle(J)V

    .line 1695
    return-void

    .line 1692
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showPlayTime(J)V

    goto :goto_a
.end method

.method private scanBackward(IJ)V
    .registers 16
    .param p1, "repcnt"    # I
    .param p2, "delta"    # J

    .prologue
    const-wide/16 v4, 0x1388

    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    .line 1473
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    if-nez v2, :cond_f

    .line 1474
    if-gez p1, :cond_e

    .line 1475
    iput-wide v8, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    .line 1504
    :cond_e
    :goto_e
    return-void

    .line 1478
    :cond_f
    if-eqz p1, :cond_14

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1f

    .line 1479
    :cond_14
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->position()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartSeekPos:J

    .line 1480
    iput-wide v10, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    goto :goto_e

    .line 1482
    :cond_1f
    cmp-long v2, p2, v4

    if-gez v2, :cond_4b

    .line 1484
    const-wide/16 v2, 0xa

    mul-long/2addr p2, v2

    .line 1489
    :goto_26
    iget-wide v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartSeekPos:J

    sub-long v0, v2, p2

    .line 1490
    .local v0, "newpos":J
    cmp-long v2, v0, v10

    if-gez v2, :cond_30

    .line 1491
    const-wide/16 v0, 0x0

    .line 1493
    :cond_30
    iget-wide v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    sub-long v2, p2, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3c

    if-gez p1, :cond_43

    .line 1494
    :cond_3c
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v2, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    .line 1495
    iput-wide p2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    .line 1497
    :cond_43
    if-ltz p1, :cond_56

    .line 1498
    iput-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    .line 1502
    :goto_47
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->refreshNow()J

    goto :goto_e

    .line 1487
    .end local v0    # "newpos":J
    :cond_4b
    const-wide/32 v2, 0xc350

    sub-long v4, p2, v4

    const-wide/16 v6, 0x28

    mul-long/2addr v4, v6

    add-long p2, v2, v4

    goto :goto_26

    .line 1500
    .restart local v0    # "newpos":J
    :cond_56
    iput-wide v8, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    goto :goto_47
.end method

.method private scanForward(IJ)V
    .registers 16
    .param p1, "repcnt"    # I
    .param p2, "delta"    # J

    .prologue
    const-wide/16 v8, 0x1388

    const-wide/16 v10, -0x1

    .line 1507
    const-string v4, "MusicPlaybackActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scanForward("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    if-nez v4, :cond_35

    .line 1509
    if-gez p1, :cond_34

    iput-wide v10, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    .line 1543
    :cond_34
    :goto_34
    return-void

    .line 1512
    :cond_35
    if-eqz p1, :cond_3a

    const/4 v4, 0x1

    if-ne p1, v4, :cond_47

    .line 1513
    :cond_3a
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartSeekPos:J

    .line 1514
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    goto :goto_34

    .line 1516
    :cond_47
    cmp-long v4, p2, v8

    if-gez v4, :cond_70

    .line 1518
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 1523
    :goto_4e
    iget-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartSeekPos:J

    add-long v2, v4, p2

    .line 1524
    .local v2, "newpos":J
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->duration()J

    move-result-wide v0

    .line 1525
    .local v0, "duration":J
    cmp-long v4, v2, v0

    if-ltz v4, :cond_7b

    .line 1527
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->resetRepeatButton()V

    .line 1528
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget-object v5, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->getDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setPlaytime(J)J

    .line 1529
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->doNext()V

    goto :goto_34

    .line 1521
    .end local v0    # "duration":J
    .end local v2    # "newpos":J
    :cond_70
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v8

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_4e

    .line 1532
    .restart local v0    # "duration":J
    .restart local v2    # "newpos":J
    :cond_7b
    iget-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-gtz v4, :cond_87

    if-gez p1, :cond_8e

    .line 1533
    :cond_87
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v4, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    .line 1534
    iput-wide p2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLastSeekEventTime:J

    .line 1536
    :cond_8e
    if-ltz p1, :cond_96

    .line 1537
    iput-wide v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    .line 1541
    :goto_92
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->refreshNow()J

    goto :goto_34

    .line 1539
    :cond_96
    iput-wide v10, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPosOverride:J

    goto :goto_92
.end method

.method private searchOnMusicDB()V
    .registers 13

    .prologue
    const v11, 0x7f08009a

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 1730
    const-string v9, "MusicPlaybackActivity"

    const-string v10, "searchOnMusicDB()"

    invoke-static {v9, v10}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    iget-object v9, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p0, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 1783
    :goto_14
    return-void

    .line 1738
    :cond_15
    iget-object v9, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v0, v9, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    .line 1739
    .local v0, "artist":Ljava/lang/String;
    iget-object v9, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 1741
    .local v6, "song":Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/music/utils/PreferenceUtils;->isDisplayAsFilename()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 1742
    invoke-static {v6}, Lcom/pantech/app/music/common/MusicUtils;->getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1745
    :cond_29
    if-eqz v0, :cond_cf

    const-string v9, "<unknown>"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_cf

    move v2, v8

    .line 1746
    .local v2, "knownartist":Z
    :goto_34
    if-eqz v6, :cond_3f

    const-string v9, "<unknown>"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    move v3, v8

    .line 1748
    .local v3, "knownsong":Z
    :cond_3f
    if-eqz v3, :cond_d5

    .line 1749
    if-eqz v2, :cond_d2

    .line 1750
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1751
    .local v5, "query":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1756
    .local v7, "title":Ljava/lang/CharSequence;
    :goto_71
    const-string v4, "audio/*"

    .line 1758
    .local v4, "mime":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f080190

    invoke-virtual {p0, v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1760
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1761
    .local v1, "i":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1762
    const-string v9, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1763
    const-string v9, "query"

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1764
    if-eqz v2, :cond_ac

    .line 1765
    const-string v9, "android.intent.extra.artist"

    invoke-virtual {v1, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    :cond_ac
    const-string v9, "android.intent.extra.title"

    invoke-virtual {v1, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1768
    const-string v9, "android.intent.extra.focus"

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    const-string v9, "extras.searchFromPlayback"

    invoke-virtual {v1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1771
    const-string v8, "extras.searchCntsType"

    iget-object v9, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getCntsType()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1773
    invoke-static {v1, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_14

    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "knownartist":Z
    .end local v3    # "knownsong":Z
    .end local v4    # "mime":Ljava/lang/String;
    .end local v5    # "query":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_cf
    move v2, v3

    .line 1745
    goto/16 :goto_34

    .line 1753
    .restart local v2    # "knownartist":Z
    .restart local v3    # "knownsong":Z
    :cond_d2
    move-object v5, v6

    .line 1754
    .restart local v5    # "query":Ljava/lang/String;
    move-object v7, v6

    .restart local v7    # "title":Ljava/lang/CharSequence;
    goto :goto_71

    .line 1775
    .end local v5    # "query":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/CharSequence;
    :cond_d5
    const-string v8, "MusicPlaybackActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "song:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    if-nez v6, :cond_f4

    .line 1778
    invoke-virtual {p0, v11}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto/16 :goto_14

    .line 1780
    :cond_f4
    invoke-virtual {p0, v11}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto/16 :goto_14
.end method

.method private searchOnYoutube()V
    .registers 3

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1727
    :goto_8
    return-void

    .line 1726
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/assist/MusicOnlineControl;->startOnlineService(Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_8
.end method

.method private sendByChooser(J)V
    .registers 8
    .param p1, "audioID"    # J

    .prologue
    .line 1228
    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1239
    :goto_8
    return-void

    .line 1230
    :cond_9
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1231
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {p0, p1, p2}, Lcom/pantech/app/music/list/db/CursorUtils;->getMineType(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1232
    .local v0, "mimeType":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1233
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1234
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1235
    const-string v3, "exit_on_sent"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1236
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1238
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method private setAsRingtone(Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 8
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 1698
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1720
    :cond_6
    :goto_6
    return-void

    .line 1700
    :cond_7
    const/4 v0, 0x1

    .line 1702
    .local v0, "canWriteSetting":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_4f

    .line 1703
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    .line 1704
    if-nez v0, :cond_4f

    .line 1705
    const v2, 0x7f08010d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "WRITE_SETTINGS"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(Ljava/lang/CharSequence;)V

    .line 1706
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_WRITE_SETTINGS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1708
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1713
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4f
    if-eqz v0, :cond_6

    .line 1714
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->setRingtone(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 1715
    const v2, 0x7f080147

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto :goto_6

    .line 1717
    :cond_62
    const v2, 0x7f08012e

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto :goto_6
.end method

.method private setBubbleTip(I)V
    .registers 10
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, -0x1

    .line 754
    const-string v4, "MusicPlaybackActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBubbleTip() called with: orientation = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    if-nez p1, :cond_94

    .line 758
    const v2, 0x7f03001e

    .line 768
    .local v2, "layoutResID":I
    :goto_24
    iget-boolean v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->flagShowBubbleTip:Z

    if-eqz v4, :cond_a7

    .line 769
    const-string v4, "MusicPlaybackActivity"

    const-string v5, "setBubbleTip: Show Bubble Tip."

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 771
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 773
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 774
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 775
    .local v3, "view":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 776
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    const v4, 0x7f100083

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBtnBubbleTipExit:Landroid/widget/ImageButton;

    .line 779
    const v4, 0x7f100085

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    .line 781
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f04000a

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleHideAnim:Landroid/view/animation/Animation;

    .line 782
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleHideAnim:Landroid/view/animation/Animation;

    new-instance v5, Lcom/pantech/app/music/player/MusicPlaybackActivity$9;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$9;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 801
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBtnBubbleTipExit:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 802
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 803
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 808
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3    # "view":Landroid/view/View;
    :goto_93
    return-void

    .line 759
    .end local v2    # "layoutResID":I
    :cond_94
    const/4 v4, 0x1

    if-ne p1, v4, :cond_9b

    .line 760
    const v2, 0x7f03001f

    .restart local v2    # "layoutResID":I
    goto :goto_24

    .line 761
    .end local v2    # "layoutResID":I
    :cond_9b
    const/4 v4, 0x3

    if-ne p1, v4, :cond_a2

    .line 762
    const v2, 0x7f030020

    .restart local v2    # "layoutResID":I
    goto :goto_24

    .line 764
    .end local v2    # "layoutResID":I
    :cond_a2
    const v2, 0x7f03001e

    .restart local v2    # "layoutResID":I
    goto/16 :goto_24

    .line 805
    :cond_a7
    const-string v4, "MusicPlaybackActivity"

    const-string v5, "setBubbleTip: Hide Bubble Tip."

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_93
.end method

.method private startNowPlayingActivity()V
    .registers 4

    .prologue
    .line 2118
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startNowPlayingActivity mStatusNowPlaying["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isNowPlayingVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isNowPlayingVisible()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2123
    :cond_2c
    return-void
.end method

.method private startPlaybackIfRequest()V
    .registers 19

    .prologue
    .line 1258
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 1259
    .local v9, "intent":Landroid/content/Intent;
    if-nez v9, :cond_7

    .line 1328
    :goto_6
    return-void

    .line 1262
    :cond_7
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 1268
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_87

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_87

    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkLaunchedFromHistory(I)Z

    move-result v2

    if-nez v2, :cond_87

    .line 1269
    const-string v2, "MusicPlaybackActivity"

    const-string v4, "startPlaybackIfRequest()"

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v2, "MusicPlaybackActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "->uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v16

    .line 1273
    .local v16, "scheme":Ljava/lang/String;
    const-string v2, "content"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1274
    const/4 v2, 0x1

    new-array v12, v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1275
    .local v12, "musicItems":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1277
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_78

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 1278
    const/4 v2, 0x0

    new-instance v4, Lcom/pantech/app/music/list/MusicItemInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v8, v5}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    aput-object v4, v12, v2

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    const/4 v4, 0x1

    invoke-virtual {v2, v12, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 1282
    :cond_78
    if-eqz v8, :cond_7d

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1284
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "musicItems":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_7d
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 1311
    .end local v16    # "scheme":Ljava/lang/String;
    :cond_87
    const-string v2, "package_name"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1312
    .local v13, "request":Ljava/lang/String;
    if-eqz v13, :cond_f7

    const-string v2, "com.pantech.app.dlna.DLNA_LINKAGE"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1313
    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/db/MusicQueueDBManager;->restoreDLNAToServiceQueue(Landroid/content/Context;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v11

    .line 1314
    .local v11, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v11, :cond_ed

    .line 1315
    const-string v2, "seek_position"

    const/4 v4, -0x1

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 1316
    .local v17, "seek_pos":I
    const-string v2, "item_position"

    const/4 v4, -0x1

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 1317
    .local v10, "item_pos":I
    const-string v2, "MusicPlaybackActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=>MediaLink play request("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v2, v11, v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->play()V

    .line 1324
    .end local v10    # "item_pos":I
    .end local v17    # "seek_pos":I
    :cond_ed
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 1326
    .end local v11    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_f7
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->refreshNow()J

    move-result-wide v14

    .line 1327
    .local v14, "next":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->queueNextRefresh(J)V

    goto/16 :goto_6
.end method

.method private startUpAnimation()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1556
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mIsPlayerPanelShown:Z

    if-eqz v0, :cond_6

    .line 1580
    :goto_5
    return-void

    .line 1559
    :cond_6
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startupAnimation() called with: mPlayerCallType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayerCallType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], flagFromLibraryList = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], flagShowNowPlaying = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mActivityPaused = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActivityPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpAnimation: mStatusNowPlaying = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isNowPlayingVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    invoke-virtual {p0, v3, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->overridePendingTransition(II)V

    .line 1568
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->startUp(J)V

    .line 1569
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_STARTOFFSET:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showController(J)V

    .line 1570
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_STARTOFFSET:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showController(J)V

    .line 1571
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_STARTOFFSET:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showBasicMenu(J)V

    .line 1572
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_STARTOFFSET:I

    int-to-long v2, v1

    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_DURATION:I

    int-to-long v4, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/pantech/app/music/assist/MusicVolumeControl;->show(JJ)V

    .line 1573
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->ANIMATION_STARTOFFSET:I

    int-to-long v2, v1

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showBitrate(JI)V

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mIsPlayerPanelShown:Z

    goto/16 :goto_5
.end method

.method private toggleNowPlay()V
    .registers 2

    .prologue
    .line 1131
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/IntentUtils;->gotoNowPlaying(Landroid/app/Activity;I)V

    .line 1154
    return-void
.end method

.method private unRegisterStatusListener()V
    .registers 2

    .prologue
    .line 1923
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->bStatusRegistered:Z

    if-eqz v0, :cond_c

    .line 1924
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1925
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->bStatusRegistered:Z

    .line 1927
    :cond_c
    return-void
.end method

.method private unregisterSystemChangeListener()V
    .registers 2

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 1931
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSystemChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1934
    :cond_c
    return-void
.end method

.method private updateButtons()V
    .registers 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updateRepeatButton()V

    .line 1438
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updateShuffleButton()V

    .line 1439
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updatePlayButton()V

    .line 1440
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updateNowPlaying()V

    .line 1441
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->updateRating()V

    .line 1442
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->update()V

    .line 1443
    return-void
.end method

.method private updateNoContentsLayout()V
    .registers 3

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueLength()I

    move-result v0

    if-nez v0, :cond_19

    .line 1448
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLayoutNoContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1449
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLayoutNoContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1453
    :goto_18
    return-void

    .line 1451
    :cond_19
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLayoutNoContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_18
.end method

.method private updateTrackInfo(Z)V
    .registers 6
    .param p1, "checkNoContent"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1335
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTrackInfo()  checkNoContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->isConnnected()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1360
    :goto_21
    return-void

    .line 1339
    :cond_22
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 1342
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v0, :cond_55

    .line 1343
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getCntsType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->setNowplayingCntsType(I)V

    .line 1344
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->updateTagInfo(Ljava/lang/String;Z)V

    .line 1352
    :goto_4a
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->updateTrackInfo()V

    .line 1355
    if-eqz p1, :cond_68

    .line 1356
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->updateNoContentsLayout()V

    goto :goto_21

    .line 1346
    :cond_55
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/list/PageInfoType;->setNowplayingCntsType(I)V

    .line 1347
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->updateTagInfo(Ljava/lang/String;Z)V

    .line 1348
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setPlaytime(J)J

    goto :goto_4a

    .line 1358
    :cond_68
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLayoutNoContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_21
.end method


# virtual methods
.method protected Toast_showPopup(I)V
    .registers 4
    .param p1, "resid"    # I

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 1976
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1979
    :cond_9
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1980
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_20

    .line 1981
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1982
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1984
    :cond_20
    return-void
.end method

.method protected Toast_showPopup(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 1988
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1991
    :cond_9
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    .line 1992
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_20

    .line 1993
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1994
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1996
    :cond_20
    return-void
.end method

.method public checkAndShowHifiAudioControl(Z)Z
    .registers 3
    .param p1, "showToast"    # Z

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    if-eqz v0, :cond_30

    .line 1896
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->getIsHifiAudio(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUseHifiAudio()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getIsBTConnection()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1897
    if-eqz p1, :cond_2e

    .line 1898
    const v0, 0x7f080132

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    .line 1900
    :cond_2e
    const/4 v0, 0x1

    .line 1904
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z
    .registers 11
    .param p1, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const v8, 0x7f08012e

    const/4 v4, 0x0

    .line 2088
    if-nez p1, :cond_7

    .line 2114
    :goto_6
    return v4

    .line 2091
    :cond_7
    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    .line 2092
    .local v2, "oldID":J
    invoke-static {p0, v2, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getMineType(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 2093
    .local v1, "mimeType":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2095
    .local v0, "file":Ljava/io/File;
    invoke-static {p1}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v5

    if-nez v5, :cond_49

    .line 2096
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 2097
    const v5, 0x7f080130

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto :goto_6

    .line 2101
    :cond_2b
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_3c

    .line 2102
    const-string v5, "MusicPlaybackActivity"

    const-string v6, "audio id is negative number."

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto :goto_6

    .line 2108
    :cond_3c
    if-nez v1, :cond_49

    .line 2109
    const-string v5, "MusicPlaybackActivity"

    const-string v6, "mime type is null."

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->Toast_showPopup(I)V

    goto :goto_6

    .line 2114
    :cond_49
    const/4 v4, 0x1

    goto :goto_6
.end method

.method clearLibrary()V
    .registers 3

    .prologue
    .line 1786
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isEntryPointPlayback()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1787
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.music.action.FINISH_LIST_ALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1788
    .local v0, "clearAllAction":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1789
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1791
    .end local v0    # "clearAllAction":Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method deleteSong()V
    .registers 7

    .prologue
    const v5, 0x7f080026

    .line 1818
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1842
    :goto_b
    return-void

    .line 1822
    :cond_c
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    .line 1824
    .local v2, "delAudioID":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    const v4, 0x10306df

    invoke-direct {v1, p0, v4}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1825
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1826
    const v1, 0x7f08015d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1827
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;

    invoke-direct {v1, p0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$14;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1835
    const v1, 0x7f08001a

    new-instance v4, Lcom/pantech/app/music/player/MusicPlaybackActivity$15;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$15;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1841
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    .line 961
    const/4 v0, 0x1

    .line 963
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 1808
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "finish() is called!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 1810
    return-void
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .registers 2

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    if-eqz v0, :cond_b

    .line 2040
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeHelper;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    .line 2041
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 4

    .prologue
    .line 2017
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivity():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    return-object p0
.end method

.method public getCurrentFragment()Landroid/app/Fragment;
    .registers 2

    .prologue
    .line 2056
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFragments()[Landroid/app/Fragment;
    .registers 2

    .prologue
    .line 2061
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/app/Fragment;

    return-object v0
.end method

.method public getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method public getSelectionMenuManager()Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;
    .registers 2

    .prologue
    .line 2046
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeHelper;->getSelectionMenuManager()Lcom/pantech/app/music/list/component/ActionModeSelectCountMenu;

    move-result-object v0

    return-object v0
.end method

.method public getService()Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getReal()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    return-object v0
.end method

.method gotoLibraryList()V
    .registers 3

    .prologue
    .line 1795
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    .line 1801
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/library/activity/ListTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1802
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1803
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 1804
    return-void
.end method

.method gotoProperties()V
    .registers 5

    .prologue
    .line 1845
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkItemIsAvailable(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1857
    :goto_8
    return-void

    .line 1847
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1848
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extras.targetMediaID"

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1856
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method

.method gotoSetting()V
    .registers 3

    .prologue
    .line 1813
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1814
    .local v0, "settingIntent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1815
    return-void
.end method

.method public isCurrentFragment(Landroid/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 2007
    const/4 v0, 0x1

    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 899
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult("

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

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const/4 v2, 0x2

    if-ne p1, v2, :cond_30

    .line 901
    const/4 v2, 0x1

    sput-boolean v2, Lcom/pantech/app/music/common/ModelInfo;->mTABIsChanged:Z

    .line 935
    :cond_2f
    :goto_2f
    return-void

    .line 902
    :cond_30
    const/4 v2, 0x4

    if-ne p1, v2, :cond_48

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, "isSet":Z
    if-eqz p3, :cond_3c

    .line 905
    const-string v2, "isSet"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 907
    :cond_3c
    if-eqz v1, :cond_2f

    .line 908
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    int-to-long v4, p2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    goto :goto_2f

    .line 911
    .end local v1    # "isSet":Z
    :cond_48
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2f

    .line 915
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "onActivityResult()  Global.ACTIVITY_REQUESTCODE_NOWPLAYING_LIST"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    if-eqz p3, :cond_2f

    .line 917
    const-string v2, "musiclist_queue_empty"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 918
    .local v0, "isQueueEmpty":Z
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isQueueEmpty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    if-eqz v0, :cond_2f

    .line 920
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    goto :goto_2f
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 519
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackPressed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isNowPlayingVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finishDownAnimation(Z)V

    .line 530
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 852
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 853
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 862
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeHelper;->stopActionModeIgnoreDestroyCallback()V

    .line 865
    :cond_17
    const v0, 0x7f0300a0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setContentView(I)V

    .line 869
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->initBubbleLayout()V

    .line 870
    sget v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation4BubbleTip:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setBubbleTip(I)V

    .line 872
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->updateTrackInfo(Z)V

    .line 873
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->updateButtons()V

    .line 875
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->refreshNow()J

    .line 877
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "onConfigurationChanged"

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setPage(IZLjava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setBitrateImage()V

    .line 883
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$10;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$10;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 889
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 448
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 449
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 451
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->FEATURE_PERFORMANCE_LOG:Z

    if-eqz v0, :cond_44

    .line 453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartLap:J

    .line 454
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mStartLap:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_44
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setVolumeControlStream(I)V

    .line 461
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    .line 462
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLyricsCallback:Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->registerCallback(Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;)V

    .line 468
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "callerType"

    sget-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->fromOrdinal(I)Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayerCallType:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 471
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const/4 v4, 0x7

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 474
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    .line 477
    new-instance v0, Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/assist/MusicVolumeControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    .line 480
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    .line 481
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    .line 482
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .line 485
    new-instance v0, Lcom/pantech/app/music/assist/MusicEQControl;

    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$EQListener;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/assist/MusicEQControl;-><init>(Landroid/content/Context;Lcom/pantech/app/music/assist/MusicEQControl$OnMusicEQListener;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    .line 488
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-direct {v0, p0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    .line 491
    const v0, 0x7f0300a0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setContentView(I)V

    .line 494
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkBubbleTip()V

    .line 497
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayBackFinishListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.pantech.app.music.action.FINISH_PLAYBACK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mAudioMetadataListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.pantech.app.music.action.AUDIOMETADATACONTROL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerSystemChangeListener()V

    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.music.action.FINISH_WIDGETLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 506
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 507
    .local v6, "iFilter":Landroid/content/IntentFilter;
    const-string v0, "file"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mUnMountListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 511
    new-instance v0, Lcom/pantech/app/music/assist/MusicOnlineControl;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/assist/MusicOnlineControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    .line 514
    invoke-static {p0}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->allocInstance(Landroid/content/Context;)V

    .line 515
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2071
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideController(J)V

    .line 2072
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 940
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 535
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientationHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

    if-eqz v0, :cond_d

    .line 536
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientationHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 539
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    if-eqz v0, :cond_16

    .line 540
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->release()V

    .line 544
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    if-eqz v0, :cond_21

    .line 545
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->release()V

    .line 546
    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    .line 550
    :cond_21
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    if-eqz v0, :cond_2c

    .line 551
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicEQControl;->closeDialogAndclearMusicEQInstance()V

    .line 552
    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    .line 555
    :cond_2c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    if-eqz v0, :cond_35

    .line 556
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->release()V

    .line 559
    :cond_35
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    if-eqz v0, :cond_3e

    .line 560
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->release()V

    .line 563
    :cond_3e
    invoke-static {}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->getInstance()Lcom/pantech/app/music/list/module/CommonThreadHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->deleteCacheUnderSize(Landroid/content/Context;)V

    .line 564
    invoke-static {}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->clearInstance()V

    .line 567
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayBackFinishListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mUnMountListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 569
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mAudioMetadataListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 570
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->unregisterSystemChangeListener()V

    .line 572
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->miniController(J)V

    .line 2079
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2080
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 986
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown() called with: keyCode = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], event = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_be

    .line 1045
    :cond_31
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_35
    :goto_35
    :sswitch_35
    return v1

    .line 989
    :sswitch_36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 992
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 993
    .local v0, "repeatCount":I
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "repeatCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    if-lez v0, :cond_35

    .line 995
    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isWheelKeyLongPress:Z

    goto :goto_35

    .line 1000
    .end local v0    # "repeatCount":I
    :sswitch_5a
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPluscall()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isCallState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1001
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_35

    .line 1003
    :cond_6b
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1004
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setVolumeUp(Z)Z

    move-result v1

    goto :goto_35

    .line 1012
    :sswitch_78
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPluscall()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isCallState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 1013
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_35

    .line 1015
    :cond_89
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1016
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setVolumeDown(Z)Z

    move-result v1

    goto :goto_35

    .line 1023
    :sswitch_96
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v2

    if-ne v2, v1, :cond_a2

    .line 1024
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setSystemVolumeUp()V

    goto :goto_35

    .line 1026
    :cond_a2
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v1, v5}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setVolumeUp(Z)Z

    move-result v1

    goto :goto_35

    .line 1031
    :sswitch_a9
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v2

    if-ne v2, v1, :cond_b5

    .line 1032
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setSystemVolumeDown()V

    goto :goto_35

    .line 1034
    :cond_b5
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v1, v5}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setVolumeDown(Z)Z

    move-result v1

    goto/16 :goto_35

    .line 987
    nop

    :sswitch_data_be
    .sparse-switch
        0x13 -> :sswitch_96
        0x14 -> :sswitch_a9
        0x15 -> :sswitch_35
        0x16 -> :sswitch_35
        0x18 -> :sswitch_5a
        0x19 -> :sswitch_78
        0x42 -> :sswitch_35
        0x52 -> :sswitch_35
        0x11b -> :sswitch_36
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 975
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress() called with: keyCode = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], event = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const/16 v1, 0x11b

    if-ne p1, v1, :cond_30

    .line 977
    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isWheelKeyLongPress:Z

    .line 980
    :goto_2f
    return v0

    :cond_30
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_2f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1051
    const-string v3, "MusicPlaybackActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyUp() called with: keyCode = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], event = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_e2

    .line 1124
    :cond_31
    :goto_31
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_35
    :goto_35
    :sswitch_35
    return v1

    .line 1054
    :sswitch_36
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_31

    .line 1055
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "KeyEvent.KEYCODE_BACK:"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_31

    .line 1057
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_35

    .line 1065
    :sswitch_55
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPluscall()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isCallState(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 1066
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_35

    .line 1068
    :cond_66
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useDefaultMediaVolumeControl()Z

    move-result v2

    if-ne v2, v1, :cond_35

    .line 1070
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    if-eqz v1, :cond_31

    .line 1071
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->update()V

    goto :goto_31

    .line 1079
    :sswitch_76
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->doPauseResume()V

    goto :goto_35

    .line 1083
    :sswitch_7a
    invoke-direct {p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->doPrev(Z)V

    goto :goto_35

    .line 1087
    :sswitch_7e
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->doNext()V

    goto :goto_35

    .line 1099
    :sswitch_82
    iget-boolean v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isWheelKeyLongPress:Z

    if-nez v3, :cond_cd

    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_cd

    .line 1100
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "Go Detail Controller"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_aa

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_aa

    .line 1103
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_aa

    .line 1104
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1108
    :cond_aa
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1109
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "curPosition"

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->position()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1110
    const-string v2, "duration"

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->duration()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1111
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_35

    .line 1114
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_cd
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->isWheelKeyLongPress:Z

    move v1, v2

    .line 1116
    goto/16 :goto_35

    .line 1119
    :sswitch_d2
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isNowPlayingVisible()Z

    move-result v2

    if-nez v2, :cond_35

    .line 1120
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showPopupMenu()V

    goto/16 :goto_35

    .line 1052
    nop

    :sswitch_data_e2
    .sparse-switch
        0x4 -> :sswitch_36
        0x15 -> :sswitch_7a
        0x16 -> :sswitch_7e
        0x18 -> :sswitch_55
        0x19 -> :sswitch_55
        0x3e -> :sswitch_76
        0x42 -> :sswitch_35
        0x52 -> :sswitch_d2
        0x11b -> :sswitch_82
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 968
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onMenuOpened"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 893
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 895
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 952
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onOptionsItemSelected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->processOptionMenu(Landroid/view/MenuItem;)Z

    .line 954
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 672
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 677
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setCtlButton(Z)V

    .line 682
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeMessages(I)V

    .line 684
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackBubbleTipLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    .line 685
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2d

    .line 686
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleTipLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mBubbleHideAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 689
    :cond_2d
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/ActionModeHelper;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 946
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->composeOptionMenu(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p1

    .line 947
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 693
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 694
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    if-eqz v0, :cond_c

    .line 695
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicEQControl;->checkAndChoiceItemIfShowingPopup()V

    .line 697
    :cond_c
    return-void
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 646
    const-string v1, "MusicPlaybackActivity"

    const-string v4, "onResume()"

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 651
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v1, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setCtlButton(Z)V

    .line 654
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    if-eqz v1, :cond_1f

    .line 655
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mEQSetting:Lcom/pantech/app/music/assist/MusicEQControl;

    invoke-virtual {v4}, Lcom/pantech/app/music/assist/MusicEQControl;->isEqualizerOn()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setEQImgSelected(Z)V

    .line 661
    :cond_1f
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->refreshNow()J

    move-result-wide v2

    .line 662
    .local v2, "next":J
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    invoke-virtual {v1, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 663
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    if-eqz v1, :cond_37

    .line 666
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    invoke-virtual {v1}, Lcom/pantech/app/music/assist/MusicOnlineControl;->reLayout()V

    .line 668
    :cond_37
    return-void
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 577
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 579
    invoke-static {p0, v2}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 580
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientationHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;->sendEmptyMessage(I)Z

    .line 583
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->startUpAnimation()V

    .line 585
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActivityPaused:Z

    .line 588
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->bindToService()V

    .line 590
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->clearLibrary()V

    .line 591
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 595
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 598
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientationHandler:Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$OrientationCheckHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 600
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActivityPaused:Z

    .line 602
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_20

    .line 603
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "getChangingConfigurations() != 0"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_20
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->hidePopupDialog()V

    .line 610
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->reset()V

    .line 613
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->removeHandlerMsg()V

    .line 616
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    if-eqz v0, :cond_34

    .line 617
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDrmControl:Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->reset()V

    .line 621
    :cond_34
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mService:Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->unbindFromService()V

    .line 623
    invoke-static {p0, v2}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 624
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 640
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onUserLeaveHint()V

    .line 642
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasFocus"    # Z

    .prologue
    .line 701
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 704
    if-eqz p1, :cond_2d

    .line 705
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    if-eqz v0, :cond_2c

    .line 706
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->update()V

    .line 716
    :cond_2c
    :goto_2c
    return-void

    .line 712
    :cond_2d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    if-eqz v0, :cond_2c

    .line 713
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicVolumeControl;->closeControl()V

    goto :goto_2c
.end method

.method public setContentView(I)V
    .registers 6
    .param p1, "layoutResID"    # I

    .prologue
    const v2, 0x7f100097

    .line 812
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 814
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOrientation:I

    .line 815
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDensity:F

    .line 817
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDummyFocus:Landroid/widget/LinearLayout;

    .line 818
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDummyFocus:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 819
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mDummyFocus:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 821
    const v0, 0x7f10018b

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mLayoutNoContent:Landroid/widget/LinearLayout;

    .line 823
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    if-eqz v0, :cond_4f

    .line 824
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    const v1, 0x7f10016f

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->updateViewInstance(Landroid/view/View;)V

    .line 825
    :cond_4f
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    if-eqz v0, :cond_63

    .line 826
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mVolPanel:Lcom/pantech/app/music/assist/MusicVolumeControl;

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/assist/MusicVolumeControl;->setContentView(Landroid/view/View;)V

    .line 827
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->rePositioning4FullScreen(Landroid/app/Activity;Landroid/view/View;)V

    .line 829
    :cond_63
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    if-eqz v0, :cond_6c

    .line 830
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setContentView()V

    .line 831
    :cond_6c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    if-eqz v0, :cond_75

    .line 832
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayMenu:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setContentView()V

    .line 833
    :cond_75
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    if-eqz v0, :cond_7e

    .line 834
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setContentView()V

    .line 835
    :cond_7e
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    if-eqz v0, :cond_87

    .line 836
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mOnlineControl:Lcom/pantech/app/music/assist/MusicOnlineControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicOnlineControl;->reLayout()V

    .line 837
    :cond_87
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlaybackLyrics:Lcom/pantech/app/music/player/MusicPlaybackLyrics;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackLyrics;->isShow()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 838
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    if-eqz v0, :cond_9d

    .line 839
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->hideAlbumartPager(I)V

    .line 843
    :cond_9d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mMainLook:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isNowPlayingVisible()Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 844
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mSongInfo:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideBitrate(JZ)V

    .line 847
    :cond_b1
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->invalidateOptionsMenu()V

    .line 848
    return-void
.end method

.method public setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V
    .registers 3
    .param p1, "editMode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 2024
    return-void
.end method

.method setMenuLongKeyDisable(Z)V
    .registers 2
    .param p1, "bSet"    # Z

    .prologue
    .line 1861
    return-void
.end method

.method public startActionMode()V
    .registers 3

    .prologue
    .line 2028
    new-instance v0, Lcom/pantech/app/music/list/component/ActionModeHelper;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/component/ActionModeHelper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    .line 2029
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    const v1, 0x7f1000cb

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/pantech/app/music/list/component/ActionModeHelper;->startActionMode(Landroid/view/ActionMode$Callback;Landroid/view/View;)V

    .line 2030
    return-void
.end method

.method public stopActionMode()V
    .registers 2

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/ActionModeHelper;->stopActionMode()V

    .line 2035
    return-void
.end method

.method public updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "nSelectedCount"    # I
    .param p3, "selectState"    # I

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/music/list/component/ActionModeHelper;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    move-result v0

    return v0
.end method
