.class public Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;
.super Lcom/pantech/app/music/list/activity/SelectableListActivity;
.source "TABSelectPickerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$3;,
        Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TABSelectPickerActivity"


# instance fields
.field mActionBar:Landroid/app/ActionBar;

.field mActionModeMenuItem:Landroid/view/MenuItem;

.field mAddCommand:Landroid/view/View;

.field mCancelCommand:Landroid/view/View;

.field mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

.field mFirstEntrance:Z

.field mFragmentIDTableLock:Ljava/lang/Object;

.field mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

.field mPlaylistMakeQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

.field mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

.field mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

.field mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mFragmentIDTableLock:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mFirstEntrance:Z

    .line 689
    new-instance v0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$2;-><init>(Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPlaylistMakeQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    .line 721
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->onPageSelectedInternal(I)Z

    move-result v0

    return v0
.end method

.method private onPageSelectedInternal(I)Z
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 185
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v5, p1}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;

    .line 187
    .local v0, "currentListInterface":Lcom/pantech/app/music/list/fragment/IViewPagerCallback;
    if-eqz v0, :cond_32

    .line 189
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getFragments()Ljava/util/Collection;

    move-result-object v3

    .line 192
    .local v3, "interfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Fragment;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .local v1, "fragment":Landroid/app/Fragment;
    move-object v4, v1

    .line 194
    check-cast v4, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;

    .line 196
    .local v4, "listInterface":Lcom/pantech/app/music/list/fragment/IViewPagerCallback;
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 199
    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;->onPageUnSelected()V

    goto :goto_14

    .line 207
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v4    # "listInterface":Lcom/pantech/app/music/list/fragment/IViewPagerCallback;
    :cond_2d
    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;->onPageSelected()V

    .line 209
    const/4 v5, 0x1

    .line 213
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Fragment;>;"
    :goto_31
    return v5

    :cond_32
    const/4 v5, 0x0

    goto :goto_31
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 607
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2e

    .line 609
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 611
    const v1, 0x7f080073

    const v2, 0x7f080142

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPlaylistMakeQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/view/SkyDialogFragment;->showAskPopupList(Landroid/app/Activity;IIIILjava/lang/Object;Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 617
    :goto_2d
    return v3

    :cond_2e
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_2d
.end method

.method public getCurrentFragment()Landroid/app/Fragment;
    .registers 4

    .prologue
    .line 466
    const/4 v1, 0x0

    .line 468
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-nez v2, :cond_c

    .line 470
    const-string v2, "TABActivity:mViewPager NULL"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 471
    const/4 v2, 0x0

    .line 478
    :goto_b
    return-object v2

    .line 474
    :cond_c
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getCurrentItem()I

    move-result v0

    .line 476
    .local v0, "currentItem":I
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    move-object v2, v1

    .line 478
    goto :goto_b
.end method

.method public getCurrentFragments()[Landroid/app/Fragment;
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 484
    const/4 v1, 0x0

    .line 486
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-nez v4, :cond_10

    .line 488
    const-string v4, "TABActivity:mViewPager NULL"

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 520
    :cond_f
    :goto_f
    return-object v2

    .line 492
    :cond_10
    const/4 v4, 0x3

    new-array v2, v4, [Landroid/app/Fragment;

    .line 493
    .local v2, "fragmentList":[Landroid/app/Fragment;
    aput-object v3, v2, v5

    .line 494
    aput-object v3, v2, v6

    .line 495
    aput-object v3, v2, v7

    .line 497
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getCurrentItem()I

    move-result v0

    .line 499
    .local v0, "currentItem":I
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_2f

    .line 501
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 503
    if-eqz v1, :cond_2f

    .line 504
    aput-object v1, v2, v5

    .line 507
    :cond_2f
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_39

    .line 510
    aput-object v1, v2, v6

    .line 512
    :cond_39
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 514
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_f

    .line 517
    aput-object v1, v2, v7

    goto :goto_f
.end method

.method public getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 4

    .prologue
    .line 282
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-nez v1, :cond_7

    .line 283
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 290
    :goto_6
    return-object v1

    .line 285
    :cond_7
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getTabInfo(I)Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    move-result-object v0

    .line 287
    .local v0, "tabInfo":Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;
    if-eqz v0, :cond_18

    .line 288
    iget-object v1, v0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    goto :goto_6

    .line 290
    :cond_18
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected initPager()V
    .registers 1

    .prologue
    .line 276
    return-void
.end method

.method public isCurrentFragment(Landroid/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 365
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_5c

    .line 391
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    :cond_c
    :goto_c
    return v0

    .line 368
    :pswitch_d
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-eqz v1, :cond_c

    .line 369
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getTabPosition(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setCurrentItem(I)V

    goto :goto_c

    .line 373
    :pswitch_1f
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-eqz v1, :cond_c

    .line 374
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getTabPosition(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setCurrentItem(I)V

    goto :goto_c

    .line 378
    :pswitch_31
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-eqz v1, :cond_c

    .line 379
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getTabPosition(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setCurrentItem(I)V

    goto :goto_c

    .line 383
    :pswitch_43
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 385
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-eqz v1, :cond_c

    .line 386
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getTabPosition(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setCurrentItem(I)V

    goto :goto_c

    .line 365
    nop

    :pswitch_data_5c
    .packed-switch 0x7f100200
        :pswitch_d
        :pswitch_1f
        :pswitch_31
        :pswitch_43
    .end packed-switch
.end method

.method public onAddToPlaylistComplete(Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;)V
    .registers 11
    .param p1, "error"    # Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .prologue
    const v8, 0x7f0800a4

    const v4, 0x7f0800a3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 529
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_TO_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 532
    :cond_25
    sget-object v2, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$3;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistInsertErrorType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_e4

    .line 598
    :cond_30
    :goto_30
    return-void

    .line 536
    :pswitch_31
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0001

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "val":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getPlaylistName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, "val2":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 541
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto :goto_30

    .line 546
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "val2":Ljava/lang/String;
    :pswitch_60
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 547
    .restart local v0    # "val":Ljava/lang/String;
    new-array v2, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getPlaylistName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->getInsertedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .restart local v1    # "val2":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 551
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto :goto_30

    .line 555
    .end local v0    # "val":Ljava/lang/String;
    .end local v1    # "val2":Ljava/lang/String;
    :pswitch_8e
    invoke-static {p0, v8}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_30

    .line 559
    :pswitch_92
    const v2, 0x7f0800a5

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_30

    .line 563
    :pswitch_99
    invoke-static {p0, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 565
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 566
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto :goto_30

    .line 570
    :cond_a3
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 572
    sget-object v2, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$3;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistInsertErrorType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_f2

    goto/16 :goto_30

    .line 576
    :pswitch_be
    const v2, 0x7f08010f

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 578
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 579
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto/16 :goto_30

    .line 583
    :pswitch_cc
    invoke-static {p0, v8}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_30

    .line 587
    :pswitch_d1
    const v2, 0x7f0800a5

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_30

    .line 591
    :pswitch_d9
    invoke-static {p0, v4}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 593
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 594
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto/16 :goto_30

    .line 532
    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_31
        :pswitch_60
        :pswitch_8e
        :pswitch_92
        :pswitch_99
    .end packed-switch

    .line 572
    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_be
        :pswitch_be
        :pswitch_cc
        :pswitch_d1
        :pswitch_d9
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f08010e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 623
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mCancelCommand:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 625
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 627
    new-instance v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    invoke-direct {v10, p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;-><init>(Landroid/content/Context;)V

    .line 628
    .local v10, "mPlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getTargetCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getTartgetPlaylistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v9

    .line 630
    .local v9, "error":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    invoke-virtual {v9}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 632
    const v1, 0x7f08010f

    invoke-static {p0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 634
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 635
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    .line 687
    .end local v9    # "error":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .end local v10    # "mPlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    :cond_43
    :goto_43
    return-void

    .line 639
    .restart local v9    # "error":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .restart local v10    # "mPlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    :cond_44
    invoke-static {p0, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 641
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 642
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto :goto_43

    .line 647
    .end local v9    # "error":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .end local v10    # "mPlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    :cond_4e
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 648
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto :goto_43

    .line 651
    :cond_56
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mAddCommand:Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK Command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 657
    new-instance v0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getTargetCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getTartgetPlaylistID()J

    move-result-wide v6

    move-object v1, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    .line 658
    .local v0, "mAddToPlaylistTask":Lcom/pantech/app/music/list/module/AddToPlaylistTask;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Picker_AddToPlaylistID"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_43

    .line 660
    .end local v0    # "mAddToPlaylistTask":Lcom/pantech/app/music/list/module/AddToPlaylistTask;
    :cond_ac
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 662
    new-instance v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    invoke-direct {v10, p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;-><init>(Landroid/content/Context;)V

    .line 663
    .restart local v10    # "mPlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getTargetCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getTartgetPlaylistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v9

    .line 668
    .restart local v9    # "error":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    invoke-virtual {v9}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_fb

    .line 670
    new-instance v0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/PageInfoType;->getTargetCategory()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v5

    invoke-virtual {v9}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->getPlaylistID()J

    move-result-wide v6

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    .line 671
    .restart local v0    # "mAddToPlaylistTask":Lcom/pantech/app/music/list/module/AddToPlaylistTask;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Picker_AddToPlaylistID"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_43

    .line 675
    .end local v0    # "mAddToPlaylistTask":Lcom/pantech/app/music/list/module/AddToPlaylistTask;
    :cond_fb
    invoke-static {p0, v5}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 677
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setResult(I)V

    .line 678
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto/16 :goto_43

    .line 681
    .end local v9    # "error":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .end local v10    # "mPlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    :cond_106
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_TO_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 683
    new-instance v0, Lcom/pantech/app/music/list/module/AddToPlaylistTask;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getTartgetPlaylistID()J

    move-result-wide v6

    move-object v1, p0

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/music/list/module/AddToPlaylistTask;-><init>(Landroid/app/Activity;Lcom/pantech/app/music/service/IMusicPlaybackService;Ljava/util/Collection;Lcom/pantech/app/music/list/PageInfoType;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/AddToPlaylistTask$OnAddPlaylistCompleteListener;)V

    .line 684
    .restart local v0    # "mAddToPlaylistTask":Lcom/pantech/app/music/list/module/AddToPlaylistTask;
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Picker_AddToFavorites"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_43
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 84
    const-string v1, "TABSelectPickerActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$SelectPickerTabHandler;-><init>(Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    .line 87
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f03004e

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setContentView(I)V

    .line 91
    new-instance v1, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    .line 93
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstStart"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mFirstEntrance:Z

    .line 94
    iget-boolean v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mFirstEntrance:Z

    if-eqz v1, :cond_3a

    .line 95
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "firstStart"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    :cond_3a
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->initPager()V

    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_52

    .line 103
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 104
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 106
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 107
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 110
    :cond_52
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->startActionMode()V

    .line 112
    const v1, 0x7f1000e3

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mCancelCommand:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mCancelCommand:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f1000e4

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mAddCommand:Landroid/view/View;

    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mAddCommand:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getSelectionManagerType()I

    move-result v1

    invoke-static {p0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getInstance(Landroid/content/Context;I)Lcom/pantech/app/music/list/db/SelectManager;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    .line 118
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 329
    const-string v4, "TABSelectPickerActivity"

    const-string v5, "onCreateActionMode()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v3, 0x1

    .line 332
    .local v3, "ret":Z
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 337
    .local v1, "inflater":Landroid/view/MenuInflater;
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1b

    .line 338
    const v4, 0x7f110014

    invoke-virtual {v1, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 350
    :cond_1b
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 351
    .local v0, "fragment":Landroid/app/Fragment;
    instance-of v4, v0, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v4, :cond_2b

    move-object v2, v0

    .line 353
    check-cast v2, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 355
    .local v2, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    invoke-interface {v2, p1, p2}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 358
    .end local v2    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    :cond_2b
    return v3
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 164
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECTABLE:onDestroy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->isChangingConfigurations()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 173
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 175
    :cond_2a
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onDestroy()V

    .line 176
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 11
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v3, 0x1

    .line 405
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v7

    .line 406
    .local v7, "fragment":Landroid/app/Fragment;
    instance-of v0, v7, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    if-eqz v0, :cond_f

    move-object v8, v7

    .line 408
    check-cast v8, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;

    .line 410
    .local v8, "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    invoke-interface {v8, p1}, Lcom/pantech/app/music/list/fragment/IFragmentSelectable;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 413
    .end local v8    # "interFragment":Lcom/pantech/app/music/list/fragment/IFragmentSelectable;
    :cond_f
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 414
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/db/SelectManager;->clear()V

    .line 416
    :cond_1a
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getPickerMode()Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 418
    const v1, 0x7f080073

    const v2, 0x7f080142

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPlaylistMakeQuestionListener:Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/view/SkyDialogFragment;->showAskPopupList(Landroid/app/Activity;IIIILjava/lang/Object;Lcom/pantech/app/music/view/SkyDialogFragment$OnDialogQuestionCallback;)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mDialog:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 420
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    new-instance v1, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$1;-><init>(Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 431
    :goto_43
    return-void

    .line 429
    :cond_44
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->finish()V

    goto :goto_43
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 250
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 256
    return-void
.end method

.method public onPageSelected(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 223
    const-string v3, "VMusicPageApapterTag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageSelected position:("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mTabItems:Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;

    invoke-virtual {v3, p1}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getTabInfo(I)Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    move-result-object v2

    .line 227
    .local v2, "tabInfo":Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;
    iget-object v3, v2, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 229
    .local v0, "currentCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/list/PageInfoType;->setCategoryType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->onPageSelectedInternal(I)Z

    move-result v3

    if-nez v3, :cond_43

    .line 235
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 236
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 242
    .end local v1    # "msg":Landroid/os/Message;
    :cond_43
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mActionModeMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_4c

    .line 243
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mActionModeMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->setCategoryProviderIcon(Landroid/view/MenuItem;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 244
    :cond_4c
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 148
    const-string v0, "onPause"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 150
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onPause()V

    .line 151
    return-void
.end method

.method protected onRestart()V
    .registers 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onRestart()V

    .line 125
    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 140
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onResume()V

    .line 142
    const-string v0, "onResume"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onStart()V

    .line 134
    const-string v0, "onStart"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 156
    const-string v0, "onStop"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 158
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onStop()V

    .line 159
    return-void
.end method

.method protected setCategoryProviderIcon(Landroid/view/MenuItem;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V
    .registers 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCategoryProviderIcon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 438
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mActionModeMenuItem:Landroid/view/MenuItem;

    .line 439
    sget-object v0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity$3;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 461
    :goto_23
    return-void

    .line 442
    :pswitch_24
    const v0, 0x7f020192

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 443
    const v0, 0x7f080083

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_23

    .line 447
    :pswitch_31
    const v0, 0x7f020191

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 448
    const v0, 0x7f080017

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_23

    .line 452
    :pswitch_3e
    const v0, 0x7f020193

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 453
    const v0, 0x7f080018

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_23

    .line 457
    :pswitch_4b
    const v0, 0x7f020194

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 458
    const v0, 0x7f0800b9

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_23

    .line 439
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_24
        :pswitch_31
        :pswitch_3e
        :pswitch_4b
    .end packed-switch
.end method

.method protected triggerForCloud(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .prologue
    .line 524
    return-void
.end method

.method public updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "nSelectedCount"    # I
    .param p3, "selectState"    # I

    .prologue
    .line 305
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    move-result v0

    .line 307
    .local v0, "changed":Z
    if-eqz v0, :cond_11

    .line 311
    if-eqz p3, :cond_b

    const/4 v1, 0x3

    if-ne p3, v1, :cond_12

    .line 313
    :cond_b
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mAddCommand:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 321
    :cond_11
    :goto_11
    return v0

    .line 317
    :cond_12
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/TABSelectPickerActivity;->mAddCommand:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_11
.end method
