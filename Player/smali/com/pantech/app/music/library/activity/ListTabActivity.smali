.class public Lcom/pantech/app/music/library/activity/ListTabActivity;
.super Lcom/pantech/app/music/library/activity/ListBaseActivity;
.source "ListTabActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListTabActivity"


# instance fields
.field mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

.field mMainLayout:Landroid/view/View;

.field mTabLayout:Landroid/support/design/widget/TabLayout;

.field mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;-><init>()V

    return-void
.end method

.method private hideTabLayout()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x190

    const v5, 0x10a0006

    const/4 v4, 0x0

    .line 184
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/component/ExtendViewPager;->setPageFixed(Z)V

    .line 186
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 187
    .local v0, "ani1":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 188
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 189
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 192
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 193
    .local v1, "ani2":Landroid/view/animation/Animation;
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 194
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/component/ExtendViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    return-void
.end method

.method private showTabLayout()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x190

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 153
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/component/ExtendViewPager;->setPageFixed(Z)V

    .line 155
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 156
    .local v0, "ani1":Landroid/view/animation/Animation;
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 157
    const v2, 0x10a0005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 158
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 159
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 162
    .local v1, "ani2":Landroid/view/animation/Animation;
    const v2, 0x10a0006

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 163
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 164
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 165
    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v2, v1}, Lcom/pantech/app/music/component/ExtendViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    .line 181
    return-void
.end method


# virtual methods
.method public attachFragment(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 205
    const-string v3, "ListTabActivity"

    const-string v4, "attachFragment()"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const v3, 0x7f030055

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/activity/ListTabActivity;->setContentView(I)V

    .line 210
    const v3, 0x7f1000df

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/activity/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 211
    .local v0, "bubbleTipDummyTouch":Landroid/view/View;
    if-eqz v0, :cond_25

    .line 212
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/PreferenceUtils;->checkTabBubbleTip(Landroid/content/Context;)Z

    .line 213
    new-instance v3, Lcom/pantech/app/music/library/activity/ListTabActivity$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/activity/ListTabActivity$1;-><init>(Lcom/pantech/app/music/library/activity/ListTabActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 223
    :cond_25
    const v3, 0x7f1000e0

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/activity/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 225
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/library/activity/ListTabActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 228
    const v3, 0x7f1000e2

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/activity/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mMainLayout:Landroid/view/View;

    .line 229
    const v3, 0x7f1000db

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/activity/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/component/ExtendViewPager;

    iput-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    .line 230
    const v3, 0x7f1000f5

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/activity/ListTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout;

    iput-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    .line 233
    new-instance v3, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    .line 234
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    iget-object v4, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/component/ExtendViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 235
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/component/ExtendViewPager;->setFocusable(Z)V

    .line 237
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v4, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 238
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-static {p0}, Lcom/pantech/app/music/utils/ColorUtils;->getTitleColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 240
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    new-instance v4, Lcom/pantech/app/music/library/activity/ListTabActivity$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/library/activity/ListTabActivity$2;-><init>(Lcom/pantech/app/music/library/activity/ListTabActivity;)V

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/component/ExtendViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 261
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/PreferenceUtils;->loadCurrentTab(Landroid/content/Context;)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItemPosition(Lcom/pantech/app/music/library/FragmentInfo$Category;)I

    move-result v1

    .line 262
    .local v1, "position":I
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/component/ExtendViewPager;->setCurrentItem(I)V

    .line 263
    return-void
.end method

.method public detachFragment()V
    .registers 1

    .prologue
    .line 267
    return-void
.end method

.method getAllFragments()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getFragments()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getFragment()Lcom/pantech/app/music/library/IListFragment;
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v1}, Lcom/pantech/app/music/component/ExtendViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/IListFragment;

    return-object v0
.end method

.method getMainLayoutView()Landroid/view/View;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 130
    const-string v0, "ListTabActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult()->request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 99
    const-string v0, "ListTabActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const-string v0, "ListTabActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 48
    const-string v0, "ListTabActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/pantech/app/music/library/helper/DuplicateHelper;->clearCursor()V

    .line 51
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onDestroy()V

    .line 52
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 105
    const-string v0, "ListTabActivity"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onLowMemory()V

    .line 107
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .registers 5
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 111
    const-string v0, "ListTabActivity"

    const-string v1, "onMenuOpened()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 87
    const-string v0, "ListTabActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPause()V

    .line 89
    return-void
.end method

.method protected onRestart()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 56
    const-string v1, "ListTabActivity"

    const-string v2, "onRestart"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onRestart()V

    .line 59
    invoke-static {v3}, Lcom/pantech/app/music/utils/PreferenceUtils;->checkChanges(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 60
    invoke-static {v3}, Lcom/pantech/app/music/utils/PreferenceUtils;->resetChanges(I)V

    .line 61
    new-instance v1, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    .line 62
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/component/ExtendViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 63
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 66
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/PreferenceUtils;->loadCurrentTab(Landroid/content/Context;)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getItemPosition(Lcom/pantech/app/music/library/FragmentInfo$Category;)I

    move-result v0

    .line 67
    .local v0, "position":I
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListTabActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/component/ExtendViewPager;->setCurrentItem(I)V

    .line 69
    .end local v0    # "position":I
    :cond_40
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const-string v0, "ListTabActivity"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onResume()V

    .line 80
    const-string v0, "ListTabActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 117
    const-string v0, "ListTabActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStart()V

    .line 74
    const-string v0, "ListTabActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 93
    const-string v0, "ListTabActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStop()V

    .line 95
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->showTabLayout()V

    .line 143
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 144
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .registers 2
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListTabActivity;->hideTabLayout()V

    .line 137
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 138
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 148
    const-string v0, "ListTabActivity"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onUserLeaveHint()V

    .line 150
    return-void
.end method
