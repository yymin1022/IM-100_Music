.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicInterfaceFunc;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayMenuControl"
.end annotation


# static fields
.field public static final CONTROLLER_1:I = 0x1

.field public static final CONTROLLER_2:I = 0x2

.field public static final CONTROLLER_3:I = 0x3

.field private static final STATE_MENU_BASIC:I = 0x1

.field private static final STATE_MENU_EXPAND:I = 0x2

.field private static final STATE_MENU_HIDE:I


# instance fields
.field private MARGIN_TOP_FULL:I

.field private MARGIN_TOP_HIDE:I

.field private MARGIN_TOP_MINI:I

.field private bShownPopupMenu:Z

.field private mBtnEqaulizer:Landroid/widget/ImageButton;

.field private mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

.field private mBtnNowPlay:Landroid/widget/ImageButton;

.field private mBtnOverflowMenu:Landroid/widget/ImageButton;

.field private mBtnPlayPause:Landroid/widget/ImageButton;

.field private mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

.field private mBtnRepeat:Landroid/widget/ImageButton;

.field private mBtnShuffle:Landroid/widget/ImageButton;

.field private mBtnToList:Landroid/widget/ImageButton;

.field private mController:I

.field private mControllerBG:Landroid/view/View;

.field private mControllerView1:Landroid/view/View;

.field private mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

.field private mLayoutBasicItem:Landroid/widget/LinearLayout;

.field private mLayoutBasicMenu:Landroid/widget/RelativeLayout;

.field private mLayoutControlInfo:Landroid/widget/LinearLayout;

.field private mLayoutExpandMenu:Landroid/widget/RelativeLayout;

.field private mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

.field private mStateMenu:I

.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 3767
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3748
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    .line 3749
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    .line 3750
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_FULL:I

    .line 3751
    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->bShownPopupMenu:Z

    .line 3752
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    .line 3760
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$2;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    .line 3768
    iput v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    .line 3769
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mController:I

    .line 3770
    return-void
.end method

