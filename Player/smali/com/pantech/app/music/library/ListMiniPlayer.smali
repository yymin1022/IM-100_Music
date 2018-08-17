.class public Lcom/pantech/app/music/library/ListMiniPlayer;
.super Landroid/app/Fragment;
.source "ListMiniPlayer.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListMiniPlayer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;,
        Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;
    }
.end annotation


# static fields
.field static final MAX_PROGRESS_VALUE:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "ListMiniPlayer"


# instance fields
.field final MSG_GO_TO_PLAYER:I

.field mBackground:Landroid/view/View;

.field mBgEffect:Landroid/widget/ImageView;

.field mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

.field mBtnNowPlaying:Landroid/widget/ImageButton;

.field mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

.field mBtnTogglePlay:Landroid/widget/ImageButton;

.field mCallback:Lcom/pantech/app/music/library/IListMiniPlayer$Callback;

.field private mContext:Landroid/content/Context;

.field mDuration:J

.field private mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

.field mFragmentLifeCycleStarted:Z

.field mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mIsShowing:Z

.field private mLastSeekEventTime:J

.field mLayoutInfo:Landroid/view/View;

.field mMiniPlayerHandler:Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;

.field mMusicCache:Lcom/pantech/app/music/service/MusicCache;

.field mOptions:I

.field mParentView:Landroid/view/View;

.field private mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

.field private mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

.field mSeekBar:Landroid/widget/SeekBar;

.field private mSetProgressToZero:Z

.field private mStartSeekPos:J

.field mTxtSub:Landroid/widget/TextView;

