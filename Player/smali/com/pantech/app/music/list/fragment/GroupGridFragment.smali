.class public Lcom/pantech/app/music/list/fragment/GroupGridFragment;
.super Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;
.source "GroupGridFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/GroupGridFragment$3;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "GroupGridFragment"


# instance fields
.field mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

.field mGridview:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    return-void
.end method


# virtual methods
.method public OnUBoxSessionChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->OnUBoxSessionChanged(Landroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public clearAdapter()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 238
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 239
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 240
    if-eqz v0, :cond_16

    .line 241
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_16
    return-void
.end method

.method public doCommand(ILjava/lang/Object;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->doCommand(ILjava/lang/Object;)V

    .line 290
    return-void
.end method

.method getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    return-object v0
.end method

.method public getIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;
    .registers 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    return-object v0
.end method

.method public getListView()Landroid/widget/AbsListView;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    return-object v0
.end method

.method public invalidateFragment(Z)V
    .registers 9
    .param p1, "dataChanged"    # Z

    .prologue
    const/4 v6, 0x4

    .line 296
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-virtual {v1, v6}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeMessages(I)V

    .line 297
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    new-instance v2, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-direct {v2, v3, v4, v5, p1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamInvalidateList;-><init>(Landroid/widget/AbsListView;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/ChildListViewManager;Z)V

    invoke-virtual {v1, v6, v2}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 298
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 299
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 60
    new-instance v0, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getBroadcastMask()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;-><init>(Landroid/content/Context;ILcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/IBroadcastCallback;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    .line 61
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->register()V

    .line 62
    return-void
.end method

.method public onContentsDBChanged(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onContentsDBChanged selfChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/module/QueryFactory;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/QueryFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 197
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getFragmentLayoutID()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->setAdapter(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->createHintLayer(Landroid/view/View;)V

    .line 82
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 84
    new-instance v1, Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Lcom/pantech/app/music/list/PageInfoType;Landroid/view/View;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    .line 85
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->close()V

    .line 88
    :cond_31
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->queryList(I)V

    .line 90
    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroy()V

    .line 167
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 159
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroyView()V

    .line 160
    return-void
.end method

.method public onDetach()V
    .registers 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->unregister()V

    .line 178
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 179
    .local v0, "cursor":Landroid/database/Cursor;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 180
    if-eqz v0, :cond_1b

    .line 184
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 186
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_1b
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDetach()V

    .line 190
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 20
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
    .line 457
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onItemClick position:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " view:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_37

    .line 541
    :goto_36
    return-void

    .line 465
    :cond_37
    iget-object v9, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 467
    const v9, 0x7f10010d

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;

    .line 469
    .local v8, "view":Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;
    const v9, 0x7f10000f

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 471
    .local v7, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    iget-object v9, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v10, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCursorLock:Ljava/lang/Object;

    new-instance v11, Lcom/pantech/app/music/list/fragment/GroupGridFragment$2;

    invoke-direct {v11, p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment$2;-><init>(Lcom/pantech/app/music/list/fragment/GroupGridFragment;)V

    invoke-static {v9, p0, v7, v10, v11}, Lcom/pantech/app/music/list/adapter/helper/AdapterBindHelper;->toggleSelect(Lcom/pantech/app/music/list/db/SelectManager;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;Lcom/pantech/app/music/list/db/SelectCallbackParam;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    goto :goto_36

    .line 483
    .end local v7    # "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    .end local v8    # "view":Lcom/pantech/app/music/list/component/view/CheckableFrameLayout;
    :cond_60
    const/16 v9, 0x1f4

    const-wide/16 v10, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->setButtonLock(IJ)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 485
    const-string v9, "Skip TOUCHLOCK_ON_ITEM_CLICK"

    invoke-static {v9}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    goto :goto_36

    .line 489
    :cond_70
    iget-object v9, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    .line 494
    .local v2, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v9, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, p3

    invoke-interface {v9, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItem(I)Landroid/database/Cursor;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move/from16 v0, p3

    invoke-interface {v10, v0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemPosition(I)I

    move-result v10

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCursorLock:Ljava/lang/Object;

    invoke-static {v9, v10, v11, v12}, Lcom/pantech/app/music/list/db/CursorUtils;->CopyCursor(Landroid/database/Cursor;IILjava/lang/Object;)Landroid/database/Cursor;

    move-result-object v5

    .line 496
    .local v5, "currentCursor":Landroid/database/Cursor;
    iget-object v10, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10

    .line 498
    if-eqz v5, :cond_f4

    .line 500
    :try_start_92
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 502
    sget-object v9, Lcom/pantech/app/music/list/fragment/GroupGridFragment$3;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v11

    aget v9, v9, v11

    packed-switch v9, :pswitch_data_102

    .line 535
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GRID Fragment not support "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 539
    :catchall_bf
    move-exception v9

    monitor-exit v10
    :try_end_c1
    .catchall {:try_start_92 .. :try_end_c1} :catchall_bf

    throw v9

    .line 510
    :pswitch_c2
    :try_start_c2
    iget-object v9, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v2, v5, v9}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "groupID":Ljava/lang/String;
    iget-object v9, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v9, v6}, Lcom/pantech/app/music/list/PageInfoType;->getChildPageInfo(Ljava/lang/String;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    .line 514
    .local v4, "childPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v11

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v13}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v9, v11, v12, v13}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v3

    .line 516
    .local v3, "childCount":I
    if-lez v3, :cond_f7

    .line 525
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v11

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v11, v12}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startSubListActivity(Landroid/app/Activity;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)V

    .line 539
    .end local v3    # "childCount":I
    .end local v4    # "childPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    .end local v6    # "groupID":Ljava/lang/String;
    :cond_f4
    :goto_f4
    monitor-exit v10

    goto/16 :goto_36

    .line 530
    .restart local v3    # "childCount":I
    .restart local v4    # "childPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    .restart local v6    # "groupID":Ljava/lang/String;
    :cond_f7
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v11, 0x7f08012c

    invoke-static {v9, v11}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V
    :try_end_101
    .catchall {:try_start_c2 .. :try_end_101} :catchall_bf

    goto :goto_f4

    .line 502
    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
        :pswitch_c2
    .end packed-switch
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
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
    .local p1, "gridview":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 547
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v2

    if-nez v2, :cond_14

    .line 552
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 563
    :cond_14
    :goto_14
    return v0

    .line 555
    :cond_15
    const v0, 0x7f10010d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->startActionMode(Landroid/view/View;Z)V

    move v0, v1

    .line 560
    goto :goto_14
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method onPageEmpty(Z)V
    .registers 4
    .param p1, "isEmpty"    # Z

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageEmpty isEmpty:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onPageSelected()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 304
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPageSelected()V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/list/component/SmartFalg;->check(I)Z

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/ListUtil;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 316
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->queryList(I)V

    .line 322
    :cond_37
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 324
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/pantech/app/music/list/fragment/GroupGridFragment$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/GroupGridFragment;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeleteGenre:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 331
    :cond_65
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.pantech.app.music.extras.subactivity.rotation.groupid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "groupID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 335
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.pantech.app.music.extras.subactivity.rotation.groupid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_80
    return-void
.end method

.method public onPageUnSelected()V
    .registers 1

    .prologue
    .line 344
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPageUnSelected()V

    .line 345
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPause()V

    .line 144
    return-void
.end method

.method public onPlayingQueueChanged(I)V
    .registers 2
    .param p1, "queueSize"    # I

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPlayingQueueChanged(I)V

    .line 256
    return-void
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPlayingStatusChanged(Landroid/content/Intent;)V

    .line 249
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 204
    return-void
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/SmartFalg;->clear(I)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onQueryComplete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCursorLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_54

    .line 404
    :try_start_1f
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmChangeCursor(Landroid/database/Cursor;)V

    .line 406
    if-eqz p1, :cond_3c

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 408
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    if-nez v0, :cond_4b

    .line 409
    new-instance v0, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;-><init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    .line 413
    :goto_37
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mAdapterObserver:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 416
    :cond_3c
    invoke-static {p1}, Lcom/pantech/app/music/list/utility/ListUtil;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->drawNoContentsPage(Z)V

    .line 424
    :goto_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_51

    .line 428
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    .line 430
    return-void

    .line 411
    :cond_4b
    :try_start_4b
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mRequery:Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment$AdapterCursorRequery;->setCursor(Landroid/database/Cursor;)V

    goto :goto_37

    .line 424
    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 428
    :catchall_54
    move-exception v0

    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    throw v0

    .line 422
    :cond_59
    const/4 v0, 0x0

    :try_start_5a
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->drawNoContentsPage(Z)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_51

    goto :goto_46
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onResume()V

    .line 137
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 111
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onStart()V

    .line 116
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/ListUtil;->isValidCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 118
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v1

    if-gtz v1, :cond_1c

    :goto_18
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->drawNoContentsPage(Z)V

    .line 130
    :goto_1b
    return-void

    .line 118
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18

    .line 122
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->queryList(I)V

    goto :goto_1b
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onStop()V

    .line 152
    return-void
.end method

.method public onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "add"    # Z
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "child"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onViewHierachyChanged(ZLandroid/view/View;Landroid/view/View;)V

    .line 263
    return-void
.end method

.method queryList(I)V
    .registers 10
    .param p1, "queryType"    # I

    .prologue
    const/4 v7, 0x1

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryList queryType."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " category:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v0, v7}, Lcom/pantech/app/music/list/component/SmartFalg;->check(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 355
    const-string v0, "Querying. Check Routine."

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 374
    :cond_34
    :goto_34
    return-void

    .line 359
    :cond_35
    and-int/lit8 v0, p1, 0x1

    if-ne v0, v7, :cond_5c

    .line 361
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_81

    const/4 v1, 0x0

    .line 363
    .local v1, "priority":I
    :goto_42
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mQueryFactory:Lcom/pantech/app/music/list/module/QueryFactory;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    new-instance v4, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v5, -0x1

    move-object v2, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/music/list/module/QueryFactory;->queryContents(ILcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;ILcom/pantech/app/music/list/module/QueryFactory$OnQueryCompleteListener;)V

    .line 364
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v0, v7}, Lcom/pantech/app/music/list/component/SmartFalg;->set(I)V

    .line 367
    .end local v1    # "priority":I
    :cond_5c
    and-int/lit8 v0, p1, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_34

    .line 369
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->getSubPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 371
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mChildListHelper:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->getSubPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->querySubList(Ljava/lang/String;)V

    goto :goto_34

    :cond_81
    move v1, v7

    .line 361
    goto :goto_42
.end method

.method setAdapter(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 215
    const-string v0, "GroupGridFragment"

    const-string v1, "setAdapter()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const v0, 0x7f1000a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    .line 219
    new-instance v0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterViewLayoutID()I

    move-result v3

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCursorLock:Ljava/lang/Object;

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;IZLcom/pantech/app/music/list/fragment/IFragmentCommon;Lcom/pantech/app/music/list/fragment/IFragmentCommonCallback;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    .line 221
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    check-cast v0, Lcom/pantech/app/music/list/adapter/NormalGridCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 223
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setCacheColorHint(I)V

    .line 227
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setFadingEdgeLength(I)V

    .line 229
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    check-cast v0, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v4}, Lcom/pantech/app/music/list/adapter/helper/Indexbar$IndexScrollType;->setScrollerType(IZ)V

    .line 231
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCallbackRegister:Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mGridview:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/listener/MusicListCallbackRegister;->registerViewHierachyChangeListener(Landroid/widget/AbsListView;)V

    .line 232
    return-void
.end method
