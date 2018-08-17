.class Lcom/pantech/app/music/list/fragment/ChildListViewManager;
.super Ljava/lang/Object;
.source "ChildListViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;
.implements Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;
.implements Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;
.implements Lcom/pantech/app/music/list/fragment/IViewPagerCallback;
.implements Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/ChildListViewManager$2;
    }
.end annotation


# instance fields
.field mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field mCloseButton:Landroid/widget/ImageView;

.field mCloseSplitbar:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mExpanded:Z

.field mExpandedChildHeader:Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

.field mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

.field mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

.field mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

.field private mQuerying:Z

.field mRootView:Landroid/view/View;

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mSubListview:Landroid/widget/ListView;

.field mSubListviewLayer:Landroid/view/ViewGroup;

.field mSubRootview:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Lcom/pantech/app/music/list/PageInfoType;Landroid/view/View;)V
    .registers 12
    .param p1, "fragment"    # Lcom/pantech/app/music/list/fragment/absBaseFragment;
    .param p2, "childPageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p3, "root"    # Landroid/view/View;

    .prologue
    const v5, 0x7f030049

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    .line 162
    iput-boolean v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpanded:Z

    .line 256
    iput-boolean v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mQuerying:Z

    .line 87
    invoke-virtual {p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    .line 89
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    .line 91
    iput-object p3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mRootView:Landroid/view/View;

    .line 93
    iput-object p2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 95
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 97
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/pantech/app/music/list/module/QueryFactory;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/QueryFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 102
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mRootView:Landroid/view/View;

    const v3, 0x7f1000a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    .line 104
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 106
    .local v1, "vi":Landroid/view/LayoutInflater;
    sget-object v2, Lcom/pantech/app/music/list/fragment/ChildListViewManager$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ee

    .line 126
    :goto_5c
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    if-eqz v2, :cond_7a

    .line 128
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    const v3, 0x7f1000d8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    .line 129
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    const v3, 0x7f1000d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCloseButton:Landroid/widget/ImageView;

    .line 134
    :cond_7a
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_9c

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHWNavi()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 136
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 137
    .local v0, "val":I
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .end local v0    # "val":I
    :cond_9c
    new-instance v3, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    const v7, 0x7f1000d7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/view/ViewGroup;)V

    iput-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpandedChildHeader:Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

    .line 143
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_c1

    .line 144
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_c1
    return-void

    .line 109
    :pswitch_c2
    const v2, 0x7f030048

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    goto :goto_5c

    .line 114
    :pswitch_ce
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    goto :goto_5c

    .line 118
    :pswitch_d7
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    goto/16 :goto_5c

    .line 122
    :pswitch_e1
    const v2, 0x7f030046

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    goto/16 :goto_5c

    .line 106
    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_ce
        :pswitch_ce
        :pswitch_d7
        :pswitch_e1
    .end packed-switch
.end method

.method private setSublistVisibility(Z)V
    .registers 6
    .param p1, "visibility"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 413
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_17

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCloseSplitbar:Landroid/view/View;

    if-eqz v0, :cond_16

    .line 415
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCloseSplitbar:Landroid/view/View;

    if-eqz p1, :cond_19

    :goto_13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_16
    return-void

    :cond_17
    move v0, v2

    .line 413
    goto :goto_8

    :cond_19
    move v1, v2

    .line 415
    goto :goto_13
.end method


# virtual methods
.method public OnUBoxSessionChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 640
    return-void
.end method

