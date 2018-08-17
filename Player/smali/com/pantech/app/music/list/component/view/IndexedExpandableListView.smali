.class public Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;
.super Lcom/pantech/app/music/list/component/view/MusicExpandableListView;
.source "IndexedExpandableListView.java"

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

    .line 31
    invoke-direct {p0, p1, v1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isDragCheckScroll:Z

    .line 32
    invoke-direct {p0, p1, v1}, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->initIndexedListView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isDragCheckScroll:Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->initIndexedListView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isDragCheckScroll:Z

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->initIndexedListView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private initIndexedListView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->miScrollState:I

    .line 51
    iput v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mScrollerType:I

    .line 53
    new-instance v0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-direct {v0, p1, p0}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    .line 54
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mScrollerType:I

    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mFastScrollerOverlayVisible:Z

    iget-boolean v3, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexOverlayPopupVisible:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->dispatchDraw(IZZLandroid/graphics/Canvas;)V

    .line 73
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mScrollerType:I

    iget v2, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->miScrollState:I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isFastScrollerVisible()Z

    move-result v3

    iget-boolean v4, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexOverlayPopupVisible:Z

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->dispatchTouchEvent(IIZZLandroid/view/MotionEvent;)Z

    move-result v6

    .line 83
    .local v6, "dispatchedEvent":Z
    if-eqz v6, :cond_15

    .line 84
    const/4 v0, 0x1

    .line 86
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_14
.end method

.method public getOverlayPopupEnable()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexOverlayPopupVisible:Z

    return v0
.end method

.method public getScrollerType()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mScrollerType:I

    return v0
.end method

.method public isScrolling()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isDragCheckScroll:Z

    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 6
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->onOverScrolled(IIZZ)V

    .line 168
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .param p1, "listview"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->onScroll(Landroid/widget/AbsListView;III)V

    .line 136
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v0, 0x0

    .line 141
    packed-switch p2, :pswitch_data_14

    .line 156
    :goto_4
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 157
    return-void

    .line 144
    :pswitch_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isDragCheckScroll:Z

    goto :goto_4

    .line 148
    :pswitch_e
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isDragCheckScroll:Z

    goto :goto_4

    .line 152
    :pswitch_11
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->isDragCheckScroll:Z

    goto :goto_4

    .line 141
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
    .line 92
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->onWindowFocusChanged(Z)V

    .line 94
    if-eqz p1, :cond_d

    .line 96
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->invalidateViews()V

    .line 97
    const-string v0, "onWindowFocusChanged "

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 99
    :cond_d
    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 61
    if-eqz p1, :cond_c

    .line 63
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexScrollerHelper:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    check-cast p1, Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .end local p1    # "adapter":Landroid/widget/ExpandableListAdapter;
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->setAdapter(Lcom/pantech/app/music/list/adapter/IAdapterCommon;)V

    .line 65
    :cond_c
    return-void
.end method

.method public setScrollerType(IZ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "overlayPopup"    # Z

    .prologue
    const/4 v0, 0x1

    .line 104
    iput p1, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mScrollerType:I

    .line 106
    if-ne p1, v0, :cond_e

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->setFastScrollEnabled(Z)V

    .line 108
    iput-boolean p2, p0, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->mIndexOverlayPopupVisible:Z

    .line 111
    invoke-virtual {p0, p0}, Lcom/pantech/app/music/list/component/view/IndexedExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 112
    return-void

    .line 106
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method
