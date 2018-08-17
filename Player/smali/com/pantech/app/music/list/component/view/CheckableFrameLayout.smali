.class public Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CheckableFrameLayout.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/view/IMusicCheckable;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final EXPANDED_STATE_SET:[I

.field private static final PARTIAL_CHECKED_STATE_SET:[I


# instance fields
.field mArtistAlbumartWidth:I

.field private mChecked:Z

.field mExpandableLeftPadding:I

.field private mExpanded:Z

.field mNormalAlbumartWidth:I

.field private mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

.field private mPartialChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->CHECKED_STATE_SET:[I

    .line 23
    new-array v0, v3, [I

    const v1, 0x7f010080

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->PARTIAL_CHECKED_STATE_SET:[I

    .line 25
    new-array v0, v3, [I

    const v1, 0x7f01005c

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->EXPANDED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mExpandableLeftPadding:I

    .line 38
    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mNormalAlbumartWidth:I

    .line 39
    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mArtistAlbumartWidth:I

    .line 40
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getId()I

    move-result v4

    int-to-long v2, v4

    .line 145
    .local v2, "id":J
    const-wide/32 v4, 0x7f100105

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2f

    const-wide/32 v4, 0x7f100107

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2f

    const-wide/32 v4, 0x7f100114

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2f

    const-wide/32 v4, 0x7f100110

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2f

    const-wide/32 v4, 0x7f100111

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2f

    const-wide/32 v4, 0x7f100112

    cmp-long v4, v2, v4

    if-nez v4, :cond_4f

    .line 152
    :cond_2f
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mNormalAlbumartWidth:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 171
    :cond_36
    :goto_36
    const v4, 0x7f10000e

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 173
    .local v0, "expandable_child":Ljava/lang/Boolean;
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 175
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mExpandableLeftPadding:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 177
    :cond_4e
    return-void

    .line 154
    .end local v0    # "expandable_child":Ljava/lang/Boolean;
    :cond_4f
    const-wide/32 v4, 0x7f100108

    cmp-long v4, v2, v4

    if-nez v4, :cond_5e

    .line 156
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mArtistAlbumartWidth:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_36

    .line 158
    :cond_5e
    const-wide/32 v4, 0x7f100006

    cmp-long v4, v2, v4

    if-nez v4, :cond_36

    .line 160
    const v4, 0x7f100013

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    .line 161
    .local v1, "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    if-eqz v1, :cond_80

    iget-object v4, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_80

    .line 163
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mNormalAlbumartWidth:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_36

    .line 167
    :cond_80
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_36
.end method

.method public getExpanded()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mExpanded:Z

    return v0
.end method

.method public getPartialChecked()Z
    .registers 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mPartialChecked:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "addedCount":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3a

    move v2, v3

    :goto_a
    add-int/2addr v0, v2

    .line 47
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mPartialChecked:Z

    if-eqz v2, :cond_3c

    move v2, v3

    :goto_10
    add-int/2addr v0, v2

    .line 48
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mExpanded:Z

    if-eqz v2, :cond_3e

    :goto_15
    add-int/2addr v0, v3

    .line 50
    add-int v2, p1, v0

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 52
    .local v1, "drawableState":[I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 54
    sget-object v2, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->CHECKED_STATE_SET:[I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mergeDrawableStates([I[I)[I

    .line 57
    :cond_27
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mPartialChecked:Z

    if-eqz v2, :cond_30

    .line 59
    sget-object v2, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->PARTIAL_CHECKED_STATE_SET:[I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mergeDrawableStates([I[I)[I

    .line 62
    :cond_30
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mExpanded:Z

    if-eqz v2, :cond_39

    .line 64
    sget-object v2, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->EXPANDED_STATE_SET:[I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mergeDrawableStates([I[I)[I

    .line 67
    :cond_39
    return-object v1

    .end local v1    # "drawableState":[I
    :cond_3a
    move v2, v4

    .line 46
    goto :goto_a

    :cond_3c
    move v2, v4

    .line 47
    goto :goto_10

    :cond_3e
    move v3, v4

    .line 48
    goto :goto_15
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mChecked:Z

    if-eq v0, p1, :cond_14

    .line 96
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mChecked:Z

    .line 97
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->refreshDrawableState()V

    .line 100
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    if-eqz v0, :cond_14

    .line 102
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;->onCheckedChanged(Lcom/pantech/app/music/list/component/view/IMusicCheckable;Z)V

    .line 105
    :cond_14
    return-void
.end method

.method public setCheckedWithoutCallback(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 86
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mChecked:Z

    .line 87
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->refreshDrawableState()V

    .line 89
    :cond_9
    return-void
.end method

.method public setExpanded(Z)V
    .registers 3
    .param p1, "expanded"    # Z

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mExpanded:Z

    if-eq v0, p1, :cond_9

    .line 130
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mExpanded:Z

    .line 131
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->refreshDrawableState()V

    .line 133
    :cond_9
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .line 111
    return-void
.end method

.method public setPartialChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mPartialChecked:Z

    .line 117
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->refreshDrawableState()V

    .line 118
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->setChecked(Z)V

    .line 74
    return-void

    .line 73
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