.method static synthetic access$5402(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;
    .param p1, "x1"    # Z

    .prologue
    .line 3712
    iput-boolean p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->bShownPopupMenu:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 3712
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerBG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    .prologue
    .line 3712
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private setControllerView(I)V
    .registers 8
    .param p1, "controller"    # I

    .prologue
    const-wide/16 v4, 0x104

    const/4 v3, 0x0

    .line 3881
    iput p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mController:I

    .line 3882
    const/4 v0, 0x0

    .line 3883
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 3884
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    .line 3887
    :cond_b
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v2, 0x7f10017c

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutControlInfo:Landroid/widget/LinearLayout;

    .line 3888
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutControlInfo:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_26

    .line 3889
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutControlInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 3890
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutControlInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3892
    :cond_26
    if-eqz v0, :cond_90

    .line 3893
    const v1, 0x7f100139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    .line 3894
    const v1, 0x7f100138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 3895
    const v1, 0x7f10013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/player/RepeatingImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    .line 3896
    const v1, 0x7f100137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    .line 3898
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->setFocusable(Z)V

    .line 3899
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/player/RepeatingImageButton;->setFocusable(Z)V

    .line 3900
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3902
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3904
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3905
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/music/player/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3906
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/music/player/RepeatingImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3907
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3909
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mRewListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    invoke-virtual {v1, v2, v4, v5}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 3910
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mFFListener:Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;

    invoke-virtual {v1, v2, v4, v5}, Lcom/pantech/app/music/player/RepeatingImageButton;->setRepeatListener(Lcom/pantech/app/music/player/RepeatingImageButton$RepeatListener;J)V

    .line 3912
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updatePlayButton()V

    .line 3913
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updateNowPlaying()V

    .line 3915
    :cond_90
    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)V
    .registers 6
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 3833
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "showPopupMenu()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v3, 0x800005

    invoke-direct {v1, v2, p1, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 3836
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isBlackTheme()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isOverflowMenuAlwaysVisible()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3838
    :try_start_1f
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    const v2, -0x312bd

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_4f

    .line 3844
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5200(Lcom/pantech/app/music/player/MusicPlaybackActivity;Landroid/view/Menu;)Landroid/view/Menu;

    .line 3845
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$3;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 3852
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$4;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$4;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 3859
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 3860
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->bShownPopupMenu:Z

    .line 3861
    return-void

    .line 3839
    :catch_4f
    move-exception v0

    .line 3840
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method


# virtual methods
.method hideController(J)V
    .registers 8
    .param p1, "startoffset"    # J

    .prologue
    const/4 v4, 0x0

    .line 4215
    const/4 v1, 0x0

    .line 4216
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_10

    .line 4217
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    .line 4220
    :cond_10
    if-eqz v1, :cond_3d

    .line 4221
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3e

    .line 4222
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4223
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4224
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4225
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4226
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4227
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4232
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_3d
    :goto_3d
    return-void

    .line 4229
    :cond_3e
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3d
.end method

.method hideMenu(J)V
    .registers 14
    .param p1, "startOffset"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 4122
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    if-nez v2, :cond_15

    .line 4123
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4124
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4161
    :goto_14
    return-void

    .line 4128
    :cond_15
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_5d

    .line 4129
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4130
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4131
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4132
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4133
    cmp-long v2, p1, v8

    if-ltz v2, :cond_5d

    .line 4135
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a3

    .line 4136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_FULL:I

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4140
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    :goto_43
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4141
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4142
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4143
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4146
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5d
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_9e

    .line 4147
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4148
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4149
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4150
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4151
    cmp-long v2, p1, v8

    if-ltz v2, :cond_9e

    .line 4152
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4153
    .restart local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4154
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4155
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4156
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4160
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9e
    const/4 v2, 0x0

    iput v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    goto/16 :goto_14

    .line 4138
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    goto :goto_43
.end method

.method public hidePopupMenu()V
    .registers 2

    .prologue
    .line 3868
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_9

    .line 3869
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 3871
    :cond_9
    return-void
.end method

.method hideRepeatShuffle(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    .line 4267
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    if-nez v1, :cond_5

    .line 4281
    :goto_4
    return-void

    .line 4270
    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_3b

    .line 4271
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4272
    .local v0, "ani":Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4300(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4273
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4274
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4276
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4277
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 4279
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_3b
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method miniController(J)V
    .registers 3
    .param p1, "startoffset"    # J

    .prologue
    .line 4186
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 3919
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PlayMenuControl Button onClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3921
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_28

    .line 3956
    :cond_27
    :goto_27
    return-void

    .line 3924
    :cond_28
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3925
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5600(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    .line 3930
    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5800(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3933
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5802(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)Z

    .line 3934
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v0

    const/16 v1, 0x1e

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3936
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnToList:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 3937
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->gotoLibraryList()V

    goto :goto_27

    .line 3926
    :cond_5d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 3927
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5700(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    goto :goto_35

    .line 3938
    :cond_6c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 3939
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    goto :goto_27

    .line 3940
    :cond_7a
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnEqaulizer:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 3942
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->checkAndShowHifiAudioControl(Z)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3944
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/assist/MusicEQControl;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3945
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/assist/MusicEQControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicEQControl;->requestPopupList()V

    goto :goto_27

    .line 3947
    :cond_9c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 3948
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$6000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    goto/16 :goto_27

    .line 3949
    :cond_ab
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    .line 3950
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->toggleRepeat()V

    goto/16 :goto_27

    .line 3951
    :cond_be
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnShuffle:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 3952
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->toggleShuffle()V

    goto/16 :goto_27

    .line 3953
    :cond_d1
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3954
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showPopupMenu(Landroid/view/View;)V

    goto/16 :goto_27
.end method

.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 4
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromTouch"    # Z

    .prologue
    .line 4047
    return-void
.end method

.method public refreshPopupMenu()V
    .registers 3

    .prologue
    .line 3874
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->bShownPopupMenu:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1c

    .line 3875
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hidePopupMenu()V

    .line 3876
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showPopupMenu(Landroid/view/View;)V

    .line 3878
    :cond_1c
    return-void
.end method

.method resetRepeatButton()V
    .registers 2

    .prologue
    .line 3959
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->resetRepeat()V

    .line 3960
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/RepeatingImageButton;->resetRepeat()V

    .line 3961
    return-void
.end method

.method public setContentView()V
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 3774
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100175

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    .line 3775
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3776
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100173

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerBG:Landroid/view/View;

    .line 3777
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerBG:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3779
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mController:I

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setControllerView(I)V

    .line 3781
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    if-eqz v0, :cond_34

    .line 3782
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3785
    :cond_34
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100186

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    .line 3786
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100187

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicItem:Landroid/widget/LinearLayout;

    .line 3787
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicItem:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->rePositioning4FullScreen(Landroid/app/Activity;Landroid/view/View;)V

    .line 3788
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100184

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    .line 3789
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100188

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnOverflowMenu:Landroid/widget/ImageButton;

    .line 3790
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3791
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100199

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    .line 3792
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100198

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnShuffle:Landroid/widget/ImageButton;

    .line 3793
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100189

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnToList:Landroid/widget/ImageButton;

    .line 3794
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f100197

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    .line 3796
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const v1, 0x7f10018a

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnEqaulizer:Landroid/widget/ImageButton;

    .line 3797
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/assist/MusicEQControl;

    move-result-object v0

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$5100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/assist/MusicEQControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/assist/MusicEQControl;->isEqualizerOn()Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 3798
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnEqaulizer:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 3801
    :cond_ce
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnEqaulizer:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3802
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3803
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3804
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnToList:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3805
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 3807
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3808
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3809
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnToList:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3810
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnEqaulizer:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3812
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    if-nez v0, :cond_12a

    .line 3813
    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideMenu(J)V

    .line 3820
    :goto_102
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->refreshPopupMenu()V

    .line 3822
    const v0, -0x3c5d8000    # -325.0f

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    .line 3823
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_FULL:I

    .line 3824
    const/high16 v0, -0x3d5a0000    # -83.0f

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    .line 3825
    return-void

    .line 3814
    :cond_12a
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    if-ne v0, v3, :cond_132

    .line 3815
    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showBasicMenu(J)V

    goto :goto_102

    .line 3817
    :cond_132
    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showExpandMenu(J)V

    goto :goto_102
.end method

.method setCtlButton(Z)V
    .registers 5
    .param p1, "fSet"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3968
    if-eqz p1, :cond_f

    .line 3969
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 3970
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 3975
    :goto_e
    return-void

    .line 3972
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNext:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    .line 3973
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPrev:Lcom/pantech/app/music/player/RepeatingImageButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/player/RepeatingImageButton;->setClickable(Z)V

    goto :goto_e
.end method

.method setEQImgSelected(Z)V
    .registers 3
    .param p1, "bSet"    # Z

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnEqaulizer:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 4043
    return-void
.end method

.method public setSwatchColor(Landroid/support/v7/graphics/Palette$Swatch;Z)V
    .registers 3
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "fail"    # Z

    .prologue
    .line 3829
    return-void
.end method

.method setVisibility4(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 4054
    if-nez p1, :cond_11

    .line 4055
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showBasicMenu(J)V

    .line 4059
    :goto_d
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setVisibilityController(I)V

    .line 4060
    return-void

    .line 4057
    :cond_11
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->hideMenu(J)V

    goto :goto_d
.end method

.method setVisibilityController(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 4050
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4051
    return-void
.end method

.method showBasicMenu(J)V
    .registers 14
    .param p1, "startOffset"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 4063
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4d

    .line 4064
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4065
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4066
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4067
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4069
    cmp-long v2, p1, v8

    if-ltz v2, :cond_4d

    .line 4071
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    if-nez v2, :cond_96

    .line 4072
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4076
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    :goto_33
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4077
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4078
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4079
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4082
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4d
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_92

    .line 4083
    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    if-nez v2, :cond_92

    .line 4084
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4085
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4086
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4087
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4089
    cmp-long v2, p1, v8

    if-ltz v2, :cond_92

    .line 4091
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_HIDE:I

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4092
    .restart local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4093
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4094
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4095
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutBasicMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4100
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_92
    const/4 v2, 0x1

    iput v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    .line 4101
    return-void

    .line 4074
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_96
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_FULL:I

    iget v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    goto :goto_33
.end method

.method showController(J)V
    .registers 10
    .param p1, "startoffset"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4164
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    if-nez v2, :cond_7

    .line 4183
    :cond_6
    :goto_6
    return-void

    .line 4167
    :cond_7
    invoke-direct {p0, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->setControllerView(I)V

    .line 4168
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4170
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_6

    .line 4171
    const/4 v1, 0x0

    .line 4172
    .local v1, "height":I
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    if-ne v2, v5, :cond_52

    .line 4173
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x429c0000    # 78.0f

    invoke-static {v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getPixelFromDip(Landroid/content/Context;F)I

    move-result v1

    .line 4177
    :goto_2b
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4178
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4179
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4180
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4181
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerView1:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    .line 4175
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_52
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x427c0000    # 63.0f

    invoke-static {v2, v3}, Lcom/pantech/app/music/player/oneplayer/circularview/CircleUtils;->getPixelFromDip(Landroid/content/Context;F)I

    move-result v1

    goto :goto_2b
.end method

.method showExpandMenu(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4104
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_44

    .line 4105
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4106
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 4107
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4108
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4109
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_44

    .line 4110
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->MARGIN_TOP_MINI:I

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4111
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4112
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4113
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4114
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutExpandMenu:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4118
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_44
    const/4 v2, 0x2

    iput v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mStateMenu:I

    .line 4119
    return-void
.end method

.method public showPopupMenu()V
    .registers 2

    .prologue
    .line 3864
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showPopupMenu(Landroid/view/View;)V

    .line 3865
    return-void
.end method

.method showRepeatShuffle(J)V
    .registers 8
    .param p1, "startOffset"    # J

    .prologue
    .line 4235
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    if-nez v1, :cond_5

    .line 4264
    :goto_4
    return-void

    .line 4239
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4240
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_43

    .line 4241
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4242
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4243
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4244
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$6;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$6;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4258
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4259
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 4261
    :cond_43
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 4262
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mLayoutShuffleRepeat:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method toggleController(J)V
    .registers 8
    .param p1, "startoffset"    # J

    .prologue
    const/4 v4, 0x0

    .line 4190
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_38

    .line 4191
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x43e10000    # 450.0f

    invoke-direct {v0, v4, v4, v4, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 4192
    .local v0, "ani":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 4193
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 4194
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4195
    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$5;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$5;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4209
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerBG:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4210
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mControllerBG:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4212
    .end local v0    # "ani":Landroid/view/animation/TranslateAnimation;
    :cond_38
    return-void
.end method

.method updateNowPlaying()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3994
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v0, :cond_18

    .line 3995
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 3999
    :goto_d
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mController:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 4000
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 4004
    :goto_17
    return-void

    .line 3997
    :cond_18
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_d

    .line 4002
    :cond_1e
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnNowPlay:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_17
.end method

.method updatePlayButton()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4007
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePlayButton()  mBtnPlayPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4008
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    if-nez v0, :cond_20

    .line 4030
    :goto_1f
    return-void

    .line 4011
    :cond_20
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 4012
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "mService.isPlaying()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4013
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mController:I

    if-ne v0, v3, :cond_48

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v0

    if-ne v0, v3, :cond_48

    .line 4015
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f0201eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1f

    .line 4018
    :cond_48
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1f

    .line 4021
    :cond_51
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "NOT mService.isPlaying()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    iget v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mController:I

    if-ne v0, v3, :cond_6d

    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)I

    move-result v0

    if-ne v0, v3, :cond_6d

    .line 4024
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f0201ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1f

    .line 4027
    :cond_6d
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f02018c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1f
.end method

.method updateRepeatButton()V
    .registers 5

    .prologue
    const v2, 0x7f0201ee

    const/4 v3, 0x1

    .line 3978
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    if-nez v1, :cond_9

    .line 3991
    :goto_8
    return-void

    .line 3980
    :cond_9
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getRepeatMode()I

    move-result v0

    .line 3981
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 3982
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3983
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_8

    .line 3984
    :cond_21
    if-ne v0, v3, :cond_31

    .line 3985
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    const v2, 0x7f0201ef

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3986
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_8

    .line 3988
    :cond_31
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3989
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnRepeat:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_8
.end method

.method updateShuffleButton()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4033
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getShuffleMode()I

    move-result v0

    .line 4034
    .local v0, "mode":I
    if-nez v0, :cond_14

    .line 4035
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnShuffle:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 4039
    :cond_13
    :goto_13
    return-void

    .line 4036
    :cond_14
    if-ne v0, v2, :cond_13

    .line 4037
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->mBtnShuffle:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto :goto_13
.end method
