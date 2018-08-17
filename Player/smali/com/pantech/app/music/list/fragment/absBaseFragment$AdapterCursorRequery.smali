.class Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;
.super Ljava/lang/Object;
.source "absBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/absBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterCursorRequery"
.end annotation


# instance fields
.field mCursorRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Landroid/database/Cursor;)V
    .registers 4
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->mCursorRef:Ljava/lang/ref/WeakReference;

    .line 110
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 121
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->mCursorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b7

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->mCursorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b7

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v4, v4, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Cursor Contents Changed, Requery."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 140
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->mCursorRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 142
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mLastUpdateTime:J

    .line 147
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v3, v3, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 149
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 151
    .local v2, "listview":Landroid/widget/ListView;
    if-eqz v2, :cond_b7

    .line 153
    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 154
    .local v1, "headerviewCount":I
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v0

    .line 156
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v4, v4, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] RecentlyAddedCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " headerview:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 158
    if-eqz v1, :cond_b8

    .line 160
    if-nez v0, :cond_b7

    .line 162
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v3, v3, Lcom/pantech/app/music/list/fragment/absBaseFragment;->mListHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 175
    .end local v0    # "count":I
    .end local v1    # "headerviewCount":I
    .end local v2    # "listview":Landroid/widget/ListView;
    :cond_b7
    :goto_b7
    return-void

    .line 167
    .restart local v0    # "count":I
    .restart local v1    # "headerviewCount":I
    .restart local v2    # "listview":Landroid/widget/ListView;
    :cond_b8
    if-lez v0, :cond_b7

    .line 169
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    check-cast v3, Lcom/pantech/app/music/list/fragment/ListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/ListFragment;->changeListAdapter()V

    goto :goto_b7
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .registers 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->mCursorRef:Ljava/lang/ref/WeakReference;

    .line 115
    return-void
.end method
