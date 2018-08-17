.class public abstract Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;
.super Lcom/pantech/app/music/list/fragment/absBaseFragment;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
.implements Lcom/pantech/app/music/list/listener/ISelectMenuCallback;
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;
.implements Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;
.implements Lcom/pantech/app/music/list/listener/IForceFinishListCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;,
        Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;,
        Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;
    }
.end annotation


# instance fields
.field mActionModeCreated:Z

.field mAddToCart:Lcom/pantech/app/music/list/component/AddToCartDialog;

.field mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

.field mFirstModeChangeForSelectMenu:Z

.field protected mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

.field mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

.field mNowplayingSelectableLaunchActivity:Z

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mSmartBeamCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

.field mUpdateChecked:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 89
    iput-boolean v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mNowplayingSelectableLaunchActivity:Z

    .line 91
    iput-boolean v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mActionModeCreated:Z

    .line 94
    new-instance v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSmartBeamCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    .line 1052
    new-instance v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mUpdateChecked:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    return-void
.end method


# virtual methods
.method public clearSmartBeamCallback()V
    .registers 4

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 635
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 636
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_18

    .line 638
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 641
    .end local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_18
    return-void
.end method

.method public getContentSelectInfo(I)Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .registers 9
    .param p1, "pos"    # I

    .prologue
    .line 1214
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isHasAudioID()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1216
    const/4 v2, 0x0

    .line 1218
    .local v2, "index":I
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedAllChildList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v4

    .line 1219
    .local v4, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .local v3, "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    move-object v0, v3

    .line 1221
    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .line 1223
    .local v0, "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    if-ne p1, v2, :cond_2f

    .line 1230
    .end local v0    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .end local v4    # "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :goto_2e
    return-object v0

    .line 1226
    .restart local v0    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v3    # "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .restart local v4    # "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    .line 1227
    goto :goto_1d

    .line 1230
    .end local v0    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v3    # "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .end local v4    # "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_32
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->startActionMode(Z)Z

    .line 204
    :cond_11
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 206
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->setDragTouchInterceptor(Z)V

    .line 208
    :cond_1f
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 143
    instance-of v0, p1, Lcom/pantech/app/music/list/activity/ISelectableActivity;

    if-eqz v0, :cond_c

    .line 144
    check-cast p1, Lcom/pantech/app/music/list/activity/ISelectableActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    .line 154
    :goto_b
    return-void

    .line 147
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_c
    const-string v0, "This activity is not implements ISelectableActivity !"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 148
    const-string v0, "This activity is not implements ISelectableActivity !"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 149
    const-string v0, "This activity is not implements ISelectableActivity !"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 150
    const-string v0, "This activity is not implements ISelectableActivity !"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 151
    const-string v0, "This activity is not implements ISelectableActivity !"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 152
    const-string v0, "This activity is not implements ISelectableActivity !"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public onClearSelection()V
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 415
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    .line 416
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 163
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateActionMode ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 742
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 745
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateSelectionMenu()Z

    .line 790
    :cond_30
    :goto_30
    iput-boolean v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mActionModeCreated:Z

    .line 796
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFlag:Lcom/pantech/app/music/list/component/SmartFalg;

    invoke-virtual {v2, v6}, Lcom/pantech/app/music/list/component/SmartFalg;->check(I)Z

    move-result v2

    if-nez v2, :cond_48

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    if-eqz v2, :cond_48

    .line 798
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    iput-boolean v6, v2, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mReadyToRestore:Z

    .line 799
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    const-wide/16 v4, 0x64

    iput-wide v4, v2, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mAdditionalDelay:J

    .line 802
    :cond_48
    return v6

    .line 756
    :cond_49
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-interface {v2, v3}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 757
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 758
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    .line 759
    .local v0, "childLayer":Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 761
    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->getSubPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 765
    :cond_6c
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->setSmartBeamCallback()V

    .line 769
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    .line 772
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateHintLayer(Landroid/view/View;)V

    .line 774
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->setDragTouchInterceptor(Z)V

    .line 780
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v1

    .line 781
    .local v1, "indexbar":Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    if-eqz v1, :cond_87

    .line 782
    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->clearPosition()V

    .line 784
    :cond_87
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    if-ne v2, v3, :cond_30

    .line 786
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setActiveMode(I)V

    goto :goto_30
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onDestroy()V

    .line 324
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v4, 0x0

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroyActionMode ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 816
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 874
    :cond_2d
    :goto_2d
    iput-boolean v4, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mActionModeCreated:Z

    .line 875
    return-void

    .line 828
    :cond_30
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-interface {v2, v3}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 829
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 830
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    .line 831
    .local v0, "childLayer":Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 833
    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->getSubPageInfo()Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->setEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)V

    .line 836
    :cond_53
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->clearSmartBeamCallback()V

    .line 841
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 843
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    .line 846
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateHintLayer(Landroid/view/View;)V

    .line 848
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->setDragTouchInterceptor(Z)V

    .line 854
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetIndexBar()Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    move-result-object v1

    .line 855
    .local v1, "indexbar":Lcom/pantech/app/music/list/adapter/helper/Indexbar;
    if-eqz v1, :cond_73

    .line 856
    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->clearPosition()V

    .line 868
    :cond_73
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    if-ne v2, v3, :cond_2d

    .line 870
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->setActiveMode(I)V

    goto :goto_2d
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onDestroyView()V

    .line 316
    return-void
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 331
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onDetach()V

    .line 332
    return-void
