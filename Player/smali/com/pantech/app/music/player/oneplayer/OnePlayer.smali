.class public Lcom/pantech/app/music/player/oneplayer/OnePlayer;
.super Ljava/lang/Object;
.source "OnePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;,
        Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.pantech.app.oneplayer.action"

.field public static final ACTION_EXIT:Ljava/lang/String; = "com.pantech.app.oneplayer.action.exit"

.field private static final ALWAYSONTOP_SERVICE:Ljava/lang/String; = "alwaysontop"

.field private static final AOT_VIDEO_SERVICE_NAME:Ljava/lang/String; = "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

.field public static final KEYCODE_WHEELKEY:I = 0x11b

.field public static final MSG_EMPTY:I = 0x0

.field public static final MSG_ORIENTATION_REFRESH:I = 0x3

.field public static final MSG_PROGRESS_REFRESH:I = 0x2

.field public static final MSG_UI_UPDATE:I = 0x1

.field private static final ONEPLAYER_EXIT:Ljava/lang/String; = "0"

.field private static final ONEPLAYER_PROPERTIES_KEY:Ljava/lang/String; = "com.pantech.app.oneplayer"

.field private static final ONEPLAYER_SHOW:Ljava/lang/String; = "1"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field private static final TAG:Ljava/lang/String; = "OnePlayer"

.field private static final controlAngle:F = 34.96f

.field private static sInstance:Lcom/pantech/app/music/player/oneplayer/OnePlayer;


# instance fields
.field public final SIZE:I

.field private albumArtExtractorListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

.field private albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

.field private albumartExtractor:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

.field currentPlayMusic:Ljava/lang/Runnable;

.field private flagShowHelpGuide:Z

.field private isBackKeyPressed:Z

.field private isLongPress:Z

.field isPlaying:Z

.field private isServiceRunning:Z

.field private isShow:Z

.field private mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

.field private mArtistView:Landroid/widget/TextView;

.field private mBg_Layout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field mExitBtn:Landroid/widget/ImageButton;

.field mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

.field private mInfoLayout:Landroid/widget/RelativeLayout;

