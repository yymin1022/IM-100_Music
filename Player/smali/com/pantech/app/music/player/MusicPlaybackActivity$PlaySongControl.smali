.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicInterfaceFunc;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaySongControl"
.end annotation


# static fields
.field public static final CONTROLLER_0:I = 0x0

.field public static final CONTROLLER_1:I = 0x1

.field public static final CONTROLLER_2:I = 0x2


# instance fields
.field private MARGIN_CONTROLLER_BOTTOM:I

.field private MARGIN_TOP_HIDE:I

.field private SEEKBAR_MIN_VALUE:I

.field isTrackInfoEffectMoving:Z

.field private mBtnRating:Landroid/widget/ImageButton;

.field private mController:I

.field private mDisable:Z

.field private mDuration:J

.field private mExpandSeekbarProgressRightLayout:Landroid/widget/RelativeLayout;

.field private mImageBitrate:Landroid/widget/ImageView;

.field private mLayoutExpandSeekBarGage:Landroid/widget/RelativeLayout;

.field private mLayoutPlaytime:Landroid/widget/LinearLayout;

.field private mLayoutRotation:Landroid/widget/RelativeLayout;

.field private mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

.field private mLayoutTrackInfo:Landroid/widget/RelativeLayout;

.field private mLayoutTrackTitle:Landroid/widget/LinearLayout;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekHandle:Ljava/lang/Runnable;

.field private mSeekbarExpanded:Z

.field private mStartTracking:Z

.field private mTextDuration:Landroid/widget/TextView;

.field private mTextMiniArtist:Landroid/widget/TextView;

.field private mTextMiniTitle:Landroid/widget/TextView;

.field private mTextPlayArtist:Landroid/widget/TextView;

.field private mTextPlayTitle:Landroid/widget/TextView;

.field private mTextPlaytime:Landroid/widget/TextView;

.field private mTextSeektime:Landroid/widget/TextView;

.field mTrackInfoEffectArtist:Ljava/lang/String;

.field mTrackInfoEffectDirection:I

.field mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

.field mTrackInfoEffectTitle:Ljava/lang/String;

.field private mViewTrackInfo:Landroid/view/View;

.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2841
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2795
    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    .line 2796
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectDirection:I

    .line 2797
    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    .line 2798
    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    .line 2799
    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 2818
    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    .line 2823
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_CONTROLLER_BOTTOM:I

    .line 2824
    const/16 v0, -0x64

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_TOP_HIDE:I

    .line 2825
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->SEEKBAR_MIN_VALUE:I

    .line 2826
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekHandle:Ljava/lang/Runnable;

    .line 2842
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mController:I

    .line 2843
    return-void
.end method

