.class public Lcom/pantech/app/music/list/component/view/ArrangeListView;
.super Lcom/pantech/app/music/list/component/view/MusicListView;
.source "ArrangeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/view/ArrangeListView$SavedState;,
        Lcom/pantech/app/music/list/component/view/ArrangeListView$RemoveListener;,
        Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;,
        Lcom/pantech/app/music/list/component/view/ArrangeListView$DragListener;
    }
.end annotation


# static fields
.field public static final ACTIVEMODE_ARRNAGE_DELETE_LIST:I = 0x0

.field public static final ACTIVEMODE_ARRNAGE_ONLY_LIST:I = 0x1

.field public static final ACTIVEMODE_NORMAL_LIST:I = 0x2

.field private static DEFINED_X_BOUND:I = 0x0

.field protected static HALF_HEIGHT:I = 0x0

.field private static final HARDWARE_KEY_DOWN_GAP:I = 0x1e

.field private static final HARDWARE_KEY_UP_GAP:I = 0x17

.field public static final IDLE:I = 0x0

.field private static final MSG_VIEW_CHANGE:I = -0x63

.field static RIGHT_DIMENS:F = 0.0f

.field private static final SCROLL_DURATION:I = 0x1e

.field public static final SLIDE:I = 0x1

.field public static final TRASH:I = 0x2

.field protected static final UP_DRAG_HEIGHT_RANGE:I = -0x14

.field private static mDistance:I

.field private static mDragUpYBound:I

.field private static mDragXbound:I

.field public static mIsRestoreCalled:Z

.field public static m_ConvertView:Landroid/view/View;

.field private static m_ImgView:Landroid/widget/ImageView;


# instance fields
.field private final DRAG_STATE_DOWN:I

.field private final DRAG_STATE_STOP:I

.field private final DRAG_STATE_UP:I

.field private LIST_SELECT_BASE_COLOR:Ljava/lang/String;

.field private START_DRAG_POINT_X:I

.field private START_DRAG_POINT_Y:I

.field private UP_DISPLAY_BOUND:I

.field protected changeFlag:Z

.field private mActiveMode:I

.field private mArrangeMode:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteXBound:I

.field public mDelselCursor:Landroid/database/Cursor;

.field private mDownDPBound:I

.field private mDownViewLine:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragDownBottomYBound:I

.field private mDragDownTopYBound:I

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragState:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDragViewHeight:I

.field private mDropListener:Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field protected mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mListHeight:I

.field mMainColor:Landroid/content/res/ColorStateList;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRemoveListener:Lcom/pantech/app/music/list/component/view/ArrangeListView$RemoveListener;

.field private mRemoveMode:I

.field private mScreenWidth:I

.field private mSrcDragPos:I

.field mSubColor:Landroid/content/res/ColorStateList;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpDPBound:I

.field private mUpViewLine:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I

.field m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

