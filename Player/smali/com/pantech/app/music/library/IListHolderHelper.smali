.class public interface abstract Lcom/pantech/app/music/library/IListHolderHelper;
.super Ljava/lang/Object;
.source "IListHolderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;,
        Lcom/pantech/app/music/library/IListHolderHelper$ViewType;,
        Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    }
.end annotation


# virtual methods
.method public abstract getAlbumID()J
.end method

.method public abstract getClickBehavior()Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
.end method

.method public abstract getDetailListInfo()Lcom/pantech/app/music/library/FragmentInfo;
.end method

.method public abstract getItemInfo()Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;
.end method

.method public abstract updateWithInfo(Landroid/content/Context;Ljava/lang/Object;)V
.end method
