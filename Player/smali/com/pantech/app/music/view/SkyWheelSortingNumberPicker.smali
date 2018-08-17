.class public Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SkyWheelSortingNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$CustomEditText;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$InputTextFilter;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;,
        Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x7f0300b8

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SkyWheelSortingNumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.0f

.field public static final TWO_DIGIT_FORMATTER:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAdjustScroller:Landroid/widget/Scroller;

.field private mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

.field private mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

.field private mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

.field private mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

.field private mArrowMarginTopBottom:I

.field private mArrowVisible:Z

.field private mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

.field private mHasSelectorWheel:Z

.field private mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputText:Landroid/widget/EditText;

.field private mInputTextOpaque:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;

.field private mPickerHeight:I

.field private mPickerWidth:I

.field private mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private mSelectionDividerHeight:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSolidColor:I

.field private mTextSize:I

.field private mTextSizeTopBottom:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->DIGIT_CHARACTERS:[C

    .line 133
    new-instance v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$1;

    invoke-direct {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$1;-><init>()V

    sput-object v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->TWO_DIGIT_FORMATTER:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

    return-void

    .line 116
    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 504
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 514
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 524
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 241
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLongPressUpdateInterval:J

    .line 246
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    .line 271
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 527
    return-void
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1080(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic access$1602(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$300()[C
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;II)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$880(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    .prologue
    .line 60
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method private changeValueByOne(Z)V
    .registers 8
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1552
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_37

    .line 1553
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1554
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1555
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1557
    :cond_1b
    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPreviousScrollerY:I

    .line 1558
    if-eqz p1, :cond_2d

    .line 1559
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1563
    :goto_29
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    .line 1571
    :goto_2c
    return-void

    .line 1561
    :cond_2d
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_29

    .line 1565
    :cond_37
    if-eqz p1, :cond_41

    .line 1566
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setValueInternal(IZ)V

    goto :goto_2c

    .line 1568
    :cond_41
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setValueInternal(IZ)V

    goto :goto_2c
.end method

.method private decrementSelectorIndices([I)V
    .registers 5
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1672
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_3
    if-lez v0, :cond_e

    .line 1673
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1672
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1675
    :cond_e
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1676
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1d

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1d

    .line 1677
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    .line 1679
    :cond_1d
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1680
    invoke-direct {p0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1681
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1689
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1690
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_b

    .line 1704
    :goto_a
    return-void

    .line 1693
    :cond_b
    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_13

    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_19

    .line 1694
    :cond_13
    const-string v2, ""

    .line 1703
    :goto_15
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 1696
    :cond_19
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_26

    .line 1697
    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1698
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1699
    goto :goto_15

    .line 1700
    .end local v1    # "displayedValueIndex":I
    :cond_26
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_15
.end method

.method private ensureScrollWheelAdjusted()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 1943
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 1944
    .local v4, "deltaY":I
    if-eqz v4, :cond_28

    .line 1945
    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPreviousScrollerY:I

    .line 1946
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1b

    .line 1947
    if-lez v4, :cond_29

    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_1a
    add-int/2addr v4, v0

    .line 1949
    :cond_1b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1950
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    .line 1951
    const/4 v1, 0x1

    .line 1953
    :cond_28
    return v1

    .line 1947
    :cond_29
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    goto :goto_1a
.end method

.method private fling(I)V
    .registers 11
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1628
    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPreviousScrollerY:I

    .line 1630
    if-lez p1, :cond_17

    .line 1631
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1636
    :goto_13
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    .line 1637
    return-void

    .line 1633
    :cond_17
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_13
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFormatter:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFormatter:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1824
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_2d

    move-result v1

    .line 1848
    :goto_8
    return v1

    .line 1829
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 1831
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1832
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1833
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_8

    .line 1829
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1842
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_31

    move-result v1

    goto :goto_8

    .line 1825
    .end local v0    # "i":I
    :catch_2d
    move-exception v1

    .line 1848
    :goto_2e
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    goto :goto_8

    .line 1843
    .restart local v0    # "i":I
    :catch_31
    move-exception v1

    goto :goto_2e
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 6
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1643
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_14

    .line 1644
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1648
    .end local p1    # "selectorIndex":I
    :cond_13
    :goto_13
    return p1

    .line 1645
    .restart local p1    # "selectorIndex":I
    :cond_14
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_13

    .line 1646
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_13
.end method

.method private hideSoftInput()V
    .registers 4

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1107
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_16
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1109
    :cond_1e
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1110
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_30

    .line 1111
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1114
    :cond_30
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .registers 5
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1656
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_f

    .line 1657
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1656
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1659
    :cond_f
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1660
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_20

    .line 1661
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    .line 1663
    :cond_20
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1664
    invoke-direct {p0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1665
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 20
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 531
    move-object/from16 v5, p1

    .line 534
    .local v5, "context":Landroid/content/Context;
    sget-object v13, Lcom/pantech/app/music/R$styleable;->NumberPicker:[I

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 536
    .local v1, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v13, 0x8

    const v14, 0x7f0300b8

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 539
    .local v11, "layoutResId":I
    const v13, 0x7f0300b8

    if-ne v11, v13, :cond_96

    const/4 v13, 0x1

    :goto_19
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    .line 541
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSolidColor:I

    .line 543
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 545
    const/4 v13, 0x1

    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v7, v13

    .line 548
    .local v7, "defSelectionDividerHeight":I
    const/4 v13, 0x2

    invoke-virtual {v1, v13, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectionDividerHeight:I

    .line 551
    const/4 v13, 0x1

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    float-to-int v6, v13

    .line 554
    .local v6, "defSelectionDividerDistance":I
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectionDividersDistance:I

    .line 557
    const/4 v13, 0x4

    const/4 v14, -0x1

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinHeight:I

    .line 560
    const/4 v13, 0x5

    const/4 v14, -0x1

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxHeight:I

    .line 562
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinHeight:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_98

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxHeight:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_98

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxHeight:I

    if-le v13, v14, :cond_98

    .line 564
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "minHeight > maxHeight"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 539
    .end local v6    # "defSelectionDividerDistance":I
    .end local v7    # "defSelectionDividerHeight":I
    :cond_96
    const/4 v13, 0x0

    goto :goto_19

    .line 567
    .restart local v6    # "defSelectionDividerDistance":I
    .restart local v7    # "defSelectionDividerHeight":I
    :cond_98
    const/4 v13, 0x6

    const/4 v14, -0x1

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinWidth:I

    .line 570
    const/4 v13, 0x7

    const/4 v14, -0x1

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    .line 572
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_cc

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_cc

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    if-le v13, v14, :cond_cc

    .line 574
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "minWidth > maxWidth"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 577
    :cond_cc
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_259

    const/4 v13, 0x1

    :goto_d4
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mComputeMaxWidth:Z

    .line 579
    const/16 v13, 0x9

    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 582
    const/high16 v13, 0x42000000    # 32.0f

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v13, v14

    float-to-int v8, v13

    .line 583
    .local v8, "defaultInputTextSize":I
    const/16 v13, 0xa

    invoke-virtual {v1, v13, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 585
    .local v10, "inputTextSize":I
    const/16 v13, 0xc

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowMarginTopBottom:I

    .line 588
    const/16 v13, 0xb

    const/4 v14, 0x0

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSizeTopBottom:I

    .line 591
    const/16 v13, 0xd

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowVisible:Z

    .line 594
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 596
    new-instance v13, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    .line 603
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-nez v13, :cond_25c

    const/4 v13, 0x1

    :goto_12c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setWillNotDraw(Z)V

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v13

    const-string v14, "layout_inflater"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 607
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v11, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 609
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 610
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 613
    const v13, 0x7f1001ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/text/InputFilter;

    const/4 v15, 0x0

    new-instance v16, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$InputTextFilter;

    invoke-direct/range {v16 .. v17}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$InputTextFilter;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v14, 0x6

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v14, 0x0

    int-to-float v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 637
    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 638
    .local v4, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTouchSlop:I

    .line 639
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinimumFlingVelocity:I

    .line 640
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v13

    div-int/lit8 v13, v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaximumFlingVelocity:I

    .line 642
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getTextSize()F

    move-result v13

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSize:I

    .line 645
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 646
    .local v12, "paint":Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 647
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 648
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 651
    .local v3, "colors":Landroid/content/res/ColorStateList;
    sget-object v13, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->ENABLED_STATE_SET:[I

    const/high16 v14, -0x1000000

    invoke-virtual {v3, v13, v14}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 652
    .local v2, "color":I
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 653
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 654
    invoke-virtual {v12}, Landroid/graphics/Paint;->getAlpha()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputTextOpaque:I

    .line 657
    new-instance v13, Landroid/widget/Scroller;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v5, v14, v15}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 658
    new-instance v13, Landroid/widget/Scroller;

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x40200000    # 2.5f

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {v13, v5, v14}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 663
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getImportantForAccessibility()I

    move-result v13

    if-nez v13, :cond_21c

    .line 664
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setImportantForAccessibility(I)V

    .line 667
    :cond_21c
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020337

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    .line 668
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020335

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    .line 669
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020336

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020334

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    .line 671
    return-void

    .line 577
    .end local v2    # "color":I
    .end local v3    # "colors":Landroid/content/res/ColorStateList;
    .end local v4    # "configuration":Landroid/view/ViewConfiguration;
    .end local v8    # "defaultInputTextSize":I
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v10    # "inputTextSize":I
    .end local v12    # "paint":Landroid/graphics/Paint;
    :cond_259
    const/4 v13, 0x0

    goto/16 :goto_d4

    .line 603
    .restart local v8    # "defaultInputTextSize":I
    .restart local v10    # "inputTextSize":I
    :cond_25c
    const/4 v13, 0x0

    goto/16 :goto_12c
.end method

.method private initializeFadingEdges()V
    .registers 3

    .prologue
    .line 1591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1592
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setFadingEdgeLength(I)V

    .line 1593
    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 8

    .prologue
    .line 1574
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeSelectorWheelIndices()V

    .line 1575
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    .line 1576
    .local v1, "selectorIndices":[I
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSize:I

    mul-int/lit8 v4, v5, 0x3

    .line 1577
    .local v4, "totalTextHeight":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1578
    .local v3, "totalTextGapHeight":F
    const/high16 v2, 0x40400000    # 3.0f

    .line 1579
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    float-to-int v5, v5

    iput v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorTextGapHeight:I

    .line 1580
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSizeTopBottom:I

    iget v6, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    .line 1583
    iget-object v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1584
    .local v0, "editTextTextPosition":I
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    .line 1586
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    .line 1587
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 1588
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    .prologue
    .line 1504
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1505
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    .line 1506
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getValue()I

    move-result v0

    .line 1507
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_27

    .line 1508
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1509
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1d

    .line 1510
    invoke-direct {p0, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1512
    :cond_1d
    aput v2, v3, v1

    .line 1513
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1507
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1515
    .end local v2    # "selectorIndex":I
    :cond_27
    return-void
.end method

.method private makeMeasureSpec(II)I
    .registers 8
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1463
    const/4 v2, -0x1

    if-ne p2, v2, :cond_6

    .line 1474
    .end local p1    # "measureSpec":I
    :goto_5
    :sswitch_5
    return p1

    .line 1466
    .restart local p1    # "measureSpec":I
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1467
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1468
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_38

    .line 1476
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1472
    :sswitch_2a
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 1474
    :sswitch_33
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_5

    .line 1468
    :sswitch_data_38
    .sparse-switch
        -0x80000000 -> :sswitch_2a
        0x0 -> :sswitch_33
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 9
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 728
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 729
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 730
    .local v0, "amountToScroll":I
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 731
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 732
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_34

    .line 733
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_2b

    .line 734
    if-lez v2, :cond_30

    .line 735
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 740
    :cond_2b
    :goto_2b
    add-int/2addr v0, v2

    .line 741
    invoke-virtual {p0, v4, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->scrollBy(II)V

    .line 744
    :goto_2f
    return v3

    .line 737
    :cond_30
    iget v5, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_2b

    :cond_34
    move v3, v4

    .line 744
    goto :goto_2f
.end method

.method private notifyChange(II)V
    .registers 5
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mOnValueChangeListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_b

    .line 1752
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mOnValueChangeListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;->onValueChange(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;II)V

    .line 1754
    :cond_b
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 3
    .param p1, "scrollState"    # I

    .prologue
    .line 1615
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 1622
    :cond_4
    :goto_4
    return-void

    .line 1618
    :cond_5
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    .line 1619
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mOnScrollListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;

    if-eqz v0, :cond_4

    .line 1620
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mOnScrollListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;I)V

    goto :goto_4
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 4
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_12

    .line 1600
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1601
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 1603
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->onScrollStateChange(I)V

    .line 1609
    :cond_11
    :goto_11
    return-void

    .line 1605
    :cond_12
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 1606
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    goto :goto_11
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .registers 5

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_16

    .line 1786
    new-instance v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1790
    :goto_b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1791
    return-void

    .line 1788
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 6
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_16

    .line 1763
    new-instance v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1767
    :goto_b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1768
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1769
    return-void

    .line 1765
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private postSetSelectionCommand(II)V
    .registers 4
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    if-nez v0, :cond_1b

    .line 1857
    new-instance v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V

    iput-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    .line 1861
    :goto_b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->access$102(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;I)I

    .line 1862
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    invoke-static {v0, p2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;->access$202(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;I)I

    .line 1863
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1864
    return-void

    .line 1859
    :cond_1b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method private removeAllCallbacks()V
    .registers 2

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 1807
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1809
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_12

    .line 1810
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSetSelectionCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1812
    :cond_12
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_1b

    .line 1813
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1815
    :cond_1b
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->cancel()V

    .line 1816
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .registers 2

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_9

    .line 1798
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBeginSoftInputOnLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1800
    :cond_9
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_9

    .line 1776
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1778
    :cond_9
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 6
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1491
    const/4 v1, -0x1

    if-eq p1, v1, :cond_c

    .line 1492
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1493
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1495
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_c
    return p2
.end method

.method private setValueInternal(IZ)V
    .registers 5
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1524
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    if-ne v1, p1, :cond_5

    .line 1542
    :goto_4
    return-void

    .line 1528
    :cond_5
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_20

    .line 1529
    invoke-direct {p0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1534
    :goto_d
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    .line 1535
    .local v0, "previous":I
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    .line 1536
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 1537
    if-eqz p2, :cond_19

    .line 1538
    invoke-direct {p0, v0, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->notifyChange(II)V

    .line 1540
    :cond_19
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeSelectorWheelIndices()V

    .line 1541
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_4

    .line 1531
    .end local v0    # "previous":I
    :cond_20
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1532
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_d
.end method

.method private showSoftInput()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1092
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1093
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_22

    .line 1094
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_18

    .line 1095
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1097
    :cond_18
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1098
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1100
    :cond_22
    return-void
.end method

.method private tryComputeMaxWidth()V
    .registers 11

    .prologue
    .line 1120
    iget-boolean v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_5

    .line 1157
    :cond_4
    :goto_4
    return-void

    .line 1123
    :cond_5
    const/4 v4, 0x0

    .line 1124
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_4b

    .line 1125
    const/4 v3, 0x0

    .line 1126
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    const/16 v8, 0x9

    if-gt v2, v8, :cond_22

    .line 1127
    iget-object v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1128
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_1f

    .line 1129
    move v3, v1

    .line 1126
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1132
    .end local v1    # "digitWidth":F
    :cond_22
    const/4 v5, 0x0

    .line 1133
    .local v5, "numberOfDigits":I
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    .line 1134
    .local v0, "current":I
    :goto_25
    if-lez v0, :cond_2c

    .line 1135
    add-int/lit8 v5, v5, 0x1

    .line 1136
    div-int/lit8 v0, v0, 0xa

    goto :goto_25

    .line 1138
    :cond_2c
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1148
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_2f
    iget-object v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1149
    iget v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_4

    .line 1150
    iget v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_64

    .line 1151
    iput v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    .line 1155
    :goto_47
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_4

    .line 1140
    .end local v2    # "i":I
    :cond_4b
    iget-object v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1141
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4f
    if-ge v2, v7, :cond_2f

    .line 1142
    iget-object v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1143
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_61

    .line 1144
    float-to-int v4, v6

    .line 1141
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1153
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_64
    iget v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinWidth:I

    iput v8, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    goto :goto_47
.end method

.method private updateInputTextView()Z
    .registers 5

    .prologue
    .line 1736
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_27

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1738
    .local v0, "text":Ljava/lang/String;
    :goto_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1739
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1740
    const/4 v1, 0x1

    .line 1743
    :goto_26
    return v1

    .line 1736
    .end local v0    # "text":Ljava/lang/String;
    :cond_27
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_a

    .line 1743
    .restart local v0    # "text":Ljava/lang/String;
    :cond_31
    const/4 v1, 0x0

    goto :goto_26
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1711
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1712
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1714
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 1720
    :goto_13
    return-void

    .line 1717
    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1718
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setValueInternal(IZ)V

    goto :goto_13
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 4
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1438
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1439
    return-void
.end method

.method public computeScroll()V
    .registers 5

    .prologue
    .line 948
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 949
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 950
    iget-object v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 951
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 967
    :goto_10
    return-void

    .line 955
    :cond_11
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 956
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 957
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_22

    .line 958
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPreviousScrollerY:I

    .line 960
    :cond_22
    const/4 v2, 0x0

    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->scrollBy(II)V

    .line 961
    iput v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPreviousScrollerY:I

    .line 962
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 963
    invoke-direct {p0, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_10

    .line 965
    :cond_36
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_10
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_9

    .line 941
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 943
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 916
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 917
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_10

    .line 923
    :goto_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 920
    :sswitch_c
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 917
    :sswitch_data_10
    .sparse-switch
        0x17 -> :sswitch_c
        0x42 -> :sswitch_c
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 905
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 911
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 908
    :pswitch_c
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 905
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 929
    .local v0, "action":I
    packed-switch v0, :pswitch_data_10

    .line 935
    :goto_7
    :pswitch_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 932
    :pswitch_c
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeAllCallbacks()V

    goto :goto_7

    .line 929
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 2

    .prologue
    .line 1452
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1328
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxValue()I
    .registers 2

    .prologue
    .line 1257
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .prologue
    .line 1224
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .registers 2

    .prologue
    .line 1015
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .prologue
    .line 1323
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 1215
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .prologue
    .line 1168
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1333
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeAllCallbacks()V

    .line 1334
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1338
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 1339
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1434
    :cond_b
    return-void

    .line 1342
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getRight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getLeft()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1343
    .local v19, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1345
    .local v20, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    move/from16 v21, v0

    if-nez v21, :cond_ae

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowVisible:Z

    move/from16 v21, v0

    if-eqz v21, :cond_ae

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 1347
    .local v18, "w":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1348
    .local v5, "h":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowMarginTopBottom:I

    .line 1349
    .local v15, "t_gap":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPickerWidth:I

    move/from16 v21, v0

    sub-int v21, v21, v18

    div-int/lit8 v8, v21, 0x2

    .line 1350
    .local v8, "l":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPickerHeight:I

    move/from16 v21, v0

    sub-int v21, v21, v5

    sub-int v14, v21, v15

    .line 1356
    .local v14, "t_below":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIncrementVirtualButtonPressed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_178

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_86

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8e

    :cond_86
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v21, v0

    if-eqz v21, :cond_178

    .line 1361
    :cond_8e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v8, v18

    add-int v23, v14, v5

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1390
    .end local v5    # "h":I
    .end local v8    # "l":I
    .end local v14    # "t_below":I
    .end local v15    # "t_gap":I
    .end local v18    # "w":I
    :cond_ae
    :goto_ae
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    .line 1391
    .local v13, "selectorIndices":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_b3
    array-length v0, v13

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_b

    .line 1392
    aget v12, v13, v7

    .line 1393
    .local v12, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1399
    .local v11, "scrollSelectorValue":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_dc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getVisibility()I

    move-result v21

    if-eqz v21, :cond_167

    .line 1400
    :cond_dc
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_2e7

    .line 1401
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSize:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v6, v21, v22

    .line 1402
    .local v6, "halfTextSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v9, v0

    .line 1403
    .local v9, "middleDist":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSizeTopBottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v10, v0

    .line 1404
    .local v10, "middleTextSize":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSizeTopBottom:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v4, v0

    .line 1405
    .local v4, "extra":F
    neg-float v0, v6

    move/from16 v21, v0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_29a

    const/16 v21, 0x0

    cmpg-float v21, v9, v21

    if-gtz v21, :cond_29a

    .line 1406
    add-float v21, v9, v6

    mul-float v21, v21, v4

    div-float v4, v21, v6

    .line 1407
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSizeTopBottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v10, v21, v4

    .line 1408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputTextOpaque:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1417
    :goto_14b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1429
    .end local v4    # "extra":F
    .end local v6    # "halfTextSize":F
    .end local v9    # "middleDist":F
    .end local v10    # "middleTextSize":F
    :goto_156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1431
    :cond_167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    .line 1391
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b3

    .line 1363
    .end local v7    # "i":I
    .end local v11    # "scrollSelectorValue":Ljava/lang/String;
    .end local v12    # "selectorIndex":I
    .end local v13    # "selectorIndices":[I
    .restart local v5    # "h":I
    .restart local v8    # "l":I
    .restart local v14    # "t_below":I
    .restart local v15    # "t_gap":I
    .restart local v18    # "w":I
    :cond_178
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDecrementVirtualButtonPressed:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_19a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a2

    :cond_19a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c4

    .line 1368
    :cond_1a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v8, v18

    add-int v23, v5, v15

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAbovePressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1370
    :cond_1c4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_ae

    .line 1371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    move/from16 v21, v0

    if-nez v21, :cond_258

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_202

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_258

    .line 1373
    :cond_202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_236

    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v8, v18

    add-int v23, v5, v15

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1377
    :cond_236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v8, v18

    add-int v23, v14, v5

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1381
    :cond_258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v8, v18

    add-int v23, v5, v15

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowAboveNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    add-int v22, v8, v18

    add-int v23, v14, v5

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v8, v14, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowBelowNormal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_ae

    .line 1409
    .end local v5    # "h":I
    .end local v8    # "l":I
    .end local v14    # "t_below":I
    .end local v15    # "t_gap":I
    .end local v18    # "w":I
    .restart local v4    # "extra":F
    .restart local v6    # "halfTextSize":F
    .restart local v7    # "i":I
    .restart local v9    # "middleDist":F
    .restart local v10    # "middleTextSize":F
    .restart local v11    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v12    # "selectorIndex":I
    .restart local v13    # "selectorIndices":[I
    :cond_29a
    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_2c8

    cmpg-float v21, v9, v6

    if-gez v21, :cond_2c8

    .line 1410
    sub-float v21, v6, v9

    mul-float v21, v21, v4

    div-float v4, v21, v6

    .line 1411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSizeTopBottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v10, v21, v4

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputTextOpaque:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_14b

    .line 1414
    :cond_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputTextOpaque:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f000000    # 0.5f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_14b

    .line 1419
    .end local v4    # "extra":F
    .end local v6    # "halfTextSize":F
    .end local v9    # "middleDist":F
    .end local v10    # "middleTextSize":F
    :cond_2e7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTextSizeTopBottom:I

    move/from16 v17, v0

    .line 1420
    .local v17, "textSize":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputTextOpaque:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f000000    # 0.5f

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1422
    .local v16, "textOpaque":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_156
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1443
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1444
    const-class v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1445
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1446
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1447
    iget v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1448
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 749
    iget-boolean v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_e

    :cond_c
    move v1, v2

    .line 810
    :cond_d
    :goto_d
    return v1

    .line 752
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 753
    .local v0, "action":I
    packed-switch v0, :pswitch_data_a8

    move v1, v2

    .line 810
    goto :goto_d

    .line 755
    :pswitch_17
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeAllCallbacks()V

    .line 756
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 757
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownEventY:F

    iput v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownOrMoveEventY:F

    .line 758
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownEventTime:J

    .line 759
    iput-boolean v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIngonreMoveEvents:Z

    .line 760
    iput-boolean v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mShowSoftInputOnTap:Z

    .line 773
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 774
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 775
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 776
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 777
    invoke-direct {p0, v2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->onScrollStateChange(I)V

    goto :goto_d

    .line 778
    :cond_4f
    iget-object v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_62

    .line 779
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 780
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_d

    .line 781
    :cond_62
    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_81

    .line 782
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->hideSoftInput()V

    .line 787
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 788
    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    if-nez v2, :cond_d

    .line 789
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_d

    .line 792
    :cond_81
    iget v3, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownEventY:F

    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_a0

    .line 793
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->hideSoftInput()V

    .line 798
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 799
    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    if-nez v2, :cond_d

    .line 800
    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto/16 :goto_d

    .line 804
    :cond_a0
    iput-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mShowSoftInputOnTap:Z

    .line 805
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_d

    .line 753
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 17
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 675
    iget-boolean v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-nez v9, :cond_8

    .line 676
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 699
    :cond_7
    :goto_7
    return-void

    .line 679
    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getMeasuredWidth()I

    move-result v8

    .line 680
    .local v8, "msrdWdth":I
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getMeasuredHeight()I

    move-result v7

    .line 683
    .local v7, "msrdHght":I
    iget-object v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v4

    .line 684
    .local v4, "inptTxtMsrdWdth":I
    iget-object v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v3

    .line 685
    .local v3, "inptTxtMsrdHght":I
    sub-int v9, v8, v4

    div-int/lit8 v2, v9, 0x2

    .line 686
    .local v2, "inptTxtLeft":I
    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v0, v9

    .line 687
    .local v0, "adjustInptTxtTop":I
    sub-int v9, v7, v3

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v9, v0

    .line 688
    .local v6, "inptTxtTop":I
    add-int v5, v2, v4

    .line 689
    .local v5, "inptTxtRight":I
    add-int v1, v6, v3

    .line 690
    .local v1, "inptTxtBottom":I
    iget-object v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9, v2, v6, v5, v1}, Landroid/widget/EditText;->layout(IIII)V

    .line 692
    if-eqz p1, :cond_7

    .line 694
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeSelectorWheel()V

    .line 695
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeFadingEdges()V

    .line 696
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v9, v10

    iput v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTopSelectionDividerTop:I

    .line 697
    iget v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTopSelectionDividerTop:I

    iget v10, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_7
.end method

.method protected onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 703
    iget-boolean v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_8

    .line 704
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 717
    :goto_7
    return-void

    .line 708
    :cond_8
    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 709
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 710
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 712
    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 714
    .local v3, "widthSize":I
    iget v4, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 716
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setMeasuredDimension(II)V

    goto :goto_7
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2129
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPickerWidth:I

    .line 2130
    iput p2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPickerHeight:I

    .line 2131
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-nez v15, :cond_e

    .line 816
    :cond_c
    const/4 v15, 0x0

    .line 899
    :goto_d
    return v15

    .line 818
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v15, :cond_1c

    .line 819
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 821
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 823
    .local v2, "action":I
    packed-switch v2, :pswitch_data_176

    .line 899
    :cond_2c
    :goto_2c
    const/4 v15, 0x1

    goto :goto_d

    .line 825
    :pswitch_2e
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIngonreMoveEvents:Z

    if-nez v15, :cond_2c

    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 829
    .local v3, "currentMoveY":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mScrollState:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_61

    .line 830
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownEventY:F

    sub-float v15, v3, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v4, v15

    .line 831
    .local v4, "deltaDownY":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTouchSlop:I

    if-le v4, v15, :cond_5c

    .line 832
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeAllCallbacks()V

    .line 833
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->onScrollStateChange(I)V

    .line 840
    .end local v4    # "deltaDownY":I
    :cond_5c
    :goto_5c
    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_2c

    .line 836
    :cond_61
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownOrMoveEventY:F

    sub-float v15, v3, v15

    float-to-int v5, v15

    .line 837
    .local v5, "deltaMoveY":I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->scrollBy(II)V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_5c

    .line 843
    .end local v3    # "currentMoveY":F
    .end local v5    # "deltaMoveY":I
    :pswitch_72
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeBeginSoftInputCommand()V

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 845
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    invoke-virtual {v15}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->cancel()V

    .line 846
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 847
    .local v14, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaximumFlingVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 848
    invoke-virtual {v14}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v15

    float-to-int v9, v15

    .line 849
    .local v9, "initialVelocity":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinimumFlingVelocity:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_cc

    .line 850
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getVisibility()I

    move-result v15

    if-nez v15, :cond_b3

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->hideSoftInput()V

    .line 853
    :cond_b3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->fling(I)V

    .line 854
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->onScrollStateChange(I)V

    .line 895
    :goto_be
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v15}, Landroid/view/VelocityTracker;->recycle()V

    .line 896
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2c

    .line 856
    :cond_cc
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v8, v15

    .line 857
    .local v8, "eventY":I
    int-to-float v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownEventY:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-int v5, v15

    .line 858
    .restart local v5    # "deltaMoveY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLastDownEventTime:J

    move-wide/from16 v18, v0

    sub-long v6, v16, v18

    .line 859
    .local v6, "deltaTime":J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mTouchSlop:I

    if-gt v5, v15, :cond_172

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v6, v16

    if-gez v15, :cond_172

    .line 860
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v15, :cond_111

    .line 861
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mShowSoftInputOnTap:Z

    .line 862
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->showSoftInput()V

    .line 893
    :goto_10a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->onScrollStateChange(I)V

    goto :goto_be

    .line 868
    :cond_111
    const/4 v13, 0x0

    .line 869
    .local v13, "selectorIndexOffset":I
    const/high16 v15, 0x41400000    # 12.0f

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v11, v15

    .line 871
    .local v11, "offsetBottomExtra":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorTextGapHeight:I

    move/from16 v16, v0

    sub-int v12, v15, v16

    .line 873
    .local v12, "offsetTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorTextGapHeight:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int v10, v15, v11

    .line 875
    .local v10, "offsetBottom":I
    if-ge v8, v12, :cond_158

    .line 876
    const/4 v13, -0x1

    .line 880
    :cond_146
    :goto_146
    if-lez v13, :cond_15c

    .line 881
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->changeValueByOne(Z)V

    .line 882
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_10a

    .line 877
    :cond_158
    if-le v8, v10, :cond_146

    .line 878
    const/4 v13, 0x1

    goto :goto_146

    .line 883
    :cond_15c
    if-gez v13, :cond_16e

    .line 884
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->changeValueByOne(Z)V

    .line 885
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mPressedStateHelper:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_10a

    .line 887
    :cond_16e
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_10a

    .line 891
    .end local v10    # "offsetBottom":I
    .end local v11    # "offsetBottomExtra":I
    .end local v12    # "offsetTop":I
    .end local v13    # "selectorIndexOffset":I
    :cond_172
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_10a

    .line 823
    :pswitch_data_176
    .packed-switch 0x1
        :pswitch_72
        :pswitch_2e
    .end packed-switch
.end method

.method public scrollBy(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 983
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    .line 984
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_14

    if-lez p2, :cond_14

    aget v1, v0, v3

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_14

    .line 986
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    .line 1011
    :cond_13
    :goto_13
    return-void

    .line 989
    :cond_14
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_25

    if-gez p2, :cond_25

    aget v1, v0, v3

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_25

    .line 991
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    goto :goto_13

    .line 994
    :cond_25
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    .line 995
    :cond_2a
    :goto_2a
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_51

    .line 996
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    .line 997
    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->decrementSelectorIndices([I)V

    .line 998
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setValueInternal(IZ)V

    .line 999
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2a

    aget v1, v0, v3

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_2a

    .line 1000
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    goto :goto_2a

    .line 1003
    :cond_51
    :goto_51
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_13

    .line 1004
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    .line 1005
    invoke-direct {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->incrementSelectorIndices([I)V

    .line 1006
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setValueInternal(IZ)V

    .line 1007
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_51

    aget v1, v0, v3

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_51

    .line 1008
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mCurrentScrollOffset:I

    goto :goto_51
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 5
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1299
    const-string v0, "SkyWheelSortingNumberPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayedValues  : displayedValues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v0, "SkyWheelSortingNumberPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayedValues  : mDisplayedValues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_37

    .line 1319
    :goto_36
    return-void

    .line 1304
    :cond_37
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1313
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1316
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 1317
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeSelectorWheelIndices()V

    .line 1318
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->tryComputeMaxWidth()V

    goto :goto_36
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 971
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 972
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_c

    .line 973
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 975
    :cond_c
    iget-boolean v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_15

    .line 976
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 978
    :cond_15
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 979
    return-void
.end method

.method setFiltersWithLimitedLength(I)V
    .registers 6
    .param p1, "max"    # I

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    if-eqz v0, :cond_1e

    if-ltz p1, :cond_1e

    .line 1869
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$InputTextFilter;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$InputTextFilter;-><init>(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1871
    :cond_1e
    return-void
.end method

.method public setFormatter(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;)V
    .registers 3
    .param p1, "formatter"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFormatter:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    .line 1054
    :goto_4
    return-void

    .line 1051
    :cond_5
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mFormatter:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$Formatter;

    .line 1052
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeSelectorWheelIndices()V

    .line 1053
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    goto :goto_4
.end method

.method public setMaxValue(I)V
    .registers 5
    .param p1, "maxValue"    # I

    .prologue
    .line 1266
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_5

    .line 1282
    :goto_4
    return-void

    .line 1269
    :cond_5
    if-gez p1, :cond_f

    .line 1270
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1272
    :cond_f
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    .line 1273
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    if-ge v1, v2, :cond_1b

    .line 1274
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    .line 1276
    :cond_1b
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_36

    const/4 v0, 0x1

    .line 1277
    .local v0, "wrapSelectorWheel":Z
    :goto_26
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1278
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeSelectorWheelIndices()V

    .line 1279
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 1280
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->tryComputeMaxWidth()V

    .line 1281
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_4

    .line 1276
    .end local v0    # "wrapSelectorWheel":Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public setMinValue(I)V
    .registers 5
    .param p1, "minValue"    # I

    .prologue
    .line 1233
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_5

    .line 1249
    :goto_4
    return-void

    .line 1236
    :cond_5
    if-gez p1, :cond_f

    .line 1237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1239
    :cond_f
    iput p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    .line 1240
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    if-le v1, v2, :cond_1b

    .line 1241
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    iput v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mValue:I

    .line 1243
    :cond_1b
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_36

    const/4 v0, 0x1

    .line 1244
    .local v0, "wrapSelectorWheel":Z
    :goto_26
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setWrapSelectorWheel(Z)V

    .line 1245
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->initializeSelectorWheelIndices()V

    .line 1246
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->updateInputTextView()Z

    .line 1247
    invoke-direct {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->tryComputeMaxWidth()V

    .line 1248
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    goto :goto_4

    .line 1243
    .end local v0    # "wrapSelectorWheel":Z
    :cond_36
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 4
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1206
    iput-wide p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mLongPressUpdateInterval:J

    .line 1207
    return-void
.end method

.method public setOnScrollListener(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;)V
    .registers 2
    .param p1, "onScrollListener"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mOnScrollListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnScrollListener;

    .line 1034
    return-void
.end method

.method public setOnValueChangedListener(Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;)V
    .registers 2
    .param p1, "onValueChangedListener"    # Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mOnValueChangeListener:Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker$OnValueChangeListener;

    .line 1025
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 1085
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->setValueInternal(IZ)V

    .line 1086
    return-void
.end method

.method public setVisibilityArrowDrawable(Z)V
    .registers 2
    .param p1, "vis"    # Z

    .prologue
    .line 2134
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mArrowVisible:Z

    .line 2135
    invoke-virtual {p0}, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->invalidate()V

    .line 2136
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 5
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1189
    iget v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMaxValue:I

    iget v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_16

    const/4 v0, 0x1

    .line 1190
    .local v0, "wrappingAllowed":Z
    :goto_b
    if-eqz p1, :cond_f

    if-eqz v0, :cond_15

    :cond_f
    iget-boolean v1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_15

    .line 1191
    iput-boolean p1, p0, Lcom/pantech/app/music/view/SkyWheelSortingNumberPicker;->mWrapSelectorWheel:Z

    .line 1193
    :cond_15
    return-void

    .line 1189
    .end local v0    # "wrappingAllowed":Z
    :cond_16
    const/4 v0, 0x0

    goto :goto_b
.end method
