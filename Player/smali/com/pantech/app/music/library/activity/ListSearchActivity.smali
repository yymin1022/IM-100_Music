.class public Lcom/pantech/app/music/library/activity/ListSearchActivity;
.super Lcom/pantech/app/music/library/activity/ListBaseActivity;
.source "ListSearchActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ListSearchActivity"


# instance fields
.field mInitQueryString:Ljava/lang/String;

.field mMainLayout:Landroid/view/View;

.field mSearchHistoryView:Landroid/view/View;

.field mSearchResultView:Landroid/view/View;

.field mSearchView:Landroid/support/v7/widget/SearchView;

.field mSearchViewText:Landroid/support/v7/widget/SearchView$SearchAutoComplete;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/library/activity/ListSearchActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/library/activity/ListSearchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->setSearchHistoryView(Ljava/lang/String;)V

    return-void
.end method

.method private setSearchHistoryView(Ljava/lang/String;)V
    .registers 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 269
    if-eqz p1, :cond_d

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 270
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchHistoryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchResultView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :goto_17
    return-void

    .line 273
    :cond_18
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchHistoryView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchResultView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method

.method private setSearchViewOption(Landroid/support/v7/widget/SearchView;)V
    .registers 6
    .param p1, "searchView"    # Landroid/support/v7/widget/SearchView;

    .prologue
    const/4 v3, 0x1

    .line 204
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 206
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 207
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 208
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 209
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->onActionViewExpanded()V

    .line 213
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    if-eqz v1, :cond_47

    .line 214
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 215
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->setSearchHistoryView(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getFragment()Lcom/pantech/app/music/library/IListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/music/library/IListFragment;->onQueryTextChange(Ljava/lang/String;Z)V

    .line 219
    :cond_47
    new-instance v1, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;-><init>(Lcom/pantech/app/music/library/activity/ListSearchActivity;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 266
    return-void
.end method


# virtual methods
.method public attachFragment(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f1000e1

    const v8, 0x7f1000d5

    .line 125
    const v6, 0x7f03004c

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->setContentView(I)V

    .line 127
    const v6, 0x7f1000d4

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mMainLayout:Landroid/view/View;

    .line 128
    invoke-virtual {p0, v8}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchResultView:Landroid/view/View;

    .line 129
    invoke-virtual {p0, v9}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchHistoryView:Landroid/view/View;

    .line 131
    iget-object v6, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchHistoryView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v6, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchResultView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 135
    const v6, 0x7f1000e0

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    .line 136
    .local v4, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-eqz v4, :cond_5b

    .line 137
    invoke-static {p0}, Lcom/pantech/app/music/utils/ColorUtils;->getTitleColor(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 138
    invoke-virtual {p0, v4}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 139
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 140
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_5b

    .line 141
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0201d9

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_5b
    if-nez p1, :cond_c3

    .line 158
    new-instance v3, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_GROUPS:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v7, ""

    invoke-direct {v3, v6, v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;Ljava/lang/String;)V

    .line 159
    .local v3, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/16 v6, 0x100

    invoke-virtual {v3, v6}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 162
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "bundle.key.fragment"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 164
    const-class v6, Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    .line 166
    .local v2, "fragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 167
    .local v5, "transaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v5, v8, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 168
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 171
    new-instance v3, Lcom/pantech/app/music/library/FragmentInfo;

    .end local v3    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_HISTORY:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v7, 0x7f0800e3

    invoke-direct {v3, v6, v7}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;I)V

    .line 172
    .restart local v3    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 174
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "bundle":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 175
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v6, "bundle.key.fragment"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    const-class v6, Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    .line 178
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    .line 179
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_HISTORY:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo$Category;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v9, v2, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 180
    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 182
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/app/Fragment;
    .end local v3    # "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    .end local v5    # "transaction":Landroid/app/FragmentTransaction;
    :cond_c3
    return-void
.end method

.method public detachFragment()V
    .registers 1

    .prologue
    .line 186
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
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method getFragment()Lcom/pantech/app/music/library/IListFragment;
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

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
    .line 190
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mMainLayout:Landroid/view/View;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 105
    const-string v0, "ListSearchActivity"

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

    .line 106
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 107
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 119
    const-string v0, "ListSearchActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 121
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    const-string v1, "ListSearchActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3d

    .line 51
    const-string v1, "ListSearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "->action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 53
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    .line 69
    :cond_3d
    :goto_3d
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    return-void

    .line 55
    :cond_41
    const-string v1, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 57
    const-string v1, "extras.searchFromPlayback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 60
    const-string v1, "android.intent.extra.artist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 61
    const-string v1, "android.intent.extra.artist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    goto :goto_3d

    .line 63
    :cond_67
    const-string v1, "android.intent.extra.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    goto :goto_3d

    .line 66
    :cond_70
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mInitQueryString:Ljava/lang/String;

    goto :goto_3d
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 74
    const-string v0, "ListSearchActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPause()V

    .line 90
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    if-eqz v1, :cond_21

    .line 91
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 92
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 93
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 95
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_21
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 111
    const-string v0, "ListSearchActivity"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const v0, 0x7f1001fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SearchView;

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    .line 113
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->setSearchViewOption(Landroid/support/v7/widget/SearchView;)V

    .line 114
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 80
    const-string v0, "ListSearchActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStart()V

    .line 82
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 99
    const-string v0, "ListSearchActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->onStop()V

    .line 101
    return-void
.end method

.method public requestSearchQuery(Ljava/lang/String;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 281
    invoke-super {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->requestSearchQuery(Ljava/lang/String;)V

    .line 282
    return-void
.end method
