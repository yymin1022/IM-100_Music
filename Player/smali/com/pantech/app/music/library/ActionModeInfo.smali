.class public Lcom/pantech/app/music/library/ActionModeInfo;
.super Ljava/lang/Object;
.source "ActionModeInfo.java"


# instance fields
.field mActivated:Z

.field mCheckedItems:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mActivated:Z

    .line 7
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public checkItem(IZ)V
    .registers 4
    .param p1, "key"    # I
    .param p2, "set"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 47
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 21
    return-void
.end method

.method public getSelectedCount()I
    .registers 5

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v3, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1d

    .line 34
    iget-object v3, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 35
    .local v2, "key":I
    iget-object v3, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 33
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 38
    .end local v2    # "key":I
    :cond_1d
    return v0
.end method

.method public isActivated()Z
    .registers 2

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mActivated:Z

    return v0
.end method

.method public isChecked(I)Z
    .registers 3
    .param p1, "key"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .registers 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 24
    iget-boolean v1, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mActivated:Z

    if-nez v1, :cond_5

    .line 29
    :goto_4
    return-void

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 27
    .local v0, "fromChecked":Z
    iget-object v1, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    iget-object v2, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 28
    iget-object v1, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_4
.end method

.method public setActivated(Z)V
    .registers 3
    .param p1, "active"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mActivated:Z

    .line 11
    if-nez p1, :cond_9

    .line 12
    iget-object v0, p0, Lcom/pantech/app/music/library/ActionModeInfo;->mCheckedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 13
    :cond_9
    return-void
.end method
