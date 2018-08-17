.class public Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelperCallback.java"


# static fields
.field public static final ALPHA_FULL:F = 1.0f


# instance fields
.field private final mAdapter:Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

.field private mDragStartPosition:I

.field private mSwipeEnable:Z


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;Z)V
    .registers 4
    .param p1, "adapter"    # Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;
    .param p2, "swipeEnable"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mDragStartPosition:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mSwipeEnable:Z

    .line 46
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mAdapter:Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

    .line 47
    iput-boolean p2, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mSwipeEnable:Z

    .line 48
    return-void
.end method


# virtual methods
.method public clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 129
    iget-object v1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 131
    instance-of v1, p2, Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;

    if-eqz v1, :cond_1f

    move-object v0, p2

    .line 133
    check-cast v0, Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;

    .line 134
    .local v0, "itemViewHolder":Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;
    invoke-interface {v0}, Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;->onItemClear()V

    .line 137
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mAdapter:Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

    iget v2, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mDragStartPosition:I

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;->onItemDragStop(II)V

    .line 139
    .end local v0    # "itemViewHolder":Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;
    :cond_1f
    return-void
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v3

    instance-of v3, v3, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_13

    .line 68
    const/16 v0, 0xf

    .line 69
    .local v0, "dragFlags":I
    const/4 v1, 0x0

    .line 70
    .local v1, "swipeFlags":I
    const/16 v3, 0xf

    invoke-static {v3, v2}, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v2

    .line 74
    :goto_12
    return v2

    .line 72
    .end local v0    # "dragFlags":I
    .end local v1    # "swipeFlags":I
    :cond_13
    const/4 v0, 0x3

    .line 73
    .restart local v0    # "dragFlags":I
    iget-boolean v3, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mSwipeEnable:Z

    if-eqz v3, :cond_20

    const/16 v1, 0x30

    .line 74
    .restart local v1    # "swipeFlags":I
    :goto_1a
    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result v2

    goto :goto_12

    .end local v1    # "swipeFlags":I
    :cond_20
    move v1, v2

    .line 73
    goto :goto_1a
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mSwipeEnable:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 97
    const/4 v1, 0x1

    if-ne p6, v1, :cond_1e

    .line 99
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 100
    .local v0, "alpha":F
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 101
    iget-object v1, p3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    .end local v0    # "alpha":F
    :goto_1d
    return-void

    .line 103
    :cond_1e
    invoke-super/range {p0 .. p7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V

    goto :goto_1d
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 7
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "source"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 81
    const/4 v0, 0x0

    .line 86
    :goto_b
    return v0

    .line 85
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mAdapter:Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;->onItemMove(II)Z

    .line 86
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .prologue
    .line 110
    if-eqz p2, :cond_19

    .line 111
    instance-of v1, p1, Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;

    if-eqz v1, :cond_19

    move-object v0, p1

    .line 113
    check-cast v0, Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;

    .line 114
    .local v0, "itemViewHolder":Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;
    invoke-interface {v0}, Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;->onItemSelected()V

    .line 117
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mDragStartPosition:I

    .line 118
    iget-object v1, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mAdapter:Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

    iget v2, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mDragStartPosition:I

    invoke-interface {v1, v2}, Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;->onItemDragStart(I)V

    .line 122
    .end local v0    # "itemViewHolder":Lcom/pantech/app/music/library/helper/ItemTouchHelperViewHolder;
    :cond_19
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 123
    return-void
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mAdapter:Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;->onItemDismiss(I)V

    .line 93
    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .registers 2
    .param p1, "swipeEnable"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->mSwipeEnable:Z

    .line 52
    return-void
.end method