.field private m_DisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 101
    sput-object v1, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ImgView:Landroid/widget/ImageView;

    .line 103
    sput-object v1, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ConvertView:Landroid/view/View;

    .line 109
    sput-boolean v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mIsRestoreCalled:Z

    .line 114
    sput v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDistance:I

    .line 116
    sput v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->HALF_HEIGHT:I

    .line 118
    sput v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragXbound:I

    .line 119
    sput v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragUpYBound:I

    .line 123
    sput v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->DEFINED_X_BOUND:I

    .line 128
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->RIGHT_DIMENS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/MusicListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTempRect:Landroid/graphics/Rect;

    .line 85
    iput-boolean v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->changeFlag:Z

    .line 87
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    .line 89
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->DRAG_STATE_STOP:I

    .line 90
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->DRAG_STATE_UP:I

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->DRAG_STATE_DOWN:I

    .line 93
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->UP_DISPLAY_BOUND:I

    .line 95
    const/16 v0, 0x424

    iput v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownDPBound:I

    .line 96
    iget v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->UP_DISPLAY_BOUND:I

    iput v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mUpDPBound:I

    .line 98
    const/16 v0, 0x41f

    iput v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownViewLine:I

    .line 99
    iget v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->UP_DISPLAY_BOUND:I

    iput v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mUpViewLine:I

    .line 105
    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    .line 107
    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_DisplayMetrics:Landroid/util/DisplayMetrics;

    .line 120
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragDownBottomYBound:I

    .line 121
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragDownTopYBound:I

    .line 122
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDeleteXBound:I

    .line 124
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mScreenWidth:I

    .line 126
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragViewHeight:I

    .line 134
    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mContext:Landroid/content/Context;

    .line 135
    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 137
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->START_DRAG_POINT_Y:I

    .line 138
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->START_DRAG_POINT_X:I

    .line 148
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    .line 149
    iput-boolean v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mArrangeMode:Z

    .line 151
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mActiveMode:I

    .line 153
    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDelselCursor:Landroid/database/Cursor;

    .line 155
    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mListHeight:I

    .line 156
    const-string v0, "e53d2a"

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->LIST_SELECT_BASE_COLOR:Ljava/lang/String;

    .line 669
    new-instance v0, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;-><init>(Lcom/pantech/app/music/list/component/view/ArrangeListView;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mHandler:Landroid/os/Handler;

    .line 216
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTouchSlop:I

    .line 219
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mContext:Landroid/content/Context;

    .line 220
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setInitValue()V

    .line 225
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->RIGHT_DIMENS:F

    .line 227
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/ArrangeListView;

    .prologue
    .line 48
    iget v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/app/music/list/component/view/ArrangeListView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/ArrangeListView;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    return p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/ArrangeListView;

    .prologue
    .line 48
    iget v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragDownBottomYBound:I

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/ArrangeListView;

    .prologue
    .line 48
    iget v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragDownTopYBound:I

    return v0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragXbound:I

    return v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 48
    sget v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragUpYBound:I

    return v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/list/component/view/ArrangeListView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/ArrangeListView;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mArrangeMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/list/component/view/ArrangeListView;ZLjava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/view/ArrangeListView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setTitleTextColor(ZLjava/lang/Object;)V

    return-void
.end method

.method private doExpansion()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, -0x63

    .line 705
    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mSrcDragPos:I

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->changeAdapter(II)V

    .line 706
    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setHeadImageView(ZLandroid/view/ViewGroup;)V

    .line 708
    invoke-direct {p0, v4, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setHeadImageView(ZLandroid/view/ViewGroup;)V

    .line 730
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 731
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 732
    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 733
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 735
    return-void
.end method

.method private dragView(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 905
    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    if-lt v1, v4, :cond_4c

    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDeleteXBound:I

    if-ge p1, v1, :cond_4c

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 906
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 907
    iput v5, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    .line 908
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->showDeletePopupWindow(II)V

    .line 915
    :cond_24
    :goto_24
    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    if-lt v1, v4, :cond_6f

    .line 917
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->gradationEffectForSlide(II)V

    .line 919
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->START_DRAG_POINT_Y:I

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 920
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointX:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mXOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 922
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 959
    :cond_4b
    :goto_4b
    return-void

    .line 909
    :cond_4c
    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    if-lt v1, v4, :cond_24

    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDeleteXBound:I

    if-le p1, v1, :cond_24

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "delete"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 910
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 911
    iput v4, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    .line 912
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->removeDeletePopupWindow()V

    goto :goto_24

    .line 926
    :cond_6f
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mXOffset:I

    add-int/lit8 v2, v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 930
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointY:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 935
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownDPBound:I

    if-le v1, v2, :cond_9a

    .line 936
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownViewLine:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 937
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4b

    .line 940
    :cond_9a
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mUpDPBound:I

    if-ge v1, v2, :cond_b2

    .line 941
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mUpViewLine:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 942
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4b

    .line 947
    :cond_b2
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 949
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4b

    .line 950
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 951
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-le p2, v1, :cond_d6

    .line 952
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4b

    .line 953
    :cond_d6
    if-lez v0, :cond_e3

    div-int/lit8 v1, v0, 0x4

    if-le p1, v1, :cond_e3

    .line 954
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4b

    .line 956
    :cond_e3
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_4b
.end method

.method private drop(II)V
    .registers 7
    .param p1, "from"    # I
    .param p2, "dest"    # I

    .prologue
    const/4 v3, 0x0

    .line 985
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->removeDeletePopupWindow()V

    .line 987
    iget v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 988
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->changeAdapterForDelete(I)V

    .line 992
    :goto_c
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->initListForMove()V

    .line 995
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDropListener:Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDelselCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;->drop(IIILjava/lang/Object;)V

    .line 997
    iput v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    .line 998
    iput-boolean v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mArrangeMode:Z

    .line 999
    return-void

    .line 990
    :cond_1d
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->changeAdapter(II)V

    goto :goto_c
.end method

.method private getItemForPosition(I)I
    .registers 6
    .param p1, "y"    # I

    .prologue
    .line 592
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 593
    .local v0, "adjustedy":I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->myPointToPosition(II)I

    move-result v1

    .line 595
    .local v1, "pos":I
    if-ltz v1, :cond_16

    .line 596
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mSrcDragPos:I

    if-gt v1, v2, :cond_15

    .line 597
    add-int/lit8 v1, v1, 0x1

    .line 604
    :cond_15
    :goto_15
    return v1

    .line 599
    :cond_16
    if-gez v0, :cond_15

    .line 601
    const/4 v1, 0x0

    goto :goto_15
.end method

.method private gradationEffectForSlide(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v3, 0x14

    .line 970
    mul-int/lit8 v4, p1, 0x5a

    iget v5, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mScreenWidth:I

    div-int v1, v4, v5

    .line 971
    .local v1, "normalizationBackgroud":I
    if-ge v1, v3, :cond_b

    move v1, v3

    .line 972
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->LIST_SELECT_BASE_COLOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "colorVal":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 976
    mul-int/lit16 v3, v1, 0xff

    div-int/lit8 v2, v3, 0x5a

    .line 977
    .local v2, "normalizationTextAlpha":I
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 978
    return-void
.end method

.method private initListVisible()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 653
    const/4 v1, 0x0

    .line 655
    .local v1, "v":Landroid/view/View;
    const/4 v0, 0x0

    .line 657
    .local v0, "i":I
    :goto_3
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 659
    if-nez v1, :cond_a

    .line 666
    return-void

    .line 662
    :cond_a
    invoke-direct {p0, v2, v1}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setTitleTextColor(ZLjava/lang/Object;)V

    .line 664
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private myPointToPosition(II)I
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 568
    if-gez p2, :cond_e

    .line 571
    iget v5, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->myPointToPosition(II)I

    move-result v4

    .line 573
    .local v4, "pos":I
    if-lez v4, :cond_e

    .line 574
    add-int/lit8 v5, v4, -0x1

    .line 587
    .end local v4    # "pos":I
    :goto_d
    return v5

    .line 578
    :cond_e
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTempRect:Landroid/graphics/Rect;

    .line 579
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildCount()I

    move-result v1

    .line 580
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_16
    if-ltz v3, :cond_2e

    .line 581
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 582
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 583
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 584
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_d

    .line 580
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 587
    .end local v0    # "child":Landroid/view/View;
    :cond_2e
    const/4 v5, -0x1

    goto :goto_d
.end method

.method private removeDeletePopupWindow()V
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    .line 430
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 431
    :cond_9
    return-void
.end method

.method public static setConvertView(Landroid/view/View;)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1127
    sget-object v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ConvertView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1130
    :goto_4
    return-void

    .line 1129
    :cond_5
    sput-object p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ConvertView:Landroid/view/View;

    goto :goto_4
.end method

.method private setHeadImageView(Z)V
    .registers 7
    .param p1, "view"    # Z

    .prologue
    const v4, 0x7f100115

    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "i":I
    :goto_4
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_b

    .line 373
    return-void

    .line 375
    :cond_b
    if-nez p1, :cond_19

    .line 376
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 370
    :goto_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 378
    :cond_19
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16
.end method

.method private setHeadImageView(ZLandroid/view/ViewGroup;)V
    .registers 5
    .param p1, "startDrag"    # Z
    .param p2, "item"    # Landroid/view/ViewGroup;

    .prologue
    .line 358
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 359
    const v0, 0x7f100115

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sput-object v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ImgView:Landroid/widget/ImageView;

    .line 360
    sget-object v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 366
    :cond_13
    :goto_13
    return-void

    .line 361
    :cond_14
    sget-object v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ImgView:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 362
    sget-object v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 363
    sget-object v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 364
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_ImgView:Landroid/widget/ImageView;

    goto :goto_13
.end method

.method private setInitValue()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 231
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 232
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 239
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mActiveMode:I

    if-ne v2, v3, :cond_85

    .line 240
    iput-boolean v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mArrangeMode:Z

    .line 244
    :goto_f
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 245
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    .line 247
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x64

    sput v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragXbound:I

    .line 248
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    add-int/2addr v2, v3

    sput v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragUpYBound:I

    .line 249
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mScreenWidth:I

    .line 250
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDeleteXBound:I

    .line 252
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    mul-int/lit8 v2, v2, 0x2

    sput v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDistance:I

    .line 253
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;->HALF_HEIGHT:I

    .line 254
    sget v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;->HALF_HEIGHT:I

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightHalf:I

    .line 255
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_DisplayMetrics:Landroid/util/DisplayMetrics;

    .line 256
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_DisplayMetrics:Landroid/util/DisplayMetrics;

    .line 258
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->UP_DISPLAY_BOUND:I

    .line 263
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownDPBound:I

    .line 264
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->UP_DISPLAY_BOUND:I

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mUpDPBound:I

    .line 267
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownDPBound:I

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownViewLine:I

    .line 268
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->UP_DISPLAY_BOUND:I

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mUpViewLine:I

    .line 271
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownDPBound:I

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragDownBottomYBound:I

    .line 272
    iget v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDownDPBound:I

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragDownTopYBound:I

    .line 276
    return-void

    .line 242
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_85
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mArrangeMode:Z

    goto :goto_f
.end method

.method private setTitleTextColor(ZLjava/lang/Object;)V
    .registers 10
    .param p1, "isSelected"    # Z
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f1000f4

    const v5, 0x7f1000f3

    const/4 v4, -0x1

    .line 384
    const/4 v2, 0x0

    .line 386
    .local v2, "v":Landroid/view/View;
    const v0, 0x7f0f0202

    .line 387
    .local v0, "mainColor":I
    const v1, 0x7f0f0203

    .local v1, "subColor":I
    move-object v2, p2

    .line 389
    check-cast v2, Landroid/view/View;

    .line 391
    const/4 v3, 0x1

    if-ne p1, v3, :cond_27

    .line 392
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 393
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 398
    :cond_26
    :goto_26
    return-void

    .line 394
    :cond_27
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isWhiteTheme()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 395
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 396
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_26
.end method

.method private showDeletePopupWindow(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, -0x2

    .line 412
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v3, :cond_a

    .line 426
    :cond_9
    :goto_9
    return-void

    .line 415
    :cond_a
    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mListHeight:I

    iget-object v4, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1e

    mul-int/lit8 v0, v3, -0x1

    .line 417
    .local v0, "drawCalcY":I
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 419
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300b5

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 421
    .local v2, "popupView":Landroid/view/View;
    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v2, v5, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 424
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 425
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mPopupWindow:Landroid/widget/PopupWindow;

    const v4, 0x7f1000aa

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_9
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .registers 10
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v5, -0x2

    .line 863
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->stopDragging()V

    .line 865
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 866
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 867
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 868
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 870
    iput p2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->START_DRAG_POINT_X:I

    .line 871
    iput p3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->START_DRAG_POINT_Y:I

    .line 873
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 874
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 875
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 880
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 881
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 883
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 884
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 886
    .local v1, "v":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 887
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 888
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#90"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->LIST_SELECT_BASE_COLOR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 890
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowManager:Landroid/view/WindowManager;

    .line 891
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    iput-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    .line 893
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    const-string v3, "normal"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 894
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragViewHeight:I

    .line 895
    return-void
.end method

.method private stopDragging()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1091
    sget v1, Lcom/pantech/app/music/list/component/view/ArrangeListView;->HALF_HEIGHT:I

    iput v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightHalf:I

    .line 1093
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_28

    .line 1094
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1096
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1097
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1098
    iput-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    .line 1100
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_28
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_33

    .line 1101
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1102
    iput-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 1104
    :cond_33
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3d

    .line 1105
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1107
    :cond_3d
    return-void
.end method

.method private unExpandViews(Z)V
    .registers 9
    .param p1, "deletion"    # Z

    .prologue
    const/4 v6, 0x0

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "i":I
    :goto_2
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 613
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_2a

    .line 614
    if-eqz p1, :cond_20

    .line 616
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getFirstVisiblePosition()I

    move-result v2

    .line 617
    .local v2, "position":I
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 618
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    invoke-virtual {p0, v2, v4}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setSelectionFromTop(II)V

    .line 623
    .end local v2    # "position":I
    .end local v4    # "y":I
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->layoutChildren()V

    .line 624
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;
    :try_end_26
    .catch Ljava/lang/IllegalStateException; {:try_start_20 .. :try_end_26} :catch_37

    move-result-object v3

    .line 630
    :goto_27
    if-nez v3, :cond_2a

    .line 631
    return-void

    .line 636
    :cond_2a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 638
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 625
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catch_37
    move-exception v5

    goto :goto_27
.end method


# virtual methods
.method protected changeAdapter(II)V
    .registers 8
    .param p1, "from"    # I
    .param p2, "dest"    # I

    .prologue
    .line 1006
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    .line 1008
    .local v0, "adapter":Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;
    if-eqz v0, :cond_2c

    .line 1009
    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->cmGetCursorLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1014
    :try_start_d
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/common/ArrayListCursor;

    .line 1016
    .local v1, "c":Lcom/pantech/app/music/common/ArrayListCursor;
    if-eqz v1, :cond_2b

    .line 1017
    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/common/ArrayListCursor;->ExchangeForRearrange(II)Z

    .line 1018
    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1020
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->changeFlag:Z

    if-eqz v2, :cond_2b

    .line 1021
    if-lt p1, p2, :cond_30

    sget v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;->HALF_HEIGHT:I

    :goto_26
    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightHalf:I

    .line 1022
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->changeFlag:Z

    .line 1025
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_d .. :try_end_2c} :catchall_33

    .line 1028
    .end local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :cond_2c
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->invalidateViews()V

    .line 1029
    return-void

    .line 1021
    .restart local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :cond_30
    const/16 v2, -0x14

    goto :goto_26

    .line 1025
    .end local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method protected changeAdapterForDelete(I)V
    .registers 7
    .param p1, "pos"    # I

    .prologue
    .line 1033
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 1035
    .local v0, "adapter":Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    if-eqz v0, :cond_27

    .line 1036
    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursorLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1037
    :try_start_d
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/common/ArrayListCursor;

    .line 1038
    .local v1, "c":Lcom/pantech/app/music/common/ArrayListCursor;
    if-eqz v1, :cond_26

    .line 1039
    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;IILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDelselCursor:Landroid/database/Cursor;

    .line 1040
    invoke-virtual {v1, p1}, Lcom/pantech/app/music/common/ArrayListCursor;->Delete(I)Z

    .line 1041
    invoke-interface {v0, v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 1043
    :cond_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    .line 1045
    .end local v1    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :cond_27
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->invalidateViews()V

    .line 1046
    return-void

    .line 1043
    :catchall_2b
    move-exception v2

    :try_start_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public getRestoreCalled()Z
    .registers 2

    .prologue
    .line 1082
    sget-boolean v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mIsRestoreCalled:Z

    return v0
.end method

.method protected initListForMove()V
    .registers 2

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/common/ArrayListCursor;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->m_BackupCursor:Lcom/pantech/app/music/common/ArrayListCursor;

    .line 1003
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 436
    iget v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mActiveMode:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 437
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 558
    :goto_a
    return v6

    .line 440
    :cond_b
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 441
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mXOffset:I

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    .line 449
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mListHeight:I

    .line 451
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setInitValue()V

    .line 453
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v6, :cond_4b

    .line 455
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;

    invoke-direct {v8, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;-><init>(Lcom/pantech/app/music/list/component/view/ArrangeListView;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 515
    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_be

    .line 558
    :cond_52
    :goto_52
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_a

    .line 517
    :pswitch_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 518
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 519
    .local v5, "y":I
    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->pointToPosition(II)I

    move-result v2

    .line 520
    .local v2, "itemnum":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_52

    .line 523
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 525
    .local v1, "item":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v6

    sub-int v6, v4, v6

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointX:I

    .line 526
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPointY:I

    .line 527
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mXOffset:I

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mYOffset:I

    .line 533
    sget v6, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragXbound:I

    add-int/lit8 v6, v6, -0x32

    if-le v4, v6, :cond_ba

    .line 535
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->initListForMove()V

    .line 536
    invoke-direct {p0, v9, v1}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setHeadImageView(ZLandroid/view/ViewGroup;)V

    .line 537
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 541
    invoke-direct {p0, v9, v1}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setTitleTextColor(ZLjava/lang/Object;)V

    .line 542
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 543
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 544
    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    .line 545
    iget v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    iput v6, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mSrcDragPos:I

    .line 551
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 554
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_ba
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->stopDragging()V

    goto :goto_52

    .line 515
    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_57
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 740
    iget-object v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v11, :cond_9

    .line 741
    iget-object v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v11, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 745
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 746
    .local v0, "action":I
    packed-switch v0, :pswitch_data_11a

    .line 857
    :cond_10
    :goto_10
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    return v11

    .line 750
    :pswitch_15
    iget-object v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v11, :cond_43

    .line 751
    const/4 v11, 0x0

    iput v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    .line 753
    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTempRect:Landroid/graphics/Rect;

    .line 754
    .local v5, "r":Landroid/graphics/Rect;
    iget-object v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 755
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->stopDragging()V

    .line 767
    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    if-ltz v11, :cond_3e

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getCount()I

    move-result v12

    if-ge v11, v12, :cond_3e

    .line 770
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setHeadImageView(ZLandroid/view/ViewGroup;)V

    .line 771
    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mSrcDragPos:I

    iget v12, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    invoke-direct {p0, v11, v12}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->drop(II)V

    .line 773
    :cond_3e
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->unExpandViews(Z)V

    goto :goto_10

    .line 780
    .end local v5    # "r":Landroid/graphics/Rect;
    :cond_43
    :pswitch_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v7, v11

    .line 781
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    .line 783
    .local v9, "y":I
    iget-object v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v11, :cond_10

    .line 785
    invoke-direct {p0, v9}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getItemForPosition(I)I

    move-result v2

    .line 787
    .local v2, "itemnum":I
    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->START_DRAG_POINT_X:I

    sub-int/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 788
    .local v8, "xDistance":I
    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->START_DRAG_POINT_Y:I

    sub-int/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 790
    .local v10, "yDistance":I
    const/16 v11, 0x14

    if-le v10, v11, :cond_6e

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    if-nez v11, :cond_6e

    .line 791
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mArrangeMode:Z

    .line 794
    :cond_6e
    const/16 v11, 0x14

    if-le v8, v11, :cond_7e

    iget-boolean v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mArrangeMode:Z

    if-nez v11, :cond_7e

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_7e

    .line 795
    const/4 v11, 0x1

    iput v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    .line 798
    :cond_7e
    if-ltz v2, :cond_8a

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    const/4 v12, 0x1

    if-lt v11, v12, :cond_8a

    .line 800
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->smoothScrollBy(II)V

    .line 805
    :cond_8a
    invoke-direct {p0, v7, v9}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->dragView(II)V

    .line 807
    if-ltz v2, :cond_10

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveMode:I

    if-nez v11, :cond_10

    .line 808
    if-eqz v0, :cond_a3

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    if-ne v2, v11, :cond_a3

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_a3

    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_112

    .line 810
    :cond_a3
    iput v2, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    .line 812
    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_f8

    .line 813
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getLastVisiblePosition()I

    move-result v11

    add-int/lit8 v4, v11, 0x2

    .line 814
    .local v4, "movement":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getCount()I

    move-result v11

    add-int/lit8 v6, v11, -0x1

    .line 815
    .local v6, "totalCnt":I
    if-le v4, v6, :cond_b9

    move v4, v6

    .line 816
    :cond_b9
    iput v4, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    .line 821
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getLastVisiblePosition()I

    move-result v11

    if-ne v11, v6, :cond_f0

    .line 822
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {p0, v11}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 823
    .local v3, "lastBottom":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getHeight()I

    move-result v11

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getPaddingBottom()I

    move-result v12

    sub-int v1, v11, v12

    .line 825
    .local v1, "bottomLimit":I
    if-ne v3, v1, :cond_e8

    .line 826
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->smoothScrollBy(II)V

    .line 838
    .end local v1    # "bottomLimit":I
    .end local v3    # "lastBottom":I
    .end local v4    # "movement":I
    .end local v6    # "totalCnt":I
    :cond_e0
    :goto_e0
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->requestLayout()V

    .line 840
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->doExpansion()V

    goto/16 :goto_10

    .line 828
    .restart local v1    # "bottomLimit":I
    .restart local v3    # "lastBottom":I
    .restart local v4    # "movement":I
    .restart local v6    # "totalCnt":I
    :cond_e8
    sget v11, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDistance:I

    const/16 v12, 0x1e

    invoke-virtual {p0, v11, v12}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->smoothScrollBy(II)V

    goto :goto_e0

    .line 830
    .end local v1    # "bottomLimit":I
    .end local v3    # "lastBottom":I
    :cond_f0
    sget v11, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDistance:I

    const/16 v12, 0x1e

    invoke-virtual {p0, v11, v12}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->smoothScrollBy(II)V

    goto :goto_e0

    .line 832
    .end local v4    # "movement":I
    .end local v6    # "totalCnt":I
    :cond_f8
    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e0

    .line 833
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getFirstVisiblePosition()I

    move-result v11

    add-int/lit8 v4, v11, -0x2

    .line 834
    .restart local v4    # "movement":I
    if-gez v4, :cond_106

    const/4 v4, 0x0

    .line 835
    :cond_106
    iput v4, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDragPos:I

    .line 836
    iget v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mItemHeightNormal:I

    mul-int/lit8 v11, v11, -0x1

    const/16 v12, 0x1e

    invoke-virtual {p0, v11, v12}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->smoothScrollBy(II)V

    goto :goto_e0

    .line 842
    .end local v4    # "movement":I
    :cond_112
    const/4 v11, 0x2

    if-ne v0, v11, :cond_10

    .line 843
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->changeFlag:Z

    goto/16 :goto_10

    .line 746
    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_43
        :pswitch_15
        :pswitch_43
        :pswitch_15
    .end packed-switch
.end method

.method public setActiveMode(I)V
    .registers 3
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 1148
    iput p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mActiveMode:I

    .line 1150
    packed-switch p1, :pswitch_data_14

    .line 1161
    :goto_6
    return-void

    .line 1152
    :pswitch_7
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setHeadImageView(Z)V

    goto :goto_6

    .line 1155
    :pswitch_b
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setHeadImageView(Z)V

    goto :goto_6

    .line 1158
    :pswitch_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setHeadImageView(Z)V

    goto :goto_6

    .line 1150
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method

.method public setDropListener(Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;)V
    .registers 2
    .param p1, "l"    # Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mDropListener:Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;

    .line 1120
    return-void
.end method

.method public setRemoveListener(Lcom/pantech/app/music/list/component/view/ArrangeListView$RemoveListener;)V
    .registers 2
    .param p1, "l"    # Lcom/pantech/app/music/list/component/view/ArrangeListView$RemoveListener;

    .prologue
    .line 1123
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mRemoveListener:Lcom/pantech/app/music/list/component/view/ArrangeListView$RemoveListener;

    .line 1124
    return-void
.end method

.method public setRestoreCalled(Z)V
    .registers 2
    .param p1, "called"    # Z

    .prologue
    .line 1086
    sput-boolean p1, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mIsRestoreCalled:Z

    .line 1087
    return-void
.end method

.method public setTrashcan(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "trash"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 1112
    return-void
.end method
