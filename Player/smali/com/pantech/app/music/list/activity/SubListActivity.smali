.class public Lcom/pantech/app/music/list/activity/SubListActivity;
.super Lcom/pantech/app/music/list/activity/SelectableListActivity;
.source "SubListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/SubListActivity$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubListActivity"


# instance fields
.field mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

.field mListLayer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;-><init>()V

    .line 289
    return-void
.end method

.method private createHeader()V
    .registers 8

    .prologue
    const v5, 0x7f1000e7

    const/4 v1, 0x2

    .line 189
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSublistHeaderVisible()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 200
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3a

    .line 202
    new-instance v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/activity/SubListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/IListMiniPlayer;Lcom/pantech/app/music/list/PageInfoType;Ljava/lang/String;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    .line 211
    :goto_34
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->update()V

    .line 222
    :cond_39
    :goto_39
    return-void

    .line 207
    :cond_3a
    new-instance v0, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v4

    const v1, 0x7f1000e5

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/SubListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;-><init>(Landroid/content/Context;Lcom/pantech/app/music/library/IListMiniPlayer;Lcom/pantech/app/music/list/PageInfoType;Ljava/lang/String;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    goto :goto_34

    .line 215
    :cond_56
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_39

    .line 217
    invoke-virtual {p0, v5}, Lcom/pantech/app/music/list/activity/SubListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 218
    .local v6, "headerView":Landroid/view/ViewGroup;
    if-eqz v6, :cond_39

    .line 219
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_39
.end method

.method private updateHeader()V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSublistHeaderVisible()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 228
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    if-eqz v0, :cond_1b

    .line 229
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mActionModeHelper:Lcom/pantech/app/music/list/component/ActionModeHelper;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/ActionModeHelper;->getActionModeCommand()Lcom/pantech/app/music/list/component/ActionModeCommandBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->setActionModeCommand(Lcom/pantech/app/music/list/component/ActionModeCommandBar;)V

    .line 231
    :cond_1b
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    if-eqz v0, :cond_24

    .line 232
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->update()V

    .line 234
    :cond_24
    return-void
.end method


# virtual methods
.method public getArgument(Lcom/pantech/app/music/list/PageInfoType;)Landroid/os/Bundle;
    .registers 5
    .param p1, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "arguments":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 143
    const-string v1, "com.pantech.app.music.extras.listinfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    const-string v1, "com.pantech.app.music.extras.orientation"

    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    return-object v0
.end method

.method public getCurrentFragment()Landroid/app/Fragment;
    .registers 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getCurrentFragments()[Landroid/app/Fragment;

    move-result-object v0

    .line 314
    .local v0, "tmp":[Landroid/app/Fragment;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_7
.end method

.method public getCurrentFragments()[Landroid/app/Fragment;
    .registers 5

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 323
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const v3, 0x7f1000e6

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 325
    .local v0, "fragment":Landroid/app/Fragment;
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/app/Fragment;

    .line 327
    .local v2, "list":[Landroid/app/Fragment;
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 329
    return-object v2
.end method

.method public getHeader()Lcom/pantech/app/music/list/component/DetailedListHeaderBar;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    return-object v0
.end method

.method protected getMainLayout()I
    .registers 2

    .prologue
    .line 136
    const v0, 0x7f030051

    return v0
.end method

.method public initiateFragment()V
    .registers 8

    .prologue
    const v6, 0x7f1000e6

    .line 153
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 154
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 156
    .local v3, "fragmentTransaction":Landroid/app/FragmentTransaction;
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 158
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/activity/SubListActivity;->getArgument(Lcom/pantech/app/music/list/PageInfoType;)Landroid/os/Bundle;

    move-result-object v0

    .line 159
    .local v0, "argument":Landroid/os/Bundle;
    const-class v4, Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 160
    .local v1, "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 161
    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 162
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 180
    :goto_30
    return-void

    .line 164
    .end local v0    # "argument":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_31
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 166
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/activity/SubListActivity;->getArgument(Lcom/pantech/app/music/list/PageInfoType;)Landroid/os/Bundle;

    move-result-object v0

    .line 167
    .restart local v0    # "argument":Landroid/os/Bundle;
    const-class v4, Lcom/pantech/app/music/list/fragment/NowplayingFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 168
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 170
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_30

    .line 174
    .end local v0    # "argument":Landroid/os/Bundle;
    .end local v1    # "fragment":Landroid/app/Fragment;
    :cond_55
    iget-object v4, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {p0, v4}, Lcom/pantech/app/music/list/activity/SubListActivity;->getArgument(Lcom/pantech/app/music/list/PageInfoType;)Landroid/os/Bundle;

    move-result-object v0

    .line 175
    .restart local v0    # "argument":Landroid/os/Bundle;
    const-class v4, Lcom/pantech/app/music/list/fragment/ListFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v1

    .line 176
    .restart local v1    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 178
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_30
.end method

.method public isCurrentFragment(Landroid/app/Fragment;)Z
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 301
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 112
    const-string v0, "SubListActivity"

    const-string v1, "onActivityResult()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    packed-switch p1, :pswitch_data_12

    .line 120
    :goto_d
    return-void

    .line 117
    :pswitch_e
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/app/music/list/activity/SubListActivity;->mISFromSetting:Z

    goto :goto_d

    .line 114
    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_e
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1, p0}, Lcom/pantech/app/music/list/PageInfoType;->getTitleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    :cond_16
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f1000e6

    .line 39
    const-string v1, "SubListActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;-><init>(Lcom/pantech/app/music/list/activity/BaseListActivity;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHandler:Lcom/pantech/app/music/list/activity/BaseListActivity$MainHandler;

    .line 42
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f030051

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/SubListActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/list/activity/SubListActivity;->setActionBar(Landroid/app/ActionBar;)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/pantech/app/music/list/activity/SubListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mListLayer:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 50
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_36

    .line 51
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->initiateFragment()V

    .line 54
    :cond_36
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1000dd

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/library/IListMiniPlayer;

    iput-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    .line 55
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    if-eqz v1, :cond_49

    .line 64
    :cond_49
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->createHeader()V

    .line 76
    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 400
    invoke-super {p0, p1, p2}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 402
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    if-eqz v1, :cond_d

    .line 403
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->updatePlayBtn()V

    .line 409
    :cond_d
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 410
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->updateHeader()V

    .line 412
    :cond_1d
    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 334
    const-string v2, "SubListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v4}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 336
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 337
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f11000b

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 338
    const/4 v1, 0x1

    .line 352
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_33
    :goto_33
    return v1

    .line 341
    :cond_34
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 343
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 350
    :cond_56
    or-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 106
    const-string v0, "SubListActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onDestroy()V

    .line 108
    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 420
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    if-eqz v0, :cond_c

    .line 421
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mHeader:Lcom/pantech/app/music/list/component/DetailedListHeaderBar;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/component/DetailedListHeaderBar;->updatePlayBtn()V

    .line 424
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 425
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->updateHeader()V

    .line 426
    :cond_1c
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 366
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 394
    :goto_e
    return v0

    .line 380
    :cond_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f1001ff

    if-ne v1, v2, :cond_36

    .line 382
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 384
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startAddFavorites(Landroid/app/Activity;)V

    goto :goto_e

    .line 389
    :cond_26
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/pantech/app/music/list/utility/LaunchActivity;->startAddPlaylist(Landroid/app/Activity;Lcom/pantech/app/music/list/PageInfoType;J)V

    goto :goto_e

    .line 394
    :cond_36
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_e
.end method

.method public onPlayingQueueChanged(I)V
    .registers 4
    .param p1, "queueSize"    # I

    .prologue
    .line 431
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onPlayingQueueChanged(I)V

    .line 433
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 434
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->updateHeader()V

    .line 435
    :cond_13
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 357
    const-string v0, "SubListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareOptionsMenu:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 359
    const/4 v0, 0x1

    .line 361
    :goto_29
    return v0

    :cond_2a
    invoke-super {p0, p1}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_29
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 80
    const-string v0, "SubListActivity"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->updateHeader()V

    .line 87
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->invalidateOptionsMenu()V

    .line 89
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onRestart()V

    .line 90
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 94
    const-string v0, "SubListActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onStart()V

    .line 96
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 100
    const-string v0, "SubListActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super {p0}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->onStop()V

    .line 102
    return-void
.end method

.method protected setActionBar(Landroid/app/ActionBar;)V
    .registers 7
    .param p1, "actionbar"    # Landroid/app/ActionBar;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 246
    if-nez p1, :cond_5

    .line 296
    :cond_4
    :goto_4
    return-void

    .line 247
    :cond_5
    const-string v2, "SubListActivity"

    const-string v3, "setActionBar()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isNavigationDrawerUsed()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 250
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 251
    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 263
    :goto_18
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isSearch()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 265
    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 266
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 294
    :goto_2a
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->isLayerCategory()Z

    move-result v2

    if-nez v2, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/pantech/app/music/list/activity/SubListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 255
    :cond_41
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 256
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 259
    :goto_4a
    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_18

    .line 258
    :cond_4e
    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_4a

    .line 270
    :cond_52
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 271
    invoke-virtual {p1, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 273
    sget-object v2, Lcom/pantech/app/music/list/activity/SubListActivity$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a2

    .line 285
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->isLayerCategory()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 286
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_2a

    .line 279
    :pswitch_75
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "groupID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 282
    .local v1, "nGroupID":I
    :goto_81
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 280
    .end local v1    # "nGroupID":I
    :cond_8f
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_81

    .line 288
    .end local v0    # "groupID":Ljava/lang/String;
    :cond_98
    iget-object v2, p0, Lcom/pantech/app/music/list/activity/SubListActivity;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v2, p0}, Lcom/pantech/app/music/list/PageInfoType;->getTitleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2a

    .line 273
    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_75
        :pswitch_75
        :pswitch_75
        :pswitch_75
    .end packed-switch
.end method

.method protected triggerForCloud(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "type"    # I

    .prologue
    .line 307
    return-void
.end method

.method public updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "nSelectedCount"    # I
    .param p3, "selectState"    # I

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/list/activity/SelectableListActivity;->updateSelectionMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;II)Z

    move-result v0

    return v0
.end method
