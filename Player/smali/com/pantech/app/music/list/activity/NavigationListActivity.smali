.class public Lcom/pantech/app/music/list/activity/NavigationListActivity;
.super Lcom/pantech/app/music/list/activity/SelectableListActivity;
.source "NavigationListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/NavigationListActivity$NavigationHandler;
    }
.end annotation


# static fields
.field private static final SAVEDINSTANCE_KEY_OLDNAVIPOS:Ljava/lang/String; = "oldNaviPos"


# instance fields
.field private mCurrentNaviPos:I

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field mForceExpandChildGroupID:Ljava/lang/String;

.field private mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

.field mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

.field private mNaviAdapter:Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;

.field private mNaviListView:Landroid/widget/ListView;

.field mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;-><init>()V

    .line 553
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/activity/NavigationListActivity;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/list/activity/NavigationListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->onPageSelectedInternal(I)Z

    move-result v0

    return v0
.end method

.method private getFragment(I)Landroid/app/Fragment;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-nez v1, :cond_c

    .line 466
    const-string v1, "NavigationListActivity:mViewPager NULL"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 467
    const/4 v1, 0x0

    .line 472
    :goto_b
    return-object v1

    .line 470
    :cond_c
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    move-object v1, v0

    .line 472
    goto :goto_b
.end method

.method private initActionbar(Landroid/app/ActionBar;)V
    .registers 4
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    const/4 v1, 0x1

    .line 412
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isOverflowMenuAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 414
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 415
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 421
    :goto_15
    return-void

    .line 419
    :cond_16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_15
.end method

.method private initActionbarToggle()V
    .registers 2

    .prologue
    .line 478
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 497
    return-void
.end method

.method private initNaviList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, "naviItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;>;"
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    .line 503
    new-instance v0, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviAdapter:Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;

    .line 504
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviAdapter:Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 505
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 506
    return-void
.end method

.method private onPageSelectedInternal(I)Z
    .registers 10
    .param p1, "position"    # I

    .prologue
    .line 521
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    invoke-virtual {v5, p1}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;

    .line 523
    .local v0, "currentListInterface":Lcom/pantech/app/music/list/fragment/IViewPagerCallback;
    if-eqz v0, :cond_40

    .line 527
    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;->onPageSelected()V

    move-object v5, v0

    .line 529
    check-cast v5, Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.pantech.app.music.extras.subactivity.rotation.groupid"

    iget-object v7, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mForceExpandChildGroupID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v5, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->getFragments()Ljava/util/Collection;

    move-result-object v3

    .line 534
    .local v3, "interfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Fragment;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .local v1, "fragment":Landroid/app/Fragment;
    move-object v4, v1

    .line 536
    check-cast v4, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;

    .line 538
    .local v4, "listInterface":Lcom/pantech/app/music/list/fragment/IViewPagerCallback;
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 541
    invoke-interface {v4}, Lcom/pantech/app/music/list/fragment/IViewPagerCallback;->onPageUnSelected()V

    goto :goto_25

    .line 544
    .end local v1    # "fragment":Landroid/app/Fragment;
    .end local v4    # "listInterface":Lcom/pantech/app/music/list/fragment/IViewPagerCallback;
    :cond_3e
    const/4 v5, 0x1

    .line 548
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "interfaces":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/app/Fragment;>;"
    :goto_3f
    return v5

    :cond_40
    const/4 v5, 0x0

    goto :goto_3f
.end method

.method private setFragment(Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;I)V
    .registers 5
    .param p1, "info"    # Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    .param p2, "position"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->setCategoryType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 439
    iput p2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mCurrentNaviPos:I

    .line 442
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 445
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v0, p2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setCurrentItem(I)V

    .line 457
    return-void
.end method


# virtual methods
.method public getCurrentFragment()Landroid/app/Fragment;
    .registers 4

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-nez v2, :cond_c

    .line 303
    const-string v2, "NavigationListActivity:mViewPager NULL"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x0

    .line 311
    :goto_b
    return-object v2

    .line 307
    :cond_c
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getCurrentItem()I

    move-result v0

    .line 309
    .local v0, "currentItem":I
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    invoke-virtual {v2, v0}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    move-object v2, v1

    .line 311
    goto :goto_b
.end method

