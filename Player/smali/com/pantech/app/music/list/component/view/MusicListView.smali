.class public Lcom/pantech/app/music/list/component/view/MusicListView;
.super Landroid/widget/ListView;
.source "MusicListView.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/view/IMusicListScrollState;
.implements Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;


# instance fields
.field mFastScrollerOverlayVisible:Z

.field mIndexOverlayPopupVisible:Z

.field mListener:Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;

.field mScrollerType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mScrollerType:I

    .line 16
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mIndexOverlayPopupVisible:Z

    .line 18
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mFastScrollerOverlayVisible:Z

    .line 25
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicListView;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mScrollerType:I

    .line 16
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mIndexOverlayPopupVisible:Z

    .line 18
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mFastScrollerOverlayVisible:Z

    .line 31
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicListView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mScrollerType:I

    .line 16
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mIndexOverlayPopupVisible:Z

    .line 18
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mFastScrollerOverlayVisible:Z

    .line 37
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicListView;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mFastScrollerOverlayVisible:Z

    .line 44
    iput v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mScrollerType:I

    .line 45
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mIndexOverlayPopupVisible:Z

    .line 46
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_e

    .line 108
    iput-boolean v1, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mFastScrollerOverlayVisible:Z

    .line 116
    :cond_9
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 111
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mFastScrollerOverlayVisible:Z

    goto :goto_9
.end method

.method public getOverlayPopupEnable()Z
    .registers 2

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mIndexOverlayPopupVisible:Z

    return v0
.end method

.method public getScrollerType()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mScrollerType:I

    return v0
.end method

.method public isFastScrollOverlayPopupVisible()Z
    .registers 2

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mFastScrollerOverlayVisible:Z

    return v0
.end method

.method public isFastScrollerVisible()Z
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public isScrolling()Z
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 11
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 124
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mListener:Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;

    if-eqz v0, :cond_14

    .line 127
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mListener:Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/MusicListView;->computeVerticalScrollOffset()I

    move-result v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;->onScrollChangedAmount(IIIII)V

    .line 129
    :cond_14
    return-void
.end method

.method public setOnScrollAmountListener(Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mListener:Lcom/pantech/app/music/list/listener/IMusicListScrollAmountListener;

    .line 51
    return-void
.end method

.method public setScrollerType(IZ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "overlayPopup"    # Z

    .prologue
    const/4 v0, 0x1

    .line 56
    iput p1, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mScrollerType:I

    .line 58
    if-ne p1, v0, :cond_b

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/MusicListView;->setFastScrollEnabled(Z)V

    .line 60
    iput-boolean p2, p0, Lcom/pantech/app/music/list/component/view/MusicListView;->mIndexOverlayPopupVisible:Z

    .line 61
    return-void

    .line 58
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method
