.class public Lcom/pantech/app/music/library/ListFragment;
.super Landroid/app/Fragment;
.source "ListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/pantech/app/music/library/IListFragment;
.implements Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/ListFragment$17;,
        Lcom/pantech/app/music/library/ListFragment$AppBarState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/pantech/app/music/library/IListFragment;",
        "Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListFragment"


# instance fields
.field private actionModeCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

.field iListActivity:Lcom/pantech/app/music/library/IListActivity;

.field iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

.field mActionMenuHelper:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

.field mActionMode:Landroid/view/ActionMode;

.field mActionModeView:Landroid/view/View;

.field mAlbumArtView:Landroid/widget/ImageView;

.field mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field mCheckAllBox:Landroid/widget/CheckBox;

.field mCheckAllBoxChangedByItemCheck:Z

.field mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field mCurAppBarState:Lcom/pantech/app/music/library/ListFragment$AppBarState;

.field mCursorLoader:Landroid/content/CursorLoader;

.field mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

.field mFragmentLifeCycleStarted:Z

.field mHeaderButton:Landroid/widget/Button;

.field mHeaderText:Landroid/widget/TextView;

.field mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field mItemTouchHelperCallback:Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;

.field mLoaderTrackID:I

.field mMainLayout:Landroid/view/View;

.field mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mSelectedCountFormat:Ljava/lang/String;

.field mSelectedCountTextView:Landroid/widget/TextView;

.field mShouldAdapterRefresh:Z

.field mShownUpInMainPage:Z

.field mStatusListener:Landroid/content/BroadcastReceiver;

.field mSubHeaderText:Landroid/widget/TextView;

.field mToolbar:Landroid/support/v7/widget/Toolbar;

.field mTracksAdapterItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

.field statusBarColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentLifeCycleStarted:Z

    .line 93
    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mShouldAdapterRefresh:Z

    .line 94
    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mShownUpInMainPage:Z

    .line 104
    iput v0, p0, Lcom/pantech/app/music/library/ListFragment;->mLoaderTrackID:I

    .line 645
    new-instance v0, Lcom/pantech/app/music/library/ListFragment$7;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListFragment$7;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->actionModeCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    .line 779
    new-instance v0, Lcom/pantech/app/music/library/ListFragment$9;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListFragment$9;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mTracksAdapterItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    .line 1115
    new-instance v0, Lcom/pantech/app/music/library/ListFragment$12;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListFragment$12;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1575
    new-instance v0, Lcom/pantech/app/music/library/ListFragment$16;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/ListFragment$16;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/library/ListFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/pantech/app/music/library/ListFragment;->onActionModeActivated(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/library/ListFragment;)Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/ListFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->actionModeCallback:Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    return-object v0
.end method

.method private onActionModeActivated(Z)V
    .registers 6
    .param p1, "activated"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1200
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v0, p1}, Lcom/pantech/app/music/library/IListAdapter;->onActionModeChanged(Z)V

    .line 1201
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mItemTouchHelperCallback:Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;

    if-eqz v0, :cond_13

    .line 1202
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mItemTouchHelperCallback:Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;

    if-nez p1, :cond_2e

    move v0, v1

    :goto_10
    invoke-virtual {v3, v0}, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;->setItemViewSwipeEnabled(Z)V

    .line 1204
    :cond_13
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_1f

    .line 1205
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-nez p1, :cond_30

    move v0, v1

    :goto_1c
    invoke-virtual {v3, v0}, Landroid/support/design/widget/AppBarLayout;->setExpanded(Z)V

    .line 1207
    :cond_1f
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2a

    .line 1208
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_32

    :goto_27
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 1211
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/library/ListFragment;->setStatusBarColor(Z)V

    .line 1212
    return-void

    :cond_2e
    move v0, v2

    .line 1202
    goto :goto_10

    :cond_30
    move v0, v2

    .line 1205
    goto :goto_1c

    :cond_32
    move v1, v2

    .line 1208
    goto :goto_27
.end method