.field private mItemViewArray:[Landroid/widget/RelativeLayout;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

.field private mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

.field private mNoContentLayout:Landroid/widget/LinearLayout;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

.field private mOrientation:I

.field private mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

.field private mOrientationForHelpGuide:I

.field private mOrientationHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlayPauseBtn:Landroid/widget/ImageButton;

.field private mProgressBar:Landroid/widget/SeekBar;

.field private mRotateChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

.field private mSlash:Landroid/widget/ImageView;

.field private mTextDuration:Landroid/widget/TextView;

.field private mTextInfoLayout:Landroid/widget/LinearLayout;

.field private mTextPlaytime:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mWheelViewDefault:Landroid/widget/ImageView;

.field private mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

.field private mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

.field private mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

.field private mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

.field private mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

.field private mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

.field private mWheelViewRipple:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private playPosition:I

.field rPlayMusic:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;-><init>()V

    sput-object v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->sInstance:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0xc

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->SIZE:I

    .line 95
    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isPlaying:Z

    .line 96
    iput-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    .line 99
    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    .line 101
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    .line 102
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;

    .line 104
    new-instance v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .line 111
    iput-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    .line 131
    iput v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    .line 132
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$1;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->rPlayMusic:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$2;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->currentPlayMusic:Ljava/lang/Runnable;

    .line 147
    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isServiceRunning:Z

    .line 151
    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z

    .line 154
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$3;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$4;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumArtExtractorListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    .line 202
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$5;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$5;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

    .line 212
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$6;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$6;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 245
    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isLongPress:Z

    .line 246
    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isBackKeyPressed:Z

    .line 247
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$7;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mRotateChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    .line 290
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$8;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 371
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$9;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 387
    const-string v0, "OnePlayer"

    const-string v1, "create OnePlayer"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method private Toast_showPopup(I)V
    .registers 5
    .param p1, "resid"    # I

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 1475
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1478
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    .line 1479
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_22

    .line 1480
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 1481
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1483
    :cond_22
    return-void
.end method

.method private Toast_showPopup(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "c"    # Ljava/lang/CharSequence;

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 1487
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1490
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    .line 1491
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_22

    .line 1492
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1493
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1495
    :cond_22
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/service/MusicPlaybackService;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientation:I

    return v0
.end method

.method static synthetic access$1002(Lcom/pantech/app/music/player/oneplayer/OnePlayer;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/player/oneplayer/OnePlayer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->reConfigurationOfOnePlayer(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mBg_Layout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;II)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playMusic(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/player/oneplayer/OnePlayer;II)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->noChangePlayMusic(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setUIText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isLongPress:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isLongPress:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/pantech/app/music/player/oneplayer/OnePlayer;ZLandroid/content/Context;)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exitHelpGuide(ZLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPlayPauseBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->doPauseResume()V

    return-void
.end method

.method static synthetic access$500(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    return-object p1
.end method

.method static synthetic access$900(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setColorInfo(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private addItems()V
    .registers 8

    .prologue
    .line 907
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00e9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 909
    .local v0, "diameter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    const/16 v3, 0xc

    if-ge v1, v3, :cond_46

    .line 910
    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mItemViewArray:[Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030023

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    aput-object v3, v4, v1

    .line 911
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mItemViewArray:[Landroid/widget/RelativeLayout;

    aget-object v3, v3, v1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 914
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 915
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mItemViewArray:[Landroid/widget/RelativeLayout;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mItemViewArray:[Landroid/widget/RelativeLayout;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->addView(Landroid/view/View;)V

    .line 909
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 924
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_46
    return-void
.end method

.method private buildAdapter()V
    .registers 7

    .prologue
    .line 974
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 975
    .local v1, "playlist":[Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueLength()I

    move-result v2

    .line 977
    .local v2, "queueLength":I
    if-gez v2, :cond_f

    .line 978
    const/4 v2, 0x0

    .line 981
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 983
    .local v0, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    if-lez v2, :cond_19

    .line 984
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 987
    :cond_19
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->getAdapter()Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    .line 988
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    if-eqz v3, :cond_37

    .line 989
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->clear()V

    .line 990
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 994
    :goto_2f
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setAdapter(Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;)V

    .line 995
    return-void

    .line 992
    :cond_37
    new-instance v3, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const v5, 0x7f030023

    invoke-direct {v3, v4, v5, v0}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    goto :goto_2f
.end method

.method private doPauseResume()V
    .registers 3

    .prologue
    .line 1141
    const-string v0, "OnePlayer"

    const-string v1, "doPauseResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    if-eqz v0, :cond_2f

    .line 1143
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isPlaying:Z

    .line 1145
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isPlaying:Z

    if-eqz v0, :cond_29

    .line 1149
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->pauseRequest()V

    .line 1156
    :goto_1c
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isPlaying:Z

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->updatePlayButton(Z)V

    .line 1160
    :goto_21
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isServiceRunning:Z

    if-nez v0, :cond_28

    .line 1161
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->startMusicPlaybackServiceForPlay()V

    .line 1163
    :cond_28
    return-void

    .line 1154
    :cond_29
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->playRequest()V

    goto :goto_1c

    .line 1158
    :cond_2f
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->startMusicPlaybackServiceForPlay()V

    goto :goto_21
.end method

.method private exitHelpGuide(ZLandroid/content/Context;)V
    .registers 7
    .param p1, "start"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 835
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitHelpGuide() start = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], context = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 837
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const-string v2, "exit Help Guide"

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->removeView(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 839
    :cond_3b
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;->removeMessages(I)V

    .line 841
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_56

    if-eqz p1, :cond_56

    .line 842
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 843
    .local v0, "one":Landroid/content/Intent;
    const-string v1, "com.pantech.app.oneplayer.action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 845
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 847
    .end local v0    # "one":Landroid/content/Intent;
    :cond_56
    return-void
.end method

.method private findViews()V
    .registers 3

    .prologue
    .line 859
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001c3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    .line 860
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001c9

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    .line 861
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001d7

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    .line 862
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001c2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    .line 864
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001c4

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    .line 866
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001c6

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    .line 867
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001c7

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    .line 868
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001c8

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    .line 869
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001ca

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mInfoLayout:Landroid/widget/RelativeLayout;

    .line 870
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    .line 871
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001cb

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextInfoLayout:Landroid/widget/LinearLayout;

    .line 872
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001cc

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTitleView:Landroid/widget/TextView;

    .line 873
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001cd

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArtistView:Landroid/widget/TextView;

    .line 874
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001d3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextDuration:Landroid/widget/TextView;

    .line 875
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001d1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextPlaytime:Landroid/widget/TextView;

    .line 876
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001d2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mSlash:Landroid/widget/ImageView;

    .line 877
    return-void
.end method

.method public static getInstance()Lcom/pantech/app/music/player/oneplayer/OnePlayer;
    .registers 3

    .prologue
    .line 391
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->sInstance:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    sget-object v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->sInstance:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    if-nez v0, :cond_25

    .line 393
    new-instance v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-direct {v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;-><init>()V

    sput-object v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->sInstance:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    .line 395
    :cond_25
    sget-object v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->sInstance:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    return-object v0
.end method

.method private getProperties(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1467
    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "retValue":Ljava/lang/String;
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProperties()  key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    return-object v0
.end method

.method private initLayoutTranslation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1371
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_f

    .line 1372
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 1373
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1376
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    if-eqz v0, :cond_1d

    .line 1377
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setTranslationX(F)V

    .line 1378
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setTranslationY(F)V

    .line 1380
    :cond_1d
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    if-eqz v0, :cond_2b

    .line 1381
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1382
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1384
    :cond_2b
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    if-eqz v0, :cond_39

    .line 1385
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1386
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1389
    :cond_39
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    if-eqz v0, :cond_47

    .line 1390
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationX(F)V

    .line 1391
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationY(F)V

    .line 1394
    :cond_47
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    if-eqz v0, :cond_55

    .line 1395
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationX(F)V

    .line 1396
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationY(F)V

    .line 1398
    :cond_55
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    if-eqz v0, :cond_63

    .line 1399
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1400
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1402
    :cond_63
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    if-eqz v0, :cond_71

    .line 1403
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1404
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1407
    :cond_71
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mInfoLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7f

    .line 1408
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 1409
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mInfoLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1412
    :cond_7f
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8d

    .line 1413
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1414
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1416
    :cond_8d
    return-void
.end method

.method private initProgressBar()V
    .registers 3

    .prologue
    .line 880
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001cf

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    .line 881
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 882
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 883
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pantech/app/music/player/oneplayer/OnePlayer$12;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$12;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 889
    return-void
.end method

.method private initProperty()V
    .registers 3

    .prologue
    .line 1448
    const-string v0, "OnePlayer"

    const-string v1, "initProperty()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v0, "com.pantech.app.oneplayer"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    return-void
.end method

.method private noChangePlayMusic(II)V
    .registers 7
    .param p1, "pos"    # I
    .param p2, "delay"    # I

    .prologue
    .line 1349
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMusic() pos = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], delay = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->rPlayMusic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1351
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->currentPlayMusic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1352
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    .line 1354
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->currentPlayMusic:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1355
    return-void
.end method

.method private onOrientationChangedForHelpGuide(I)V
    .registers 5
    .param p1, "orientation"    # I

    .prologue
    .line 1312
    iget v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationForHelpGuide:I

    if-eq v0, p1, :cond_1f

    .line 1313
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChangedForHelpGuide orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->reConfigurationOfHelpGuide(I)V

    .line 1316
    :cond_1f
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationForHelpGuide:I

    .line 1317
    return-void
.end method

.method private orientationNextRefresh(I)V
    .registers 6
    .param p1, "delay"    # I

    .prologue
    const/4 v2, 0x3

    .line 769
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 770
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;->removeMessages(I)V

    .line 771
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$OrientationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    return-void
.end method

.method private playMusic(II)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "delay"    # I

    .prologue
    .line 1338
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playMusic() pos = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], delay = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->rPlayMusic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1340
    iput p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    .line 1344
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->rPlayMusic:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 1345
    return-void
.end method

.method private queueNextRefresh(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x2

    .line 1095
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1096
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->removeMessages(I)V

    .line 1097
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1098
    return-void
.end method

.method private reConfigurationOfHelpGuide(I)V
    .registers 22
    .param p1, "orientation"    # I

    .prologue
    .line 539
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100163

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 540
    .local v17, "mHelpContentLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100164

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 541
    .local v11, "m1stTipLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100167

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 542
    .local v15, "m2ndTipLayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100161

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    .line 544
    .local v18, "mHelpExitLayout":Landroid/widget/RelativeLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 545
    .local v12, "m1stTipLayoutLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 546
    .local v16, "m2ndTipLayoutLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 547
    .local v2, "mHelpContentLayoutLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 549
    .local v19, "mHelpExitLayoutLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100165

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 550
    .local v10, "m1stTextViewTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100166

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 551
    .local v9, "m1stTextViewSub":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100168

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 552
    .local v14, "m2ndTextViewTitle":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100169

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 554
    .local v13, "m2ndTextViewSub":Landroid/widget/TextView;
    const-string v1, "OnePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reConfigurationOfHelpGuide orientation["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-nez p1, :cond_159

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    const v1, 0x7f020380

    :goto_c3
    invoke-virtual {v4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 559
    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 560
    const/high16 v1, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v3

    const/high16 v1, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v4

    const/high16 v1, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 561
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v12

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 562
    const/4 v5, 0x0

    const/high16 v1, 0x42ea0000    # 117.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 563
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v1, 0x40e00000    # 7.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 565
    const/4 v1, -0x2

    move-object/from16 v0, v19

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 566
    const/high16 v1, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v1

    move-object/from16 v0, v19

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 568
    const v1, 0x7f080106

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    .line 569
    const v1, 0x7f080100

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 570
    const v1, 0x7f0800b3

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 571
    const v1, 0x7f080103

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 610
    :cond_145
    :goto_145
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    return-void

    .line 557
    :cond_154
    const v1, 0x7f02037f

    goto/16 :goto_c3

    .line 572
    :cond_159
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_216

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_211

    const v1, 0x7f02037c

    :goto_17f
    invoke-virtual {v4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 578
    const/4 v3, 0x0

    const/high16 v1, -0x3dc00000    # -48.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 579
    const/high16 v1, 0x42440000    # 49.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v5

    const/high16 v1, 0x43520000    # 210.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v12

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 580
    const/high16 v1, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v5

    const/high16 v1, 0x43520000    # 210.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v6

    const/high16 v1, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 581
    const/4 v5, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v6

    const/high16 v1, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 583
    const/4 v1, -0x2

    move-object/from16 v0, v19

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 584
    const/4 v1, -0x2

    move-object/from16 v0, v19

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 586
    const v1, 0x7f080106

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    .line 587
    const v1, 0x7f080102

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 588
    const v1, 0x7f0800b3

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 589
    const v1, 0x7f080105

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_145

    .line 574
    :cond_211
    const v1, 0x7f02037b

    goto/16 :goto_17f

    .line 590
    :cond_216
    const/4 v1, 0x3

    move/from16 v0, p1

    if-ne v0, v1, :cond_145

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ce

    const v1, 0x7f02037e

    :goto_23c
    invoke-virtual {v4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 594
    const/4 v1, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 596
    const/4 v3, 0x0

    const/high16 v1, -0x3d980000    # -58.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 597
    const/high16 v1, 0x41e80000    # 29.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v5

    const/high16 v1, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v6

    const/high16 v1, 0x42280000    # 42.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object v4, v12

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 598
    const/4 v5, 0x0

    const/high16 v1, 0x42200000    # 40.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v6

    const/high16 v1, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 599
    const/4 v5, 0x0

    const/high16 v1, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v6

    const/high16 v1, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V

    .line 601
    const/4 v1, -0x2

    move-object/from16 v0, v19

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 602
    const/4 v1, -0x2

    move-object/from16 v0, v19

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 604
    const v1, 0x7f0800b3

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(I)V

    .line 605
    const v1, 0x7f080104

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(I)V

    .line 606
    const v1, 0x7f080106

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 607
    const v1, 0x7f080101

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_145

    .line 592
    :cond_2ce
    const v1, 0x7f02037d

    goto/16 :goto_23c
.end method

.method private reConfigurationOfOnePlayer(I)V
    .registers 25
    .param p1, "orientation"    # I

    .prologue
    .line 399
    const/4 v8, 0x0

    .line 400
    .local v8, "offsetX":F
    const/4 v9, 0x0

    .line 401
    .local v9, "offsetY":F
    const/4 v4, 0x0

    .line 402
    .local v4, "offsetBGX":F
    const/4 v5, 0x0

    .line 403
    .local v5, "offsetBGY":F
    const/4 v6, 0x0

    .line 404
    .local v6, "offsetBubbleX":F
    const/4 v7, 0x0

    .line 405
    .local v7, "offsetBubbleY":F
    const/4 v3, 0x0

    .line 406
    .local v3, "bubbleDegree":F
    const/16 v18, 0x0

    .line 407
    .local v18, "playableDegree":F
    const/high16 v20, 0x43e00000    # 448.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v11

    .line 408
    .local v11, "pWidth":I
    const/high16 v20, 0x43e00000    # 448.0f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v10

    .line 410
    .local v10, "pHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-object/from16 v20, v0

    if-nez v20, :cond_26

    .line 534
    :goto_25
    return-void

    .line 414
    :cond_26
    const-string v20, "OnePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "reConfigurationOfOnePlayer orientation["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/WindowManager$LayoutParams;

    .line 416
    .local v19, "rotationLayoutParams":Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_289

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->findViews()V

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->initLayoutTranslation()V

    .line 420
    move-object/from16 v0, v19

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 421
    move-object/from16 v0, v19

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 422
    const/16 v20, 0x30

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 423
    const v20, 0x7f0b016c

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 425
    const/high16 v8, 0x41e80000    # 29.0f

    .line 426
    const/high16 v9, -0x3d660000    # -77.0f

    .line 427
    const/high16 v6, -0x3ef00000    # -9.0f

    .line 428
    const/high16 v4, 0x42700000    # 60.0f

    .line 429
    const/high16 v5, -0x3dc80000    # -46.0f

    .line 430
    const v18, 0x43110a3e    # 145.04001f

    .line 463
    :cond_82
    :goto_82
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v16, v0

    .line 464
    .local v16, "pixelOffsetX":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v17, v0

    .line 465
    .local v17, "pixelOffsetY":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v14, v0

    .line 466
    .local v14, "pixelOffsetBubbleX":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v15, v0

    .line 467
    .local v15, "pixelOffsetBubbleY":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v12, v0

    .line 468
    .local v12, "pixelOffsetBGX":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v13, v0

    .line 471
    .local v13, "pixelOffsetBGY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_da

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 476
    :cond_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_fc

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 481
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11e

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 486
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    move-object/from16 v20, v0

    if-eqz v20, :cond_140

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationX(F)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationY(F)V

    .line 491
    :cond_140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_162

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 496
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_184

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 501
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1ad

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setRotation(F)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    move-object/from16 v20, v0

    add-float v21, v16, v14

    invoke-virtual/range {v20 .. v21}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationX(F)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    move-object/from16 v20, v0

    add-float v21, v17, v15

    invoke-virtual/range {v20 .. v21}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setTranslationY(F)V

    .line 506
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mInfoLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1cf

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mInfoLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mInfoLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 511
    :cond_1cf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f1

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 516
    :cond_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_272

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setPlayableDegree(F)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setOrientation(I)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setmTranslationX(F)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setmTranslationY(F)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setTranslationX(F)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setTranslationY(F)V

    .line 529
    const-string v20, "OnePlayer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "reConfigurationOfOnePlayer playPosition["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x64

    invoke-virtual/range {v20 .. v21}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->updateLayout(I)V

    .line 533
    :cond_272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_25

    .line 431
    .end local v12    # "pixelOffsetBGX":F
    .end local v13    # "pixelOffsetBGY":F
    .end local v14    # "pixelOffsetBubbleX":F
    .end local v15    # "pixelOffsetBubbleY":F
    .end local v16    # "pixelOffsetX":F
    .end local v17    # "pixelOffsetY":F
    :cond_289
    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_2c2

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->findViews()V

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->initLayoutTranslation()V

    .line 435
    move-object/from16 v0, v19

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 436
    move-object/from16 v0, v19

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 437
    const v20, 0x800033

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 438
    const v20, 0x7f0b016e

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 439
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 440
    const/high16 v8, -0x3db00000    # -52.0f

    .line 441
    const/high16 v9, -0x3d0a0000    # -123.0f

    .line 442
    const/high16 v7, 0x41100000    # 9.0f

    .line 443
    const/high16 v4, -0x3e580000    # -21.0f

    .line 444
    const/high16 v5, -0x3d4e0000    # -89.0f

    .line 445
    const v18, 0x425c28f6    # 55.04f

    goto/16 :goto_82

    .line 446
    :cond_2c2
    const/16 v20, 0x3

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_82

    .line 448
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->findViews()V

    .line 449
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->initLayoutTranslation()V

    .line 450
    move-object/from16 v0, v19

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 451
    move-object/from16 v0, v19

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 452
    const v20, 0x800035

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 453
    const v20, 0x7f0b016d

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 454
    const/high16 v3, 0x42b40000    # 90.0f

    .line 455
    const/high16 v8, 0x42700000    # 60.0f

    .line 456
    const/high16 v9, 0x40e00000    # 7.0f

    .line 457
    const/high16 v7, -0x3ef00000    # -9.0f

    .line 458
    const/high16 v4, 0x42b40000    # 90.0f

    .line 459
    const/high16 v5, 0x420c0000    # 35.0f

    .line 460
    const v18, 0x436b0a3e    # 235.04001f

    goto/16 :goto_82
.end method

.method private refreshNow()J
    .registers 7

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    if-nez v1, :cond_7

    .line 1082
    const-wide/16 v2, 0x1f4

    .line 1091
    :goto_6
    return-wide v2

    .line 1084
    :cond_7
    const-wide/16 v2, 0x1f4

    .line 1086
    .local v2, "remaining":J
    :try_start_9
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setPlaytime(J)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_14

    move-result-wide v2

    goto :goto_6

    .line 1087
    :catch_14
    move-exception v0

    .line 1088
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->removeMessages(I)V

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method private registerListener()V
    .registers 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mRotateChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setmWheelChangeListener(Lcom/pantech/app/music/player/oneplayer/circularview/OnWheelChangeListener;)V

    .line 894
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setmOrientationChangeListener(Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;)V

    .line 896
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationChangeListener:Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setmOrientationChangeListener(Lcom/pantech/app/music/player/oneplayer/circularview/OnOrientationChangeListener;)V

    .line 898
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mBg_Layout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 899
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 900
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mBg_Layout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 903
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 904
    return-void
.end method

.method private setColorInfo(Ljava/lang/CharSequence;)V
    .registers 14
    .param p1, "from"    # Ljava/lang/CharSequence;

    .prologue
    .line 1188
    const v0, -0xff173f

    .line 1189
    .local v0, "bodyColor":I
    const/4 v9, 0x2

    new-array v2, v9, [I

    .line 1211
    .local v2, "colorArray":[I
    const/4 v8, 0x0

    .line 1212
    .local v8, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    if-eqz v9, :cond_11

    .line 1213
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-virtual {v9}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v8

    .line 1215
    :cond_11
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->checkGradationColor(I)[I

    move-result-object v2

    .line 1217
    if-eqz v8, :cond_51

    .line 1218
    invoke-virtual {v8}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 1219
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->checkGradationColor(I)[I

    move-result-object v2

    .line 1220
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    const/4 v10, 0x1

    aget v10, v2, v10

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setAlbumInsideStrokeColor(I)V

    .line 1231
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0201f7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1232
    .local v5, "mDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    const/4 v10, 0x1

    aget v10, v2, v10

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1235
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v9, v5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1237
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    iget-object v10, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-virtual {v10}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1240
    .end local v5    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_51
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1242
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f0201cd

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    .line 1243
    .local v7, "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v7, :cond_66

    .line 1244
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1247
    :cond_66
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    const v9, 0x800003

    const/4 v10, 0x1

    invoke-direct {v1, v7, v9, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 1249
    .local v1, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    const/4 v9, 0x2

    new-array v4, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const v11, 0x7f0201cc

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    aput-object v1, v4, v9

    .line 1250
    .local v4, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1252
    .local v3, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v9, 0x0

    const/high16 v10, 0x1020000

    invoke-virtual {v3, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1253
    const/4 v9, 0x1

    const v10, 0x102000d

    invoke-virtual {v3, v9, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 1255
    iget-object v9, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v9, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    return-void
.end method

.method private setDuration(J)V
    .registers 12
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 1176
    iput-wide p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    .line 1177
    iget-wide v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_c

    .line 1178
    iput-wide v6, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    .line 1180
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-wide v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_28

    .line 1183
    invoke-direct {p0, v6, v7}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setPlaytime(J)J

    .line 1185
    :cond_28
    return-void
.end method

.method private setMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .registers 6
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 626
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 627
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 628
    iput p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 629
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 630
    return-void
.end method

.method private setPlaytime(J)J
    .registers 16
    .param p1, "playtime"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3e8

    .line 1101
    iget-wide v6, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    cmp-long v1, p1, v6

    if-lez v1, :cond_c

    .line 1102
    iget-wide p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    .line 1105
    :cond_c
    move-wide v2, p1

    .line 1106
    .local v2, "pos":J
    rem-long v6, v2, v10

    sub-long v4, v10, v6

    .line 1108
    .local v4, "remaining":J
    cmp-long v1, v2, v8

    if-ltz v1, :cond_38

    iget-wide v6, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_38

    .line 1109
    mul-long v6, v10, v2

    iget-wide v8, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mDuration:J

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 1110
    .local v0, "barPos":I
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1111
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextPlaytime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v2

    div-long/2addr v8, v10

    invoke-static {v6, v8, v9}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1112
    const-wide/16 v4, 0x1f4

    .line 1117
    .end local v0    # "barPos":I
    :goto_37
    return-wide v4

    .line 1114
    :cond_38
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextPlaytime:Landroid/widget/TextView;

    const v6, 0x7f0800b1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1115
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_37
.end method

.method private setPrefFlagShowHelpGuide(Landroid/content/Context;Z)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Z

    .prologue
    .line 850
    if-eqz p1, :cond_7

    .line 851
    const-string v0, "oneplayertip"

    invoke-static {p1, v0, p2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 853
    :cond_7
    return-void
.end method

.method private setProperties(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1453
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemProperties()  key : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1455
    :cond_2a
    const-string v1, "OnePlayer"

    const-string v2, "return!  key == null || key.isEmpty()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    :goto_31
    return-void

    .line 1458
    :cond_32
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1462
    .local v0, "retValue":Ljava/lang/String;
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method

.method private setUIText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "artist"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x1

    .line 1037
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1041
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1042
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTitleView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1043
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArtistView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1045
    return-void
.end method

.method private setUIVisibility(Z)V
    .registers 8
    .param p1, "isRun"    # Z

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 998
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUIVisibility() isRun = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    if-eqz p1, :cond_75

    .line 1000
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setVisibility(I)V

    .line 1003
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setVisibility(I)V

    .line 1004
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1006
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1010
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1011
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextPlaytime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mSlash:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1013
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1034
    :goto_74
    return-void

    .line 1017
    :cond_75
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainLayoutBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemBubble:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArt:Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;

    invoke-virtual {v0, v5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularSeekBar;->setVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtDimmed:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1022
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewMainItemAlbumArtStroke:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewRipple:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewDefault:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1025
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mNoContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1027
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1030
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mTextPlaytime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mSlash:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1032
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_74
.end method

.method private showHelpGuide(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 775
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    if-eqz v2, :cond_5d

    .line 776
    const-string v2, "OnePlayer"

    const-string v3, "show Help Guide"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->orientationNextRefresh(I)V

    .line 782
    iput-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    .line 783
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    invoke-direct {p0, p1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setPrefFlagShowHelpGuide(Landroid/content/Context;Z)V

    .line 785
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03009f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    .line 786
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    new-instance v3, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;

    invoke-direct {v3, p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$10;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 804
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v3, 0x7f100162

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mExitBtn:Landroid/widget/ImageButton;

    .line 805
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mExitBtn:Landroid/widget/ImageButton;

    new-instance v3, Lcom/pantech/app/music/player/oneplayer/OnePlayer$11;

    invoke-direct {v3, p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$11;-><init>(Lcom/pantech/app/music/player/oneplayer/OnePlayer;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 814
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    const/16 v4, 0x406

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 825
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x3f59999a    # 0.85f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 830
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const-string v2, "show Help Guide"

    invoke-virtual {p0, v1, v0, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/CharSequence;)V

    .line 832
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :cond_5d
    return-void
.end method

.method private startMusicPlaybackServiceForPlay()V
    .registers 4

    .prologue
    .line 1168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-class v2, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1169
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const-string v1, "command"

    const-string v2, "play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1172
    return-void
.end method

.method private stopAOTServices(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1422
    const-string v1, "alwaysontop"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 1424
    .local v0, "aotManager":Landroid/view/alwaysontop/AlwaysOnTopManager;
    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    invoke-virtual {v0, v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isAlwaysOnTopRunning(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    .line 1426
    const-string v1, "OnePlayer"

    const-string v2, "stopAlwaysOnTop() AOTVideoService"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-string v1, "com.pantech.app.movie/com.pantech.app.video.aot.AOTVideoService"

    invoke-virtual {v0, v1}, Landroid/view/alwaysontop/AlwaysOnTopManager;->stopAlwaysOnTop(Ljava/lang/String;)Z

    .line 1428
    const v1, 0x7f0800f0

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->Toast_showPopup(I)V

    .line 1436
    :cond_23
    return-void
.end method

.method private updatePlayButton(Z)V
    .registers 4
    .param p1, "isPlaying"    # Z

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPlayPauseBtn:Landroid/widget/ImageButton;

    .line 1124
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPlayPauseBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    if-eqz p1, :cond_1f

    .line 1126
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPlayPauseBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1138
    :goto_1e
    return-void

    .line 1128
    :cond_1f
    iget-object v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPlayPauseBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0201b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1e
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "from"    # Ljava/lang/CharSequence;

    .prologue
    .line 927
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addView() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :try_start_18
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 933
    :goto_1d
    return-void

    .line 930
    :catch_1e
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public checkGradationColor(I)[I
    .registers 13
    .param p1, "color"    # I

    .prologue
    const/4 v6, 0x3

    const v10, 0x41cc8a23

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1261
    new-array v4, v9, [I

    .line 1262
    .local v4, "resultColor":[I
    new-array v3, v6, [F

    .line 1263
    .local v3, "hsv":[F
    new-array v5, v6, [F

    .line 1265
    .local v5, "resultHSV":[F
    invoke-static {p1, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 1267
    aget v0, v3, v7

    .line 1268
    .local v0, "H":F
    aget v1, v3, v8

    .line 1269
    .local v1, "S":F
    aget v2, v3, v9

    .line 1272
    .local v2, "V":F
    const v6, 0x3ecccccd    # 0.4f

    cmpg-float v6, v2, v6

    if-ltz v6, :cond_2b

    const v6, 0x3f7ae148    # 0.98f

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_36

    const v6, 0x3d4ccccd    # 0.05f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_36

    .line 1274
    :cond_2b
    const v6, -0xff173f

    aput v6, v4, v7

    .line 1275
    const v6, -0xff5217

    aput v6, v4, v8

    .line 1293
    :goto_35
    return-object v4

    .line 1278
    :cond_36
    const/high16 v6, 0x41c80000    # 25.0f

    cmpg-float v6, v0, v6

    if-gez v6, :cond_50

    .line 1279
    add-float/2addr v0, v10

    .line 1284
    :goto_3d
    const v6, 0x3cc6fef8

    sub-float/2addr v1, v6

    .line 1286
    aput v0, v5, v7

    .line 1287
    aput v1, v5, v8

    .line 1288
    aput v2, v5, v9

    .line 1290
    aput p1, v4, v7

    .line 1291
    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, v4, v8

    goto :goto_35

    .line 1281
    :cond_50
    sub-float/2addr v0, v10

    goto :goto_3d
.end method

.method public deliverySystemKeyReason(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1327
    const-string v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deliverySystemKeyReason reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exitHelpGuide(ZLandroid/content/Context;)V

    .line 1332
    iget-boolean v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z

    if-eqz v1, :cond_2b

    .line 1333
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exit()V

    .line 1335
    :cond_2b
    return-void
.end method

.method public exit()V
    .registers 5

    .prologue
    .line 639
    const-string v2, "OnePlayer"

    const-string v3, "exit"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useSystemPropertiesAtOnePlayer()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 642
    const-string v2, "com.pantech.app.oneplayer"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 647
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 649
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->removeMessages(I)V

    .line 650
    invoke-virtual {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 651
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const-string v3, "exit OnePlayer"

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->removeView(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 652
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mBg_Layout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const-string v3, "exit OnePlayer bg"

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->removeView(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 654
    :cond_3f
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 655
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mHelpPreviewLayout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const-string v3, "exit Help Guide"

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->removeView(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 656
    const-string v2, "OnePlayer"

    const-string v3, "exit Help Guide"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_59
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5c} :catch_66

    .line 665
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :goto_5c
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    if-eqz v2, :cond_65

    .line 666
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->setServiceStopTimer()V

    .line 668
    :cond_65
    return-void

    .line 659
    :catch_66
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method getPixelFromDip(F)I
    .registers 5
    .param p1, "dip"    # F

    .prologue
    .line 947
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 948
    .local v0, "mDisplay":Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 949
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 950
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    float-to-int v2, v2

    return v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1297
    iget v2, p1, Landroid/os/Message;->what:I

    .line 1298
    .local v2, "what":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 1299
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getOrientation(Landroid/content/Context;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->onOrientationChangedForHelpGuide(I)V

    .line 1300
    const/16 v3, 0x64

    invoke-direct {p0, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->orientationNextRefresh(I)V

    .line 1309
    :cond_13
    :goto_13
    return-void

    .line 1301
    :cond_14
    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 1302
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->buildAdapter()V

    .line 1303
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mArrayAdapter:Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setAdapter(Lcom/pantech/app/music/player/oneplayer/circularview/CircularArrayAdapter;)V

    .line 1304
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->updateUI(Landroid/content/Context;Lcom/pantech/app/music/service/MusicPlaybackService;)V

    goto :goto_13

    .line 1305
    :cond_29
    const/4 v3, 0x2

    if-ne v2, v3, :cond_13

    .line 1306
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->refreshNow()J

    move-result-wide v0

    .line 1307
    .local v0, "next":J
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->queueNextRefresh(J)V

    goto :goto_13
.end method

.method public isShowHelpGuide()Z
    .registers 4

    .prologue
    .line 1363
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFlagShowHelpGuide :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    return v0
.end method

.method public isShowing()Z
    .registers 4

    .prologue
    .line 1358
    const-string v0, "OnePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowing :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    iget-boolean v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z

    return v0
.end method

.method public notifyChange(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/content/Intent;)V
    .registers 8
    .param p1, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 959
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "com.pantech.app.music.albumartupdated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 964
    :cond_25
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyChange() called with: service = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], action = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    if-eqz v1, :cond_5d

    .line 966
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    .line 967
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->removeMessages(I)V

    .line 968
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMainHandler:Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/player/oneplayer/OnePlayer$UIHandler;->sendEmptyMessage(I)Z

    .line 971
    :cond_5d
    return-void
.end method

.method public removeView(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "from"    # Ljava/lang/CharSequence;

    .prologue
    .line 936
    const-string v1, "OnePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeView() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    if-nez p1, :cond_1b

    .line 944
    :goto_1a
    return-void

    .line 940
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_1a

    .line 941
    :catch_21
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public setupContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    .line 634
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientation:I

    .line 635
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOrientationForHelpGuide:I

    .line 636
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setupContext(Landroid/content/Context;)V

    .line 673
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useStopAOTServicesWhenOnePlayerShowing()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    .line 674
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->stopAOTServices(Landroid/content/Context;)V

    .line 677
    :cond_d
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useSystemPropertiesAtOnePlayer()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 678
    const-string v2, "com.pantech.app.oneplayer"

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_1b
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 682
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v7, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 684
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 685
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWindowManager:Landroid/view/WindowManager;

    .line 687
    const-string v2, "oneplayertip"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    .line 688
    const-string v2, "OnePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show() show = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], flagShowHelpGuide = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->flagShowHelpGuide:Z

    if-eqz v2, :cond_81

    .line 690
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->showHelpGuide(Landroid/content/Context;)V

    .line 766
    :cond_80
    :goto_80
    return-void

    .line 693
    :cond_81
    const-string v2, "OnePlayer"

    const-string v3, "show OnePlayer"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z

    if-nez v2, :cond_80

    .line 700
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->exitHelpGuide(ZLandroid/content/Context;)V

    .line 702
    iput-object p2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    .line 703
    const/16 v2, 0xc

    new-array v2, v2, [Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mItemViewArray:[Landroid/widget/RelativeLayout;

    .line 704
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumartExtractor:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    .line 706
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0300c0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    .line 707
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03009e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    iput-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mBg_Layout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    .line 710
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->findViews()V

    .line 713
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->initProgressBar()V

    .line 716
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->addItems()V

    .line 719
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->registerListener()V

    .line 722
    invoke-direct {p0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->buildAdapter()V

    .line 725
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d2

    const/16 v4, 0x406

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 736
    .local v0, "mBgLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 739
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x43e00000    # 448.0f

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v2

    const/high16 v3, 0x43ce0000    # 412.0f

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->getPixelFromDip(F)I

    move-result v3

    const/16 v4, 0x7d2

    const/16 v5, 0x8

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 750
    .local v1, "mOnePlayerLayoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 753
    const v2, 0x7f0b016c

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 756
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mBg_Layout:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const-string v3, "show OnePlayer bg"

    invoke-virtual {p0, v2, v0, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/CharSequence;)V

    .line 757
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mOnePlayerlView:Lcom/pantech/app/music/player/oneplayer/circularview/CircularRelativeLayout;

    const-string v3, "show OnePlayer"

    invoke-virtual {p0, v2, v1, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/CharSequence;)V

    .line 760
    iget-object v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mMusicService:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->updateUI(Landroid/content/Context;Lcom/pantech/app/music/service/MusicPlaybackService;)V

    .line 763
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isShow:Z

    .line 765
    const-string v2, "OnePlayer"

    const-string v3, "show END:"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_80
.end method

.method public updateUI(Landroid/content/Context;Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1048
    const-string v3, "OnePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUI() context = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], service = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v3

    iput-boolean v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isPlaying:Z

    .line 1050
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 1051
    .local v2, "titleName":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "artistName":Ljava/lang/CharSequence;
    if-eqz v2, :cond_40

    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueLength()I

    move-result v3

    if-gtz v3, :cond_50

    .line 1055
    :cond_40
    iput-boolean v6, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isServiceRunning:Z

    .line 1056
    invoke-direct {p0, v6}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setUIVisibility(Z)V

    .line 1074
    :goto_45
    const-string v3, "updateUI"

    invoke-direct {p0, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setColorInfo(Ljava/lang/CharSequence;)V

    .line 1077
    iget-boolean v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isPlaying:Z

    invoke-direct {p0, v3}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->updatePlayButton(Z)V

    .line 1078
    return-void

    .line 1058
    :cond_50
    iput-boolean v7, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isServiceRunning:Z

    .line 1059
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v3

    iput v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    .line 1060
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->mWheelViewGroup:Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;

    iget v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    iget-boolean v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->isPlaying:Z

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/player/oneplayer/circularview/CircularLayout;->setPlayPosition(IZ)V

    .line 1061
    invoke-direct {p0, v7}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setUIVisibility(Z)V

    .line 1062
    invoke-direct {p0, v2, v0}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setUIText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1064
    iget v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->playPosition:I

    invoke-virtual {p2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 1065
    .local v1, "playItem":Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 1066
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    sget v4, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    iput v4, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 1067
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumArtExtractorListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    iput-object v4, v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    .line 1068
    iget-object v3, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumartExtractor:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    iget-object v4, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumParam:Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    iget-object v5, p0, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->albumArtExtractorListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    .line 1071
    invoke-virtual {p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->setDuration(J)V

    .line 1072
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->queueNextRefresh(J)V

    goto :goto_45
.end method
