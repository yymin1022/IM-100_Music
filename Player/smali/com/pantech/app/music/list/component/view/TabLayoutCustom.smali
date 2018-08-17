.class public Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayoutCustom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;,
        Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;,
        Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;,
        Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabLayoutOnPageChangeListener;,
        Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;,
        Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabGravity;,
        Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_TAB_TEXT_LINES:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38


# instance fields
.field private mContentInsetStart:I

.field private mMode:I

.field private mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

.field private final mRequestedTabMaxWidth:I

.field private mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabGravity:I

.field private mTabMaxWidth:I

.field private final mTabMinWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private mTabSelectedTextColor:I

.field private mTabSelectedTextColorSet:Z

.field private final mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

.field private final mTabTextAppearance:I

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setHorizontalScrollBarEnabled(Z)V

    .line 200
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setFillViewport(Z)V

    .line 202
    new-instance v1, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    .line 203
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->addView(Landroid/view/View;II)V

    .line 204
    sget-object v1, Lcom/pantech/app/music/R$styleable;->TabLayout:[I

    const v2, 0x7f0b01dd

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 208
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 209
    const/16 v1, 0x8

    const v2, 0x7f0b01de

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabTextAppearance:I

    .line 211
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingBottom:I

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingEnd:I

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingTop:I

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingStart:I

    .line 213
    const/16 v1, 0xb

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingStart:I

    .line 215
    const/16 v1, 0xc

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingTop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingTop:I

    .line 217
    const/16 v1, 0xd

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingEnd:I

    .line 219
    const/16 v1, 0xe

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingBottom:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingBottom:I

    .line 221
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 222
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColor:I

    .line 223
    iput-boolean v5, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColorSet:Z

    .line 225
    :cond_8c
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabMinWidth:I

    .line 226
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mRequestedTabMaxWidth:I

    .line 227
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabBackgroundResId:I

    .line 228
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mContentInsetStart:I

    .line 229
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    .line 230
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabGravity:I

    .line 231
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->applyModeAndGravity()V

    .line 234
    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->updateTab(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColorSet:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColor:I

    return v0
.end method

.method static synthetic access$1200(Landroid/view/animation/Animation;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/animation/Animation;

    .prologue
    .line 89
    invoke-static {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabGravity:I

    return v0
.end method

.method static synthetic access$1402(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
    .param p1, "x1"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabGravity:I

    return p1
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;I)I
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->updateTabViewsLayoutParams()V

    return-void
.end method

.method static synthetic access$1800()Landroid/view/animation/Interpolator;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingTop:I

    return v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabMinWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabTextAppearance:I

    return v0
.end method

.method private addTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;IZ)V
    .registers 7
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->createTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;

    move-result-object v0

    .line 528
    .local v0, "tabView":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 529
    if-eqz p3, :cond_13

    .line 530
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setSelected(Z)V

    .line 532
    :cond_13
    return-void
.end method

.method private addTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;Z)V
    .registers 6
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->createTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;

    move-result-object v0

    .line 521
    .local v0, "tabView":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    if-eqz p2, :cond_13

    .line 523
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setSelected(Z)V

    .line 525
    :cond_13
    return-void
.end method

.method private animateToTab(I)V
    .registers 8
    .param p1, "newPosition"    # I

    .prologue
    const/4 v5, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->clearAnimation()V

    .line 598
    const/4 v4, -0x1

    if-ne p1, v4, :cond_8

    .line 624
    :goto_7
    return-void

    .line 601
    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 604
    :cond_14
    invoke-virtual {p0, p1, v5}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setScrollPosition(IF)V

    goto :goto_7

    .line 607
    :cond_18
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getScrollX()I

    move-result v2

    .line 608
    .local v2, "startScrollX":I
    invoke-direct {p0, p1, v5}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->calculateScrollXForTab(IF)I

    move-result v3

    .line 609
    .local v3, "targetScrollX":I
    const/16 v1, 0x12c

    .line 610
    .local v1, "duration":I
    if-eq v2, v3, :cond_36

    .line 611
    new-instance v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;

    invoke-direct {v0, p0, v2, v3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;II)V

    .line 618
    .local v0, "animation":Landroid/view/animation/Animation;
    sget-object v4, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 619
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 620
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->startAnimation(Landroid/view/animation/Animation;)V

    .line 623
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_36
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    const/16 v5, 0x12c

    invoke-virtual {v4, p1, v5}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_7
.end method

.method private applyModeAndGravity()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "paddingStart":I
    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    if-nez v1, :cond_f

    .line 682
    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mContentInsetStart:I

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabPaddingStart:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 684
    :cond_f
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-static {v1, v0, v3, v3, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 685
    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    packed-switch v1, :pswitch_data_2e

    .line 693
    :goto_19
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->updateTabViewsLayoutParams()V

    .line 694
    return-void

    .line 687
    :pswitch_1d
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setGravity(I)V

    goto :goto_19

    .line 690
    :pswitch_24
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setGravity(I)V

    goto :goto_19

    .line 685
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_24
        :pswitch_1d
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .registers 10
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 664
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    if-nez v4, :cond_45

    .line 665
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v4, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 666
    .local v2, "selectedChild":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_46

    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 669
    .local v0, "nextChild":Landroid/view/View;
    :goto_1f
    if-eqz v2, :cond_48

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 670
    .local v3, "selectedWidth":I
    :goto_25
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 671
    .local v1, "nextWidth":I
    :cond_2b
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 676
    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v2    # "selectedChild":Landroid/view/View;
    .end local v3    # "selectedWidth":I
    :cond_45
    return v1

    .line 666
    .restart local v2    # "selectedChild":Landroid/view/View;
    :cond_46
    const/4 v0, 0x0

    goto :goto_1f

    .restart local v0    # "nextChild":Landroid/view/View;
    :cond_48
    move v3, v1

    .line 669
    goto :goto_25
.end method

.method private configureTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;I)V
    .registers 6
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .param p2, "position"    # I

    .prologue
    .line 506
    invoke-virtual {p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setPosition(I)V

    .line 507
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 508
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 509
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 510
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setPosition(I)V

    .line 509
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 512
    :cond_20
    return-void
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    .line 534
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 536
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 537
    return-object v0
.end method

.method private createTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
    .registers 4
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .prologue
    .line 491
    new-instance v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;Landroid/content/Context;Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V

    .line 492
    .local v0, "tabView":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setFocusable(Z)V

    .line 493
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_18

    .line 494
    new-instance v1, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$2;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 502
    :cond_18
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    return-object v0
.end method

.method private dpToPx(I)I
    .registers 4
    .param p1, "dps"    # I

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private static isAnimationRunning(Landroid/view/animation/Animation;)Z
    .registers 2
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 634
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static lerp(FFF)F
    .registers 4
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "fraction"    # F

    .prologue
    .line 1257
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private removeTabViewAt(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 593
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->removeViewAt(I)V

    .line 594
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->requestLayout()V

    .line 595
    return-void
.end method

.method private setSelectedTabView(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 626
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildCount()I

    move-result v3

    .line 627
    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v3, :cond_1a

    .line 628
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v4, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 629
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_18

    const/4 v2, 0x1

    .line 630
    .local v2, "isSelected":Z
    :goto_12
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 629
    .end local v2    # "isSelected":Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_12

    .line 632
    .end local v0    # "child":Landroid/view/View;
    :cond_1a
    return-void
.end method

.method private updateTab(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 514
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;

    .line 515
    .local v0, "view":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;
    if-eqz v0, :cond_d

    .line 516
    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$TabView;->update()V

    .line 518
    :cond_d
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 4
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 540
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabGravity:I

    if-nez v0, :cond_11

    .line 541
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 542
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 547
    :goto_10
    return-void

    .line 544
    :cond_11
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 545
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_10
.end method

.method private updateTabViewsLayoutParams()V
    .registers 4

    .prologue
    .line 696
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 697
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 698
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 699
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 696
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 701
    .end local v0    # "child":Landroid/view/View;
    :cond_1e
    return-void
.end method


# virtual methods
.method public addTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V
    .registers 3
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .prologue
    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->addTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;Z)V

    .line 301
    return-void
.end method

.method public addTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;I)V
    .registers 4
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .param p2, "position"    # I

    .prologue
    .line 310
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->addTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;IZ)V

    .line 311
    return-void
.end method

.method public addTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;IZ)V
    .registers 6
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 336
    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->access$000(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    move-result-object v0

    if-eq v0, p0, :cond_e

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->addTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;IZ)V

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->configureTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;I)V

    .line 341
    if-eqz p3, :cond_19

    .line 342
    invoke-virtual {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->select()V

    .line 344
    :cond_19
    return-void
.end method

.method public addTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;Z)V
    .registers 5
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 319
    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->access$000(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    move-result-object v0

    if-eq v0, p0, :cond_e

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->addTabView(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;Z)V

    .line 323
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->configureTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;I)V

    .line 324
    if-eqz p2, :cond_1f

    .line 325
    invoke-virtual {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->select()V

    .line 327
    :cond_1f
    return-void
.end method

.method public addTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 6
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_5
    if-ge v1, v0, :cond_19

    .line 262
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->newTab()Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setText(Ljava/lang/CharSequence;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->addTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 264
    :cond_19
    return-void
.end method

.method public createOnPageChangeListener()Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 2

    .prologue
    .line 274
    new-instance v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$1;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V

    return-object v0
.end method

.method public getTabAt(I)Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .registers 2

    .prologue
    .line 468
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabGravity:I

    return v0
.end method

.method public getTabMode()I
    .registers 2

    .prologue
    .line 448
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    return v0
.end method

.method public getTabSelectedTextColor()I
    .registers 2

    .prologue
    .line 488
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColor:I

    return v0
.end method

.method public newTab()Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .registers 2

    .prologue
    .line 361
    new-instance v0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;-><init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .registers 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v7, 0x30

    const/4 v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 555
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_72

    .line 567
    :goto_c
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 568
    iget v6, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    if-ne v6, v9, :cond_42

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getChildCount()I

    move-result v6

    if-ne v6, v9, :cond_42

    .line 571
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 572
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getMeasuredWidth()I

    move-result v5

    .line 573
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-le v6, v5, :cond_42

    .line 576
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getChildMeasureSpec(III)I

    move-result v1

    .line 578
    .local v1, "childHeightMeasureSpec":I
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 579
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 584
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "width":I
    :cond_42
    iget v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mRequestedTabMaxWidth:I

    .line 585
    .local v4, "maxTabWidth":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getMeasuredWidth()I

    move-result v6

    const/16 v7, 0x38

    invoke-direct {p0, v7}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->dpToPx(I)I

    move-result v7

    sub-int v3, v6, v7

    .line 586
    .local v3, "defaultTabMaxWidth":I
    if-eqz v4, :cond_54

    if-le v4, v3, :cond_55

    .line 588
    :cond_54
    move v4, v3

    .line 590
    :cond_55
    iput v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabMaxWidth:I

    .line 591
    return-void

    .line 557
    .end local v3    # "defaultTabMaxWidth":I
    .end local v4    # "maxTabWidth":I
    :sswitch_58
    invoke-direct {p0, v7}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->dpToPx(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 560
    goto :goto_c

    .line 562
    :sswitch_69
    invoke-direct {p0, v7}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->dpToPx(I)I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_c

    .line 555
    :sswitch_data_72
    .sparse-switch
        -0x80000000 -> :sswitch_58
        0x0 -> :sswitch_69
    .end sparse-switch
.end method

.method public removeAllTabs()V
    .registers 4

    .prologue
    .line 415
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->removeAllViews()V

    .line 416
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 417
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .line 418
    .local v1, "tab":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setPosition(I)V

    .line 419
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 421
    .end local v1    # "tab":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    :cond_1f
    return-void
.end method

.method public removeTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V
    .registers 4
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .prologue
    .line 384
    invoke-static {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->access$000(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    move-result-object v0

    if-eq v0, p0, :cond_e

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_e
    invoke-virtual {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->removeTabAt(I)V

    .line 388
    return-void
.end method

.method public removeTabAt(I)V
    .registers 9
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 396
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getPosition()I

    move-result v3

    .line 397
    .local v3, "selectedTabPosition":I
    :goto_b
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->removeTabViewAt(I)V

    .line 398
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .line 399
    .local v2, "removedTab":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    if-eqz v2, :cond_1c

    .line 400
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setPosition(I)V

    .line 402
    :cond_1c
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 403
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_23
    if-ge v0, v1, :cond_35

    .line 404
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-virtual {v4, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->setPosition(I)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .end local v3    # "selectedTabPosition":I
    :cond_33
    move v3, v5

    .line 396
    goto :goto_b

    .line 406
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;
    .restart local v3    # "selectedTabPosition":I
    :cond_35
    if-ne v3, p1, :cond_43

    .line 407
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_44

    const/4 v4, 0x0

    :goto_40
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->selectTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V

    .line 409
    :cond_43
    return-void

    .line 407
    :cond_44
    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    goto :goto_40
.end method

.method selectTab(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V
    .registers 5
    .param p1, "tab"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .prologue
    const/4 v1, -0x1

    .line 637
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    if-ne v2, p1, :cond_1c

    .line 638
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    if-eqz v1, :cond_1b

    .line 639
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    if-eqz v1, :cond_14

    .line 640
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;->onTabReselected(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V

    .line 642
    :cond_14
    invoke-virtual {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->animateToTab(I)V

    .line 662
    :cond_1b
    :goto_1b
    return-void

    .line 645
    :cond_1c
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getPosition()I

    move-result v0

    .line 646
    .local v0, "newPosition":I
    :goto_22
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setSelectedTabView(I)V

    .line 647
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;->getPosition()I

    move-result v2

    if-ne v2, v1, :cond_5a

    :cond_31
    if-eq v0, v1, :cond_5a

    .line 650
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setScrollPosition(IF)V

    .line 654
    :goto_37
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    if-eqz v1, :cond_46

    .line 655
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;->onTabUnselected(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V

    .line 657
    :cond_46
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    .line 658
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    if-eqz v1, :cond_1b

    .line 659
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mSelectedTab:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;->onTabSelected(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$Tab;)V

    goto :goto_1b

    .end local v0    # "newPosition":I
    :cond_58
    move v0, v1

    .line 645
    goto :goto_22

    .line 652
    .restart local v0    # "newPosition":I
    :cond_5a
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->animateToTab(I)V

    goto :goto_37
.end method

.method public setOnTabSelectedListener(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;)V
    .registers 2
    .param p1, "onTabSelectedListener"    # Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mOnTabSelectedListener:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$OnTabSelectedListener;

    .line 352
    return-void
.end method

.method public setScrollPosition(IF)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->isAnimationRunning(Landroid/view/animation/Animation;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 253
    :cond_a
    :goto_a
    return-void

    .line 245
    :cond_b
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 249
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->calculateScrollXForTab(IF)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->scrollTo(II)V

    .line 252
    int-to-float v0, p1

    add-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->setSelectedTabView(I)V

    goto :goto_a
.end method

.method public setTabGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .prologue
    .line 456
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabGravity:I

    if-eq v0, p1, :cond_9

    .line 457
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabGravity:I

    .line 458
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->applyModeAndGravity()V

    .line 460
    :cond_9
    return-void
.end method

.method public setTabMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 436
    iget v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    if-eq p1, v0, :cond_9

    .line 437
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mMode:I

    .line 438
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->applyModeAndGravity()V

    .line 440
    :cond_9
    return-void
.end method

.method public setTabSelectedTextColor(I)V
    .registers 5
    .param p1, "textColor"    # I

    .prologue
    .line 476
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColorSet:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColor:I

    if-eq v2, p1, :cond_1c

    .line 477
    :cond_8
    iput p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColor:I

    .line 478
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabSelectedTextColorSet:Z

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->mTabStrip:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_14
    if-ge v0, v1, :cond_1c

    .line 480
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->updateTab(I)V

    .line 479
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 483
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1c
    return-void
.end method
