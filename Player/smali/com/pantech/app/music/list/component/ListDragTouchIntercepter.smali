.class public Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;
.super Ljava/lang/Object;
.source "ListDragTouchIntercepter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;,
        Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;,
        Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VMusicDragMultiSelect"

.field private static mDragRangeWidth:I


# instance fields
.field mBackupCheckBox:Lcom/pantech/app/music/list/component/view/CheckableImageView;

.field private mBorderBottom:I

.field private mBorderTop:I

.field private mContext:Landroid/content/Context;

.field private mDebugLog:Z

.field private mDirection:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

.field mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

.field private mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

.field mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

.field private mLayoutDividerSize:I

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field private mResources:Landroid/content/res/Resources;

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragRangeWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;
    .param p3, "IAdapter"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    .param p4, "ISelectable"    # Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f0a0050

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    .line 109
    new-instance v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;-><init>(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    .line 118
    iput-object v1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListener:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

    .line 601
    iput-object v1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBackupCheckBox:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 134
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mContext:Landroid/content/Context;

    move-object v0, p2

    .line 135
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    .line 136
    iput-object p3, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 137
    iput-object p4, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 138
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 140
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 142
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mResources:Landroid/content/res/Resources;

    .line 144
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mLayoutDividerSize:I

    .line 149
    instance-of v0, p2, Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_68

    .line 151
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragRangeWidth:I

    .line 152
    sget v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragRangeWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragRangeWidth:I

    .line 165
    :goto_67
    return-void

    .line 156
    :cond_68
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 158
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragRangeWidth:I

    goto :goto_67

    .line 162
    :cond_7f
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragRangeWidth:I

    goto :goto_67
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    return v0
.end method

.method private getCurrentSelectedView(Landroid/view/MotionEvent;Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;)Landroid/view/View;
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "dragStateInfo"    # Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    .prologue
    const/4 v6, -0x1

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 216
    .local v2, "startYPosition":I
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v1

    .line 218
    .local v1, "startItemPosition":I
    if-eq v1, v6, :cond_3a

    .line 219
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 220
    .local v0, "firstVisiblePosition":I
    if-eq v0, v6, :cond_2d

    .line 221
    if-eqz p2, :cond_24

    .line 222
    iput v1, p2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartPosition:I

    .line 224
    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getExpandableViewType(I)I

    move-result v3

    .line 225
    .local v3, "type":I
    if-nez v3, :cond_24

    .line 227
    const/4 v4, 0x1

    iput-boolean v4, p2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartGroup:Z

    .line 231
    .end local v3    # "type":I
    :cond_24
    iget-object v4, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    sub-int v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 243
    .end local v0    # "firstVisiblePosition":I
    :goto_2c
    return-object v4

    .line 235
    .restart local v0    # "firstVisiblePosition":I
    :cond_2d
    iget-boolean v4, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v4, :cond_38

    const-string v4, "VMusicDragMultiSelect"

    const-string v5, "firstVisiblePosition is invalid"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v0    # "firstVisiblePosition":I
    :cond_38
    :goto_38
    const/4 v4, 0x0

    goto :goto_2c

    .line 240
    :cond_3a
    iget-boolean v4, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v4, :cond_38

    const-string v4, "VMusicDragMultiSelect"

    const-string v5, "startPosition is invalid"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private getExpandableViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 197
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    instance-of v2, v2, Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_13

    .line 199
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    check-cast v2, Landroid/widget/ExpandableListView;

    invoke-virtual {v2, p1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v0

    .line 200
    .local v0, "packedPosition":J
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v2

    .line 203
    .end local v0    # "packedPosition":J
    :goto_12
    return v2

    :cond_13
    const/4 v2, -0x1

    goto :goto_12
.end method

.method private isListviewSeperator(Landroid/widget/ListView;I)Z
    .registers 9
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-nez v3, :cond_8

    move v1, v2

    .line 192
    :cond_7
    :goto_7
    return v1

    .line 181
    :cond_8
    if-gez p2, :cond_12

    .line 183
    const-string v2, "VMusicDragMultiSelect"

    const-string v3, " Position Negative"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 187
    :cond_12
    iget-object v3, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, p2, v4

    invoke-interface {v3, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v0

    .line 189
    .local v0, "viewType":Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    iget-boolean v3, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v3, :cond_5a

    .line 190
    const-string v3, "VMusicDragMultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isListviewSeperator position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_5a
    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    if-eq v0, v3, :cond_7

    move v1, v2

    goto :goto_7
.end method


# virtual methods
.method public changeBorder(I)V
    .registers 7
    .param p1, "y"    # I

    .prologue
    .line 701
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 703
    .local v0, "itemPosition":I
    iget-object v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 705
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 706
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->setBorder(Landroid/view/View;)V

    .line 709
    :cond_1a
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_48

    const-string v2, "VMusicDragMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChangeBorder position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_48
    return-void
.end method

.method public changeCheckState(Landroid/widget/ListView;IZLandroid/view/MotionEvent;Z)V
    .registers 14
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "position"    # I
    .param p3, "check"    # Z
    .param p4, "event"    # Landroid/view/MotionEvent;
    .param p5, "notify"    # Z

    .prologue
    .line 658
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getTargetView(Landroid/widget/ListView;I)Lcom/pantech/app/music/list/component/view/CheckableImageView;

    move-result-object v6

    .line 660
    .local v6, "checkTargetView":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    if-eqz v6, :cond_49

    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 662
    invoke-direct {p0, p2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getExpandableViewType(I)I

    move-result v7

    .line 668
    .local v7, "type":I
    if-gez v7, :cond_4a

    .line 670
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v0, :cond_46

    .line 671
    const-string v0, "VMusicDragMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : checkTargetView.setChecked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")(was:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :cond_46
    invoke-virtual {v6, p3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setChecked(Z)V

    .line 691
    .end local v7    # "type":I
    :cond_49
    :goto_49
    return-void

    .line 677
    .restart local v7    # "type":I
    :cond_4a
    const v0, 0x7f10000f

    invoke-virtual {v6, v0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 679
    .local v3, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v0, :cond_91

    .line 680
    const-string v0, "VMusicDragMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " checkTargetView.setChecked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")(was:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_91
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v0, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartGroup:Z

    if-eqz v0, :cond_a2

    const/4 v0, 0x1

    if-ne v7, v0, :cond_a2

    .line 684
    const-string v0, "VMusicDragMultiSelect"

    const-string v1, "Group \uc5d0\uc11c \uc2dc\uc791\ub41c drag \uc2dc Child \ub294 skip"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 688
    :cond_a2
    iget-object v1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursorLock()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->forceSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;ZLjava/lang/Object;)V

    goto :goto_49
.end method

.method public changePressedState(Landroid/widget/ListView;ILandroid/view/MotionEvent;ZZZ)V
    .registers 11
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "position"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;
    .param p4, "check"    # Z
    .param p5, "pressed"    # Z
    .param p6, "soundEffect"    # Z

    .prologue
    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getTargetView(Landroid/widget/ListView;I)Lcom/pantech/app/music/list/component/view/CheckableImageView;

    move-result-object v0

    .line 616
    .local v0, "checkTargetView":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    iput-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBackupCheckBox:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 618
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 623
    if-eqz p6, :cond_14

    .line 624
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->playSoundEffect(I)V

    .line 626
    :cond_14
    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v1, :cond_3a

    .line 627
    const-string v1, "VMusicDragMultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " checkTargetView.setPressed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_3a
    invoke-virtual {v0, p5}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setPressed(Z)V

    .line 631
    :cond_3d
    return-void
.end method

.method public clearPressedState()V
    .registers 3

    .prologue
    .line 604
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBackupCheckBox:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v0, :cond_15

    .line 606
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v0, :cond_f

    .line 607
    const-string v0, "VMusicDragMultiSelect"

    const-string v1, "clear OLD Checkbox PressState"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBackupCheckBox:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->setPressed(Z)V

    .line 610
    :cond_15
    return-void
.end method

.method public forceSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;ZLjava/lang/Object;)V
    .registers 12
    .param p1, "selectManager"    # Lcom/pantech/app/music/list/db/SelectManager;
    .param p2, "ISelectable"    # Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    .param p3, "param"    # Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .param p4, "select"    # Z
    .param p5, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 643
    if-eqz p4, :cond_f

    .line 645
    iget-object v1, p3, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, p3, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v3, p3, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    move-object v0, p1

    move-object v4, p5

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager;->select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 654
    :cond_e
    :goto_e
    return-void

    .line 649
    :cond_f
    iget-object v0, p3, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p3, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v2, p3, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    invoke-virtual {p1, v0, v1, v2, p5}, Lcom/pantech/app/music/list/db/SelectManager;->unselect(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;)V

    .line 651
    if-eqz p2, :cond_e

    .line 652
    invoke-interface {p2, p4, p3}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    goto :goto_e
.end method

.method public getCheckedState(Landroid/widget/ListView;I)Z
    .registers 7
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getTargetView(Landroid/widget/ListView;I)Lcom/pantech/app/music/list/component/view/CheckableImageView;

    move-result-object v0

    .line 559
    .local v0, "checkTargetView":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    if-eqz v0, :cond_12

    .line 561
    const v3, 0x7f10000f

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 563
    .local v1, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    if-nez v1, :cond_13

    .line 566
    .end local v1    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_12
    :goto_12
    return v2

    .line 563
    .restart local v1    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    :cond_13
    iget-boolean v2, v1, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mIsChecked:Z

    goto :goto_12
.end method

.method public getDirection(I)Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;
    .registers 3
    .param p1, "curItemPosition"    # I

    .prologue
    .line 723
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v0, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    sub-int v0, p1, v0

    if-lez v0, :cond_b

    sget-object v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->DOWN:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->UP:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    goto :goto_a
.end method

.method public getTargetView(Landroid/widget/ListView;I)Lcom/pantech/app/music/list/component/view/CheckableImageView;
    .registers 6
    .param p1, "listview"    # Landroid/widget/ListView;
    .param p2, "position"    # I

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 545
    .local v1, "childView":Landroid/view/View;
    if-eqz v1, :cond_1a

    .line 547
    const v2, 0x7f1000f2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "checkTargetView":Landroid/view/View;
    instance-of v2, v0, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    if-eqz v2, :cond_1a

    .line 549
    check-cast v0, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 552
    .end local v0    # "checkTargetView":Landroid/view/View;
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isDragCheckRagne(FI)Z
    .registers 4
    .param p1, "xpos"    # F
    .param p2, "deviceWidth"    # I

    .prologue
    .line 169
    sget v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragRangeWidth:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 171
    const/4 v0, 0x1

    .line 174
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isInBorder(I)Z
    .registers 3
    .param p1, "curY"    # I

    .prologue
    .line 694
    iget v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderTop:I

    if-ge v0, p1, :cond_a

    iget v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderBottom:I

    if-ge p1, v0, :cond_a

    .line 695
    const/4 v0, 0x1

    .line 697
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onSelectDone()V
    .registers 4

    .prologue
    .line 637
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v0, :cond_b

    .line 638
    iget-object v0, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mISelectable:Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 639
    :cond_b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 23
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    const/16 v16, 0x0

    .line 251
    .local v16, "ret":Z
    if-nez p1, :cond_b

    .line 253
    const-string v2, "ERROR parentView is Null"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 254
    const/4 v2, 0x0

    .line 539
    :goto_a
    return v2

    .line 259
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    .line 261
    .local v19, "viewWidth":I
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/pantech/app/music/list/component/view/IMusicListScrollState;

    if-eqz v2, :cond_a2

    move-object/from16 v17, p1

    .line 263
    check-cast v17, Lcom/pantech/app/music/list/component/view/IMusicListScrollState;

    .line 264
    .local v17, "scrollState":Lcom/pantech/app/music/list/component/view/IMusicListScrollState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    invoke-interface/range {v17 .. v17}, Lcom/pantech/app/music/list/component/view/IMusicListScrollState;->isFastScrollerVisible()Z

    move-result v3

    iput-boolean v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mHasFastScrollerPopup:Z

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    invoke-interface/range {v17 .. v17}, Lcom/pantech/app/music/list/component/view/IMusicListScrollState;->isScrolling()Z

    move-result v3

    iput-boolean v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mIsScrolling:Z

    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isDragCheckRagne(FI)Z

    move-result v2

    if-eqz v2, :cond_3e3

    .line 286
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_5b

    const-string v2, "VMusicDragMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Range Inside Event:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_5b
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mPrevSimulatedMotionAction:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_aa

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mStartFromOutSide:Z

    if-eqz v2, :cond_aa

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getCurrentSelectedView(Landroid/view/MotionEvent;Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;)Landroid/view/View;

    move-result-object v18

    .line 294
    .local v18, "view":Landroid/view/View;
    if-eqz v18, :cond_aa

    .line 296
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_8b

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "Simulate MotionEvent.ACTION_CANCEL for Out->In->Out Scrolling"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_8b
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 299
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x3

    iput v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mPrevSimulatedMotionAction:I

    .line 301
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 269
    .end local v17    # "scrollState":Lcom/pantech/app/music/list/component/view/IMusicListScrollState;
    .end local v18    # "view":Landroid/view/View;
    :cond_a2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "\uc808\ub300 \uc624\uba74 \uc548\ub428"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    .restart local v17    # "scrollState":Lcom/pantech/app/music/list/component/view/IMusicListScrollState;
    :cond_aa
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mIsScrolling:Z

    if-eqz v2, :cond_c2

    .line 308
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_bf

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "IsScrolling skip"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :cond_bf
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 312
    :cond_c2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4a0

    .line 449
    :cond_c9
    :goto_c9
    const/16 v16, 0x1

    .line 520
    :cond_cb
    :goto_cb
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_d9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_120

    .line 523
    :cond_d9
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->clearPressedState()V

    .line 525
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartGroup:Z

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStopped:Z

    .line 529
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mStartFromCheckboxRange:Z

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mStartFromOutSide:Z

    .line 531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x0

    iput v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mPrevSimulatedMotionAction:I

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListener:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

    if-eqz v2, :cond_113

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListener:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

    invoke-interface {v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;->onDragMultiSelectModeFinish()V

    .line 536
    :cond_113
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_120

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "All Flag is Cleared"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_120
    move/from16 v2, v16

    .line 539
    goto/16 :goto_a

    .line 315
    :pswitch_124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getCurrentSelectedView(Landroid/view/MotionEvent;Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;)Landroid/view/View;

    move-result-object v18

    .line 317
    .restart local v18    # "view":Landroid/view/View;
    if-nez v18, :cond_140

    .line 319
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "Child View => null"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 323
    :cond_140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartPosition:I

    if-gez v2, :cond_16e

    .line 325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Position Invalid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v5, v5, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartPosition:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 329
    :cond_16e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v3, v3, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isListviewSeperator(Landroid/widget/ListView;I)Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 331
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "Child is seperator"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 335
    :cond_18f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->setBorder(Landroid/view/View;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v5, v5, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartPosition:I

    invoke-virtual {v2, v3, v5}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->setDragTouchStart(ZI)V

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->dragTouchEnable()Z

    move-result v2

    if-nez v2, :cond_1bd

    .line 341
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "dragTouch Disable ACTION_DOWN"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 345
    :cond_1bd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListener:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

    if-eqz v2, :cond_1ca

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListener:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

    invoke-interface {v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;->onDragMultiSelectModeStart()V

    .line 348
    :cond_1ca
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v5, v5, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getCheckedState(Landroid/widget/ListView;I)Z

    move-result v2

    if-nez v2, :cond_1fe

    const/4 v2, 0x1

    :goto_1e1
    iput-boolean v2, v3, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v4, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v6, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changePressedState(Landroid/widget/ListView;ILandroid/view/MotionEvent;ZZZ)V

    goto/16 :goto_c9

    .line 348
    :cond_1fe
    const/4 v2, 0x0

    goto :goto_1e1

    .line 355
    .end local v18    # "view":Landroid/view/View;
    :pswitch_200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->dragTouchEnable()Z

    move-result v2

    if-nez v2, :cond_219

    .line 357
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "dragTouch Disable ACTION_MOVE"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 361
    :cond_219
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v15, v2

    .line 362
    .local v15, "curY":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isInBorder(I)Z

    move-result v2

    if-eqz v2, :cond_27b

    .line 364
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_260

    const-string v2, "VMusicDragMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InBorder Top:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderTop:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Bottom:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderBottom:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " curY"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v4, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v6, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changePressedState(Landroid/widget/ListView;ILandroid/view/MotionEvent;ZZZ)V

    goto/16 :goto_c9

    .line 371
    :cond_27b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_2b5

    const-string v2, "VMusicDragMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "First InBorder Top:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderTop:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Bottom:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderBottom:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " curY"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_2b5
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->clearPressedState()V

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changeBorder(I)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v4, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v5, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changeCheckState(Landroid/widget/ListView;IZLandroid/view/MotionEvent;Z)V

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v14

    .line 381
    .local v14, "curItemPosition":I
    const/4 v2, -0x1

    if-ne v14, v2, :cond_2f0

    .line 383
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "invalid position"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 387
    :cond_2f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isListviewSeperator(Landroid/widget/ListView;I)Z

    move-result v2

    if-eqz v2, :cond_30b

    .line 389
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "dragTouch seperator"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 396
    :cond_30b
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->getDirection(I)Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDirection:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    .line 397
    const/4 v7, 0x1

    .line 398
    .local v7, "needNotify":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDirection:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    sget-object v3, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->DOWN:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    if-ne v2, v3, :cond_353

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    add-int/lit8 v3, v14, -0x1

    if-eq v2, v3, :cond_388

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    :goto_330
    if-ge v4, v14, :cond_388

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isListviewSeperator(Landroid/widget/ListView;I)Z

    move-result v2

    if-eqz v2, :cond_341

    .line 402
    :goto_33e
    add-int/lit8 v4, v4, 0x1

    goto :goto_330

    .line 407
    :cond_341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v5, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changeCheckState(Landroid/widget/ListView;IZLandroid/view/MotionEvent;Z)V

    goto :goto_33e

    .line 413
    .end local v4    # "i":I
    :cond_353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    add-int/lit8 v3, v14, 0x1

    if-eq v2, v3, :cond_388

    .line 415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    add-int/lit8 v4, v2, -0x1

    .restart local v4    # "i":I
    :goto_365
    if-le v4, v14, :cond_388

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isListviewSeperator(Landroid/widget/ListView;I)Z

    move-result v2

    if-eqz v2, :cond_376

    .line 415
    :goto_373
    add-int/lit8 v4, v4, -0x1

    goto :goto_365

    .line 420
    :cond_376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v5, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changeCheckState(Landroid/widget/ListView;IZLandroid/view/MotionEvent;Z)V

    goto :goto_373

    .line 425
    .end local v4    # "i":I
    :cond_388
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iput v14, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    goto/16 :goto_c9

    .line 429
    .end local v7    # "needNotify":Z
    .end local v14    # "curItemPosition":I
    .end local v15    # "curY":I
    :pswitch_390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->dragTouchEnable()Z

    move-result v2

    if-nez v2, :cond_3a9

    .line 431
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_c9

    const-string v2, "VMusicDragMultiSelect"

    const-string v3, "dragTouch Disable ACTION_UP"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 435
    :cond_3a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v3, v3, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isListviewSeperator(Landroid/widget/ListView;I)Z

    move-result v2

    if-nez v2, :cond_c9

    .line 440
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v10, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v11, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v8 .. v13}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changeCheckState(Landroid/widget/ListView;IZLandroid/view/MotionEvent;Z)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingStartGroup:Z

    goto/16 :goto_c9

    .line 453
    :cond_3e3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_403

    const-string v2, "VMusicDragMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Range OutSide Event:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :cond_403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mStartFromCheckboxRange:Z

    if-eqz v2, :cond_48d

    .line 459
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDebugLog:Z

    if-eqz v2, :cond_42f

    const-string v2, "VMusicDragMultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Simulate MotionEvent.ACTION_CANCEL at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v5, v5, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_42f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->setDragTouchCanceled(Z)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->clearPressedState()V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    if-ltz v2, :cond_473

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v3, v3, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->isListviewSeperator(Landroid/widget/ListView;I)Z

    move-result v2

    if-nez v2, :cond_473

    .line 473
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v10, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget-boolean v11, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingCheckValue:Z

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v8 .. v13}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->changeCheckState(Landroid/widget/ListView;IZLandroid/view/MotionEvent;Z)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, -0x1

    iput v3, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mDraggingPosition:I

    .line 480
    :cond_473
    const/16 v16, 0x1

    .line 491
    :cond_475
    :goto_475
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_cb

    .line 493
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->setDragTouchCanceled(Z)V

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->setStartFromOutSide(Z)V

    goto/16 :goto_cb

    .line 486
    :cond_48d
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_475

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mDragStateInfo:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;

    iget v2, v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragStateInfo;->mPrevSimulatedMotionAction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_475

    .line 487
    const/16 v16, 0x1

    goto :goto_475

    .line 312
    :pswitch_data_4a0
    .packed-switch 0x0
        :pswitch_124
        :pswitch_390
        :pswitch_200
    .end packed-switch
.end method

.method public setBorder(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 713
    if-eqz p1, :cond_15

    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 715
    .local v1, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 717
    .local v0, "bottom":I
    iget v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mLayoutDividerSize:I

    sub-int v2, v1, v2

    iput v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderTop:I

    .line 718
    iget v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mLayoutDividerSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mBorderBottom:I

    .line 720
    .end local v0    # "bottom":I
    .end local v1    # "top":I
    :cond_15
    return-void
.end method

.method public setOnDragMultiSelectModeListener(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->mListener:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;

    .line 123
    return-void
.end method
