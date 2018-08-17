.class public Lcom/pantech/app/music/list/fragment/NowplayingFragment;
.super Lcom/pantech/app/music/list/fragment/ListFragment;
.source "NowplayingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field isDragCheckScroll:Z

.field mAddSongToNowplayingButton:Landroid/widget/ImageButton;

.field private mIServiceNowplaying:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mMenuButton:Landroid/widget/ImageButton;

.field mNowplayingServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

.field mNowplayingTitle:Landroid/widget/LinearLayout;

.field mNowplayingTitleView:Landroid/widget/TextView;

.field mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;-><init>()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->isDragCheckScroll:Z

    return-void
.end method

.method static synthetic access$002(Lcom/pantech/app/music/list/fragment/NowplayingFragment;Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/NowplayingFragment;
    .param p1, "x1"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mIServiceNowplaying:Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object p1
.end method

.method private createPopupMenu(Landroid/widget/PopupMenu;)V
    .registers 3
    .param p1, "popupMenu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 434
    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 435
    return-void
.end method

.method private updateHeader()V
    .registers 7

    .prologue
    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, "queueLength":I
    const/4 v1, 0x0

    .line 239
    .local v1, "position":I
    :try_start_2
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 241
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueueLength()I

    move-result v2

    .line 242
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueuePosition()I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_54

    move-result v1

    .line 250
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_53

    .line 251
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitleView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0801af

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_53
    return-void

    .line 245
    :catch_54
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_18
.end method


# virtual methods
.method public getService()Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    .line 127
    .local v0, "service":Lcom/pantech/app/music/service/IMusicPlaybackService;
    if-nez v0, :cond_8

    .line 128
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mIServiceNowplaying:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 130
    .end local v0    # "service":Lcom/pantech/app/music/service/IMusicPlaybackService;
    :cond_8
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_32

    .line 140
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.pantech.app.music.extras.nowplayinglist.viewstate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    .line 142
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_32

    .line 144
    new-instance v1, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;-><init>(Landroid/widget/AbsListView;Landroid/util/SparseArray;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    .line 145
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mRestoreParam:Lcom/pantech/app/music/list/fragment/FragmentMainHandler$ParamRestoreHierarchyState;

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 146
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    .end local v0    # "msg":Landroid/os/Message;
    :cond_32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mAddSongToNowplayingButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 393
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    const-wide/16 v2, -0x65

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startAddPlaylist(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;J)V

    .line 399
    :cond_13
    :goto_13
    return-void

    .line 395
    :cond_14
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 397
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->showPopupMenu()V

    goto :goto_13
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_c

    .line 157
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 158
    :cond_c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->setHasOptionsMenu(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/pantech/app/music/list/fragment/NowplayingFragment$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment$1;-><init>(Lcom/pantech/app/music/list/fragment/NowplayingFragment;)V

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 92
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_b

    .line 406
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    :cond_b
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListFragment;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 429
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/fragment/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 430
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 114
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->onDestroy()V

    .line 115
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    .line 415
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mAddSongToNowplayingButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_13

    .line 418
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mAddSongToNowplayingButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    :cond_13
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1c

    .line 421
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    :cond_1c
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 424
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    .line 474
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    .line 476
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->processOptionsMenu(Landroid/view/MenuItem;)Z

    move-result v0

    .line 501
    :goto_d
    return v0

    .line 478
    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x400

    if-ne v0, v1, :cond_48

    .line 480
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v4

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mCursorLock:Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager;->makeSelectionList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    .line 482
    .local v7, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    new-instance v3, Lcom/pantech/app/music/list/fragment/NowplayingFragment$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment$2;-><init>(Lcom/pantech/app/music/list/fragment/NowplayingFragment;)V

    invoke-static {v0, v1, v7, v2, v3}, Lcom/pantech/app/music/list/component/AddToCartDialog;->showAddToCartDialogPlayback(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/service/IMusicPlaybackService;Lcom/pantech/app/music/list/listener/ISelectMenuCallback;)Lcom/pantech/app/music/list/component/AddToCartDialog;

    move-result-object v6

    .local v6, "addToCart":Lcom/pantech/app/music/list/component/AddToCartDialog;
    move v0, v8

    .line 490
    goto :goto_d

    .line 492
    .end local v6    # "addToCart":Lcom/pantech/app/music/list/component/AddToCartDialog;
    .end local v7    # "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    :cond_48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v8, :cond_55

    .line 494
    iput-boolean v8, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mFirstModeChangeForSelectMenu:Z

    .line 496
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->startActionMode(Z)Z

    move v0, v8

    .line 497
    goto :goto_d

    .line 501
    :cond_55
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onPlayingStatusChanged(Landroid/content/Intent;)V

    .line 302
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->updateHeader()V

    .line 308
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v5

    if-nez v5, :cond_84

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_84

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.pantech.app.music.metachanged"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 313
    const/4 v2, 0x0

    .line 314
    .local v2, "isPlayingInListView":Z
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 315
    .local v0, "first":I
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v3

    .line 320
    .local v3, "last":I
    add-int/lit8 v1, v0, 0x1

    .local v1, "i":I
    :goto_2f
    if-ge v1, v3, :cond_4c

    .line 322
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v6}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v7, v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItem(I)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/pantech/app/music/list/utility/ListUtil;->isPlayingAudioID(Lcom/pantech/app/music/service/IMusicPlaybackService;J)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 324
    const/4 v2, 0x1

    .line 329
    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InListVisible:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Scrolling:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->isDragCheckScroll:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 330
    if-nez v2, :cond_84

    iget-boolean v5, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->isDragCheckScroll:Z

    if-nez v5, :cond_84

    .line 332
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/list/utility/ListUtil;->getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I

    move-result v4

    .line 334
    .local v4, "playingPosition":I
    if-ltz v4, :cond_84

    .line 336
    const-string v5, "direction"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 359
    .end local v0    # "first":I
    .end local v1    # "i":I
    .end local v2    # "isPlayingInListView":Z
    .end local v3    # "last":I
    .end local v4    # "playingPosition":I
    :cond_84
    return-void

    .line 320
    .restart local v0    # "first":I
    .restart local v1    # "i":I
    .restart local v2    # "isPlayingInListView":Z
    .restart local v3    # "last":I
    :cond_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 445
    if-eqz p1, :cond_d

    .line 446
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 448
    :cond_d
    const v2, 0x7f0800ef

    invoke-interface {p1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 449
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 451
    const/16 v2, 0x400

    const v3, 0x7f08004a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 452
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 454
    const/16 v2, 0x10

    const v3, 0x7f0800ee

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 455
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getHintPreferenceKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 456
    .local v1, "visible":I
    const/16 v2, 0x8

    if-ne v1, v2, :cond_45

    .line 457
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 462
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    .end local v1    # "visible":I
    :cond_41
    :goto_41
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 463
    return-void

    .line 459
    .restart local v0    # "menuItem":Landroid/view/MenuItem;
    .restart local v1    # "visible":I
    :cond_45
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_41
.end method

.method public onQueryComplete(Landroid/database/Cursor;)V
    .registers 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->onQueryComplete(Landroid/database/Cursor;)V

    .line 282
    invoke-direct {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->updateHeader()V

    .line 288
    iget v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mQueryCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    if-nez v1, :cond_3e

    .line 290
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/ListUtil;->getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I

    move-result v0

    .line 292
    .local v0, "playingPosition":I
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getIAdapter()Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/ListUtil;->isValidCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_3e

    if-ltz v0, :cond_3e

    .line 293
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 295
    .end local v0    # "playingPosition":I
    :cond_3e
    return-void
.end method

.method public onSaveInstanceStateForPlayback()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceStateForPlayback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    if-nez v0, :cond_35

    const-string v0, ""

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 172
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    .line 173
    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 175
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListViewState:Landroid/util/SparseArray;

    .line 178
    :goto_34
    return-object v0

    .line 162
    :cond_35
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    goto :goto_11

    .line 178
    :cond_3c
    const/4 v0, 0x0

    goto :goto_34
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 367
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/widget/AbsListView;
    .param p2, "arg1"    # I

    .prologue
    const/4 v0, 0x0

    .line 372
    packed-switch p2, :pswitch_data_10

    .line 386
    :goto_4
    return-void

    .line 375
    :pswitch_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->isDragCheckScroll:Z

    goto :goto_4

    .line 379
    :pswitch_9
    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->isDragCheckScroll:Z

    goto :goto_4

    .line 383
    :pswitch_c
    iput-boolean v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->isDragCheckScroll:Z

    goto :goto_4

    .line 372
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 106
    :cond_9
    invoke-super {p0}, Lcom/pantech/app/music/list/fragment/ListFragment;->onStop()V

    .line 107
    return-void
.end method

.method setListAdapter(Landroid/view/View;)V
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/fragment/ListFragment;->setListAdapter(Landroid/view/View;)V

    .line 186
    const v1, 0x7f1000ad

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    .line 197
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_45

    .line 199
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 200
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 201
    .local v0, "param":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .end local v0    # "param":Landroid/widget/LinearLayout$LayoutParams;
    :cond_45
    const v1, 0x7f1000ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitleView:Landroid/widget/TextView;

    .line 205
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitleView:Landroid/widget/TextView;

    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    const v1, 0x7f1000af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mAddSongToNowplayingButton:Landroid/widget/ImageButton;

    .line 207
    const v1, 0x7f1000b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_81

    .line 211
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    :goto_7b
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 230
    return-void

    .line 215
    :cond_81
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mNowplayingTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mAddSongToNowplayingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isOverflowMenuAlwaysVisible()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 220
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 221
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7b

    .line 225
    :cond_9c
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_7b
.end method

.method public showPopupMenu()V
    .registers 5

    .prologue
    .line 255
    const-string v0, "showPopupMenu()"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 259
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mIActivity:Lcom/pantech/app/music/list/activity/IListActivity;

    invoke-interface {v1}, Lcom/pantech/app/music/list/activity/IListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mMenuButton:Landroid/widget/ImageButton;

    const v3, 0x800005

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 271
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->createPopupMenu(Landroid/widget/PopupMenu;)V

    .line 273
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/NowplayingFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 275
    :cond_2e
    return-void
.end method