.end method

.method public onDragMultiSelectModeFinish()V
    .registers 4

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->isCurrentFragment()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    if-ne v1, v2, :cond_29

    .line 569
    const-string v1, "VMusicDragMultiSelect"

    const-string v2, "onDragMultiSelectModeFinish"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1000db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    .line 572
    .local v0, "pager":Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;
    if-eqz v0, :cond_29

    .line 573
    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setScrollUnLock()V

    .line 575
    .end local v0    # "pager":Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;
    :cond_29
    return-void
.end method

.method public onDragMultiSelectModeStart()V
    .registers 4

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->isCurrentFragment()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    if-ne v1, v2, :cond_29

    .line 557
    const-string v1, "VMusicDragMultiSelect"

    const-string v2, "onDragMultiSelectModeStart"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1000db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    .line 560
    .local v0, "pager":Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;
    if-eqz v0, :cond_29

    .line 561
    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setScrollLock()V

    .line 563
    .end local v0    # "pager":Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;
    :cond_29
    return-void
.end method

.method public onForceFinish(ILandroid/content/Intent;)V
    .registers 5
    .param p1, "mask"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 381
    and-int/lit16 v0, p1, 0x2040

    if-lez v0, :cond_61

    .line 386
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 388
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 390
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 392
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSelectable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 408
    :cond_61
    :goto_61
    return-void

    .line 403
    :cond_62
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800dd

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 404
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto :goto_61
.end method

.method public onMTPFileModified()V
    .registers 4

    .prologue
    const v2, 0x7f080124

    .line 354
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onMTPFileModified()V

    .line 356
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 358
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/ListUtil;->isMtpConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 360
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 363
    :cond_21
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    invoke-interface {v0}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->stopActionMode()V

    .line 375
    :cond_26
    :goto_26
    return-void

    .line 365
    :cond_27
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 367
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/utility/ListUtil;->isMtpConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->isCurrentFragment()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 369
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 373
    :cond_48
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_26
.end method

.method public onPageSelected()V
    .registers 3

    .prologue
    .line 422
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onPageSelected()V

    .line 424
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateSelectionMenu(Z)Z

    .line 431
    :cond_11
    return-void
.end method

