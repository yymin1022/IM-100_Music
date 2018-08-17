.class public Lcom/pantech/app/music/list/component/view/MusicExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "MusicExpandableListView.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/view/IMusicListScrollState;
.implements Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;


# instance fields
.field mFastScrollerOverlayVisible:Z

.field mIndexOverlayPopupVisible:Z

.field mScrollerType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput v1, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mScrollerType:I

    .line 14
    iput-boolean v1, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mIndexOverlayPopupVisible:Z

    .line 16
    iput-boolean v1, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mFastScrollerOverlayVisible:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    iput v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mScrollerType:I

    .line 14
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mIndexOverlayPopupVisible:Z

    .line 16
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mFastScrollerOverlayVisible:Z

    .line 27
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->init(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    iput v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mScrollerType:I

    .line 14
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mIndexOverlayPopupVisible:Z

    .line 16
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mFastScrollerOverlayVisible:Z

    .line 33
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mFastScrollerOverlayVisible:Z

    .line 40
    iput v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mScrollerType:I

    .line 41
    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mIndexOverlayPopupVisible:Z

    .line 42
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_b

    .line 104
    :cond_6
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 99
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mFastScrollerOverlayVisible:Z

    goto :goto_6
.end method

.method public getScrollerType()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mScrollerType:I

    return v0
.end method

.method public isFastScrollOverlayPopupVisible()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mFastScrollerOverlayVisible:Z

    return v0
.end method

.method public isFastScrollerVisible()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isScrolling()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setScrollerType(IZ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "overlayPopup"    # Z

    .prologue
    const/4 v0, 0x1

    .line 47
    iput p1, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mScrollerType:I

    .line 49
    if-ne p1, v0, :cond_b

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->setFastScrollEnabled(Z)V

    .line 51
    iput-boolean p2, p0, Lcom/pantech/app/music/list/component/view/MusicExpandableListView;->mIndexOverlayPopupVisible:Z

    .line 52
    return-void

    .line 49
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method
