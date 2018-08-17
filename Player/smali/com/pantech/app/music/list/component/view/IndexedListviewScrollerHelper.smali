.class public Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;
.super Ljava/lang/Object;
.source "IndexedListviewScrollerHelper.java"


# static fields
.field private static final HIDE_INDEX_TITLE:I = 0x0

.field static final INDEX_TITLE_AUTO_HIDE_TIME:I = 0x1770

.field private static final SHOW_INDEX_TITLE:I = 0x1

.field private static final SHOW_OVERSCROLLED_INDEXBAR:I = 0x2


# instance fields
.field isScrolled:Z

.field mChildMaxCount:I

.field mContext:Landroid/content/Context;

.field protected mCurrentIndex:C

.field mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

.field mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

.field private final mIndexTitleHandler:Landroid/os/Handler;

.field mListview:Landroid/widget/AbsListView;

.field mLock:Z

.field protected mRectDrawing:Landroid/graphics/Rect;

.field mSeperaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

.field protected mStrCurrentIndex:Ljava/lang/StringBuffer;

.field protected mbShowIndexTitle:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listview"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->isScrolled:Z

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mRectDrawing:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mStrCurrentIndex:Ljava/lang/StringBuffer;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mChildMaxCount:I

    .line 48
    new-instance v0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;-><init>(Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    .line 75
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    .line 79
    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mbShowIndexTitle:Z

    .line 81
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mStrCurrentIndex:Ljava/lang/StringBuffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    iput-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mbShowIndexTitle:Z

    .line 83
    return-void
.end method

.method private checkScrollDistance(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 297
    :goto_7
    :pswitch_7
    return-void

    .line 291
    :pswitch_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mLock:Z

    goto :goto_7

    .line 294
    :pswitch_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mLock:Z

    goto :goto_7

    .line 289
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(IZZLandroid/graphics/Canvas;)V
    .registers 15
    .param p1, "scrollerType"    # I
    .param p2, "fastScrollerOverlayVisible"    # Z
    .param p3, "indexOverlayPopupVisible"    # Z
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->findSeparatorTop()I

    move-result v4

    .line 125
    .local v4, "iSeparatorTop":I
    const/4 v2, 0x0

    .line 126
    .local v2, "headerViewCount":I
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    instance-of v6, v6, Landroid/widget/ListView;

    if-eqz v6, :cond_15

    .line 127
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 129
    :cond_15
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v9, v6, v2

    if-gtz v4, :cond_82

    move v6, v7

    :goto_20
    add-int v3, v9, v6

    .line 131
    .local v3, "iFirst":I
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getIndexCharacterAtAnyPosition(I)C

    move-result v0

    .line 133
    .local v0, "ch":C
    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mRectDrawing:Landroid/graphics/Rect;

    .line 134
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 137
    iget-char v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mCurrentIndex:C

    if-eq v0, v6, :cond_3e

    .line 139
    iput-char v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mCurrentIndex:C

    .line 140
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mStrCurrentIndex:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 143
    :cond_3e
    iget-boolean v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mbShowIndexTitle:Z

    if-ne v7, v6, :cond_47

    .line 144
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v6, p4, v5, v0, v4}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->drawCurrentIndexBar(Landroid/graphics/Canvas;Landroid/graphics/Rect;CI)V

    .line 149
    :cond_47
    if-ne p1, v7, :cond_58

    if-eqz p2, :cond_58

    if-eqz p3, :cond_58

    .line 151
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    iget-object v7, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getVerticalScrollbarWidth()I

    move-result v7

    invoke-virtual {v6, p4, v5, v7, v0}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->drawFastscrollOverlayPopup(Landroid/graphics/Canvas;Landroid/graphics/Rect;IC)V

    .line 160
    :cond_58
    iget v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mChildMaxCount:I

    if-gtz v6, :cond_6d

    .line 162
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    iget-object v7, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x3

    iput v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mChildMaxCount:I

    .line 165
    :cond_6d
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v1

    .line 169
    .local v1, "count":I
    const/4 v6, 0x2

    if-ne p1, v6, :cond_81

    if-lez v1, :cond_81

    iget v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mChildMaxCount:I

    if-ge v6, v1, :cond_81

    .line 171
    iget-object v6, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v6, p4, v5, p3}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->drawHelper(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 173
    :cond_81
    return-void

    .end local v0    # "ch":C
    .end local v1    # "count":I
    .end local v3    # "iFirst":I
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_82
    move v6, v8

    .line 129
    goto :goto_20
.end method

.method public dispatchTouchEvent(IIZZLandroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "scrollerType"    # I
    .param p2, "miScrollState"    # I
    .param p3, "isFastScrollerVisible"    # Z
    .param p4, "indexOverlayPopupVisible"    # Z
    .param p5, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 176
    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    if-ne p1, v2, :cond_16

    if-eqz p3, :cond_16

    if-eqz p4, :cond_16

    .line 178
    :cond_b
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    if-eqz v1, :cond_16

    .line 180
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v0, p5}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 197
    :goto_15
    return v0

    .line 184
    :cond_16
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v2, v1, :cond_28

    .line 187
    if-ne p2, v2, :cond_28

    .line 189
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    :cond_28
    invoke-direct {p0, p5}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->checkScrollDistance(Landroid/view/MotionEvent;)V

    goto :goto_15
.end method

.method public findSeparatorTop()I
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 99
    .local v2, "iTotal":I
    const/4 v1, 0x0

    .line 102
    .local v1, "iIndex":I
    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-nez v5, :cond_f

    .line 118
    :cond_c
    :goto_c
    return v4

    .line 115
    .local v0, "child":Landroid/view/View;
    :cond_d
    add-int/lit8 v1, v1, 0x1

    .line 105
    .end local v0    # "child":Landroid/view/View;
    :cond_f
    if-ge v1, v2, :cond_c

    .line 107
    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v5, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 109
    .restart local v0    # "child":Landroid/view/View;
    const v5, 0x7f100012

    invoke-virtual {v0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 111
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_d

    iget-object v5, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v5

    sget-object v6, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    if-ne v5, v6, :cond_d

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_c
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 9
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    const/4 v2, 0x2

    .line 278
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 279
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 280
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 281
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 12
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    const/4 v6, 0x0

    .line 202
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mLock:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->isScrolled:Z

    if-eqz v2, :cond_e

    .line 204
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->awakenScrollBars()V

    .line 207
    :cond_e
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mLock:Z

    if-nez v2, :cond_36

    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->isScrolled:Z

    if-eqz v2, :cond_36

    .line 210
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 211
    .local v1, "iVisiableCount":I
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCount()I

    move-result v0

    .line 213
    .local v0, "iTotal":I
    if-ge v1, v0, :cond_37

    .line 215
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 217
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1770

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    .end local v0    # "iTotal":I
    .end local v1    # "iVisiableCount":I
    :cond_36
    :goto_36
    return-void

    .line 222
    .restart local v0    # "iTotal":I
    .restart local v1    # "iVisiableCount":I
    :cond_37
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_36
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const-wide/16 v6, 0x1770

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 230
    .local v1, "iVisiableCount":I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    if-nez v2, :cond_15

    move v0, v3

    .line 232
    .local v0, "iTotal":I
    :goto_11
    packed-switch p2, :pswitch_data_66

    .line 274
    :goto_14
    return-void

    .line 230
    .end local v0    # "iTotal":I
    :cond_15
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_11

    .line 235
    .restart local v0    # "iTotal":I
    :pswitch_20
    iput-boolean v4, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->isScrolled:Z

    .line 237
    if-ge v1, v0, :cond_34

    .line 239
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 241
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_14

    .line 246
    :cond_34
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14

    .line 252
    :pswitch_3f
    iput-boolean v4, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->isScrolled:Z

    .line 254
    if-ge v1, v0, :cond_4e

    .line 256
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_14

    .line 261
    :cond_4e
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14

    .line 268
    :pswitch_59
    iput-boolean v3, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->isScrolled:Z

    .line 270
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 271
    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexTitleHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14

    .line 232
    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_59
        :pswitch_3f
        :pswitch_20
    .end packed-switch
.end method

.method public setAdapter(Lcom/pantech/app/music/list/adapter/IAdapterCommon;)V
    .registers 5
    .param p1, "adapter"    # Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 89
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->setAttachView(Landroid/widget/AbsListView;Lcom/pantech/app/music/list/PageInfoType;)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetIndexSeperaterHelper()Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mSeperaterHelper:Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;

    .line 94
    return-void
.end method
