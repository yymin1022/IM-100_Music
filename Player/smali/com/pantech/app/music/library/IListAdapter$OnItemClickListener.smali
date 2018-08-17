.class public interface abstract Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;
.super Ljava/lang/Object;
.source "IListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/IListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemChecked(IZI)V
.end method

.method public abstract onItemRemoved(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onItemSelected(Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;)V
.end method

.method public abstract onRequestDetailList(Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V
.end method

.method public abstract onRequestPlay([Lcom/pantech/app/music/list/MusicItemInfo;I)V
.end method