.method static synthetic access$3600(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    .prologue
    .line 2789
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    .prologue
    .line 2789
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->SEEKBAR_MIN_VALUE:I

    return v0
.end method

.method static synthetic access$3800(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)Landroid/widget/SeekBar;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;
    .param p1, "x1"    # Z

    .prologue
    .line 2789
    iput-boolean p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    return p1
.end method

.method private getImageBitrateTopMargin()I
    .registers 3

    .prologue
    .line 3318
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 3319
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3321
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_16
.end method

.method private setControllerView(I)V
    .registers 5
    .param p1, "controller"    # I

    .prologue
    const/4 v2, 0x0

    .line 2923
    iput p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mController:I

    .line 2924
    if-nez p1, :cond_6

    .line 2942
    :cond_5
    :goto_5
    return-void

    .line 2928
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    .line 2929
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2931
    const v1, 0x7f100132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 2932
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 2933
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_2b

    .line 2935
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2936
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 2939
    :cond_2b
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlaytime:Landroid/widget/TextView;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextDuration:Landroid/widget/TextView;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_5

    .line 2940
    :cond_37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDisable:Z

    goto :goto_5
.end method


# virtual methods
.method getDuration()J
    .registers 3

    .prologue
    .line 3529
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    return-wide v0
.end method

.method hideBitrate(JZ)V
    .registers 9
    .param p1, "startOffset"    # J
    .param p3, "withIcon"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3353
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    if-nez v2, :cond_6

    .line 3378
    :cond_5
    :goto_5
    return-void

    .line 3358
    :cond_6
    if-nez p3, :cond_2e

    .line 3359
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3360
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_TOP_HIDE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->getImageBitrateTopMargin()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3361
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3362
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/ActivityUtils;->rePositioning4FullScreen(Landroid/app/Activity;Landroid/view/View;)V

    .line 3365
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2e
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_62

    .line 3367
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_TOP_HIDE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3368
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 3369
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3370
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3371
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3374
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_62
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3375
    if-eqz p3, :cond_5

    .line 3376
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5
.end method

.method hideController(J)V
    .registers 10
    .param p1, "delay"    # J

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 3419
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_b

    .line 3482
    :goto_a
    return-void

    .line 3422
    :cond_b
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_63

    .line 3423
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3424
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_CONTROLLER_BOTTOM:I

    add-int/lit16 v2, v2, -0x1c2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3426
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3427
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3430
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3431
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3432
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3433
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3434
    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$7;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$7;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3450
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3481
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :goto_5d
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->closeOptionsMenu()V

    goto :goto_a

    .line 3452
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_63
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3453
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_CONTROLLER_BOTTOM:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3454
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3455
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3458
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3459
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 3460
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3461
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3462
    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$8;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$8;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3478
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5d
.end method

.method hidePlayTime(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    .line 3305
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_36

    .line 3306
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3307
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3308
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3309
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4300(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3310
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3311
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3315
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :goto_35
    return-void

    .line 3313
    :cond_36
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_35
.end method

.method hideSeekbarExpand(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    const/4 v4, 0x4

    .line 3254
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_57

    .line 3256
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_49

    .line 3257
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040022

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3261
    .local v0, "ani":Landroid/view/animation/Animation;
    :goto_1d
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3262
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3263
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3265
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3266
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3271
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :goto_3e
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3272
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3273
    return-void

    .line 3259
    :cond_49
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040023

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "ani":Landroid/view/animation/Animation;
    goto :goto_1d

    .line 3268
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_57
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 3269
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    goto :goto_3e
.end method

.method hideTrackInfo(J)V
    .registers 10
    .param p1, "startOffset"    # J

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 3202
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_42

    .line 3203
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3204
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3205
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3206
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4300(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3207
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3208
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3209
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3210
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3215
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :goto_41
    return-void

    .line 3212
    :cond_42
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3213
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_41
.end method

.method moveExpand()V
    .registers 7

    .prologue
    const-wide/16 v1, 0x0

    .line 3706
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$702(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J

    .line 3707
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setExpand(JIJ)V

    .line 3708
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    .line 3709
    return-void
.end method

.method moveTrackStep1(JI)V
    .registers 13
    .param p1, "startOffset"    # J
    .param p3, "direction"    # I

    .prologue
    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 3015
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTrackStep1() called with: startOffset = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], direction = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isTrackInfoEffectMoving: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackTitle:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_93

    .line 3017
    iput p3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectDirection:I

    .line 3019
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    if-nez v1, :cond_7f

    .line 3020
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "isTrackInfoEffectMoving = true"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3021
    iput-boolean v5, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    .line 3022
    const/4 v0, 0x0

    .line 3031
    .local v0, "ani":Landroid/view/animation/Animation;
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectDirection:I

    invoke-virtual {p0, v6, v7, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep2(JI)V

    .line 3033
    if-eqz v0, :cond_6d

    .line 3034
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3035
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3036
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$2;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3050
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3056
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_6d
    :goto_6d
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    if-eqz v1, :cond_7e

    .line 3057
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    if-eqz v1, :cond_83

    .line 3058
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3059
    iput-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    .line 3092
    :cond_7e
    :goto_7e
    return-void

    .line 3053
    :cond_7f
    invoke-virtual {p0, v6, v7, p3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep2(JI)V

    goto :goto_6d

    .line 3061
    :cond_83
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7e

    .line 3065
    :cond_93
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_a4

    .line 3066
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    if-eqz v1, :cond_d7

    .line 3067
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3068
    iput-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    .line 3073
    :cond_a4
    :goto_a4
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    if-eqz v1, :cond_b5

    .line 3074
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    if-eqz v1, :cond_e7

    .line 3075
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3076
    iput-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    .line 3081
    :cond_b5
    :goto_b5
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    if-eqz v1, :cond_d4

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d4

    .line 3082
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_d4

    .line 3083
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getRate()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-lez v1, :cond_f7

    .line 3084
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 3090
    :cond_d4
    :goto_d4
    iput-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    goto :goto_7e

    .line 3070
    :cond_d7
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    .line 3078
    :cond_e7
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b5

    .line 3086
    :cond_f7
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_d4
.end method

.method moveTrackStep1(JILcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 8
    .param p1, "startOffset"    # J
    .param p3, "direction"    # I
    .param p4, "nextItem"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 3002
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTrackStep1()  nextItem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3003
    if-nez p4, :cond_1b

    .line 3012
    :goto_1a
    return-void

    .line 3006
    :cond_1b
    iput-object p4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 3008
    invoke-virtual {p4}, Lcom/pantech/app/music/list/MusicItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    .line 3009
    invoke-virtual {p4}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    .line 3010
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTrackInfoEffectTitle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTrackInfoEffectArtist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p0, p1, p2, p3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep1(JI)V

    goto :goto_1a
.end method

.method moveTrackStep2(JI)V
    .registers 15
    .param p1, "startOffset"    # J
    .param p3, "direction"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3095
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTrackStep2() called with: startOffset = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], direction = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    const/4 v0, 0x0

    .line 3097
    .local v0, "ani":Landroid/view/animation/Animation;
    if-lez p3, :cond_b5

    .line 3098
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040013

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3108
    :goto_3d
    if-eqz v0, :cond_63

    .line 3109
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3110
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3111
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3112
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$3;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$3;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3128
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3130
    :cond_63
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3132
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_79

    .line 3133
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    if-eqz v1, :cond_d3

    .line 3135
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3136
    iput-object v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectTitle:Ljava/lang/String;

    .line 3143
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    if-eqz v1, :cond_b2

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b2

    .line 3144
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTrackInfoEffectItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v1, :cond_e9

    .line 3146
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/MusicItemInfo;->getRate()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-lez v1, :cond_e3

    .line 3148
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 3163
    :cond_b2
    :goto_b2
    iput-object v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    .line 3164
    return-void

    .line 3101
    :cond_b5
    if-gez p3, :cond_c6

    .line 3102
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto/16 :goto_3d

    .line 3104
    :cond_c6
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "isTrackInfoEffectMoving = false"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3105
    iput-boolean v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    .line 3106
    iput v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectDirection:I

    goto/16 :goto_3d

    .line 3139
    :cond_d3
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 3151
    :cond_e3
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_b2

    .line 3154
    :cond_e9
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getRating()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-lez v1, :cond_fd

    .line 3156
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_b2

    .line 3159
    :cond_fd
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_b2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2947
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->toggleRating()V

    .line 2949
    :cond_11
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 14
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x1f4

    .line 3576
    if-eqz p3, :cond_4d

    .line 3577
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4d

    .line 3578
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-wide v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    int-to-long v4, p2

    mul-long/2addr v2, v4

    div-long/2addr v2, v8

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$702(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J

    .line 3580
    const-wide/16 v1, -0x1

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v4

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setExpand(JIJ)V

    .line 3581
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekHandle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3582
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    if-eqz v0, :cond_5c

    .line 3583
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v0

    div-long/2addr v0, v8

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->SEEKBAR_MIN_VALUE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4e

    .line 3584
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekHandle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3593
    :cond_4d
    :goto_4d
    return-void

    .line 3586
    :cond_4e
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekHandle:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4d

    .line 3589
    :cond_5c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekHandle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4d
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v2, 0x1

    .line 3597
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "seekbar:onStartTrackingTouch()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3598
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setMenuLongKeyDisable(Z)V

    .line 3600
    iput-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mStartTracking:Z

    .line 3601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    .line 3603
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    .line 3604
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    const-wide/16 v2, 0x32c8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->SEEKBAR_MIN_VALUE:I

    .line 3607
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showSeekbarExpand(J)V

    .line 3608
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4700(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V

    .line 3610
    :cond_2e
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 14
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 3614
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "seekbar:onStopTrackingTouch()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3615
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->setMenuLongKeyDisable(Z)V

    .line 3617
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_43

    .line 3618
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3631
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekHandle:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3633
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    if-eqz v0, :cond_ae

    .line 3634
    invoke-virtual {p0, v10, v11}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideSeekbarExpand(J)V

    .line 3639
    :goto_30
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    if-eqz v0, :cond_b3

    .line 3640
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, v10, v11}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4800(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V

    .line 3645
    :goto_39
    iput-boolean v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    .line 3646
    iput-boolean v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mStartTracking:Z

    .line 3647
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$702(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J

    .line 3648
    return-void

    .line 3619
    :cond_43
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    if-nez v0, :cond_57

    .line 3620
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    goto :goto_1e

    .line 3621
    :cond_57
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v0

    div-long/2addr v0, v6

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->SEEKBAR_MIN_VALUE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_8b

    .line 3622
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->position()J

    move-result-wide v0

    div-long/2addr v0, v6

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v2

    div-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1e

    .line 3623
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    goto :goto_1e

    .line 3626
    :cond_8b
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->position()J

    move-result-wide v0

    div-long/2addr v0, v6

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->SEEKBAR_MIN_VALUE:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 3627
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    goto/16 :goto_1e

    .line 3636
    :cond_ae
    invoke-virtual {p0, v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideSeekbarExpand(J)V

    goto/16 :goto_30

    .line 3642
    :cond_b3
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4800(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V

    goto :goto_39
.end method

.method reset()V
    .registers 5

    .prologue
    .line 3524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mStartTracking:Z

    .line 3525
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$702(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J

    .line 3526
    return-void
.end method

.method public setBitrateImage()V
    .registers 9

    .prologue
    const v7, 0x7f0200dc

    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    .line 3382
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBitrateImage()  mService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    if-nez v1, :cond_34

    .line 3384
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "return!  mService == null"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    :goto_33
    return-void

    .line 3388
    :cond_34
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->getAudioMetadataType(Ljava/lang/String;)I

    move-result v0

    .line 3389
    .local v0, "metadataType":I
    const-string v1, "MusicPlaybackActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBitrateImage(type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    packed-switch v0, :pswitch_data_88

    .line 3408
    invoke-virtual {p0, v4, v5, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideBitrate(JZ)V

    goto :goto_33

    .line 3392
    :pswitch_67
    invoke-virtual {p0, v4, v5, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideBitrate(JZ)V

    goto :goto_33

    .line 3395
    :pswitch_6b
    const v1, 0x7f0200df

    invoke-virtual {p0, v4, v5, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showBitrate(JI)V

    goto :goto_33

    .line 3398
    :pswitch_72
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUseHifiAudio()Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 3399
    const v1, 0x7f0200e0

    invoke-virtual {p0, v4, v5, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showBitrate(JI)V

    goto :goto_33

    .line 3401
    :cond_7f
    invoke-virtual {p0, v4, v5, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showBitrate(JI)V

    goto :goto_33

    .line 3405
    :pswitch_83
    invoke-virtual {p0, v4, v5, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showBitrate(JI)V

    goto :goto_33

    .line 3390
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_67
        :pswitch_6b
        :pswitch_83
        :pswitch_72
    .end packed-switch
.end method

.method public setContentView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2847
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100179

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    .line 2848
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 2849
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1e

    .line 2850
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2853
    :cond_1e
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100192

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    .line 2854
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10019b

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlaytime:Landroid/widget/TextView;

    .line 2855
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10019d

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextDuration:Landroid/widget/TextView;

    .line 2857
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100172

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    .line 2858
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100193

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    .line 2859
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 2860
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100195

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackTitle:Landroid/widget/LinearLayout;

    .line 2861
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10018e

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutRotation:Landroid/widget/RelativeLayout;

    .line 2862
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutRotation:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_87

    .line 2863
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutRotation:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2865
    :cond_87
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10019a

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    .line 2866
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10018f

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    .line 2867
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100190

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutExpandSeekBarGage:Landroid/widget/RelativeLayout;

    .line 2868
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100191

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mExpandSeekbarProgressRightLayout:Landroid/widget/RelativeLayout;

    .line 2870
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100196

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    .line 2871
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100194

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    .line 2872
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100134

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextMiniTitle:Landroid/widget/TextView;

    .line 2873
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100135

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextMiniArtist:Landroid/widget/TextView;

    .line 2875
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f100174

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    .line 2876
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2879
    iget v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mController:I

    invoke-direct {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setControllerView(I)V

    .line 2881
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v1, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2883
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2884
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_CONTROLLER_BOTTOM:I

    .line 2885
    return-void
.end method

.method setDuration(J)V
    .registers 12
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 3533
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDisable:Z

    if-eqz v0, :cond_7

    .line 3543
    :cond_6
    :goto_6
    return-void

    .line 3534
    :cond_7
    iput-wide p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    .line 3535
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_11

    .line 3536
    iput-wide v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    .line 3538
    :cond_11
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextDuration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-wide v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3540
    iget-wide v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_6

    .line 3541
    invoke-virtual {p0, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setPlaytime(J)J

    goto :goto_6
.end method

.method setExpand(JIJ)V
    .registers 23
    .param p1, "startOffset"    # J
    .param p3, "progress"    # I
    .param p4, "seektime"    # J

    .prologue
    .line 3651
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x60

    mul-int v9, v9, p3

    div-int/lit16 v8, v9, 0x3e8

    .line 3660
    .local v8, "position":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_bc

    .line 3661
    const/high16 v9, -0x3d600000    # -80.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 3662
    .local v5, "basicLeftMargin":I
    const/high16 v9, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 3664
    .local v3, "MinLeftMargin":I
    const/high16 v9, 0x41f80000    # 31.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 3672
    .local v2, "ExpandGap":I
    :goto_3d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3673
    .local v7, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v10, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v10, v8, v10

    add-int/2addr v10, v2

    sub-int v6, v9, v10

    .line 3674
    .local v6, "moveGap":I
    iget v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v9, v8, v9

    add-int/2addr v9, v2

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3675
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3677
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3678
    .restart local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v9, v8, v5

    if-ge v9, v3, :cond_e2

    .line 3679
    iput v3, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3688
    :goto_6e
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3690
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    if-eqz v9, :cond_91

    .line 3691
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const-wide/16 v12, 0x1f4

    add-long v12, v12, p4

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-static {v10, v12, v13}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3694
    :cond_91
    const-wide/16 v10, 0x0

    cmp-long v9, p1, v10

    if-ltz v9, :cond_ea

    .line 3695
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    int-to-float v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v4, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3696
    .local v4, "ani":Landroid/view/animation/TranslateAnimation;
    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 3697
    const-wide/16 v10, 0xc8

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3698
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v9}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3699
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3703
    .end local v4    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_bb
    :goto_bb
    return-void

    .line 3667
    .end local v2    # "ExpandGap":I
    .end local v3    # "MinLeftMargin":I
    .end local v5    # "basicLeftMargin":I
    .end local v6    # "moveGap":I
    .end local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_bc
    const/high16 v9, -0x3d600000    # -80.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 3668
    .restart local v5    # "basicLeftMargin":I
    const/high16 v9, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v3, v9

    .line 3670
    .restart local v3    # "MinLeftMargin":I
    const/high16 v9, 0x41d00000    # 26.0f

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v10}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .restart local v2    # "ExpandGap":I
    goto/16 :goto_3d

    .line 3685
    .restart local v6    # "moveGap":I
    .restart local v7    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_e2
    add-int v9, v8, v5

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3686
    const/4 v9, 0x0

    iput v9, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_6e

    .line 3700
    :cond_ea
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekbarExpanded:Z

    if-eqz v9, :cond_bb

    .line 3701
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->clearAnimation()V

    goto :goto_bb
.end method

.method setPlaytime(J)J
    .registers 16
    .param p1, "playtime"    # J

    .prologue
    .line 3547
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDisable:Z

    if-eqz v1, :cond_7

    .line 3548
    const-wide/16 v4, 0x1f4

    .line 3571
    :goto_6
    return-wide v4

    .line 3551
    :cond_7
    iget-wide v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    cmp-long v1, p1, v6

    if-lez v1, :cond_f

    .line 3552
    iget-wide p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    .line 3555
    :cond_f
    move-wide v2, p1

    .line 3556
    .local v2, "pos":J
    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x3e8

    rem-long v8, v2, v8

    sub-long v4, v6, v8

    .line 3558
    .local v4, "remaining":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4a

    iget-wide v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_4a

    .line 3559
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mStartTracking:Z

    if-nez v1, :cond_36

    .line 3560
    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v2

    iget-wide v8, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mDuration:J

    div-long/2addr v6, v8

    long-to-int v0, v6

    .line 3561
    .local v0, "barPos":I
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3563
    .end local v0    # "barPos":I
    :cond_36
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlaytime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const-wide/16 v8, 0x1f4

    add-long/2addr v8, v2

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v6, v8, v9}, Lcom/pantech/app/music/common/MusicUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3564
    const-wide/16 v4, 0x1f4

    goto :goto_6

    .line 3566
    :cond_4a
    iget-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mStartTracking:Z

    if-nez v1, :cond_5c

    .line 3567
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlaytime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v7, 0x7f0800b1

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3569
    :cond_5c
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_6
.end method

.method public setSwatchColor(Landroid/support/v7/graphics/Palette$Swatch;Z)V
    .registers 15
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "fail"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2889
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v7

    sget-object v8, Lcom/pantech/app/music/utils/ColorUtils$Type;->PLAYBACK:Lcom/pantech/app/music/utils/ColorUtils$Type;

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/ColorUtils;->getColorfulColor(ILcom/pantech/app/music/utils/ColorUtils$Type;)Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v1

    .line 2891
    .local v1, "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2893
    .local v5, "res":Landroid/content/res/Resources;
    const v7, 0x7f0201f1

    invoke-virtual {v5, v7, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 2894
    .local v6, "shapeDrawable":Landroid/graphics/drawable/GradientDrawable;
    if-eqz v6, :cond_25

    .line 2895
    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getPointcolor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2898
    :cond_25
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const v7, 0x800003

    invoke-direct {v0, v6, v7, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 2900
    .local v0, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    const/4 v7, 0x2

    new-array v3, v7, [Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v8, 0x7f0201ab

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v3, v10

    aput-object v0, v3, v9

    .line 2901
    .local v3, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 2903
    .local v2, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v7, 0x1020000

    invoke-virtual {v2, v10, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 2904
    const v7, 0x102000d

    invoke-virtual {v2, v9, v7}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 2906
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v7, :cond_64

    .line 2907
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2908
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v9, 0x7f0201f2

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 2910
    :cond_64
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutExpandSeekBarGage:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_71

    .line 2911
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutExpandSeekBarGage:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getPointcolor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2913
    :cond_71
    const v7, 0x7f0201fd

    invoke-virtual {v5, v7, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2914
    .local v4, "progressRight":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_81

    .line 2915
    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getPointcolor()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2917
    :cond_81
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mExpandSeekbarProgressRightLayout:Landroid/widget/RelativeLayout;

    if-eqz v7, :cond_8a

    .line 2918
    iget-object v7, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mExpandSeekbarProgressRightLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v4}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2920
    :cond_8a
    return-void
.end method

.method setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3415
    return-void
.end method

.method showBitrate(JI)V
    .registers 9
    .param p1, "startOffset"    # J
    .param p3, "resId"    # I

    .prologue
    const/4 v4, 0x0

    .line 3326
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    if-nez v2, :cond_6

    .line 3350
    :goto_5
    return-void

    .line 3329
    :cond_6
    if-lez p3, :cond_d

    .line 3330
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3335
    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_58

    .line 3336
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3337
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->getImageBitrateTopMargin()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3338
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3339
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/ActivityUtils;->rePositioning4FullScreen(Landroid/app/Activity;Landroid/view/View;)V

    .line 3342
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_TOP_HIDE:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3343
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 3344
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3345
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3346
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3349
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_58
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mImageBitrate:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method

.method showController(J)V
    .registers 14
    .param p1, "offset"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 3485
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 3521
    :goto_f
    return-void

    .line 3488
    :cond_10
    invoke-direct {p0, v6}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setControllerView(I)V

    .line 3490
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    if-ne v2, v6, :cond_62

    .line 3491
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3492
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_CONTROLLER_BOTTOM:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3493
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3494
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3496
    cmp-long v2, p1, v8

    if-ltz v2, :cond_5c

    .line 3498
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f04000c

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3499
    .local v0, "ani":Landroid/view/animation/Animation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3500
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3501
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3502
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3520
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_5c
    :goto_5c
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->closeOptionsMenu()V

    goto :goto_f

    .line 3505
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_62
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3506
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->MARGIN_CONTROLLER_BOTTOM:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 3507
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3508
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3510
    cmp-long v2, p1, v8

    if-ltz v2, :cond_5c

    .line 3512
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3513
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 3514
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3515
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v4}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3516
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mViewTrackInfo:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5c
.end method

.method showPlayTime(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    .line 3277
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3278
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3e

    .line 3279
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3280
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3281
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3282
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$6;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$6;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3296
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3297
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3302
    :goto_3d
    return-void

    .line 3299
    :cond_3e
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 3300
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutPlaytime:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3d
.end method

.method showSeekbar()V
    .registers 3

    .prologue
    .line 2998
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 2999
    return-void
.end method

.method showSeekbarExpand(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    const/4 v4, 0x0

    .line 3218
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_5f

    .line 3220
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_51

    .line 3221
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040028

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3225
    .local v0, "ani":Landroid/view/animation/Animation;
    :goto_1d
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3226
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3227
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3228
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$5;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$5;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3242
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3243
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3249
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :goto_46
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3250
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3251
    return-void

    .line 3223
    :cond_51
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040029

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "ani":Landroid/view/animation/Animation;
    goto :goto_1d

    .line 3245
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_5f
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutSeekbarExpand:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 3246
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextSeektime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    goto :goto_46
.end method

.method showTrackInfo(J)V
    .registers 10
    .param p1, "startOffset"    # J

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 3168
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3169
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_49

    .line 3170
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3171
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 3172
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 3173
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$4;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3189
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3190
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3191
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3192
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3199
    :goto_48
    return-void

    .line 3194
    :cond_49
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 3195
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->clearAnimation()V

    .line 3196
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mLayoutTrackInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3197
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_48
.end method

.method updateRating()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2952
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRating()  isTrackInfoEffectMoving: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    if-nez v0, :cond_20

    .line 2973
    :cond_1f
    :goto_1f
    return-void

    .line 2956
    :cond_20
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_1f

    .line 2959
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    if-nez v0, :cond_1f

    .line 2962
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getRating()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4c

    .line 2963
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 2968
    :goto_3e
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_52

    .line 2969
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1f

    .line 2965
    :cond_4c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_3e

    .line 2971
    :cond_52
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mBtnRating:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1f
.end method

.method updateTrackInfo()V
    .registers 6

    .prologue
    .line 2976
    const-string v2, "MusicPlaybackActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTrackInfo()  isTrackInfoEffectMoving: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2977
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 2978
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 2980
    .local v0, "artist":Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextMiniTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_37

    .line 2981
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextMiniTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2983
    :cond_37
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextMiniArtist:Landroid/widget/TextView;

    if-eqz v2, :cond_40

    .line 2984
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextMiniArtist:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2986
    :cond_40
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    if-eqz v2, :cond_49

    .line 2987
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayArtist:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2989
    :cond_49
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_56

    iget-boolean v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    if-nez v2, :cond_56

    .line 2990
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTextPlayTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2993
    :cond_56
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->duration()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setDuration(J)V

    .line 2994
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->updateRating()V

    .line 2995
    return-void
.end method