.method private showCategoryActionMenu(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 11
    .param p1, "anchor"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "categoryArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    const/4 v7, 0x0

    .line 761
    new-instance v4, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x800005

    invoke-direct {v4, v5, p1, v6}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 762
    .local v4, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 764
    .local v3, "menu":Landroid/view/Menu;
    const/4 v2, 0x0

    .line 765
    .local v2, "itemID":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 766
    .local v0, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/pantech/app/music/library/FragmentInfo$Category;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v7, v2, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 767
    add-int/lit8 v2, v2, 0x1

    .line 768
    goto :goto_16

    .line 769
    .end local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :cond_30
    new-instance v5, Lcom/pantech/app/music/library/ListFragment$8;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/library/ListFragment$8;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 776
    invoke-virtual {v4}, Landroid/widget/PopupMenu;->show()V

    .line 777
    return-void
.end method


# virtual methods
.method finishActionMode()V
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 516
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 518
    :cond_9
    return-void
.end method

.method getActionModeBar()Landroid/view/View;
    .registers 6

    .prologue
    .line 1558
    const-string v2, "action_mode_bar"

    .line 1559
    .local v2, "viewIdName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1561
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v2, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1562
    .local v1, "resId":I
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method

.method public getFragmentInfo()Lcom/pantech/app/music/library/FragmentInfo;
    .registers 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .registers 7

    .prologue
    .line 1566
    const/4 v1, 0x0

    .line 1567
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1568
    .local v0, "resourceId":I
    if-lez v0, :cond_19

    .line 1569
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1571
    :cond_19
    return v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 380
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 382
    const-string v0, "ListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 393
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/library/ListFragment;->mLoaderTrackID:I

    .line 394
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/library/ListFragment;->mLoaderTrackID:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 403
    :goto_49
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/ListFragment;->setHasOptionsMenu(Z)V

    .line 406
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/ListFragment;->showToolbar(Z)V

    .line 409
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListActivity:Lcom/pantech/app/music/library/IListActivity;

    invoke-interface {v0}, Lcom/pantech/app/music/library/IListActivity;->getActionModeBottomLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mActionModeView:Landroid/view/View;

    .line 410
    return-void

    .line 386
    :pswitch_58
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-eqz v0, :cond_65

    .line 387
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListAdapter;->changeMusicList([Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 389
    :cond_65
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->setHeaderTitle()V

    goto :goto_49

    .line 384
    nop

    :pswitch_data_6a
    .packed-switch 0x4
        :pswitch_58
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/library/IListActivity;

    iput-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->iListActivity:Lcom/pantech/app/music/library/IListActivity;

    .line 308
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 309
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_18

    .line 310
    const-string v2, "bundle.key.fragment"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/library/FragmentInfo;

    iput-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    .line 313
    :cond_18
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    .line 314
    .local v1, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :goto_22
    const-string v2, "ListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "category "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 316
    return-void

    .line 313
    .end local v1    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :cond_56
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    goto :goto_22
.end method

.method public onBubbleTipDummyLayoutTouched()V
    .registers 1

    .prologue
    .line 1254
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x0

    .line 137
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 138
    .local v1, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    if-eqz v1, :cond_52

    .line 139
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/pantech/app/music/library/ListFragment;->updateLayoutManager(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 147
    :goto_10
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-eqz v3, :cond_19

    .line 148
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v3}, Lcom/pantech/app/music/library/IListAdapter;->onConfigureChanged()V

    .line 154
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActionModeBar()Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, "actionModeBar":Landroid/view/View;
    if-eqz v0, :cond_4e

    .line 156
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 157
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_32

    instance-of v3, v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_32

    .line 158
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getStatusBarHeight()I

    move-result v3

    invoke-virtual {v2, v6, v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    :cond_32
    const-string v3, "ListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "actionModeBar top: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_4e
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    return-void

    .line 141
    .end local v0    # "actionModeBar":Landroid/view/View;
    :cond_52
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/library/FragmentInfo;->createLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_10
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 362
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 366
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/ListFragment;->registerStatusListener(Landroid/content/Context;)V

    .line 367
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 6
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1435
    const-string v0, "ListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateLoader() id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    new-instance v0, Lcom/pantech/app/music/component/ExtendCursorLoader;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/component/ExtendCursorLoader;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    .line 1437
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    .line 414
    const-string v0, "ListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo;->getOptionMenuID()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 416
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 418
    iput-boolean v3, p0, Lcom/pantech/app/music/library/ListFragment;->mShownUpInMainPage:Z

    .line 421
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 422
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->startActionMode()V

    .line 424
    :cond_38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const-string v5, "ListFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateView() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v7}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-boolean v5, Lcom/pantech/app/music/utils/ActivityUtils;->mHasPermission:Z

    if-nez v5, :cond_24

    .line 173
    const/4 v4, 0x0

    .line 292
    :cond_23
    :goto_23
    return-object v4

    .line 176
    :cond_24
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v5}, Lcom/pantech/app/music/library/FragmentInfo;->getLayoutID()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 178
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f100123

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mMainLayout:Landroid/view/View;

    .line 179
    const v5, 0x7f1000a9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/Toolbar;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 180
    const v5, 0x7f100128

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/FloatingActionButton;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    .line 181
    const v5, 0x7f1000a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 184
    const v5, 0x7f1000a8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mAlbumArtView:Landroid/widget/ImageView;

    .line 185
    const v5, 0x7f10012b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mHeaderButton:Landroid/widget/Button;

    .line 186
    const v5, 0x7f10012a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mHeaderText:Landroid/widget/TextView;

    .line 187
    const v5, 0x7f100127

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    .line 190
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->setHeaderTitle()V

    .line 192
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v5, :cond_b7

    .line 194
    const v5, 0x7f1000a6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/AppBarLayout;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 195
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v5, v6}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 202
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v5}, Lcom/pantech/app/music/library/FragmentInfo;->getAlbumID()J

    move-result-wide v6

    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0, v6, v7, v5}, Lcom/pantech/app/music/library/ListFragment;->setHeaderViewWithColor(JLandroid/view/View;)V

    .line 205
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x106000d

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/ColorUtils;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 207
    sget-object v5, Lcom/pantech/app/music/library/ListFragment$AppBarState;->EXPANDED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mCurAppBarState:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    .line 210
    :cond_b7
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v5, :cond_e2

    .line 211
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/AppCompatActivity;

    .line 212
    .local v1, "compatActivity":Landroid/support/v7/app/AppCompatActivity;
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v5}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 213
    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 214
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_e2

    .line 215
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 218
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-nez v5, :cond_e2

    .line 219
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0201d9

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "compatActivity":Landroid/support/v7/app/AppCompatActivity;
    :cond_e2
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mHeaderButton:Landroid/widget/Button;

    if-eqz v5, :cond_fb

    .line 225
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mHeaderButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo;->getHeaderButtonID()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 226
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mHeaderButton:Landroid/widget/Button;

    new-instance v6, Lcom/pantech/app/music/library/ListFragment$1;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$1;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    :cond_fb
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    if-eqz v5, :cond_11a

    .line 240
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v6, Lcom/pantech/app/music/library/ListFragment$2;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$2;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v5, v6}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    sget-object v5, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_19e

    .line 270
    :cond_11a
    :goto_11a
    new-instance v2, Lcom/pantech/app/music/library/ListAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-direct {v2, v5, v6}, Lcom/pantech/app/music/library/ListAdapter;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V

    .local v2, "listAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    move-object v5, v2

    .line 273
    check-cast v5, Lcom/pantech/app/music/library/IListAdapter;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    .line 274
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mTracksAdapterItemClickListener:Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;

    invoke-interface {v5, v6, p0}, Lcom/pantech/app/music/library/IListAdapter;->setOnItemListener(Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;Lcom/pantech/app/music/library/IListAdapter$OnItemDragListener;)V

    .line 277
    const v5, 0x7f1000ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 278
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 279
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v6}, Lcom/pantech/app/music/library/IListAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 280
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/library/FragmentInfo;->createLayoutManager(Landroid/content/Context;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 283
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 284
    const/4 v3, 0x0

    .line 285
    .local v3, "swipeEnable":Z
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v5

    if-eqz v5, :cond_171

    .line 286
    const/4 v3, 0x1

    .line 288
    :cond_171
    new-instance v5, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;

    check-cast v2, Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;

    .end local v2    # "listAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    invoke-direct {v5, v2, v3}, Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;-><init>(Lcom/pantech/app/music/library/helper/ItemTouchHelperAdapter;Z)V

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mItemTouchHelperCallback:Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;

    .line 289
    new-instance v5, Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mItemTouchHelperCallback:Lcom/pantech/app/music/library/helper/ItemTouchHelperCallback;

    invoke-direct {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 290
    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    goto/16 :goto_23

    .line 257
    .end local v3    # "swipeEnable":Z
    :pswitch_18c
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/pantech/app/music/library/ListFragment$3;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$3;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_11a

    .line 255
    nop

    :pswitch_data_19e
    .packed-switch 0x3
        :pswitch_18c
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 371
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 375
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/ListFragment;->unregisterStatusListener(Landroid/content/Context;)V

    .line 376
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 299
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v0, :cond_12

    .line 300
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 302
    :cond_12
    return-void
.end method

.method public onDetach()V
    .registers 5

    .prologue
    .line 320
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    .line 321
    .local v0, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :goto_a
    const-string v1, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " this: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 323
    return-void

    .line 320
    .end local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :cond_3e
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    goto :goto_a
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .registers 15
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1442
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_b6

    .line 1443
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 1444
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    if-eqz v8, :cond_3a

    .line 1445
    const-string v8, "ListFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Category: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v10}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - cursor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> is closed!!!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    :cond_3a
    :goto_3a
    if-eqz p2, :cond_bf

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1454
    .local v0, "count":I
    :goto_40
    sget-object v8, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v9, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v9}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_1d8

    .line 1503
    :cond_51
    :goto_51
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v8}, Lcom/pantech/app/music/library/FragmentInfo;->getNoContentResID()I

    move-result v8

    if-lez v8, :cond_18b

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_18b

    .line 1504
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100126

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1505
    .local v3, "noContent":Landroid/view/View;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f10013e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1506
    .local v2, "mainText":Landroid/widget/TextView;
    if-nez v0, :cond_184

    .line 1518
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1519
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v8}, Lcom/pantech/app/music/library/FragmentInfo;->getNoContentResID()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1521
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v8

    if-eqz v8, :cond_a0

    .line 1522
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f10013d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1537
    .end local v2    # "mainText":Landroid/widget/TextView;
    .end local v3    # "noContent":Landroid/view/View;
    :cond_a0
    :goto_a0
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-eqz v8, :cond_1cf

    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v8, p2}, Lcom/pantech/app/music/library/IListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1544
    :goto_a9
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v8

    if-nez v8, :cond_b5

    .line 1545
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    .line 1547
    :cond_b5
    :goto_b5
    return-void

    .line 1449
    .end local v0    # "count":I
    :cond_b6
    const-string v8, "ListFragment"

    const-string v9, "data = null"

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3a

    .line 1452
    :cond_bf
    const/4 v0, 0x0

    goto :goto_40

    .line 1456
    .restart local v0    # "count":I
    :sswitch_c1
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-static {v8, p2, v9}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteEmptyGenres(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Object;)I

    move-result v1

    .line 1457
    .local v1, "delCount":I
    if-lez v1, :cond_51

    .line 1458
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v8}, Landroid/content/CursorLoader;->forceLoad()V

    goto :goto_b5

    .line 1466
    .end local v1    # "delCount":I
    :sswitch_d6
    if-nez v0, :cond_51

    .line 1467
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_fe

    .line 1468
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f08013b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1469
    .local v6, "strResult":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1471
    .end local v6    # "strResult":Ljava/lang/String;
    :cond_fe
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_51

    .line 1475
    :sswitch_107
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_51

    .line 1477
    if-nez v0, :cond_121

    .line 1478
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100129

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_51

    .line 1480
    :cond_121
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x7f100129

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_51

    .line 1484
    :sswitch_132
    if-nez v0, :cond_13d

    .line 1489
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto/16 :goto_51

    .line 1492
    :cond_13d
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v8, :cond_51

    .line 1493
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1494
    .local v7, "subHeaderTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0004

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    .line 1495
    .local v4, "numberOfTrack":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1496
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_51

    .line 1527
    .end local v4    # "numberOfTrack":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v7    # "subHeaderTitle":Ljava/lang/String;
    .restart local v2    # "mainText":Landroid/widget/TextView;
    .restart local v3    # "noContent":Landroid/view/View;
    :cond_184
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a0

    .line 1532
    .end local v2    # "mainText":Landroid/widget/TextView;
    .end local v3    # "noContent":Landroid/view/View;
    :cond_18b
    const-string v8, "ListFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getView: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v8, "ListFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "this: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isDetached: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->isDetached()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a0

    .line 1538
    :cond_1cf
    const-string v8, "ListFragment"

    const-string v9, "iListAdapter = null"

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a9

    .line 1454
    :sswitch_data_1d8
    .sparse-switch
        0x1 -> :sswitch_107
        0x6 -> :sswitch_132
        0x8 -> :sswitch_132
        0xd -> :sswitch_d6
        0x10 -> :sswitch_c1
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/library/ListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1551
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "ListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoaderReset() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-eqz v0, :cond_28

    .line 1553
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1555
    :cond_28
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 452
    const-string v3, "ListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v5}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_92

    .line 511
    :goto_25
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 456
    :sswitch_2a
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_25

    .line 463
    :sswitch_32
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080140

    invoke-static {v3, v4}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 465
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/music/library/ListFragment;->requestPlayTracks(J)V

    goto :goto_25

    .line 469
    :sswitch_42
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->startActionMode()V

    goto :goto_25

    .line 473
    :sswitch_46
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startSettings(Landroid/app/Activity;Z)V

    goto :goto_25

    .line 478
    :sswitch_4f
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.pantech.app.music.action.SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/library/ListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_25

    .line 483
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_5a
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v3, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_DUPLICATE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v4, 0x7f080049

    invoke-direct {v0, v3, v4}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;I)V

    .line 484
    .local v0, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/pantech/app/music/utils/IntentUtils;->gotoDetailList(Landroid/app/Activity;Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V

    goto :goto_25

    .line 492
    .end local v0    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    :sswitch_6d
    new-instance v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 493
    .local v1, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    const-wide/16 v4, -0x1

    const v3, 0x7f080045

    new-instance v6, Lcom/pantech/app/music/library/ListFragment$4;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$4;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v1, v4, v5, v3, v6}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V

    goto :goto_25

    .line 508
    .end local v1    # "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    :sswitch_84
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/pantech/app/music/utils/IntentUtils;->gotoSelectList(Landroid/app/Activity;J)V

    goto :goto_25

    .line 454
    :sswitch_data_92
    .sparse-switch
        0x102002c -> :sswitch_2a
        0x7f1001f7 -> :sswitch_42
        0x7f1001f8 -> :sswitch_46
        0x7f1001f9 -> :sswitch_32
        0x7f1001fa -> :sswitch_84
        0x7f1001fc -> :sswitch_4f
        0x7f1001fd -> :sswitch_6d
        0x7f1001fe -> :sswitch_5a
    .end sparse-switch
