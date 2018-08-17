.class public Lcom/pantech/app/music/list/fragment/FragmentMainHandler;
.super Landroid/os/Handler;
.source "FragmentMainHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;,
        Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;,
        Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ListEvent;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mHandlerTerminated:Z

.field mInterface:Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iface"    # Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->mHandlerTerminated:Z

    .line 68
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->mInterface:Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    .line 70
    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->mHandlerTerminated:Z

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 86
    iget-boolean v2, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->mHandlerTerminated:Z

    if-eqz v2, :cond_10

    .line 88
    const-string v2, "FragmentMainHandler:terminated"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 174
    :cond_f
    :goto_f
    :pswitch_f
    return-void

    .line 92
    :cond_10
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_10c

    goto :goto_f

    .line 100
    :pswitch_16
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 101
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->mInterface:Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;->onTouchLockFreed(J)V

    goto :goto_f

    .line 105
    :pswitch_28
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_f

    .line 107
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    .line 109
    .local v1, "param":Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;
    iget-boolean v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mReadyToRestore:Z

    if-eqz v2, :cond_75

    .line 113
    iget-wide v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAdditionalDelay:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_64

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we ready to restore after just "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAdditionalDelay:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 117
    iput-wide v8, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAdditionalDelay:J

    .line 119
    invoke-virtual {p0, v6, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "newMsg":Landroid/os/Message;
    iget-wide v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAdditionalDelay:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_f

    .line 124
    .end local v0    # "newMsg":Landroid/os/Message;
    :cond_64
    const-string v2, "we ready to restore. "

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 126
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mListViewState:Landroid/util/SparseArray;

    if-eqz v2, :cond_f

    .line 128
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAbsListview:Landroid/widget/AbsListView;

    iget-object v3, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mListViewState:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_f

    .line 134
    :cond_75
    const-string v2, "we are not ready to restore. "

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 136
    iget v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mRetryCount:I

    .line 138
    iget v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mRetryCount:I

    const/16 v3, 0x32

    if-le v2, v3, :cond_8f

    .line 140
    const-string v2, "we max retry over"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    iput v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mRetryCount:I

    goto :goto_f

    .line 146
    :cond_8f
    invoke-virtual {p0, v6, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 147
    .restart local v0    # "newMsg":Landroid/os/Message;
    const-wide/16 v2, 0x32

    invoke-virtual {p0, v0, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_f

    .line 154
    .end local v0    # "newMsg":Landroid/os/Message;
    .end local v1    # "param":Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;
    :pswitch_9a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;

    .line 156
    .local v1, "param":Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListHandler:InvalidateList dataSetChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mDatasetChanged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIAdapter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 158
    iget-boolean v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mDatasetChanged:Z

    if-eqz v2, :cond_f0

    .line 160
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-eqz v2, :cond_db

    .line 161
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmNotifyDataSetChanged()V

    .line 163
    :cond_db
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    if-eqz v2, :cond_f0

    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 164
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->getSubIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmNotifyDataSetChanged()V

    .line 167
    :cond_f0
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mAbsListView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_f9

    .line 168
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 170
    :cond_f9
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 171
    iget-object v2, v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->invalidateViews()V

    goto/16 :goto_f

    .line 92
    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_16
        :pswitch_28
        :pswitch_9a
    .end packed-switch
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->mHandlerTerminated:Z

    .line 78
    return-void
.end method
