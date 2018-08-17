.class public Lcom/pantech/app/music/player/DetailControllerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DetailControllerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;,
        Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;
    }
.end annotation


# static fields
.field public static final ACTION_TRACK_END:Ljava/lang/String; = "track_end"

.field public static final EX_DATA_DURATION:Ljava/lang/String; = "duration"

.field public static final EX_DATA_IS_SET:Ljava/lang/String; = "isSet"

.field public static final EX_DATA_POS:Ljava/lang/String; = "curPosition"

.field private static final FASTFORWARD_STATE:I = 0x1

.field private static final FINISH_DELAY:I = 0x7d0

.field public static final KEYCODE_PAN_WHEEL:I = 0x11b

.field public static final MSG_JUST_FINISH:I = 0x3

.field public static final MSG_ORIENTATION_CHANGED:I = 0x2

.field public static final MSG_SET_AND_FINISH:I = 0x1

.field private static final REPEAT_INTERVAL:I = 0x96

.field private static final REWIND_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicDetailController"

.field private static mOrientation:I


# instance fields
.field enterAnimation:Landroid/view/animation/Animation;

.field exitAnimation:Landroid/view/animation/Animation;

.field fadeInAnimation:Landroid/view/animation/Animation;

.field fadeOutAnimation:Landroid/view/animation/Animation;

.field private isKeydown:Z

.field private mBackgroundLayout:Landroid/widget/RelativeLayout;

.field private mBodyLayout:Landroid/widget/RelativeLayout;

.field private mBtnMinus:Lcom/pantech/app/music/player/RepeatingImageButton;

.field private mBtnPlus:Lcom/pantech/app/music/player/RepeatingImageButton;

.field private mControlPositionView:Landroid/widget/TextView;

.field private mControlValue:I

.field private mControllerMain:Landroid/widget/RelativeLayout;

.field private mCurrentControlState:I

.field private mCurrentControlStateView:Landroid/widget/ImageView;

.field private mCurrentPosition:J

.field private mCurrentPositionView:Landroid/widget/TextView;

.field private mDelayedFinishHandler:Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

.field private mDuration:J

.field private mFFControlRange:J

.field private mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

.field private mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

.field public mPlayEventListener:Landroid/content/BroadcastReceiver;

.field private mRWControlRange:J

.field private mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

.field mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    .line 72
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDelayedFinishHandler:Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

    .line 73
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    .line 75
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$1;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    .line 82
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$2;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    .line 90
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$3;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 104
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$4;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mPlayEventListener:Landroid/content/BroadcastReceiver;

    .line 115
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$5;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$5;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 632
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->controlDecreaseState()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setDetailControllerFinishTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->controlIncreaseState()V

    return-void
.end method

.method static synthetic access$300(Lcom/pantech/app/music/player/DetailControllerActivity;)Lcom/pantech/app/music/player/RepeatingImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnPlus:Lcom/pantech/app/music/player/RepeatingImageButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/player/DetailControllerActivity;)Lcom/pantech/app/music/player/RepeatingImageButton;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnMinus:Lcom/pantech/app/music/player/RepeatingImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->finishAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/pantech/app/music/player/DetailControllerActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBackgroundLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/player/DetailControllerActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    return v0
.end method

