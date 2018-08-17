.class public interface abstract Lcom/pantech/app/music/library/IListAdapter;
.super Ljava/lang/Object;
.source "IListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;,
        Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;
    }
.end annotation


# virtual methods
.method public abstract changeArrayList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract changeCursor(Landroid/database/Cursor;)V
.end method

.method public abstract changeMusicList([Lcom/pantech/app/music/list/MusicItemInfo;)V
.end method

.method public abstract checkAll(Z)V
.end method

.method public abstract getAvailableCount()I
.end method

.method public abstract getCheckedCount()I
.end method

.method public abstract getGroupList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.end method

.method public abstract getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;
.end method

.method public abstract isFixedItemChecked()Z
.end method

.method public abstract isItemChecked(I)Z
.end method

.method public abstract onActionModeChanged(Z)V
.end method

.method public abstract onConfigureChanged()V
.end method

.method public abstract refreshAll()V
.end method

.method public abstract removeSelected()I
.end method

.method public abstract setHighlightWordList([Ljava/lang/String;)V
.end method

.method public abstract setOnItemListener(Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;)V
.end method