.method public close()V
    .registers 9

    .prologue
    .line 352
    const-string v4, "closeSubList()"

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    monitor-enter v5

    .line 356
    :try_start_8
    const-string v4, "CHILDLIST:COLLAPSE:"

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 358
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->setDragTouchIntercepter(Z)V

    .line 360
    iget-boolean v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpanded:Z

    const/4 v6, 0x1

    if-ne v4, v6, :cond_42

    .line 366
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 370
    .local v1, "childCursor":Landroid/database/Cursor;
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 372
    if-eqz v1, :cond_2d

    .line 373
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 375
    :cond_2d
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpandedChildHeader:Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->update(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 377
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->setSublistVisibility(Z)V

    .line 379
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpanded:Z

    .line 381
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 384
    .end local v1    # "childCursor":Landroid/database/Cursor;
    :cond_42
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v4

    instance-of v4, v4, Landroid/widget/GridView;

    if-eqz v4, :cond_77

    .line 386
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    .line 388
    .local v2, "gridview":Landroid/widget/GridView;
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 389
    .local v0, "backupState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 391
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 393
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0029

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 394
    .local v3, "width":I
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 406
    :goto_74
    invoke-virtual {v2, v0}, Landroid/widget/GridView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 408
    .end local v0    # "backupState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v2    # "gridview":Landroid/widget/GridView;
    .end local v3    # "width":I
    :cond_77
    monitor-exit v5

    .line 409
    return-void

    .line 398
    .restart local v0    # "backupState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .restart local v2    # "gridview":Landroid/widget/GridView;
    :cond_79
    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0028

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 399
    .restart local v3    # "width":I
    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_74

    .line 408
    .end local v0    # "backupState":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    .end local v2    # "gridview":Landroid/widget/GridView;
    .end local v3    # "width":I
    :catchall_8a
    move-exception v4

    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_8 .. :try_end_8c} :catchall_8a

    throw v4
.end method