.end method

.method public onPlayingStatusChanged(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1154
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-nez v3, :cond_5

    .line 1197
    :cond_4
    :goto_4
    return-void

    .line 1157
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.pantech.app.music.infochanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1161
    sget-object v3, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8e

    .line 1166
    :goto_22
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->refreshAdapter()V

    goto :goto_4

    .line 1163
    :pswitch_26
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->setHeaderTitle()V

    goto :goto_22

    .line 1168
    :cond_2a
    const-string v3, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1169
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->refreshAdapter()V

    goto :goto_4

    .line 1171
    :cond_36
    const-string v3, "com.pantech.app.music.queuechanged"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1172
    sget-object v3, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_94

    .line 1193
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->refreshAdapter()V

    goto :goto_4

    .line 1176
    :pswitch_53
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    .line 1177
    .local v2, "itemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v2, :cond_5c

    array-length v3, v2

    if-gtz v3, :cond_84

    .line 1181
    :cond_5c
    const-string v3, "ListFragment"

    const-string v4, "getActivity().finish();"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1183
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "musiclist_queue_empty"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1185
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1190
    .end local v1    # "i":Landroid/content/Intent;
    :goto_80
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->setHeaderTitle()V

    goto :goto_4

    .line 1187
    :cond_84
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/pantech/app/music/library/IListAdapter;->changeMusicList([Lcom/pantech/app/music/list/MusicItemInfo;)V

    goto :goto_80

    .line 1161
    :pswitch_data_8e
    .packed-switch 0x4
        :pswitch_26
    .end packed-switch

    .line 1172
    :pswitch_data_94
    .packed-switch 0x4
        :pswitch_53
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 428
    const-string v1, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_83

    .line 431
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1001f8

    if-ne v1, v2, :cond_35

    .line 430
    :cond_32
    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 433
    :cond_35
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1001fb

    if-eq v1, v2, :cond_32

    .line 435
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1001fc

    if-eq v1, v2, :cond_32

    .line 437
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1001fa

    if-eq v1, v2, :cond_32

    .line 439
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1001f9

    if-eq v1, v2, :cond_32

    .line 442
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getAvailableCount()I

    move-result v1

    if-nez v1, :cond_7a

    .line 443
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_32

    .line 445
    :cond_7a
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_32

    .line 447
    :cond_83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 448
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "submit"    # Z

    .prologue
    .line 1216
    sget-object v0, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_44

    .line 1238
    :cond_11
    :goto_11
    return-void

    .line 1218
    :sswitch_12
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-eqz v0, :cond_11

    .line 1222
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getSearchWords(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListAdapter;->setHighlightWordList([Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    check-cast v0, Lcom/pantech/app/music/component/ExtendCursorLoader;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/component/ExtendCursorLoader;->setSearchWord(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    goto :goto_11

    .line 1228
    :sswitch_31
    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_11

    .line 1234
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    check-cast v0, Lcom/pantech/app/music/component/ExtendCursorLoader;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/component/ExtendCursorLoader;->setSearchWord(Ljava/lang/String;)V

    .line 1235
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mCursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->forceLoad()V

    goto :goto_11

    .line 1216
    :sswitch_data_44
    .sparse-switch
        0x1 -> :sswitch_31
        0xe -> :sswitch_12
    .end sparse-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 341
    iget-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mShouldAdapterRefresh:Z

    if-eqz v0, :cond_a

    .line 342
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->refreshAdapter()V

    .line 344
    :cond_a
    return-void
.end method

.method public onServiceConnected(Lcom/pantech/app/music/service/IMusicPlaybackService;)V
    .registers 3
    .param p1, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-nez v0, :cond_4

    .line 1150
    :cond_4
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 327
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 330
    invoke-static {v1}, Lcom/pantech/app/music/utils/PreferenceUtils;->checkChanges(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 331
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->refreshAdapter()V

    .line 332
    invoke-static {v1}, Lcom/pantech/app/music/utils/PreferenceUtils;->resetChanges(I)V

    .line 335
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentLifeCycleStarted:Z

    .line 336
    return-void
.end method

.method public onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1143
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentLifeCycleStarted:Z

    .line 358
    return-void
.end method

.method refreshAdapter()V
    .registers 2

    .prologue
    .line 1131
    iget-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentLifeCycleStarted:Z

    if-eqz v0, :cond_d

    .line 1132
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v0}, Lcom/pantech/app/music/library/IListAdapter;->refreshAll()V

    .line 1133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mShouldAdapterRefresh:Z

    .line 1138
    :goto_c
    return-void

    .line 1136
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/library/ListFragment;->mShouldAdapterRefresh:Z

    goto :goto_c
.end method

.method registerStatusListener(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1084
    if-nez p1, :cond_3

    .line 1105
    :goto_2
    return-void

    .line 1086
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1087
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1088
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1090
    sget-object v1, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    .line 1104
    :goto_23
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_2

    .line 1099
    :pswitch_29
    const-string v1, "com.pantech.app.music.action.LISTCHANGETITLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_23

    .line 1090
    nop

    :pswitch_data_30
    .packed-switch 0x6
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method requestCartTracks()V
    .registers 7

    .prologue
    .line 1385
    new-instance v1, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 1386
    .local v1, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlaylistDialog(Landroid/app/FragmentManager;J)Lcom/pantech/app/music/library/ListDialog;

    move-result-object v0

    .line 1387
    .local v0, "dialogFragment":Lcom/pantech/app/music/library/ListDialog;
    new-instance v2, Lcom/pantech/app/music/library/ListFragment$15;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/library/ListFragment$15;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/library/ListDialog;->setOnNoticeDialogListener(Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;)V

    .line 1426
    return-void
.end method

.method requestPlayTracks(J)V
    .registers 6
    .param p1, "delay"    # J

    .prologue
    .line 1257
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 1258
    .local v0, "playList":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/pantech/app/music/common/MusicUtils;->playAll(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 1259
    return-void
.end method

.method requestProperties()V
    .registers 5

    .prologue
    .line 1302
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getCheckedCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 1303
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 1304
    .local v0, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/pantech/app/music/utils/IntentUtils;->gotoProperty(Landroid/app/Activity;J)V

    .line 1306
    .end local v0    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_1d
    return-void
.end method

.method public requestRemoveGroups()I
    .registers 11

    .prologue
    const-wide/16 v4, 0x1f4

    .line 1341
    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 1342
    .local v0, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    sget-object v1, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_68

    .line 1358
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v9

    .line 1359
    .local v9, "removeMusicList":[Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getAvailableCount()I

    move-result v8

    .line 1360
    .local v8, "itemsCount":I
    array-length v1, v9

    if-le v8, v1, :cond_66

    const/16 v6, 0x1f4

    .line 1362
    .local v6, "delayTime":I
    :goto_2d
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/pantech/app/music/library/ListFragment$14;

    invoke-direct {v2, p0, v9, v8}, Lcom/pantech/app/music/library/ListFragment$14;-><init>(Lcom/pantech/app/music/library/ListFragment;[Lcom/pantech/app/music/list/MusicItemInfo;I)V

    int-to-long v4, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1381
    .end local v6    # "delayTime":I
    .end local v8    # "itemsCount":I
    .end local v9    # "removeMusicList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :goto_3b
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->removeSelected()I

    move-result v1

    return v1

    .line 1344
    :sswitch_42
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1345
    .local v7, "groupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/pantech/app/music/library/ListFragment$13;

    invoke-direct {v2, p0, v7}, Lcom/pantech/app/music/library/ListFragment$13;-><init>(Lcom/pantech/app/music/library/ListFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3b

    .line 1355
    .end local v7    # "groupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :sswitch_56
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v1

    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v3}, Lcom/pantech/app/music/library/IListAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->removeTracksFromList(JLjava/util/ArrayList;J)V

    goto :goto_3b

    .line 1360
    .restart local v8    # "itemsCount":I
    .restart local v9    # "removeMusicList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_66
    const/4 v6, 0x0

    goto :goto_2d

    .line 1342
    :sswitch_data_68
    .sparse-switch
        0x2 -> :sswitch_42
        0x3 -> :sswitch_56
        0x4 -> :sswitch_56
        0xb -> :sswitch_56
    .end sparse-switch
.end method

.method requestRingtone()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1262
    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v4}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v3

    .line 1263
    .local v3, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v3, :cond_d

    array-length v4, v3

    if-eq v4, v8, :cond_e

    .line 1299
    :cond_d
    :goto_d
    return-void

    .line 1266
    :cond_e
    aget-object v2, v3, v9

    .line 1282
    .local v2, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v0, 0x1

    .line 1284
    .local v0, "canWriteSetting":Z
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5e

    .line 1285
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    .line 1286
    if-nez v0, :cond_5e

    .line 1287
    const-string v4, "ListFragment"

    const v5, 0x7f08010d

    new-array v6, v8, [Ljava/lang/Object;

    const-string v7, "WRITE_SETTINGS"

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/pantech/app/music/library/ListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.action.MANAGE_WRITE_SETTINGS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1289
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/library/ListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1292
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5e
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 1293
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->setRingtone(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1294
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080147

    invoke-static {v4, v5, v8}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_d

    .line 1296
    :cond_7f
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f08012e

    invoke-static {v4, v5, v8}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_d
.end method

.method requestShare()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 1318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v1, "arrayUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v2, 0x0

    .line 1320
    .local v2, "count":I
    const/4 v4, 0x0

    .line 1321
    .local v4, "isDrmContentIncluded":Z
    iget-object v7, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v7}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .local v0, "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_10
    if-ge v3, v6, :cond_35

    aget-object v5, v0, v3

    .line 1322
    .local v5, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v5}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/app/music/utils/StorageUtils;->isDrmFileWithFileName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1323
    const/4 v4, 0x1

    .line 1321
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1326
    :cond_22
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x1f4

    if-le v2, v7, :cond_1f

    .line 1330
    .end local v5    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_35
    if-eqz v4, :cond_47

    .line 1331
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4f

    .line 1332
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800e2

    invoke-static {v7, v8, v10}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;II)V

    .line 1336
    :cond_47
    :goto_47
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/pantech/app/music/utils/IntentUtils;->shareContents(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 1337
    return-void

    .line 1334
    :cond_4f
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0800de

    invoke-static {v7, v8, v10}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;II)V

    goto :goto_47
.end method

.method requestYoutube()V
    .registers 5

    .prologue
    .line 1309
    new-instance v1, Lcom/pantech/app/music/assist/MusicOnlineControl;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pantech/app/music/assist/MusicOnlineControl;-><init>(Landroid/content/Context;)V

    .line 1310
    .local v1, "onlineControl":Lcom/pantech/app/music/assist/MusicOnlineControl;
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v2}, Lcom/pantech/app/music/library/IListAdapter;->getCheckedCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 1311
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v2}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 1312
    .local v0, "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/assist/MusicOnlineControl;->startOnlineService(Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 1314
    .end local v0    # "list":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_1e
    return-void
.end method

.method setHeaderTitle()V
    .registers 6

    .prologue
    .line 929
    const/4 v1, 0x0

    .line 930
    .local v1, "subTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 932
    .local v0, "context":Landroid/content/Context;
    sget-object v3, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_98

    .line 943
    :goto_16
    :pswitch_16
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/library/FragmentInfo;->getHeaderTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "title":Ljava/lang/String;
    :goto_1c
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v3, :cond_83

    .line 947
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mCollapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v3, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_36

    if-eqz v1, :cond_36

    .line 950
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 951
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mSubHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    :cond_36
    :goto_36
    return-void

    .line 934
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_37
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    if-eqz v3, :cond_75

    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4, v0}, Lcom/pantech/app/music/library/FragmentInfo;->getHeaderTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueuePosition()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v4}, Lcom/pantech/app/music/library/IListAdapter;->getAvailableCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_1c

    .line 938
    .end local v2    # "title":Ljava/lang/String;
    :cond_75
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/library/FragmentInfo;->getHeaderTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 939
    .restart local v2    # "title":Ljava/lang/String;
    goto :goto_1c

    .line 941
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_7c
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getSubHeaderTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    .line 954
    .restart local v2    # "title":Ljava/lang/String;
    :cond_83
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_8d

    .line 955
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 957
    :cond_8d
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mHeaderText:Landroid/widget/TextView;

    if-eqz v3, :cond_36

    .line 958
    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 932
    nop

    :pswitch_data_98
    .packed-switch 0x4
        :pswitch_37
        :pswitch_16
        :pswitch_7c
    .end packed-switch
.end method

.method setHeaderViewWithColor(JLandroid/view/View;)V
    .registers 7
    .param p1, "albumID"    # J
    .param p3, "headerView"    # Landroid/view/View;

    .prologue
    .line 886
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 887
    .local v1, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iput-wide p1, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 888
    iput-object p3, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    .line 889
    sget v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    iput v2, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 892
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v0

    .line 893
    .local v0, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v2, Lcom/pantech/app/music/library/ListFragment$10;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/library/ListFragment$10;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    .line 926
    return-void
.end method

.method setStatusBarColor(Z)V
    .registers 8
    .param p1, "bSet"    # Z

    .prologue
    .line 964
    if-eqz p1, :cond_2c

    .line 965
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 966
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/music/library/ListFragment;->statusBarColor:I

    .line 967
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/library/ListFragment;->statusBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 968
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0103

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 981
    .end local v0    # "window":Landroid/view/Window;
    :goto_2b
    return-void

    .line 970
    :cond_2c
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/pantech/app/music/library/ListFragment$11;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/library/ListFragment$11;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    const-wide/16 v4, 0x190

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b
.end method

.method showToolbar(Z)V
    .registers 6
    .param p1, "withAni"    # Z

    .prologue
    .line 984
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    .line 994
    :cond_c
    :goto_c
    return-void

    .line 987
    :cond_d
    if-eqz p1, :cond_2d

    .line 988
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 989
    .local v0, "ani":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 990
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 991
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 993
    .end local v0    # "ani":Landroid/view/animation/Animation;
    :cond_2d
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    goto :goto_c
.end method

.method startActionMode()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 522
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_b

    .line 524
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->invalidate()V

    .line 643
    :goto_a
    return-void

    .line 528
    :cond_b
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/pantech/app/music/library/ListFragment$5;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/ListFragment$5;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 601
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 602
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 603
    .local v0, "actionView":Landroid/view/View;
    const v2, 0x7f1000ca

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    .line 604
    const v2, 0x7f1000c9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBox:Landroid/widget/CheckBox;

    .line 607
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBox:Landroid/widget/CheckBox;

    if-eqz v2, :cond_4e

    .line 608
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/pantech/app/music/library/ListFragment$6;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/ListFragment$6;-><init>(Lcom/pantech/app/music/library/ListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 619
    :cond_4e
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_77

    .line 620
    invoke-virtual {p0}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0005

    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountFormat:Ljava/lang/String;

    .line 621
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountFormat:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    :cond_77
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    goto :goto_a
.end method

.method unregisterStatusListener(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1108
    if-nez p1, :cond_3

    .line 1113
    :cond_2
    :goto_2
    return-void

    .line 1110
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 1111
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2
.end method

.method updateLayoutManager(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v1, 0x2

    .line 874
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo;->isGridView()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 875
    instance-of v0, p2, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1f

    .line 876
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_20

    .line 877
    check-cast p2, Landroid/support/v7/widget/GridLayoutManager;

    .end local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 882
    :cond_1f
    :goto_1f
    return-void

    .line 879
    .restart local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_20
    check-cast p2, Landroid/support/v7/widget/GridLayoutManager;

    .end local p2    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_1f
.end method