.method public onPageUnSelected()V
    .registers 3

    .prologue
    .line 436
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onPageUnSelected()V

    .line 438
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 440
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->clear(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 448
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    .line 456
    :cond_1b
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 458
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    .line 464
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    invoke-interface {v0}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 466
    :cond_31
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 299
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onPause()V

    .line 300
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 808
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 471
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V

    .line 481
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 483
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;->mReadyToRestore:Z

    .line 491
    :cond_14
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 493
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateSelectionMenu()Z

    .line 495
    :cond_1f
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onResume()V

    .line 293
    return-void
.end method

.method public onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V
    .registers 6
    .param p1, "isSelected"    # Z
    .param p2, "param"    # Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .prologue
    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSelectChanged: is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3a

    const-string v1, "selected"

    :goto_f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    .line 955
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 957
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v0

    .line 958
    .local v0, "childLayer":Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 960
    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->invalidateHeader()V

    .line 967
    .end local v0    # "childLayer":Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    :cond_32
    if-eqz p1, :cond_37

    .line 969
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFirstModeChangeForSelectMenu:Z

    .line 977
    :cond_37
    if-eqz p2, :cond_39

    .line 982
    :cond_39
    return-void

    .line 948
    :cond_3a
    const-string v1, "unselected"

    goto :goto_f
.end method

.method public onSelectDone()V
    .registers 3

    .prologue
    .line 647
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 648
    return-void
.end method

.method public onSelectMenuResult(IZLjava/lang/Object;)V
    .registers 12
    .param p1, "menuID"    # I
    .param p2, "isSuccess"    # Z
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f08013e

    const v6, 0x7f080136

    const/4 v4, 0x0

    .line 1070
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSelectMenuResult menu:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1072
    sparse-switch p1, :sswitch_data_184

    .line 1210
    .end local p3    # "obj":Ljava/lang/Object;
    :cond_2a
    :goto_2a
    return-void

    .line 1075
    .restart local p3    # "obj":Ljava/lang/Object;
    :sswitch_2b
    if-eqz p2, :cond_2a

    .line 1077
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1078
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto :goto_2a

    .line 1083
    :sswitch_36
    if-eqz p2, :cond_2a

    .line 1089
    check-cast p3, Ljava/lang/Long;

    .end local p3    # "obj":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x6

    cmp-long v3, v4, v6

    if-nez v3, :cond_52

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 1091
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->queryList(I)V

    .line 1094
    :cond_52
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1095
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto :goto_2a

    .line 1101
    .restart local p3    # "obj":Ljava/lang/Object;
    :sswitch_5b
    if-eqz p2, :cond_91

    move-object v2, p3

    .line 1103
    check-cast v2, Landroid/content/Intent;

    .line 1104
    .local v2, "shareIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_89

    .line 1106
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080069

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1118
    .end local v2    # "shareIntent":Landroid/content/Intent;
    :goto_80
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1119
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto :goto_2a

    .line 1110
    .restart local v2    # "shareIntent":Landroid/content/Intent;
    :cond_89
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_80

    .line 1115
    .end local v2    # "shareIntent":Landroid/content/Intent;
    :cond_91
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_80

    .line 1123
    :sswitch_99
    if-eqz p2, :cond_d0

    move-object v1, p3

    .line 1125
    check-cast v1, Landroid/content/Intent;

    .line 1126
    .local v1, "sendIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_c8

    .line 1128
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080194

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1140
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :goto_be
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1141
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto/16 :goto_2a

    .line 1132
    .restart local v1    # "sendIntent":Landroid/content/Intent;
    :cond_c8
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_be

    .line 1137
    .end local v1    # "sendIntent":Landroid/content/Intent;
    :cond_d0
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_be

    .line 1145
    :sswitch_d8
    if-eqz p2, :cond_e4

    .line 1147
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1148
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto/16 :goto_2a

    .line 1152
    :cond_e4
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_2a

    .line 1157
    :sswitch_ed
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1158
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto/16 :goto_2a

    .line 1166
    :sswitch_f7
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1167
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    .line 1169
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 1175
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v3

    sget-object v5, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v3, v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 1177
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->queryList(I)V

    .line 1180
    :cond_117
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSublistHeaderVisible()Z

    move-result v3

    if-eqz v3, :cond_13a

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/pantech/app/music/list/activity/SubListActivity;

    if-eqz v3, :cond_13a

    .line 1185
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/activity/SubListActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/activity/SubListActivity;->getHeader()Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    move-result-object v0

    .line 1186
    .local v0, "header":Lcom/pantech/app/music/list/component/DetailedListHeaderBar;
    if-eqz v0, :cond_13a

    .line 1187
    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->update()V

    .line 1196
    .end local v0    # "header":Lcom/pantech/app/music/list/component/DetailedListHeaderBar;
    :cond_13a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After Delete or MovetoSecretBox, current item is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    if-nez v3, :cond_172

    move v3, v4

    :goto_14a
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1198
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isNoneEmptyGroupChild()Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v3

    if-gtz v3, :cond_2a

    .line 1200
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2a

    .line 1196
    :cond_172
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v3

    goto :goto_14a

    .line 1206
    :sswitch_179
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1207
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto/16 :goto_2a

    .line 1072
    nop

    :sswitch_data_184
    .sparse-switch
        0x1 -> :sswitch_ed
        0x2 -> :sswitch_36
        0x4 -> :sswitch_f7
        0x20 -> :sswitch_2b
        0x40 -> :sswitch_5b
        0x100 -> :sswitch_d8
        0x400 -> :sswitch_179
        0x1000 -> :sswitch_99
    .end sparse-switch
.end method

.method public onStart()V
    .registers 9

    .prologue
    .line 219
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onStart()V

    .line 221
    iget-boolean v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mActivityWillRestarting:Z

    if-eqz v6, :cond_20

    .line 223
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/module/MakePlaylist;->getDialog()Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 225
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/module/MakePlaylist;->getDialog()Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showInputMethodForEditBox(Landroid/content/Context;Lcom/pantech/app/music/view/SkyDialogFragment;)V

    .line 229
    :cond_20
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v6

    if-eqz v6, :cond_d1

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v6

    if-nez v6, :cond_d1

    .line 232
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedAllChildList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v4

    .line 234
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    const/4 v5, 0x0

    .line 236
    .local v5, "mChanged":Z
    if-eqz v4, :cond_72

    .line 238
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 240
    .local v3, "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    if-eqz v3, :cond_47

    move-object v0, v3

    .line 242
    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .line 244
    .local v0, "cntsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    iget-object v6, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    if-eqz v6, :cond_47

    iget-object v6, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v6, v6, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    if-eqz v6, :cond_47

    .line 246
    new-instance v1, Ljava/io/File;

    iget-object v6, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v6, v6, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_47

    .line 250
    const/4 v5, 0x1

    .line 258
    .end local v0    # "cntsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_72
    if-eqz v5, :cond_d1

    .line 260
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 262
    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 263
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_d1

    .line 268
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_d1

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v6, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v6

    if-eqz v6, :cond_d1

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Category:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isSelectable:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 285
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v5    # "mChanged":Z
    :cond_d1
    :goto_d1
    return-void

    .line 278
    .restart local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .restart local v5    # "mChanged":Z
    :cond_d2
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0800dd

    invoke-static {v6, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 280
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto :goto_d1
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 306
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->clearSmartBeamCallback()V

    .line 308
    :cond_9
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onStop()V

    .line 309
    return-void
.end method

.method public onUserPresent()V
    .registers 3

    .prologue
    .line 338
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->onUserPresent()V

    .line 340
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/module/MakePlaylist;->getDialog()Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 342
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/module/MakePlaylist;->getDialog()Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showInputMethodForEditBox(Landroid/content/Context;Lcom/pantech/app/music/view/SkyDialogFragment;)V

    .line 345
    :cond_1c
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mAddToCart:Lcom/pantech/app/music/list/component/AddToCartDialog;

    if-eqz v0, :cond_25

    .line 347
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mAddToCart:Lcom/pantech/app/music/list/component/AddToCartDialog;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/AddToCartDialog;->onUserPresent()V

    .line 349
    :cond_25
    return-void
.end method

.method public processOptionsMenu(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 500
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_52

    .line 550
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->processOptionsMenu(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 503
    :sswitch_d
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 505
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08018a

    const v3, 0x7f080183

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/app/music/view/SkyDialogFragment;->showLoadingPopupList(Landroid/app/Activity;IIZ)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 509
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    new-instance v2, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    .line 534
    :sswitch_33
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 535
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    goto :goto_c

    .line 539
    :sswitch_3c
    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFirstModeChangeForSelectMenu:Z

    .line 541
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->startActionMode(Z)Z

    goto :goto_c

    .line 545
    :sswitch_42
    new-instance v1, Lcom/pantech/app/music/list/module/MakePlaylist;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/pantech/app/music/list/module/MakePlaylist;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    .line 546
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/module/MakePlaylist;->makePlaylistDialog()V

    goto :goto_c

    .line 500
    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_3c
        0x20 -> :sswitch_42
        0x7f10020a -> :sswitch_d
        0x7f10020b -> :sswitch_33
    .end sparse-switch
.end method

.method public processSelectMenu(ILandroid/view/MenuItem;)Z
    .registers 29
    .param p1, "menuID"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processSelectMenu menu:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_55

    const-string v5, "nill"

    :goto_1b
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1238
    sparse-switch p1, :sswitch_data_33c

    .line 1467
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MenuID:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " name:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p2, :cond_336

    const-string v5, "nill"

    :goto_48
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1477
    :cond_53
    :goto_53
    const/4 v5, 0x1

    return v5

    .line 1236
    :cond_55
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1b

    .line 1241
    :sswitch_5a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getAllSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v16

    .line 1242
    .local v16, "selectedCount":I
    if-nez v16, :cond_77

    .line 1244
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f08013d

    invoke-static {v5, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_53

    .line 1255
    :cond_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1256
    new-instance v22, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v7}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    .line 1260
    .local v22, "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :goto_92
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v5, v7, v1}, Lcom/pantech/app/music/list/component/AddToCartDialog;->showAddToCartDialog(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)Lcom/pantech/app/music/list/component/AddToCartDialog;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mAddToCart:Lcom/pantech/app/music/list/component/AddToCartDialog;

    goto :goto_53

    .line 1258
    .end local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :cond_a7
    move-object/from16 v22, p0

    .restart local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    goto :goto_92

    .line 1265
    .end local v16    # "selectedCount":I
    .end local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :sswitch_aa
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getAllSelectedCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v16

    .line 1266
    .restart local v16    # "selectedCount":I
    if-nez v16, :cond_c7

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f08013d

    invoke-static {v5, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_53

    .line 1272
    :cond_c7
    new-instance v4, Lcom/pantech/app/music/list/module/PlayInterface;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/pantech/app/music/list/module/PlayInterface;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    .line 1274
    .local v4, "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v6

    .line 1275
    .local v6, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$3;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V

    invoke-virtual/range {v4 .. v10}, Lcom/pantech/app/music/list/module/PlayInterface;->playSelectedSong(Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    goto/16 :goto_53

    .line 1285
    .end local v4    # "IPlayer":Lcom/pantech/app/music/list/module/PlayInterface;
    .end local v6    # "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v16    # "selectedCount":I
    :sswitch_f2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v5

    if-nez v5, :cond_10a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1288
    :cond_10a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v6

    .line 1289
    .restart local v6    # "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .local v15, "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    move-object v13, v15

    .line 1291
    check-cast v13, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    .line 1293
    .local v13, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    new-instance v5, Lcom/pantech/app/music/list/module/MakePlaylist;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v7, v1}, Lcom/pantech/app/music/list/module/MakePlaylist;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    .line 1294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mMakePlaylist:Lcom/pantech/app/music/list/module/MakePlaylist;

    iget-object v7, v13, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/module/MakePlaylist;->renamePlaylistDialog(I)V

    goto/16 :goto_53

    .line 1301
    .end local v6    # "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    .end local v13    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "info":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :sswitch_151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isHasAudioID()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1303
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getContentSelectInfo(I)Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    move-result-object v11

    .line 1305
    .local v11, "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    if-eqz v11, :cond_53

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v8, v11, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    iget-object v9, v11, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-static {v5, v7, v8, v0, v1}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startProperties(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;IJ)V

    .line 1310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto/16 :goto_53

    .line 1316
    .end local v11    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    :sswitch_18b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isHasAudioID()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1318
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getContentSelectInfo(I)Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    move-result-object v11

    .line 1320
    .restart local v11    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    if-eqz v11, :cond_53

    .line 1323
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxSongCategory()Z

    move-result v5

    if-nez v5, :cond_53

    .line 1326
    iget-object v5, v11, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v0, v5, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 1329
    .local v20, "szPath":Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v5

    if-eqz v5, :cond_1de

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1de

    invoke-static/range {v20 .. v20}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1de

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f080128

    invoke-static {v5, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 1351
    :cond_1d2
    :goto_1d2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    goto/16 :goto_53

    .line 1333
    :cond_1de
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v5

    if-eqz v5, :cond_201

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_201

    invoke-static/range {v20 .. v20}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_201

    invoke-static/range {v20 .. v20}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_201

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f080129

    invoke-static {v5, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_1d2

    .line 1339
    :cond_201
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v7, v11, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-wide v8, v7, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v5, v8, v9}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->setRingtone(Landroid/content/Context;J)Z

    move-result v5

    if-eqz v5, :cond_220

    .line 1341
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v5

    if-eqz v5, :cond_1d2

    .line 1342
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f080147

    invoke-static {v5, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_1d2

    .line 1347
    :cond_220
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f08012e

    invoke-static {v5, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_1d2

    .line 1357
    .end local v11    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v20    # "szPath":Ljava/lang/String;
    :sswitch_22b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v18

    .line 1359
    .local v18, "shareSelectedInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v17, Lcom/pantech/app/music/list/module/ShareContents;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/pantech/app/music/list/module/ShareContents;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/os/Handler;Ljava/util/Collection;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    .line 1360
    .local v17, "shareContents":Lcom/pantech/app/music/list/module/ShareContents;
    new-instance v5, Ljava/lang/Thread;

    const-string v7, "ShareContents"

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 1364
    .end local v17    # "shareContents":Lcom/pantech/app/music/list/module/ShareContents;
    .end local v18    # "shareSelectedInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :sswitch_25a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isHasAudioID()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 1366
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getContentSelectInfo(I)Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    move-result-object v11

    .line 1368
    .restart local v11    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    if-eqz v11, :cond_53

    .line 1378
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v5

    if-eqz v5, :cond_2a9

    .line 1379
    new-instance v22, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v7}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    .line 1383
    .restart local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :goto_28c
    new-instance v5, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    .line 1384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDataNetworkWarningDialog:Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;

    new-instance v7, Lcom/pantech/app/music/list/module/ShareUTubeVideo;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v7, v0, v11, v1}, Lcom/pantech/app/music/list/module/ShareUTubeVideo;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/component/DataNetworkWarningDialog;->showDialog(Ljava/lang/Runnable;)V

    goto/16 :goto_53

    .line 1381
    .end local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :cond_2a9
    move-object/from16 v22, p0

    .restart local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    goto :goto_28c

    .line 1389
    .end local v11    # "contentsInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :sswitch_2ac
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v7}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v21

    .line 1391
    .local v21, "uploadUboxSelectedInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v19, Lcom/pantech/app/music/list/module/ShareUBoxContents;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/pantech/app/music/list/module/ShareUBoxContents;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Landroid/os/Handler;Ljava/util/Collection;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)V

    .line 1392
    .local v19, "shareUboxContents":Lcom/pantech/app/music/list/module/ShareUBoxContents;
    new-instance v5, Ljava/lang/Thread;

    const-string v7, "ShareUboxContents"

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_53

    .line 1398
    .end local v19    # "shareUboxContents":Lcom/pantech/app/music/list/module/ShareUBoxContents;
    .end local v21    # "uploadUboxSelectedInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :sswitch_2db
    new-instance v12, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;

    const/16 v5, 0x8

    move/from16 v0, p1

    if-eq v0, v5, :cond_326

    const/4 v5, 0x1

    :goto_2e4
    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5}, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Z)V

    .line 1407
    .local v12, "dialog":Lcom/pantech/app/music/list/component/DeleteConfirmDialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v7}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v5

    if-eqz v5, :cond_328

    .line 1408
    new-instance v22, Lcom/pantech/app/music/list/component/ContextServiceWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v7}, Lcom/pantech/app/music/list/component/ContextServiceWrapper;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    .line 1411
    .restart local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :goto_304
    new-instance v5, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v9}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedParentList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/util/Collection;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v5, v0, v1, v7, v8}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;)V

    invoke-virtual {v12, v5}, Lcom/pantech/app/music/list/component/DeleteConfirmDialog;->showDialog(Ljava/lang/Runnable;)V

    goto/16 :goto_53

    .line 1398
    .end local v12    # "dialog":Lcom/pantech/app/music/list/component/DeleteConfirmDialog;
    .end local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :cond_326
    const/4 v5, 0x0

    goto :goto_2e4

    .line 1410
    .restart local v12    # "dialog":Lcom/pantech/app/music/list/component/DeleteConfirmDialog;
    :cond_328
    move-object/from16 v22, p0

    .restart local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    goto :goto_304

    .line 1463
    .end local v12    # "dialog":Lcom/pantech/app/music/list/component/DeleteConfirmDialog;
    .end local v22    # "wrapper":Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    :sswitch_32b
    const/16 v5, 0x400

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v8}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onSelectMenuResult(IZLjava/lang/Object;)V

    goto/16 :goto_53

    .line 1467
    :cond_336
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    goto/16 :goto_48

    .line 1238
    :sswitch_data_33c
    .sparse-switch
        0x1 -> :sswitch_aa
        0x2 -> :sswitch_5a
        0x4 -> :sswitch_2db
        0x8 -> :sswitch_2db
        0x10 -> :sswitch_2db
        0x20 -> :sswitch_f2
        0x40 -> :sswitch_22b
        0x80 -> :sswitch_18b
        0x100 -> :sswitch_25a
        0x200 -> :sswitch_151
        0x400 -> :sswitch_32b
        0x1000 -> :sswitch_2ac
    .end sparse-switch
