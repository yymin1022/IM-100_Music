.class public Lcom/pantech/app/music/list/module/DeleteContents;
.super Ljava/lang/Object;
.source "DeleteContents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;
    }
.end annotation


# instance fields
.field mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

.field mDBDelete:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mSelectedList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;)V
    .registers 7
    .param p1, "contextServiceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "callback"    # Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;",
            "Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p3, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    .line 37
    iput-object p2, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 38
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mDBDelete:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    .line 40
    iput-object p3, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mSelectedList:Ljava/util/Collection;

    .line 42
    iput-object p4, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mListener:Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;

    .line 44
    new-instance v0, Lcom/pantech/app/music/list/module/DeleteContents$1;

    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v1}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/list/module/DeleteContents$1;-><init>(Lcom/pantech/app/music/list/module/DeleteContents;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, "deleteCount":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 69
    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v4, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mSelectedList:Ljava/util/Collection;

    invoke-static {v1, v4}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteFavorites(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I

    move-result v0

    .line 80
    :goto_17
    const/16 v1, 0x320

    invoke-static {v2, v3, v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->guarenteeNSecSleep(JI)V

    .line 82
    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void

    .line 71
    :cond_27
    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 73
    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v4, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mSelectedList:Ljava/util/Collection;

    invoke-static {v1, v4}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteServiceQueues(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I

    move-result v0

    goto :goto_17

    .line 77
    :cond_3a
    iget-object v1, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mDBDelete:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    iget-object v4, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v5, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/list/module/DeleteContents;->mSelectedList:Ljava/util/Collection;

    invoke-virtual {v1, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteSongs(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/Collection;)I

    move-result v0

    goto :goto_17
.end method