.method static synthetic access$800(Lcom/pantech/app/music/player/DetailControllerActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/pantech/app/music/player/DetailControllerActivity;->sendResultPosition(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/pantech/app/music/player/DetailControllerActivity;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/DetailControllerActivity;
    .param p1, "x1"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object p1
.end method

.method private bindToService()V
    .registers 3

    .prologue
    .line 158
    const-string v0, "MusicDetailController"

    const-string v1, "bindToService :"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/pantech/app/music/player/DetailControllerActivity$6;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$6;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    invoke-static {p0, v0}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 172
    return-void
.end method

.method private controlDecreaseState()V
    .registers 5

    .prologue
    .line 376
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    if-nez v0, :cond_85

    .line 377
    const-string v0, "MusicDetailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ REWIND_STATE  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mRWControlRange:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mRWControlRange:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_7d

    .line 379
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 393
    :goto_39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    .line 394
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlPositionView:Landroid/widget/TextView;

    iget v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/pantech/app/music/player/DetailControllerActivity;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-wide v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    .line 396
    iget-wide v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity;->setCurrentPosition(J)V

    .line 397
    const-string v0, "MusicDetailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlDecreaseState() mControlValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_7c
    return-void

    .line 381
    :cond_7d
    const-string v0, "MusicDetailController"

    const-string v1, "?????"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 385
    :cond_85
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    if-nez v0, :cond_9b

    .line 386
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 387
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    .line 388
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlStateView:Landroid/widget/ImageView;

    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_39

    .line 390
    :cond_9b
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    goto :goto_39
.end method

.method private controlIncreaseState()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 351
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    if-nez v0, :cond_63

    .line 352
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    if-nez v0, :cond_5c

    .line 353
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 354
    iput v4, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    .line 355
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlStateView:Landroid/widget/ImageView;

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    :goto_19
    iput-boolean v4, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    .line 369
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlPositionView:Landroid/widget/TextView;

    iget v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-static {p0, v2, v3}, Lcom/pantech/app/music/player/DetailControllerActivity;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-wide v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    .line 371
    iget-wide v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity;->setCurrentPosition(J)V

    .line 372
    const-string v0, "MusicDetailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlIncreaseState() mControlValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :goto_5b
    return-void

    .line 357
    :cond_5c
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    goto :goto_19

    .line 360
    :cond_63
    const-string v0, "MusicDetailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ FASTFORWARD_STATE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mFFControlRange:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mFFControlRange:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_99

    .line 362
    iget v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    goto :goto_19

    .line 364
    :cond_99
    const-string v0, "MusicDetailController"

    const-string v1, "!!!!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b
.end method

.method private finishAnimation()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->exitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 614
    return-void
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secs"    # J

    .prologue
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .local v1, "sFormatBuilder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 131
    .local v2, "sFormatter":Ljava/util/Formatter;
    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/Object;

    .line 133
    .local v3, "sTimeArgs":[Ljava/lang/Object;
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, p1

    const-wide/16 v6, 0x3e8

    div-long p1, v4, v6

    .line 134
    const-wide/16 v4, 0xe10

    cmp-long v4, p1, v4

    if-gez v4, :cond_68

    const v4, 0x7f0801c5

    :goto_21
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "durationFormat":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    const/4 v4, 0x0

    const-wide/16 v6, 0xe10

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 139
    const/4 v4, 0x1

    const-wide/16 v6, 0x3c

    div-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    const/4 v4, 0x2

    const-wide/16 v6, 0x3c

    div-long v6, p1, v6

    const-wide/16 v8, 0x3c

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 141
    const/4 v4, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 142
    const/4 v4, 0x4

    const-wide/16 v6, 0x3c

    rem-long v6, p1, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 144
    invoke-virtual {v2, v0, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 134
    .end local v0    # "durationFormat":Ljava/lang/String;
    :cond_68
    const v4, 0x7f0801c4

    goto :goto_21
.end method

.method private onOrientationChanged(I)V
    .registers 3
    .param p1, "orientation"    # I

    .prologue
    .line 429
    sget v0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    if-eq v0, p1, :cond_b

    .line 430
    sput p1, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    .line 431
    const-string v0, "onOrientationChanged"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setContentView(Ljava/lang/CharSequence;)V

    .line 433
    :cond_b
    return-void
.end method

.method private sendResultPosition(Z)V
    .registers 8
    .param p1, "isSet"    # Z

    .prologue
    const-wide/16 v4, 0x3e8

    .line 453
    const-string v1, "MusicDetailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResultPosition() called with: isSet = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_55

    .line 455
    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 462
    :cond_2b
    :goto_2b
    const-string v1, "MusicDetailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResultPosition() RealSeekPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isSet"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    iget v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setResult(ILandroid/content/Intent;)V

    .line 467
    return-void

    .line 457
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_55
    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 458
    iget v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    if-gez v1, :cond_2b

    .line 459
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    goto :goto_2b
.end method

.method private setAnimations()V
    .registers 5

    .prologue
    const v3, 0x7f040035

    const v2, 0x7f040032

    .line 521
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 522
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->fadeInAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/music/player/DetailControllerActivity$7;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$7;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 539
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->fadeOutAnimation:Landroid/view/animation/Animation;

    .line 540
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->fadeOutAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/music/player/DetailControllerActivity$8;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$8;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 557
    sget v0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    if-nez v0, :cond_61

    .line 558
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->enterAnimation:Landroid/view/animation/Animation;

    .line 559
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->exitAnimation:Landroid/view/animation/Animation;

    .line 571
    :goto_4c
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->enterAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/music/player/DetailControllerActivity$9;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$9;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 588
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->exitAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/music/player/DetailControllerActivity$10;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/DetailControllerActivity$10;-><init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 605
    return-void

    .line 560
    :cond_61
    sget v0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_81

    .line 561
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040034

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->enterAnimation:Landroid/view/animation/Animation;

    .line 562
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->exitAnimation:Landroid/view/animation/Animation;

    goto :goto_4c

    .line 563
    :cond_81
    sget v0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a1

    .line 564
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040033

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->enterAnimation:Landroid/view/animation/Animation;

    .line 565
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040036

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->exitAnimation:Landroid/view/animation/Animation;

    goto :goto_4c

    .line 567
    :cond_a1
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->enterAnimation:Landroid/view/animation/Animation;

    .line 568
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->exitAnimation:Landroid/view/animation/Animation;

    goto :goto_4c
.end method

.method private setContentView(Ljava/lang/CharSequence;)V
    .registers 16
    .param p1, "from"    # Ljava/lang/CharSequence;

    .prologue
    const-wide/16 v12, 0x1f4

    const-wide/16 v10, 0x96

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    const-string v2, "MusicDetailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContentView() from = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x500

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 185
    const-string v2, "onCreate"

    if-ne p1, v2, :cond_4b

    .line 186
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, "actionI":Landroid/content/Intent;
    const-string v2, "curPosition"

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    .line 188
    const-string v2, "duration"

    invoke-virtual {v0, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDuration:J

    .line 190
    .end local v0    # "actionI":Landroid/content/Intent;
    :cond_4b
    const-string v2, "MusicDetailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContentView() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "MusicDetailController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContentView mOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget v2, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    if-nez v2, :cond_153

    .line 195
    const v1, 0x7f03001a

    .line 204
    .local v1, "layoutResID":I
    :goto_92
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity;->setContentView(I)V

    .line 206
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setAnimations()V

    .line 208
    const v2, 0x7f10007b

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnPlus:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 209
    const v2, 0x7f100082

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnMinus:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 210
    const v2, 0x7f10007e

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlStateView:Landroid/widget/ImageView;

    .line 211
    const v2, 0x7f10007f

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlPositionView:Landroid/widget/TextView;

    .line 212
    const v2, 0x7f100080

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPositionView:Landroid/widget/TextView;

    .line 213
    const v2, 0x7f10007a

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBodyLayout:Landroid/widget/RelativeLayout;

    .line 214
    const v2, 0x7f100079

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBackgroundLayout:Landroid/widget/RelativeLayout;

    .line 215
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBackgroundLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    const v2, 0x7f10007c

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControllerMain:Landroid/widget/RelativeLayout;

    .line 218
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnPlus:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v2, v6}, Lcom/pantech/app/music/player/RepeatingImageButton;->setFocusable(Z)V

    .line 219
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnMinus:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v2, v6}, Lcom/pantech/app/music/player/RepeatingImageButton;->setFocusable(Z)V

    .line 221
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnPlus:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnMinus:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnPlus:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v10, v11}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 224
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBtnMinus:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    invoke-virtual {v2, v3, v10, v11}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 226
    const-string v2, "onCreate"

    if-ne p1, v2, :cond_16b

    .line 227
    iput v6, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 228
    iput v7, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    .line 235
    :cond_125
    :goto_125
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlPositionView:Landroid/widget/TextView;

    iget v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-static {p0, v4, v5}, Lcom/pantech/app/music/player/DetailControllerActivity;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    add-long/2addr v2, v12

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mRWControlRange:J

    .line 238
    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDuration:J

    iget-wide v4, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v12

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mFFControlRange:J

    .line 240
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mPlayEventListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "track_end"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/DetailControllerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    return-void

    .line 196
    .end local v1    # "layoutResID":I
    :cond_153
    sget v2, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    if-ne v2, v7, :cond_15c

    .line 197
    const v1, 0x7f03001c

    .restart local v1    # "layoutResID":I
    goto/16 :goto_92

    .line 198
    .end local v1    # "layoutResID":I
    :cond_15c
    sget v2, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_166

    .line 199
    const v1, 0x7f03001d

    .restart local v1    # "layoutResID":I
    goto/16 :goto_92

    .line 201
    .end local v1    # "layoutResID":I
    :cond_166
    const v1, 0x7f03001a

    .restart local v1    # "layoutResID":I
    goto/16 :goto_92

    .line 230
    :cond_16b
    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/DetailControllerActivity;->setCurrentPosition(J)V

    .line 231
    iget v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    if-nez v2, :cond_125

    .line 232
    iget-object v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlStateView:Landroid/widget/ImageView;

    const v3, 0x7f0201a2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_125
.end method

.method private setDetailControllerFinishTimer()V
    .registers 5

    .prologue
    .line 436
    const-string v1, "MusicDetailController"

    const-string v2, "setDetailControllerFinishTimer()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDelayedFinishHandler:Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 440
    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDelayedFinishHandler:Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 441
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 442
    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDelayedFinishHandler:Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 443
    return-void
.end method

.method private startAnimation()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->overridePendingTransition(II)V

    .line 609
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mBodyLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->enterAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 610
    return-void
.end method

.method private unBindToService()V
    .registers 3

    .prologue
    .line 175
    const-string v0, "MusicDetailController"

    const-string v1, "unBindToService :"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    if-eqz v0, :cond_10

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 179
    :cond_10
    return-void
.end method


# virtual methods
.method public handleDetailController(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    .line 410
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    .line 411
    const-string v1, "MusicDetailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.what == MSG_SET_AND_FINISH   isKeydown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-boolean v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity;->sendResultPosition(Z)V

    .line 413
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->finishAnimation()V

    .line 421
    :cond_28
    :goto_28
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_37

    .line 422
    const-string v1, "MusicDetailController"

    const-string v2, "msg.what == MSG_JUST_FINISH"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->finishAnimation()V

    .line 426
    :cond_37
    return-void

    .line 415
    :cond_38
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_28

    .line 416
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getOrientation(Landroid/content/Context;)I

    move-result v0

    .line 418
    .local v0, "orientation":I
    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->onOrientationChanged(I)V

    .line 419
    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_28
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->sendResultPosition(Z)V

    .line 346
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->finishAnimation()V

    .line 347
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    .line 348
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 150
    const-string v0, "MusicDetailController"

    const-string v1, "onCreate: "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setContentView(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->bindToService()V

    .line 154
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->startAnimation()V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 281
    const-string v0, "MusicDetailController"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mPlayEventListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    if-eqz v0, :cond_16

    .line 285
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;->removeMessages(I)V

    .line 288
    :cond_16
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->unBindToService()V

    .line 289
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 290
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 311
    const/16 v1, 0x18

    if-ne p1, v1, :cond_c

    .line 312
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setDetailControllerFinishTimer()V

    .line 314
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->controlIncreaseState()V

    .line 323
    :goto_b
    return v0

    .line 316
    :cond_c
    const/16 v1, 0x19

    if-ne p1, v1, :cond_17

    .line 317
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setDetailControllerFinishTimer()V

    .line 319
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->controlDecreaseState()V

    goto :goto_b

    .line 323
    :cond_17
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    const-string v0, "MusicDetailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyLongPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setDetailControllerFinishTimer()V

    .line 330
    const/16 v0, 0x11b

    if-ne p1, v0, :cond_11

    .line 332
    iget-boolean v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/DetailControllerActivity;->sendResultPosition(Z)V

    .line 333
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->finishAnimation()V

    .line 338
    const/4 v0, 0x1

    .line 340
    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 262
    const-string v0, "MusicDetailController"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 264
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDelayedFinishHandler:Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 266
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 267
    invoke-virtual {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->finish()V

    .line 268
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 258
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 245
    const-string v0, "MusicDetailController"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 247
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 249
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;->sendEmptyMessage(I)Z

    .line 251
    iget-wide v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/DetailControllerActivity;->setCurrentPosition(J)V

    .line 252
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->setDetailControllerFinishTimer()V

    .line 253
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 272
    const-string v0, "MusicDetailController"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mDelayedFinishHandler:Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity$DelayedFinishHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mOrientationHandler:Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/DetailControllerActivity$OrientationCheckHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 275
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 276
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->setOemFlag(Landroid/app/Activity;Z)V

    .line 277
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 471
    const-string v1, "MusicDetailController"

    const-string v2, "onUserLeaveHint"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onUserLeaveHint()V

    .line 478
    iget-boolean v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->isKeydown:Z

    if-eqz v1, :cond_3e

    .line 479
    iget v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentControlState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 480
    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 487
    :cond_1b
    :goto_1b
    const-string v1, "MusicDetailController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :try_start_35
    iget-object v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    iget v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    int-to-long v2, v2

    mul-long/2addr v2, v4

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->seek(J)J
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3e} :catch_50

    .line 494
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/pantech/app/music/player/DetailControllerActivity;->finishAnimation()V

    .line 496
    return-void

    .line 482
    :cond_42
    iget-wide v2, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPosition:J

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    .line 483
    iget v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    if-gez v1, :cond_1b

    .line 484
    const/4 v1, 0x0

    iput v1, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mControlValue:I

    goto :goto_1b

    .line 490
    :catch_50
    move-exception v0

    .line 491
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3e
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 501
    const-string v0, "MusicDetailController"

    const-string v1, "onWindowFocusChanged: "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method setCurrentPosition(J)V
    .registers 6
    .param p1, "position"    # J

    .prologue
    .line 401
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    .line 402
    const-wide/16 p1, 0x0

    .line 404
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/music/player/DetailControllerActivity;->mCurrentPositionView:Landroid/widget/TextView;

    invoke-static {p0, p1, p2}, Lcom/pantech/app/music/player/DetailControllerActivity;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    return-void
.end method
