.class public Lcom/pantech/app/music/library/activity/ListSelectActivity;
.super Lcom/pantech/app/music/library/activity/ListBaseActivity;
.source "ListSelectActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListSelectActivity"


# instance fields
.field mActionModeStarted:Z

.field mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

.field mMainLayout:Landroid/view/View;

.field mPlaylistID:J

.field mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public attachFragment(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 137
    const-string v0, "ListSelectActivity"

    const-string v1, "attachFragment()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 144
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_1e

    .line 145
    const-string v0, "playlist_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v6, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mPlaylistID:J

    .line 149
    :cond_1e
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/Toolbar;

    .line 150
    .local v7, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-static {p0}, Lcom/pantech/app/music/utils/ColorUtils;->getTitleColor(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 151
    invoke-virtual {p0, v7}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 154
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mMainLayout:Landroid/view/View;

    .line 155
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/component/ExtendViewPager;

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    .line 156
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/component/ExtendViewPager;->setPageFixed(Z)V

    .line 159
    new-instance v0, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSelectActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    iget-wide v4, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mPlaylistID:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;ZJ)V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    .line 160
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/component/ExtendViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/component/ExtendViewPager;->setFocusable(Z)V

    .line 163
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    new-instance v1, Lcom/pantech/app/music/library/activity/ListSelectActivity$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/activity/ListSelectActivity$2;-><init>(Lcom/pantech/app/music/library/activity/ListSelectActivity;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/component/ExtendViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 175
    return-void
.end method

.method public detachFragment()V
    .registers 1

    .prologue
    .line 179
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
    .line 193
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;->getFragments()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getFragment()Lcom/pantech/app/music/library/IListFragment;
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mListFragmentAdapter:Lcom/pantech/app/music/list/activity/tab/ListFragmentPagerAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

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
    .line 183
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v0, "ListSelectActivity"

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

    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 80
    const-string v0, "ListSelectActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const-string v0, "ListSelectActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 44
    const-string v0, "ListSelectActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onDestroy()V

    .line 46
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 86
    const-string v0, "ListSelectActivity"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onLowMemory()V

    .line 88
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 68
    const-string v0, "ListSelectActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPause()V

    .line 70
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 50
    const-string v0, "ListSelectActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onRestart()V

    .line 52
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    const-string v0, "ListSelectActivity"

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onResume()V

    .line 63
    const-string v0, "ListSelectActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const-string v0, "ListSelectActivity"

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStart()V

    .line 57
    const-string v0, "ListSelectActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 74
    const-string v0, "ListSelectActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStop()V

    .line 76
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .registers 6
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mActionModeStarted:Z

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pantech/app/music/library/activity/ListSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/activity/ListSelectActivity$1;-><init>(Lcom/pantech/app/music/library/activity/ListSelectActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 133
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .registers 3
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mActionModeStarted:Z

    .line 119
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 120
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 110
    const-string v0, "ListSelectActivity"

    const-string v1, "onUserLeaveHint()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onUserLeaveHint()V

    .line 112
    return-void
.end method

.method public requestViewPagerPosition(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 198
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    if-eqz v0, :cond_a

    .line 199
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSelectActivity;->mViewPager:Lcom/pantech/app/music/component/ExtendViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/pantech/app/music/component/ExtendViewPager;->setCurrentItem(IZ)V

    .line 201
    :cond_a
    return-void
.end method