.end method

.method public setDragTouchInterceptor(Z)V
    .registers 7
    .param p1, "set"    # Z

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 582
    .local v0, "absListview":Landroid/widget/AbsListView;
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isDragMultiSelect()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 584
    if-eqz p1, :cond_3f

    if-eqz v0, :cond_3f

    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_3f

    .line 586
    new-instance v2, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4, p0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Lcom/pantech/app/music/list/adapter/IAdapterCommon;Lcom/pantech/app/music/list/fragment/IFragmentSelectable;)V

    .line 593
    .local v2, "listDragIntercepter":Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getEditMode()Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    if-ne v3, v4, :cond_2c

    .line 595
    invoke-virtual {v2, p0}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;->setOnDragMultiSelectModeListener(Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$DragTouchListener;)V

    .line 597
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 610
    .end local v2    # "listDragIntercepter":Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;
    :cond_2f
    :goto_2f
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getChildListManager()Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    move-result-object v1

    .line 611
    .local v1, "childLayer":Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 613
    invoke-virtual {v1, p1}, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->setDragTouchIntercepter(Z)V

    .line 615
    :cond_3e
    return-void

    .line 599
    .end local v1    # "childLayer":Lcom/pantech/app/music/list/fragment/ChildListViewManager;
    :cond_3f
    if-eqz p1, :cond_47

    if-eqz v0, :cond_47

    instance-of v3, v0, Landroid/widget/GridView;

    if-nez v3, :cond_2f

    .line 604
    :cond_47
    if-nez p1, :cond_2f

    .line 606
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2f
.end method