.field mTxtTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mFragmentLifeCycleStarted:Z

    .line 72
    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIsShowing:Z

    .line 76
    iput-wide v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mStartSeekPos:J

    .line 77
    iput-wide v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J

    .line 81
    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSetProgressToZero:Z

    .line 83
    new-instance v0, Lcom/pantech/app/music/library/ListMiniPlayer$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$1;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    .line 89
    new-instance v0, Lcom/pantech/app/music/library/ListMiniPlayer$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$2;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->MSG_GO_TO_PLAYER:I

    .line 99
    new-instance v0, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;

    invoke-direct {v0, p0, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;Lcom/pantech/app/music/library/ListMiniPlayer;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMiniPlayerHandler:Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;

    .line 589
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/library/ListMiniPlayer;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListMiniPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/library/ListMiniPlayer;->scanBackward(IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/library/ListMiniPlayer;IJ)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListMiniPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/library/ListMiniPlayer;->scanForward(IJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/library/ListMiniPlayer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListMiniPlayer;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/library/ListMiniPlayer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListMiniPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/pantech/app/music/library/ListMiniPlayer;->setSeekBarColor(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/pantech/app/music/library/ListMiniPlayer;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListMiniPlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/library/ListMiniPlayer;->setBackgroundColor(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/pantech/app/music/library/ListMiniPlayer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListMiniPlayer;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSetProgressToZero:Z

    return v0
.end method

.method static synthetic access$502(Lcom/pantech/app/music/library/ListMiniPlayer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListMiniPlayer;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSetProgressToZero:Z

    return p1
.end method

.method private gotoPlayerAfterHide()V
    .registers 6

    .prologue
    const/16 v4, 0x64

    .line 443
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/library/ListMiniPlayer;->hide(IZ)V

    .line 444
    const-string v0, "ListMiniPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMiniPlayerHandler:Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;->removeMessages(I)V

    .line 451
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMiniPlayerHandler:Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 463
    return-void
.end method

.method private removeProgressMessages()V
    .registers 3

    .prologue
    .line 583
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    if-eqz v0, :cond_d

    .line 584
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->removeMessages(I)V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSetProgressToZero:Z

    .line 587
    :cond_d
    return-void
.end method

.method private scanBackward(IJ)V
    .registers 16
    .param p1, "repcnt"    # I
    .param p2, "delta"    # J

    .prologue
    const-wide/16 v6, 0x1388

    const-wide/16 v10, 0x0

    .line 294
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-nez v1, :cond_9

    .line 324
    :cond_8
    :goto_8
    return-void

    .line 298
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->position()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mStartSeekPos:J

    .line 299
    if-eqz p1, :cond_16

    const/4 v1, 0x1

    if-ne p1, v1, :cond_20

    .line 300
    :cond_16
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1a} :catch_1b

    goto :goto_8

    .line 321
    :catch_1b
    move-exception v0

    .line 322
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_8

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_20
    cmp-long v1, p2, v6

    if-gez v1, :cond_5b

    .line 304
    const-wide/16 v4, 0xa

    mul-long/2addr p2, v4

    .line 309
    :goto_27
    :try_start_27
    iget-wide v4, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mStartSeekPos:J

    sub-long v2, v4, p2

    .line 310
    .local v2, "newpos":J
    cmp-long v1, v2, v10

    if-gez v1, :cond_31

    .line 311
    const-wide/16 v2, 0x0

    .line 313
    :cond_31
    iget-wide v4, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J

    sub-long v4, p2, v4

    const-wide/16 v6, 0xfa

    cmp-long v1, v4, v6

    if-gtz v1, :cond_3d

    if-gez p1, :cond_44

    .line 314
    :cond_3d
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->seek(J)J

    .line 315
    iput-wide p2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J

    .line 317
    :cond_44
    iget-wide v4, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    cmp-long v1, v4, v10

    if-lez v1, :cond_8

    .line 318
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    const-wide/16 v4, 0x3e8

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPosition()J

    move-result-wide v6

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_5a} :catch_1b

    goto :goto_8

    .line 307
    .end local v2    # "newpos":J
    :cond_5b
    const-wide/32 v4, 0xc350

    sub-long v6, p2, v6

    const-wide/16 v8, 0x28

    mul-long/2addr v6, v8

    add-long p2, v4, v6

    goto :goto_27
.end method

.method private scanForward(IJ)V
    .registers 16
    .param p1, "repcnt"    # I
    .param p2, "delta"    # J

    .prologue
    .line 327
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-nez v3, :cond_5

    .line 363
    :cond_4
    :goto_4
    return-void

    .line 331
    :cond_5
    if-eqz p1, :cond_a

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1c

    .line 332
    :cond_a
    :try_start_a
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->position()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mStartSeekPos:J

    .line 333
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_4

    .line 360
    :catch_17
    move-exception v2

    .line 361
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 335
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1c
    const-wide/16 v6, 0x1388

    cmp-long v3, p2, v6

    if-gez v3, :cond_4a

    .line 337
    const-wide/16 v6, 0xa

    mul-long/2addr p2, v6

    .line 342
    :goto_25
    :try_start_25
    iget-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mStartSeekPos:J

    add-long v4, v6, p2

    .line 343
    .local v4, "newpos":J
    iget-wide v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    .line 344
    .local v0, "duration":J
    cmp-long v3, v4, v0

    if-ltz v3, :cond_57

    .line 345
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mStartSeekPos:J

    .line 346
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J

    .line 347
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->resetRepeat()V

    .line 348
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->resetRepeat()V

    .line 349
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    invoke-interface {v3, v6, v8, v9}, Lcom/pantech/app/music/service/IMusicPlaybackService;->next(ZJ)V

    goto :goto_4

    .line 340
    .end local v0    # "duration":J
    .end local v4    # "newpos":J
    :cond_4a
    const-wide/32 v6, 0xc350

    const-wide/16 v8, 0x1388

    sub-long v8, p2, v8

    const-wide/16 v10, 0x28

    mul-long/2addr v8, v10

    add-long p2, v6, v8

    goto :goto_25

    .line 352
    .restart local v0    # "duration":J
    .restart local v4    # "newpos":J
    :cond_57
    iget-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J

    sub-long v6, p2, v6

    const-wide/16 v8, 0xfa

    cmp-long v3, v6, v8

    if-gtz v3, :cond_63

    if-gez p1, :cond_6a

    .line 353
    :cond_63
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v3, v4, v5}, Lcom/pantech/app/music/service/IMusicPlaybackService;->seek(J)J

    .line 354
    iput-wide p2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLastSeekEventTime:J

    .line 356
    :cond_6a
    iget-wide v6, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_4

    .line 357
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    const-wide/16 v6, 0x3e8

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPosition()J

    move-result-wide v8

    mul-long/2addr v6, v8

    iget-wide v8, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_82} :catch_17

    goto :goto_4
.end method

.method private sendProgressMessages()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 575
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    if-eqz v1, :cond_15

    .line 576
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    invoke-virtual {v1, v2, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 577
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->removeMessages(I)V

    .line 578
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;->sendMessage(Landroid/os/Message;)Z

    .line 580
    .end local v0    # "msg":Landroid/os/Message;
    :cond_15
    return-void
.end method

.method private setBackgroundColor(IZ)V
    .registers 7
    .param p1, "color"    # I
    .param p2, "withAni"    # Z

    .prologue
    .line 534
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    .line 563
    :goto_4
    return-void

    .line 536
    :cond_5
    if-eqz p2, :cond_36

    .line 537
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    const v2, 0x7f04002a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 538
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 539
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 540
    new-instance v1, Lcom/pantech/app/music/library/ListMiniPlayer$7;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/ListMiniPlayer$7;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 555
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBgEffect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 556
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBgEffect:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 557
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBgEffect:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_4

    .line 560
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_36
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBgEffect:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBackground:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4
.end method

.method private setSeekBarColor(I)V
    .registers 8
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x1

    .line 566
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_2f

    .line 567
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0201ab

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 568
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v4, 0x800003

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 569
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x2

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    aput-object v2, v1, v5

    .line 570
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2f
    return-void
.end method


# virtual methods
.method public addOptions(I)V
    .registers 3
    .param p1, "options"    # I

    .prologue
    .line 467
    iget v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mOptions:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mOptions:I

    .line 468
    return-void
.end method

.method handleMessageForMiniPlayer(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 125
    :goto_5
    return-void

    .line 119
    :pswitch_6
    const-string v0, "ListMiniPlayer"

    const-string v1, "MSG_GO_TO_PLAYER"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/IntentUtils;->gotoPlayer(Landroid/app/Activity;)V

    goto :goto_5

    .line 117
    nop

    :pswitch_data_16
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method

.method public hide(IZ)V
    .registers 8
    .param p1, "delay"    # I
    .param p2, "withAni"    # Z

    .prologue
    const/4 v4, 0x0

    .line 423
    iget-boolean v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIsShowing:Z

    if-nez v1, :cond_6

    .line 440
    :goto_5
    return-void

    .line 425
    :cond_6
    const-string v1, "ListMiniPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIsShowing:Z

    .line 427
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 429
    if-eqz p2, :cond_4b

    .line 430
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v4, v4, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 431
    .local v0, "ani2":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 432
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 433
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    .end local v0    # "ani2":Landroid/view/animation/Animation;
    :cond_4b
    invoke-direct {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->removeProgressMessages()V

    goto :goto_5
.end method

.method public isActivated()Z
    .registers 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 290
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMusicCache:Lcom/pantech/app/music/service/MusicCache;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicCache;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    .line 157
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 136
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    .line 140
    const-string v0, "ListMiniPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNowPlaying:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 234
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mCallback:Lcom/pantech/app/music/library/IListMiniPlayer$Callback;

    invoke-interface {v0}, Lcom/pantech/app/music/library/IListMiniPlayer$Callback;->onNowPlayingButtonClicked()V

    .line 251
    :cond_d
    :goto_d
    return-void

    .line 236
    :cond_e
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 237
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->nextRequest()V

    goto :goto_d

    .line 239
    :cond_1a
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 240
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->prevRequest()V

    goto :goto_d

    .line 242
    :cond_26
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnTogglePlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 243
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->togglePlay()V

    goto :goto_d

    .line 245
    :cond_32
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLayoutInfo:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 248
    const-string v0, "ListMiniPlayer"

    const-string v1, "gotoPlayerAfterHide"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->gotoPlayerAfterHide()V

    goto :goto_d
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v0, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mProgressHandler:Lcom/pantech/app/music/library/ListMiniPlayer$ProgressHandler;

    .line 131
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x104

    const v4, 0x7f10013b

    const/4 v3, 0x0

    .line 161
    iput-object p2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    .line 162
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicCache;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/service/MusicCache;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMusicCache:Lcom/pantech/app/music/service/MusicCache;

    .line 163
    const v1, 0x7f030089

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f100133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLayoutInfo:Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mLayoutInfo:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f100137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNowPlaying:Landroid/widget/ImageButton;

    .line 168
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNowPlaying:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v1, 0x7f10013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 170
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/music/player/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v1, 0x7f100138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 172
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/music/player/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v1, 0x7f100139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnTogglePlay:Landroid/widget/ImageButton;

    .line 174
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnTogglePlay:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBackground:Landroid/view/View;

    .line 178
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    invoke-virtual {v1, v2, v6, v7}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 179
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    invoke-virtual {v1, v2, v6, v7}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 181
    const v1, 0x7f100134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mTxtTitle:Landroid/widget/TextView;

    .line 182
    const v1, 0x7f100135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mTxtSub:Landroid/widget/TextView;

    .line 185
    const v1, 0x7f100132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    .line 186
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 187
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/pantech/app/music/library/ListMiniPlayer$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$3;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBackground:Landroid/view/View;

    .line 195
    const v1, 0x7f10013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBgEffect:Landroid/widget/ImageView;

    .line 198
    invoke-virtual {p0, v3, v3}, Lcom/pantech/app/music/library/ListMiniPlayer;->show(IZ)V

    .line 200
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 228
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMiniPlayerHandler:Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/ListMiniPlayer$MiniPlayerHandler;->removeMessages(I)V

    .line 229
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    .line 146
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 150
    const-string v0, "ListMiniPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.pantech.app.music.infochanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 257
    iget-boolean v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mFragmentLifeCycleStarted:Z

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/library/ListMiniPlayer;->updatePlayerColor(Z)V

    .line 258
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->updatePlayerInfo()V

    .line 273
    :cond_15
    :goto_15
    return-void

    .line 260
    :cond_16
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 261
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    goto :goto_15

    .line 263
    :cond_25
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 264
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->updatePlayerInfo()V

    goto :goto_15

    .line 266
    :cond_31
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 268
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueueLength()I

    move-result v1

    if-lez v1, :cond_43

    .line 269
    invoke-virtual {p0, v2, v2}, Lcom/pantech/app/music/library/ListMiniPlayer;->show(IZ)V

    goto :goto_15

    .line 271
    :cond_43
    invoke-virtual {p0, v2, v2}, Lcom/pantech/app/music/library/ListMiniPlayer;->hide(IZ)V

    goto :goto_15
.end method

.method public onServiceConnected(Lcom/pantech/app/music/service/IMusicPlaybackService;)V
    .registers 7
    .param p1, "iService"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    const-string v0, "ListMiniPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDetached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->isDetached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 280
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mDuration:J

    .line 281
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueueLength()I

    move-result v0

    if-lez v0, :cond_30

    .line 282
    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/library/ListMiniPlayer;->show(IZ)V

    .line 285
    :goto_2f
    return-void

    .line 284
    :cond_30
    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/library/ListMiniPlayer;->hide(IZ)V

    goto :goto_2f
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 205
    const-string v0, "ListMiniPlayer"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->sendProgressMessages()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mFragmentLifeCycleStarted:Z

    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 211
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 215
    const-string v0, "ListMiniPlayer"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->removeProgressMessages()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mFragmentLifeCycleStarted:Z

    .line 220
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 221
    return-void
.end method

.method public removeOptions(I)V
    .registers 4
    .param p1, "options"    # I

    .prologue
    .line 472
    iget v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mOptions:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mOptions:I

    .line 473
    return-void
.end method

.method public setCallback(Lcom/pantech/app/music/library/IListMiniPlayer$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/pantech/app/music/library/IListMiniPlayer$Callback;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mCallback:Lcom/pantech/app/music/library/IListMiniPlayer$Callback;

    .line 478
    return-void
.end method

.method public show(IZ)V
    .registers 9
    .param p1, "delay"    # I
    .param p2, "withAni"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 367
    const-string v1, "ListMiniPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show()  delay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", withAni: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMusicCache:Lcom/pantech/app/music/service/MusicCache;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicCache;->getQueueLength()I

    move-result v1

    if-nez v1, :cond_2d

    .line 419
    :cond_2c
    :goto_2c
    return-void

    .line 370
    :cond_2d
    iget v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mOptions:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2c

    .line 372
    iget v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mOptions:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2c

    .line 374
    iget-boolean v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIsShowing:Z

    if-nez v1, :cond_2c

    .line 377
    const-string v1, "ListMiniPlayer"

    const-string v2, "not return!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugV(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mIsShowing:Z

    .line 379
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->updatePlayerInfo()V

    .line 380
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/library/ListMiniPlayer;->updatePlayerColor(Z)V

    .line 382
    if-eqz p2, :cond_7c

    .line 383
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 384
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 385
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 386
    new-instance v1, Lcom/pantech/app/music/library/ListMiniPlayer$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$4;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 398
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 418
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_78
    :goto_78
    invoke-direct {p0}, Lcom/pantech/app/music/library/ListMiniPlayer;->sendProgressMessages()V

    goto :goto_2c

    .line 401
    :cond_7c
    if-lez p1, :cond_8d

    .line 403
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/pantech/app/music/library/ListMiniPlayer$5;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$5;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V

    int-to-long v4, p1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_78

    .line 411
    :cond_8d
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_78
.end method

.method updatePlayerColor(Z)V
    .registers 6
    .param p1, "withAni"    # Z

    .prologue
    .line 498
    iget-object v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    if-nez v2, :cond_5

    .line 531
    :goto_4
    return-void

    .line 501
    :cond_5
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 502
    .local v1, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iget-object v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMusicCache:Lcom/pantech/app/music/service/MusicCache;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicCache;->getMusicItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 503
    sget v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    iput v2, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 506
    iget-object v2, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v0

    .line 507
    .local v0, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v2, Lcom/pantech/app/music/library/ListMiniPlayer$6;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/library/ListMiniPlayer$6;-><init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method updatePlayerInfo()V
    .registers 4

    .prologue
    .line 483
    const-string v1, "ListMiniPlayer"

    const-string v2, "updatePlayerInfo()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMusicCache:Lcom/pantech/app/music/service/MusicCache;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicCache;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 486
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnTogglePlay:Landroid/widget/ImageButton;

    const v2, 0x7f02018b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 490
    :goto_17
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mMusicCache:Lcom/pantech/app/music/service/MusicCache;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicCache;->getMusicItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 491
    .local v0, "musicItem":Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v0, :cond_31

    .line 492
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mTxtSub:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_31
    return-void

    .line 488
    .end local v0    # "musicItem":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBtnTogglePlay:Landroid/widget/ImageButton;

    const v2, 0x7f02018c

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_17
.end method
