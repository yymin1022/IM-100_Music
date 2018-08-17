.class public Lcom/pantech/app/music/library/activity/NowPlayingActivity;
.super Lcom/pantech/app/music/library/activity/ListBaseActivity;
.source "NowPlayingActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NowPlayingActivity"


# instance fields
.field fragmentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/IListFragment;",
            ">;"
        }
    .end annotation
.end field

.field mMainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->fragmentArray:Ljava/util/ArrayList;

    return-void
.end method

.method private setResultForMusicPlayback(Ljava/lang/String;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v1, "NowPlayingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setResultForMusicPlayback() called with: result = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->setResult(ILandroid/content/Intent;)V

    .line 160
    return-void
.end method


# virtual methods
.method public attachFragment(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_7

    .line 125
    :cond_6
    :goto_6
    return-void

    .line 90
    :cond_7
    const v5, 0x7f03004b

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->setContentView(I)V

    .line 92
    const v5, 0x7f1000df

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "bubbleTipDummyTouch":Landroid/view/View;
    if-eqz v0, :cond_25

    .line 94
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/app/music/utils/PreferenceUtils;->checkTabBubbleTip(Landroid/content/Context;)Z

    .line 95
    new-instance v5, Lcom/pantech/app/music/library/activity/NowPlayingActivity$1;

    invoke-direct {v5, p0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity$1;-><init>(Lcom/pantech/app/music/library/activity/NowPlayingActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    :cond_25
    const v5, 0x7f1000d4

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->mMainLayout:Landroid/view/View;

    .line 107
    const v5, 0x7f1000e0

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/Toolbar;

    .line 108
    .local v3, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v3, :cond_43

    .line 109
    invoke-static {p0}, Lcom/pantech/app/music/utils/ColorUtils;->getTitleColor(Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 110
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 117
    :cond_43
    if-nez p1, :cond_6

    .line 118
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 119
    .local v1, "bundle":Landroid/os/Bundle;
    const-class v5, Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    .line 120
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 121
    .local v4, "transaction":Landroid/app/FragmentTransaction;
    const v5, 0x7f1000d5

    invoke-virtual {v4, v5, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 122
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 123
    iget-object v5, p0, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->fragmentArray:Ljava/util/ArrayList;

    check-cast v2, Lcom/pantech/app/music/library/IListFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public detachFragment()V
    .registers 1

    .prologue
    .line 129
    return-void
.end method

.method protected doMiniPlayerButton()V
    .registers 3

    .prologue
    .line 148
    const-string v0, "finish"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->setResultForMusicPlayback(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->finish()V

    .line 150
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->overridePendingTransition(II)V

    .line 153
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
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method getFragment()Lcom/pantech/app/music/library/IListFragment;
    .registers 3

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1000d5

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/IListFragment;

    return-object v0
.end method

.method getMainLayoutView()Landroid/view/View;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v0, "NowPlayingActivity"

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

    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "NowPlayingActivity"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "finish"

    invoke-direct {p0, v0}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->setResultForMusicPlayback(Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onBackPressed()V

    .line 75
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/library/activity/NowPlayingActivity;->overridePendingTransition(II)V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const-string v0, "NowPlayingActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 36
    const-string v0, "NowPlayingActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onDestroy()V

    .line 38
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 54
    const-string v0, "NowPlayingActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPause()V

    .line 56
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPostResume()V

    .line 67
    const-string v0, "NowPlayingActivity"

    const-string v1, "onPostResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 60
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onResume()V

    .line 61
    const-string v0, "NowPlayingActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 42
    const-string v0, "NowPlayingActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStart()V

    .line 44
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 48
    const-string v0, "NowPlayingActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStop()V

    .line 50
    return-void
.end method
