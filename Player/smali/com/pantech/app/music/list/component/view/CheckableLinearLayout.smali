.class public Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Lcom/pantech/app/music/list/component/view/IMusicCheckable;
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final PARTIAL_CHECKED_STATE_SET:[I


# instance fields
.field mArtistAlbumartWidth:I

.field private mChecked:Z

.field mExpandableLeftPadding:I

.field mNormalAlbumartWidth:I

.field private mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

.field private mPartialChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-array v0, v3, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    .line 22
    new-array v0, v3, [I

    const v1, 0x7f010080

    aput v1, v0, v2

    sput-object v0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->PARTIAL_CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mExpandableLeftPadding:I

    .line 35
    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mNormalAlbumartWidth:I

    .line 36
    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mArtistAlbumartWidth:I

    .line 37
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->getId()I

    move-result v4

    int-to-long v2, v4

    .line 122
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

    .line 129
    :cond_2f
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mNormalAlbumartWidth:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 148
    :cond_36
    :goto_36
    const v4, 0x7f10000e

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 150
    .local v0, "expandable_child":Ljava/lang/Boolean;
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 152
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mExpandableLeftPadding:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 154
    :cond_4e
    return-void

    .line 131
    .end local v0    # "expandable_child":Ljava/lang/Boolean;
    :cond_4f
    const-wide/32 v4, 0x7f100108

    cmp-long v4, v2, v4

    if-nez v4, :cond_5e

    .line 133
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mArtistAlbumartWidth:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_36

    .line 135
    :cond_5e
    const-wide/32 v4, 0x7f100006

    cmp-long v4, v2, v4

    if-nez v4, :cond_36

    .line 137
    const v4, 0x7f100013

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    .line 138
    .local v1, "holder":Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    if-eqz v1, :cond_80

    iget-object v4, v1, Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;->mMainIcon:Lcom/pantech/app/music/list/component/view/CheckableImageView;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_80

    .line 140
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mNormalAlbumartWidth:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_36

    .line 144
    :cond_80
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_36
.end method

.method public getPartialChecked()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mPartialChecked:Z

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .registers 7
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "addedCount":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2b

    move v2, v3

    :goto_a
    add-int/2addr v0, v2

    .line 44
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mPartialChecked:Z

    if-eqz v2, :cond_2d

    :goto_f
    add-int/2addr v0, v3

    .line 46
    add-int v2, p1, v0

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 48
    .local v1, "drawableState":[I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 50
    sget-object v2, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->CHECKED_STATE_SET:[I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    .line 53
    :cond_21
    iget-boolean v2, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mPartialChecked:Z

    if-eqz v2, :cond_2a

    .line 55
    sget-object v2, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->PARTIAL_CHECKED_STATE_SET:[I

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    .line 58
    :cond_2a
    return-object v1

    .end local v1    # "drawableState":[I
    :cond_2b
    move v2, v4

    .line 43
    goto :goto_a

    :cond_2d
    move v3, v4

    .line 44
    goto :goto_f
.end method

.method public setChecked(Z)V
    .registers 4
    .param p1, "checked"    # Z

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mChecked:Z

    if-eq v0, p1, :cond_14

    .line 87
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mChecked:Z

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->refreshDrawableState()V

    .line 91
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    if-eqz v0, :cond_14

    .line 93
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mChecked:Z

    invoke-interface {v0, p0, v1}, Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;->onCheckedChanged(Lcom/pantech/app/music/list/component/view/IMusicCheckable;Z)V

    .line 96
    :cond_14
    return-void
.end method

.method public setCheckedWithoutCallback(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mChecked:Z

    if-eq v0, p1, :cond_9

    .line 77
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mChecked:Z

    .line 78
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->refreshDrawableState()V

    .line 80
    :cond_9
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mOnCheckedChangeListener:Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;

    .line 102
    return-void
.end method

.method public setPartialChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mPartialChecked:Z

    .line 108
    invoke-virtual {p0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->refreshDrawableState()V

    .line 109
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->mChecked:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/component/view/CheckableLinearLayout;->setChecked(Z)V

    .line 65
    return-void

    .line 64
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method
