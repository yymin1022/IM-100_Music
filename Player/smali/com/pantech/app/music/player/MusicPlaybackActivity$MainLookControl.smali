.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicInterfaceFunc;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainLookControl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;
    }
.end annotation


# instance fields
.field bTouchForLyrics:Z

.field private mAlbumartAdapter:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

.field private mAlbumartBG:Landroid/widget/ImageView;

.field private mAlbumartHandler:Landroid/os/Handler;

.field private mAlbumartPager:Landroid/support/v4/view/ViewPager;

.field private mLayoutExpandBG:Landroid/widget/RelativeLayout;

.field private mLayoutExtra:Landroid/widget/RelativeLayout;

.field private mLayoutPlayTitleBG:Landroid/widget/RelativeLayout;

.field private mLayoutPlayTrackInfoBGL2:Landroid/widget/RelativeLayout;

.field private mLayoutPlayTrackInfoBGL3:Landroid/widget/RelativeLayout;

.field private mLayoutTriangleBG:Landroid/widget/RelativeLayout;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field mPageDragged:Z

.field mPageMoved:Z

.field private mPagePos:I

.field mPageState:I

.field private mReadyText:Landroid/widget/TextView;

.field private mStatusNowPlaying:Z

.field private mUpdateAlbumartUIThread:Ljava/lang/Runnable;

.field private mUpdateColorUIThread:Ljava/lang/Runnable;

.field private mUpdateLargeAlbumart:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2257
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2167
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    .line 2168
    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageMoved:Z

    .line 2169
    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageDragged:Z

    .line 2176
    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->bTouchForLyrics:Z

    .line 2183
    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mStatusNowPlaying:Z

    .line 2185
    iput-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExpandBG:Landroid/widget/RelativeLayout;

    .line 2186
    iput-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutTriangleBG:Landroid/widget/RelativeLayout;

    .line 2187
    iput-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTitleBG:Landroid/widget/RelativeLayout;

    .line 2188
    iput-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL2:Landroid/widget/RelativeLayout;

    .line 2189
    iput-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL3:Landroid/widget/RelativeLayout;

    .line 2191
    const/4 v1, -0x1

    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPagePos:I

    .line 2192
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateColorUIThread:Ljava/lang/Runnable;

    .line 2226
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateAlbumartUIThread:Ljava/lang/Runnable;

    .line 2249
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$3;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$3;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateLargeAlbumart:Ljava/lang/Runnable;

    .line 2258
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PlaybackAlbumartThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 2259
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2260
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartHandler:Landroid/os/Handler;

    .line 2261
    return-void
.end method