.method public drop(IIILjava/lang/Object;)V
    .registers 14
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "mode"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 514
    if-nez p3, :cond_6

    if-ne p1, p2, :cond_6

    .line 567
    :cond_5
    :goto_5
    return-void

    .line 525
    :cond_6
    const/4 v1, 0x2

    if-ne p3, v1, :cond_21

    .line 526
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_58

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    const v4, 0x7f08006e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 528
    .local v8, "str":Ljava/lang/String;
    :goto_1c
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 532
    .end local v8    # "str":Ljava/lang/String;
    :cond_21
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 535
    :cond_35
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    .line 541
    .local v2, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v1

    if-gtz v1, :cond_62

    .line 544
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    const/4 v4, -0x1

    invoke-static {v2, v1, v4}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v7

    .line 545
    .local v7, "playlistMemberUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v7, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_5

    .line 526
    .end local v2    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v7    # "playlistMemberUri":Landroid/net/Uri;
    :cond_58
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    const v4, 0x7f08006f

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1c

    .line 550
    .restart local v2    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :cond_62
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, "parentGroupID":Ljava/lang/String;
    new-instance v0, Lcom/pantech/app/music/list/module/RearrangePlaylist;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/module/RearrangePlaylist;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/RearrangePlaylist$RearrangeCompleteListener;)V

    .line 564
    .local v0, "savingPlaylist":Lcom/pantech/app/music/list/module/RearrangePlaylist;
    new-instance v1, Ljava/lang/Thread;

    const-string v4, "Rearrange playlist"

    invoke-direct {v1, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_5
.end method

.method public expand(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Ljava/lang/String;I)V
    .registers 10
    .param p1, "childCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "editmode"    # Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .param p3, "groupID"    # Ljava/lang/String;
    .param p4, "position"    # I

    .prologue
    .line 285
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 287
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CHILDLIST:EXPAND:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 289
    iget-boolean v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpanded:Z

    if-nez v2, :cond_80

    .line 291
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListviewLayer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubRootview:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->setSublistVisibility(Z)V

    .line 294
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, p3}, Lcom/pantech/app/music/list/PageInfoType;->setExtraValue(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, p2}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 296
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/list/PageInfoType;->setCategoryType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 301
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpandedChildHeader:Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

    invoke-virtual {v2, p1, p3}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->update(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->setSubListAdapter()V

    .line 305
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-interface {v2, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V

    .line 306
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmResetIndexbarPosition()V

    .line 308
    invoke-virtual {p0, p3}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->querySubList(Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpanded:Z

    .line 332
    :goto_51
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    if-ne p2, v2, :cond_59

    .line 334
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->setDragTouchIntercepter(Z)V

    .line 337
    :cond_59
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/GridView;

    if-eqz v2, :cond_7e

    .line 339
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 341
    .local v0, "gridview":Landroid/widget/GridView;
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a002a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 342
    .local v1, "width":I
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 344
    invoke-virtual {v0, p4}, Landroid/widget/GridView;->setSelection(I)V

    .line 347
    .end local v0    # "gridview":Landroid/widget/GridView;
    .end local v1    # "width":I
    :cond_7e
    monitor-exit v3

    .line 348
    return-void

    .line 314
    :cond_80
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, p3}, Lcom/pantech/app/music/list/PageInfoType;->setExtraValue(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, p2}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 316
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, p1}, Lcom/pantech/app/music/list/PageInfoType;->setCategoryType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 321
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpandedChildHeader:Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

    invoke-virtual {v2, p1, p3}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->update(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-interface {v2, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmSetPageInfo(Lcom/pantech/app/music/list/PageInfoType;)V

    .line 324
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmResetIndexbarPosition()V

    .line 326
    invoke-virtual {p0, p3}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->querySubList(Ljava/lang/String;)V

    goto :goto_51

    .line 347
    :catchall_a4
    move-exception v2

    monitor-exit v3
    :try_end_a6
    .catchall {:try_start_3 .. :try_end_a6} :catchall_a4

    throw v2
.end method

.method public getSubIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    return-object v0
.end method

.method public getSubListview()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSubPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    return-object v0
.end method

.method public invalidateHeader()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 571
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpandedChildHeader:Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

    invoke-virtual {v0, v1, v1}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->update(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public invalidateViews()V
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    if-eqz v0, :cond_9

    .line 577
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 579
    :cond_9
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->invalidateHeader()V

    .line 580
    return-void
.end method

.method public isExpanded()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpanded:Z

    return v0
.end method

.method public notifyDatasetChanged()V
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-eqz v0, :cond_9

    .line 585
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmNotifyDataSetChanged()V

    .line 587
    :cond_9
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->invalidateHeader()V

    .line 588
    return-void
.end method

.method public onClearSelection()V
    .registers 1

    .prologue
    .line 668
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 495
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 497
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->close()V

    .line 503
    :cond_b
    return-void
.end method

.method public onContentsDBChanged(ZLandroid/net/Uri;)V
    .registers 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 647
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 22
    .param p2, "adapterView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p1, "listview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_b

    .line 477
    :cond_a
    :goto_a
    return-void

    .line 425
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetViewType(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    if-eq v3, v4, :cond_a

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 432
    const v3, 0x7f1000f2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/pantech/app/music/list/component/view/CheckableImageView;

    .line 434
    .local v13, "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    const v3, 0x7f10000f

    invoke-virtual {v13, v3}, Lcom/pantech/app/music/list/component/view/CheckableImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 436
    .local v12, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    instance-of v3, v3, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    if-eqz v3, :cond_a

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    check-cast v3, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    new-instance v6, Lcom/pantech/app/music/list/fragment/ChildListViewManager$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager$1;-><init>(Lcom/pantech/app/music/list/fragment/ChildListViewManager;)V

    invoke-static {v4, v3, v12, v5, v6}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    goto :goto_a

    .line 451
    .end local v12    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .end local v13    # "view":Lcom/pantech/app/music/list/component/view/CheckableImageView;
    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    const/16 v4, 0x1f4

    const-wide/16 v14, 0x1

    invoke-virtual {v3, v4, v14, v15}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->setButtonLock(IJ)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 453
    const-string v3, "Skip TOUCHLOCK_ON_ITEM_CLICK"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_a

    .line 457
    :cond_6c
    const/4 v7, 0x0

    .line 459
    .local v7, "launchPlayback":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemPosition(I)I

    move-result v8

    .line 464
    .local v8, "cursorPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, p3

    invoke-interface {v3, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItem(I)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    invoke-static {v3, v8, v4, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;IILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v11

    .line 465
    .local v11, "currentCursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-static {v4, v11}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->isPlayingAudioID(Lcom/pantech/app/music/service/IMusicPlaybackService;J)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 470
    const/4 v7, 0x1

    .line 472
    :cond_b4
    new-instance v2, Lcom/pantech/app/music/list/module/PlayInterface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-direct {v2, v3}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 474
    .local v2, "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    sget-object v6, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/pantech/app/music/list/module/PlayInterface;->playSong(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZIILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    goto/16 :goto_a
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "listview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 485
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    instance-of v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    if-eqz v0, :cond_1d

    .line 486
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    check-cast v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    const v1, 0x7f1000f2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->startActionMode(Landroid/view/View;Z)V

    .line 488
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public onMTPConnected()V
    .registers 1

    .prologue
    .line 605
    return-void
.end method

.method public onMTPDisConnected()V
    .registers 1

    .prologue
    .line 612
    return-void
.end method

.method public onMTPFileModified()V
    .registers 1

    .prologue
    .line 598
    return-void
.end method

.method public onMediaScanner(ZLandroid/content/Intent;)V
    .registers 3
    .param p1, "start"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 707
    return-void
.end method

.method public onPageSelected()V
    .registers 1

    .prologue
    .line 675
    return-void
.end method

.method public onPageUnSelected()V
    .registers 2

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 682
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->close()V

    .line 683
    :cond_9
    return-void
.end method

.method public onPlayingQueueChanged(I)V
    .registers 2
    .param p1, "queueSize"    # I

    .prologue
    .line 626
    return-void
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 619
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mQuerying:Z

    .line 221
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_6
    invoke-static {p1}, Lcom/pantech/app/music/list/utility/ListUtil;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 242
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080137

    invoke-static {v0, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 243
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->close()V

    .line 253
    :goto_17
    monitor-exit v1

    .line 254
    return-void

    .line 247
    :cond_19
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 251
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->invalidateFragment(Z)V

    goto :goto_17

    .line 253
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public onRearrangeComplete()V
    .registers 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->notifyDatasetChanged()V

    .line 509
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 700
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mExpandedChildHeader:Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;

    invoke-virtual {v0, v1, v1}, Lcom/pantech/app/music/list/component/DetailedGridHeaderBar;->update(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 693
    return-void
.end method

.method public onTouchLockFreed(J)V
    .registers 3
    .param p1, "mask"    # J

    .prologue
    .line 654
    return-void
.end method

.method public onUserPresent()V
    .registers 1

    .prologue
    .line 661
    return-void
.end method

.method public onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "add"    # Z
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 633
    return-void
.end method

.method public querySubList(Ljava/lang/String;)V
    .registers 8
    .param p1, "groupID"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mQuerying:Z

    if-eqz v0, :cond_9

    .line 261
    const-string v0, "Querying. Check Routine."

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 265
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySubList:groupID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    new-instance v3, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v3, p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v4, -0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/module/QueryFactory;->queryContents(Lcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mQuerying:Z

    .line 269
    return-void
.end method

.method public setDragTouchIntercepter(Z)V
    .registers 8
    .param p1, "set"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_27

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isDragMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_27

    .line 275
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    new-instance v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    check-cast v0, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 281
    :goto_26
    return-void

    .line 279
    :cond_27
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_26
.end method

.method public setSubListAdapter()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 170
    sget-object v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_120

    .line 209
    :goto_12
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 211
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 212
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 213
    return-void

    .line 174
    :pswitch_54
    new-instance v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 175
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_12

    .line 181
    :pswitch_7f
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 182
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterArtistAlbumCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto/16 :goto_12

    .line 188
    :pswitch_ab
    new-instance v0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 189
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/SeparaterIndexedCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v7}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    goto/16 :goto_12

    .line 197
    :pswitch_df
    new-instance v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mChildPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mCursorLock:Ljava/lang/Object;

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 198
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mISubAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/NormalCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v0, v7}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setFastScrollEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mSubListview:Landroid/widget/ListView;

    check-cast v0, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setDropListener(Lcom/pantech/app/music/list/component/view/ArrangeListView$DropListener;)V

    goto/16 :goto_12

    .line 170
    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_54
        :pswitch_54
        :pswitch_7f
        :pswitch_df
    .end packed-switch
.end method