.method public getCurrentFragments()[Landroid/app/Fragment;
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-nez v4, :cond_10

    .line 322
    const-string v4, "NavigationListActivity:mViewPager NULL"

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    move-object v2, v3

    .line 354
    :cond_f
    :goto_f
    return-object v2

    .line 326
    :cond_10
    const/4 v4, 0x3

    new-array v2, v4, [Landroid/app/Fragment;

    .line 327
    .local v2, "fragmentList":[Landroid/app/Fragment;
    aput-object v3, v2, v5

    .line 328
    aput-object v3, v2, v6

    .line 329
    aput-object v3, v2, v7

    .line 331
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getCurrentItem()I

    move-result v0

    .line 333
    .local v0, "currentItem":I
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_2f

    .line 335
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    .line 337
    if-eqz v1, :cond_2f

    .line 338
    aput-object v1, v2, v5

    .line 341
    :cond_2f
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_39

    .line 344
    aput-object v1, v2, v6

    .line 346
    :cond_39
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_f

    .line 348
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;->getFragment(I)Landroid/app/Fragment;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_f

    .line 351
    aput-object v1, v2, v7

    goto :goto_f
.end method

.method public getCurrentPageInfo()Lcom/pantech/app/music/list/PageInfoType;
    .registers 4

    .prologue
    .line 274
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    if-nez v1, :cond_7

    .line 275
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 282
    :goto_6
    return-object v1

    .line 277
    :cond_7
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getNaviInfo(I)Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    move-result-object v0

    .line 279
    .local v0, "naviInfo":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    if-eqz v0, :cond_18

    .line 280
    iget-object v1, v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    goto :goto_6

    .line 282
    :cond_18
    const/4 v1, 0x0

    goto :goto_6
.end method

.method protected initPager()V
    .registers 4

    .prologue
    .line 510
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    .line 512
    new-instance v0, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    invoke-direct {v0, p0, v1, v2}, Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    .line 513
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNavFragmentAdapter:Lcom/pantech/app/music/list/activity/navi/NavFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 516
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setFocusable(Z)V

    .line 517
    return-void
.end method

.method public isCurrentFragment(Landroid/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getCurrentFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 238
    packed-switch p1, :pswitch_data_12

    .line 245
    :cond_6
    :goto_6
    return-void

    .line 241
    :pswitch_7
    if-eqz p3, :cond_6

    .line 242
    const-string v0, "com.pantech.app.music.extras.subactivity.rotation.groupid"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mForceExpandChildGroupID:Ljava/lang/String;

    goto :goto_6

    .line 238
    :pswitch_data_12
    .packed-switch 0x3
        :pswitch_7
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    new-instance v2, Lcom/pantech/app/music/list/activity/NavigationListActivity$NavigationHandler;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity$NavigationHandler;-><init>(Lcom/pantech/app/music/list/activity/NavigationListActivity;)V

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    .line 71
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v2, 0x7f03004a

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->setContentView(I)V

    .line 75
    new-instance v2, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;-><init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;)V

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    .line 78
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getNaviItemList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->initNaviList(Ljava/util/ArrayList;)V

    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->initPager()V

    .line 85
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->initActionbar(Landroid/app/ActionBar;)V

    .line 88
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->initActionbarToggle()V

    .line 92
    if-eqz p1, :cond_68

    .line 94
    const-string v2, "oldNaviPos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "oldNaviPos":I
    :goto_37
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getNaviInfo(I)Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    move-result-object v0

    .line 103
    .local v0, "info":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    const-string v2, "VMusicNavi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OldNavigationPosition-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->setFragment(Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;I)V

    .line 106
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f1000dd

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/library/IListMiniPlayer;

    iput-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    .line 109
    return-void

    .line 98
    .end local v0    # "info":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    .end local v1    # "oldNaviPos":I
    :cond_68
    invoke-static {p0}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getPrefCategory(Landroid/content/Context;)I

    move-result v1

    .restart local v1    # "oldNaviPos":I
    goto :goto_37
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 251
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isOverflowMenuAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 253
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 256
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mCurrentNaviPos:I

    invoke-static {p0, v0}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->setPrefCategory(Landroid/content/Context;I)V

    .line 125
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->clearMessage()V

    .line 127
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 262
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isOverflowMenuAlwaysVisible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 264
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->initActionbar(Landroid/app/ActionBar;)V

    .line 267
    :cond_d
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 268
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .param p2, "view"    # Landroid/view/View;
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
    .line 207
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v2, "VMusicNavi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Navi onItemClick: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviAdapter:Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;

    invoke-virtual {v2, p3}, Lcom/pantech/app/music/list/activity/navi/ListNaviDrawerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 211
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_3d

    move-object v0, v1

    .line 213
    check-cast v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    .line 216
    .local v0, "info":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    iget-object v2, v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mItemName:Ljava/lang/String;

    const v3, 0x7f08019e

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 218
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startSettings(Landroid/app/Activity;Z)V

    .line 219
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 230
    .end local v0    # "info":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    :cond_3d
    :goto_3d
    return-void

    .line 225
    .restart local v0    # "info":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    :cond_3e
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mViewPager:Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;

    invoke-virtual {v2, p3}, Lcom/pantech/app/music/list/component/view/ScrollLockViewPager;->setCurrentItem(I)V

    .line 228
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_3d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .registers 4
    .param p1, "arg0"    # I

    .prologue
    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrollStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageScrolled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public onPageSelected(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPageSelected ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->invalidateOptionsMenu()V

    .line 608
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    invoke-virtual {v3, p1}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getNaviInfo(I)Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    move-result-object v1

    .line 609
    .local v1, "info":Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    iget-object v3, v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    .line 612
    .local v0, "currentCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/list/PageInfoType;->setCategoryType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)V

    .line 615
    iput p1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mCurrentNaviPos:I

    .line 618
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 621
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mItemName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 623
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 625
    const-string v3, "com.pantech.app.music.preference.category"

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;I)V

    .line 628
    :cond_54
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->onPageSelectedInternal(I)Z

    move-result v3

    if-nez v3, :cond_68

    .line 630
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, p1}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 631
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 634
    .end local v2    # "msg":Landroid/os/Message;
    :cond_68
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onPause()V

    .line 175
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mNaviListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    .line 116
    .local v0, "drawerOpen":Z
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onRestart()V

    .line 168
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onResume()V

    .line 161
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    const-string v0, "VMusicNavi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Navi onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mCurrentNaviPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "oldNaviPos"

    iget v1, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mCurrentNaviPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 153
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onStart()V

    .line 154
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onStop()V

    .line 182
    return-void
.end method

.method protected triggerForCloud(Ljava/lang/Object;I)V
    .registers 13
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, -0x64

    const/16 v6, -0x65

    const/4 v5, 0x0

    .line 362
    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mListNaviInfo:Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getPositionOfCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getFragment(I)Landroid/app/Fragment;

    move-result-object v0

    .line 364
    .local v0, "fragment":Landroid/app/Fragment;
    const-string v3, "uplus_sessionid_pref"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/music/list/activity/NavigationListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 366
    .local v1, "session_prefs":Landroid/content/SharedPreferences;
    if-nez v0, :cond_24

    .line 368
    const-string v3, "VMusicNavi"

    const-string v4, " fragment is null"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v0    # "fragment":Landroid/app/Fragment;
    :cond_23
    :goto_23
    return-void

    .line 370
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_24
    instance-of v3, v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/NavigationListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v3, v4, :cond_23

    .line 372
    const/4 v2, 0x0

    .line 374
    .local v2, "sessionid":Ljava/lang/String;
    if-ne p2, v8, :cond_3f

    .line 376
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    check-cast v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, v2, v8}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->triggerByActivity(Ljava/lang/Object;I)V

    goto :goto_23

    .line 379
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_3f
    if-ne p2, v9, :cond_47

    .line 381
    check-cast v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, v5, v9}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->triggerByActivity(Ljava/lang/Object;I)V

    goto :goto_23

    .line 383
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_47
    const/4 v3, 0x2

    if-ne p2, v3, :cond_55

    .line 385
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    check-cast v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->triggerByActivity(Ljava/lang/Object;I)V

    goto :goto_23

    .line 388
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_55
    if-ne p2, v6, :cond_5d

    .line 390
    check-cast v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, v5, v6}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->triggerByActivity(Ljava/lang/Object;I)V

    goto :goto_23

    .line 392
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_5d
    if-ne p2, v7, :cond_69

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    check-cast v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v0, v2, v7}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->triggerByActivity(Ljava/lang/Object;I)V

    goto :goto_23

    .line 397
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_69
    const/16 v3, 0x65

    if-ne p2, v3, :cond_23

    .line 399
    const-string v3, "key_uplus_sessionid"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    check-cast v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    const/16 v3, 0x65

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->triggerByActivity(Ljava/lang/Object;I)V

    goto :goto_23
.end method