.method static synthetic access$2500(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/support/v4/view/ViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartAdapter:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateColorUIThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateAlbumartUIThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mReadyText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    .prologue
    .line 2166
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method cancelLargeAlbumart()V
    .registers 3

    .prologue
    .line 2486
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "cancelLargeAlbumart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateLargeAlbumart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2488
    return-void
.end method

.method finish(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    .line 2558
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_50

    .line 2559
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2560
    .local v0, "ani":Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2561
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2562
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2563
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2564
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$8;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$8;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2577
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2579
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isNowPlayingVisible()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 2580
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->hideNowPlaying()V

    .line 2583
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_50
    return-void
.end method

.method hideAlbumartPager(I)V
    .registers 7
    .param p1, "startOffset"    # I

    .prologue
    const/4 v4, 0x4

    .line 2611
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    if-nez v1, :cond_6

    .line 2629
    :cond_5
    :goto_5
    return-void

    .line 2614
    :cond_6
    if-ltz p1, :cond_3b

    .line 2616
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2617
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2618
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2619
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2620
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2621
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3b

    .line 2622
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2625
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_3b
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 2626
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_5

    .line 2627
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method hideNowPlaying()V
    .registers 3

    .prologue
    .line 2637
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "hideNowPlaying"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mStatusNowPlaying:Z

    .line 2639
    return-void
.end method

.method isNowPlayingVisible()Z
    .registers 2

    .prologue
    .line 2586
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mStatusNowPlaying:Z

    return v0
.end method

.method public isPageMoving()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 2467
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPageMoving()  mPageState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPageDragged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageDragged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2472
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageDragged:Z

    if-ne v1, v0, :cond_30

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 2461
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "notifyDataSetChanged - mAlbumartPager"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_14

    .line 2463
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 2464
    :cond_14
    return-void
.end method

.method public onAlbumartExtracted(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)V
    .registers 5
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    .line 2492
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAlbumartExtracted(key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 10
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2395
    iput p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    .line 2396
    if-nez p1, :cond_58

    .line 2397
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "onPageScrollStateChanged( SCROLL_STATE_IDLE )"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    iget-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageDragged:Z

    if-ne v2, v6, :cond_52

    .line 2401
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 2402
    .local v0, "albumartPagerPos":I
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v1

    .line 2403
    .local v1, "queuePos":I
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageScrollStateChanged( SCROLL_STATE_IDLE )  albumartPagerPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", queuePos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2404
    if-eq v0, v1, :cond_50

    .line 2405
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->setQueuePosition(IJ)V

    .line 2407
    :cond_50
    iput-boolean v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageDragged:Z

    .line 2410
    .end local v0    # "albumartPagerPos":I
    .end local v1    # "queuePos":I
    :cond_52
    const/16 v2, 0x1f4

    invoke-virtual {p0, v2, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->requestLargeAlbumart(II)V

    .line 2429
    :goto_57
    return-void

    .line 2411
    :cond_58
    const/4 v2, 0x2

    if-ne p1, v2, :cond_73

    .line 2412
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "onPageScrollStateChanged( SCROLL_STATE_SETTLING )"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateColorUIThread:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2414
    iput-boolean v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageMoved:Z

    .line 2415
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->cancelLargeAlbumart()V

    goto :goto_57

    .line 2416
    :cond_73
    if-ne p1, v6, :cond_91

    .line 2417
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "onPageScrollStateChanged( SCROLL_STATE_DRAGGING )"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateColorUIThread:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2419
    iput-boolean v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageMoved:Z

    .line 2420
    iput-boolean v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageDragged:Z

    .line 2421
    iput-boolean v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->bTouchForLyrics:Z

    .line 2422
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->cancelLargeAlbumart()V

    goto :goto_57

    .line 2424
    :cond_91
    const-string v2, "MusicPlaybackActivity"

    const-string v3, "onPageScrollStateChanged( else )"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2425
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateColorUIThread:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2426
    iput-boolean v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageMoved:Z

    .line 2427
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->cancelLargeAlbumart()V

    goto :goto_57
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 2390
    return-void
.end method

.method public onPageSelected(I)V
    .registers 8
    .param p1, "pagePos"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, -0x1

    .line 2348
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setLargeAlbumart(I)V

    .line 2354
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPagePos:I

    if-eq v0, v3, :cond_40

    .line 2355
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPagePos:I

    if-le p1, v0, :cond_49

    .line 2356
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep1(JILcom/pantech/app/music/list/MusicItemInfo;)V

    .line 2383
    :cond_40
    :goto_40
    const/16 v0, 0x1f4

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->requestLargeAlbumart(II)V

    .line 2385
    iput p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPagePos:I

    .line 2386
    return-void

    .line 2357
    :cond_49
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPagePos:I

    if-ge p1, v0, :cond_40

    .line 2358
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v3, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep1(JILcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_40
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2663
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2664
    .local v0, "action":I
    if-ne v0, v4, :cond_3e

    .line 2665
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_UP-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bTouchForLyrics: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->bTouchForLyrics:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->bTouchForLyrics:Z

    if-eqz v1, :cond_38

    .line 2667
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$100(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    .line 2679
    :cond_37
    :goto_37
    return v5

    .line 2669
    :cond_38
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$100(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    goto :goto_37

    .line 2671
    :cond_3e
    if-nez v0, :cond_61

    .line 2672
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    if-nez v1, :cond_37

    .line 2674
    iput-boolean v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->bTouchForLyrics:Z

    goto :goto_37

    .line 2676
    :cond_61
    const/4 v1, 0x2

    if-ne v0, v1, :cond_37

    .line 2677
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_MOVE-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mPageState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method release()V
    .registers 2

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 2265
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2267
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_16

    .line 2268
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2270
    :cond_16
    return-void
.end method

.method requestLargeAlbumart(II)V
    .registers 6
    .param p1, "delay"    # I
    .param p2, "number"    # I

    .prologue
    .line 2476
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestLargeAlbumart("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2482
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mUpdateAlbumartUIThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->post(Ljava/lang/Runnable;)Z

    .line 2483
    return-void
.end method

.method setAlbumart(Landroid/widget/ImageView;Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    .registers 10
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;
    .param p3, "bLarge"    # Z

    .prologue
    .line 2496
    const-string v3, "MusicPlaybackActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAlbumart()  bLarge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 2498
    if-nez p2, :cond_1b

    .line 2529
    :cond_1a
    :goto_1a
    return-void

    .line 2501
    :cond_1b
    if-eqz p1, :cond_1a

    .line 2505
    new-instance v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 2506
    .local v2, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v0

    .line 2507
    .local v0, "albumID":I
    int-to-long v4, v0

    iput-wide v4, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 2508
    iput-object p1, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    .line 2509
    if-eqz p3, :cond_31

    .line 2510
    sget v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_LARGE_SIZE:I

    iput v3, v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 2513
    :cond_31
    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v1

    .line 2514
    .local v1, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v3, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;

    invoke-direct {v3, p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$6;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;I)V

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    goto :goto_1a
.end method

.method public setContentView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 2274
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10016c

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 2275
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10016e

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mReadyText:Landroid/widget/TextView;

    .line 2276
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100178

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    .line 2278
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100185

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExpandBG:Landroid/widget/RelativeLayout;

    .line 2279
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExpandBG:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3f

    .line 2280
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExpandBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2282
    :cond_3f
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10018c

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutTriangleBG:Landroid/widget/RelativeLayout;

    .line 2283
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutTriangleBG:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_55

    .line 2284
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutTriangleBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2286
    :cond_55
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10018d

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTitleBG:Landroid/widget/RelativeLayout;

    .line 2287
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTitleBG:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_6b

    .line 2288
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTitleBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2291
    :cond_6b
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10019e

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL2:Landroid/widget/RelativeLayout;

    .line 2292
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL2:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_81

    .line 2293
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2295
    :cond_81
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10019f

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL3:Landroid/widget/RelativeLayout;

    .line 2296
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL3:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_97

    .line 2297
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2300
    :cond_97
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartAdapter:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    .line 2301
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10016d

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    .line 2302
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartAdapter:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 2304
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 2306
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2307
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 2309
    const/16 v1, 0x1f4

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->requestLargeAlbumart(II)V

    .line 2311
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100177

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    .line 2312
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    if-ne v1, v3, :cond_fd

    .line 2313
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    if-eqz v1, :cond_fd

    .line 2314
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04002f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2315
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$4;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2331
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2335
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_fd
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mStatusNowPlaying:Z

    if-eqz v1, :cond_113

    .line 2336
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$5;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$5;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->post(Ljava/lang/Runnable;)Z

    .line 2342
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->hideAlbumartPager(I)V

    .line 2344
    :cond_113
    return-void
.end method

.method public setLargeAlbumart(I)V
    .registers 5
    .param p1, "pagePos"    # I

    .prologue
    .line 2442
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLargeAlbumart()  pagePos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    if-eqz v0, :cond_2c

    .line 2445
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setAlbumart(Landroid/widget/ImageView;Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 2449
    :cond_2c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartAdapter:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    if-eqz v0, :cond_35

    .line 2450
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartAdapter:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->updateLargeAlbumart(I)V

    .line 2452
    :cond_35
    return-void
.end method

.method public setPage(IZLjava/lang/CharSequence;)V
    .registers 7
    .param p1, "pos"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "from"    # Ljava/lang/CharSequence;

    .prologue
    .line 2433
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPage() called with: pos = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], smoothScroll = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], from = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2435
    if-ltz p1, :cond_3c

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartAdapter:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3d

    .line 2439
    :cond_3c
    :goto_3c
    return-void

    .line 2438
    :cond_3d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3c
.end method

.method public setSwatchColor(Landroid/support/v7/graphics/Palette$Swatch;Z)V
    .registers 7
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "fail"    # Z

    .prologue
    .line 2642
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    .line 2643
    .local v0, "bodyColor":I
    sget-object v2, Lcom/pantech/app/music/utils/ColorUtils$Type;->PLAYBACK:Lcom/pantech/app/music/utils/ColorUtils$Type;

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/ColorUtils;->getColorfulColor(ILcom/pantech/app/music/utils/ColorUtils$Type;)Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v1

    .line 2644
    .local v1, "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExpandBG:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_17

    .line 2645
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExpandBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getSubcolor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2647
    :cond_17
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutTriangleBG:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_24

    .line 2648
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutTriangleBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getMaincolor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2650
    :cond_24
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTitleBG:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_31

    .line 2651
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTitleBG:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getSubcolor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2653
    :cond_31
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL2:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3e

    .line 2654
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL2:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getOpaqueSubcolor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2656
    :cond_3e
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL3:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4b

    .line 2657
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutPlayTrackInfoBGL3:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getMaincolor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2659
    :cond_4b
    return-void
.end method

.method showAlbumartPager(I)V
    .registers 7
    .param p1, "startOffset"    # I

    .prologue
    const/4 v4, 0x0

    .line 2590
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartBG:Landroid/widget/ImageView;

    if-nez v1, :cond_6

    .line 2608
    :cond_5
    :goto_5
    return-void

    .line 2593
    :cond_6
    if-ltz p1, :cond_3b

    .line 2595
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2596
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2597
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2598
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2599
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2600
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3b

    .line 2601
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2604
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_3b
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mAlbumartPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 2605
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_5

    .line 2606
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mLayoutExtra:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5
.end method

.method showNowPlaying()V
    .registers 3

    .prologue
    .line 2632
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "showNowPlaying"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mStatusNowPlaying:Z

    .line 2634
    return-void
.end method

.method startUp(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    .line 2532
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_38

    .line 2533
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2534
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2535
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2536
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2537
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$7;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$7;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2551
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2555
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :goto_37
    return-void

    .line 2553
    :cond_38
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->mMainLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_37
.end method