.method public setSmartBeamCallback()V
    .registers 4

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 622
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 623
    .local v0, "nfcAdapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_19

    .line 625
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSmartBeamCallback:Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    .line 628
    .end local v0    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :cond_19
    return-void
.end method

.method public startActionMode(Landroid/view/View;Z)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clearSelection"    # Z

    .prologue
    .line 653
    const v0, 0x7f10000f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;

    .line 655
    .local v6, "param":Lcom/pantech/app/music/list/db/SelectCallbackParam;
    const-string v0, "StartActionMode"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0, p2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->startActionMode(Z)Z

    move-result v7

    .line 667
    .local v7, "started":Z
    if-eqz v7, :cond_30

    .line 669
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isDragMultiSelect()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 671
    const-string v0, "StartActionMode:Check First"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v3, v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mCursorLock:Ljava/lang/Object;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager;->select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 680
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    .line 690
    :cond_30
    :goto_30
    return-void

    .line 686
    :cond_31
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v2, v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    iget v3, v6, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mCursorLock:Ljava/lang/Object;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager;->select(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;ILjava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    goto :goto_30
.end method

.method public startActionMode(Z)Z
    .registers 4
    .param p1, "clearSelection"    # Z

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartActionMode clearSelection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 706
    if-eqz p1, :cond_21

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    if-eqz v0, :cond_21

    .line 707
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 709
    :cond_21
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    if-eqz v0, :cond_2a

    .line 710
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    invoke-interface {v0}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->startActionMode()V

    .line 712
    :cond_2a
    const/4 v0, 0x1

    return v0
.end method

.method public stopActionMode()V
    .registers 2

    .prologue
    .line 718
    const-string v0, "stopActionMode"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    if-eqz v0, :cond_e

    .line 721
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    invoke-interface {v0}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->stopActionMode()V

    .line 722
    :cond_e
    return-void
.end method

.method protected updateChecked()V
    .registers 5

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mUpdateChecked:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1064
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mUpdateChecked:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1065
    return-void
.end method

.method public updateSelectionMenu()Z
    .registers 2

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateSelectionMenu(Z)Z

    move-result v0

    return v0
.end method

.method public updateSelectionMenu(IIZ)Z
    .registers 6
    .param p1, "selectedCount"    # I
    .param p2, "selectState"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 921
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v0, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p3, :cond_76

    .line 923
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSelectionMenu c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIAdapter.cmGetItemCount():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectedCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " selectState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFirstModeChangeForSelectMenu:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFirstModeChangeForSelectMenu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_6b

    if-nez p1, :cond_6b

    iget-boolean v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFirstModeChangeForSelectMenu:Z

    if-nez v0, :cond_6b

    .line 931
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    .line 932
    const/4 v0, 0x0

    .line 942
    :goto_6a
    return v0

    .line 939
    :cond_6b
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    .line 942
    :cond_76
    const/4 v0, 0x1

    goto :goto_6a
.end method

.method public updateSelectionMenu(Z)Z
    .registers 7
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 888
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v2, p0}, Lcom/pantech/app/music/list/activity/IListActivity;->isCurrentFragment(Landroid/app/Fragment;)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz p1, :cond_98

    .line 890
    :cond_a
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/db/SelectManager;->getAllCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    move-result-object v0

    .line 892
    .local v0, "contentSelectCountInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/pantech/app/music/list/db/SelectManager;->getCheckState(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;)I

    move-result v1

    .line 894
    .local v1, "selectState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSelectionMenu c:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIAdapter.cmGetItemCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contentSelectCountInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mFirstModeChangeForSelectMenu:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFirstModeChangeForSelectMenu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 900
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v2

    if-eqz v2, :cond_8b

    iget v2, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I

    if-nez v2, :cond_8b

    iget-boolean v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFirstModeChangeForSelectMenu:Z

    if-nez v2, :cond_8b

    .line 902
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->stopActionMode()V

    .line 903
    const/4 v2, 0x0

    .line 913
    .end local v0    # "contentSelectCountInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;
    .end local v1    # "selectState":I
    :goto_8a
    return v2

    .line 910
    .restart local v0    # "contentSelectCountInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;
    .restart local v1    # "selectState":I
    :cond_8b
    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mISelectableActivity:Lcom/pantech/app/music/list/activity/ISelectableActivity;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    iget v4, v0, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I

    invoke-interface {v2, v3, v4, v1}, Lcom/pantech/app/music/list/activity/ISelectableActivity;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    .line 913
    .end local v0    # "contentSelectCountInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;
    .end local v1    # "selectState":I
    :cond_98
    const/4 v2, 0x1

    goto :goto_8a
.end method
