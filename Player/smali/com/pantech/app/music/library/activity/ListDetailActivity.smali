.class public Lcom/pantech/app/music/library/activity/ListDetailActivity;
.super Lcom/pantech/app/music/library/activity/ListBaseActivity;
.source "ListDetailActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListDetailActivity"


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

.field mConfigurationChanged:Z

.field mForceToFinishWhenBackPressed:Z

.field mMainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->mConfigurationChanged:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->fragmentArray:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public attachFragment(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_7

    .line 158
    :cond_6
    :goto_6
    return-void

    .line 121
    :cond_7
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 122
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    .line 124
    const-string v8, "ListDetailActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "->Action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v3, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v8, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_SHORTCUT:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v9, 0x7f080061

    invoke-direct {v3, v8, v9}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;I)V

    .line 127
    .local v3, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 128
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "bundle.key.fragment"

    invoke-virtual {v1, v8, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 130
    const v5, 0x7f030050

    .line 137
    .end local v3    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    .local v5, "layoutResID":I
    :goto_4a
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->setContentView(I)V

    .line 138
    const v8, 0x7f1000d4

    invoke-virtual {p0, v8}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->mMainLayout:Landroid/view/View;

    .line 141
    const v8, 0x7f1000e0

    invoke-virtual {p0, v8}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    .line 142
    .local v6, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v6, :cond_6b

    .line 143
    invoke-static {p0}, Lcom/pantech/app/music/utils/ColorUtils;->getTitleColor(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 144
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 151
    :cond_6b
    if-nez p1, :cond_6

    .line 152
    const-class v8, Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    .line 153
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    .line 154
    .local v7, "transaction":Landroid/app/FragmentTransaction;
    const v8, 0x7f1000d5

    invoke-virtual {v7, v8, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 155
    invoke-virtual {v7}, Landroid/app/FragmentTransaction;->commit()I

    .line 156
    iget-object v8, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->fragmentArray:Ljava/util/ArrayList;

    check-cast v2, Lcom/pantech/app/music/library/IListFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 133
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "layoutResID":I
    .end local v6    # "toolbar":Landroid/support/v7/widget/Toolbar;
    .end local v7    # "transaction":Landroid/app/FragmentTransaction;
    :cond_91
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 134
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const v5, 0x7f030045

    .restart local v5    # "layoutResID":I
    goto :goto_4a
.end method

.method public detachFragment()V
    .registers 1

    .prologue
    .line 162
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
    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method getFragment()Lcom/pantech/app/music/library/IListFragment;
    .registers 3

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

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
    .line 166
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-string v0, "ListDetailActivity"

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

    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 98
    const-string v0, "ListDetailActivity"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->mConfigurationChanged:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->mForceToFinishWhenBackPressed:Z

    if-eqz v0, :cond_1b

    .line 102
    :cond_f
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->finish()V

    .line 105
    :goto_12
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->overridePendingTransition(II)V

    .line 106
    return-void

    .line 104
    :cond_1b
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onBackPressed()V

    goto :goto_12
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->mConfigurationChanged:Z

    .line 71
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 72
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const-string v0, "ListDetailActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    if-eqz p1, :cond_f

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListDetailActivity;->mForceToFinishWhenBackPressed:Z

    .line 42
    :cond_f
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 46
    const-string v0, "ListDetailActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onDestroy()V

    .line 48
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 81
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 78
    :pswitch_c
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListDetailActivity;->onBackPressed()V

    .line 79
    const/4 v0, 0x1

    goto :goto_b

    .line 76
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 64
    const-string v0, "ListDetailActivity"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPause()V

    .line 66
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPostResume()V

    .line 93
    const-string v0, "ListDetailActivity"

    const-string v1, "onPostResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onResume()V

    .line 87
    const-string v0, "ListDetailActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 52
    const-string v0, "ListDetailActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStart()V

    .line 54
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 58
    const-string v0, "ListDetailActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStop()V

    .line 60
    return-void
.end method
