.class public Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;
.super Lcom/pantech/app/music/list/component/view/MusicGridView;
.source "IndexScrollerGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;


# static fields
.field static final TAG:Ljava/lang/String; = "VMusicIndexBar"


# instance fields
.field isDragCheckScroll:Z

.field mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

.field protected miScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, v1}, Lcom/pantech/app/music/list/component/view/MusicGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isDragCheckScroll:Z

    .line 38
    invoke-direct {p0, p1, v1}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->initIndexScrollerGridView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/MusicGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isDragCheckScroll:Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->initIndexScrollerGridView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/list/component/view/MusicGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isDragCheckScroll:Z

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->initIndexScrollerGridView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method private initIndexScrollerGridView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->miScrollState:I

    .line 57
    iput v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mScrollerType:I

    .line 59
    new-instance v0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-direct {v0, p1, p0}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    .line 60
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicGridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mScrollerType:I

    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mFastScrollerOverlayVisible:Z

    iget-boolean v3, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexOverlayPopupVisible:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->dispatchDraw(IZZLandroid/graphics/Canvas;)V

    .line 80
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mScrollerType:I

    iget v2, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->miScrollState:I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isFastScrollerVisible()Z

    move-result v3

    iget-boolean v4, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexOverlayPopupVisible:Z

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->dispatchTouchEvent(IIZZLandroid/view/MotionEvent;)Z

    move-result v6

    .line 90
    .local v6, "dispatchedEvent":Z
    if-eqz v6, :cond_15

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public getOverlayPopupEnable()Z
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexOverlayPopupVisible:Z

    return v0
.end method

.method public getScrollerType()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mScrollerType:I

    return v0
.end method

.method public isScrolling()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isDragCheckScroll:Z

    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 6
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 175
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->onOverScrolled(IIZZ)V

    .line 176
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->onScroll(Landroid/widget/AbsListView;III)V

    .line 144
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v0, 0x0

    .line 149
    packed-switch p2, :pswitch_data_14

    .line 164
    :goto_4
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 165
    return-void

    .line 152
    :pswitch_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isDragCheckScroll:Z

    goto :goto_4

    .line 156
    :pswitch_e
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isDragCheckScroll:Z

    goto :goto_4

    .line 160
    :pswitch_11
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->isDragCheckScroll:Z

    goto :goto_4

    .line 149
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_e
        :pswitch_a
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicGridView;->onWindowFocusChanged(Z)V

    .line 101
    if-eqz p1, :cond_d

    .line 103
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->invalidateViews()V

    .line 104
    const-string v0, "onWindowFocusChanged "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 106
    :cond_d
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 21
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    if-eqz p1, :cond_c

    .line 70
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    check-cast p1, Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->setAdapter(Lcom/pantech/app/music/list/adapter/IAdapterCommon;)V

    .line 72
    :cond_c
    return-void
.end method

.method public setScrollerType(IZ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "overlayPopup"    # Z

    .prologue
    const/4 v0, 0x1

    .line 111
    iput p1, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mScrollerType:I

    .line 113
    if-ne p1, v0, :cond_e

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->setFastScrollEnabled(Z)V

    .line 115
    iput-boolean p2, p0, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->mIndexOverlayPopupVisible:Z

    .line 118
    invoke-virtual {p0, p0}, Lcom/pantech/app/music/list/component/view/IndexScrollerGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 119
    return-void

    .line 113
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method
