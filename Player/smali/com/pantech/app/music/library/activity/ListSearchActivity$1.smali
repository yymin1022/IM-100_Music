.class Lcom/pantech/app/music/library/activity/ListSearchActivity$1;
.super Ljava/lang/Object;
.source "ListSearchActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ListSearchActivity;->setSearchViewOption(Landroid/support/v7/widget/SearchView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListSearchActivity;)V
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 5
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 235
    const-string v0, "ListSearchActivity"

    const-string v1, "onQueryTextChange"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getFragment()Lcom/pantech/app/music/library/IListFragment;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Lcom/pantech/app/music/library/IListFragment;->onQueryTextChange(Ljava/lang/String;Z)V

    .line 237
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;

    invoke-static {v0, p1}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->access$000(Lcom/pantech/app/music/library/activity/ListSearchActivity;Ljava/lang/String;)V

    .line 238
    return v2
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 6
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 222
    const-string v1, "ListSearchActivity"

    const-string v2, "onQueryTextSubmit"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getFragment()Lcom/pantech/app/music/library/IListFragment;

    move-result-object v1

    invoke-interface {v1, p1, v3}, Lcom/pantech/app/music/library/IListFragment;->onQueryTextChange(Ljava/lang/String;Z)V

    .line 224
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;

    sget-object v2, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->LOCAL_URI:Landroid/net/Uri;

    invoke-static {v1, v2, p1}, Lcom/pantech/app/music/db/SearchHistoryManager;->checkAndUpdateHistoryKeyword(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ListSearchActivity;->mSearchResultView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 228
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListSearchActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListSearchActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/activity/ListSearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1000e1

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/IListFragment;

    .line 229
    .local v0, "iListFragment":Lcom/pantech/app/music/library/IListFragment;
    invoke-interface {v0, p1, v3}, Lcom/pantech/app/music/library/IListFragment;->onQueryTextChange(Ljava/lang/String;Z)V

    .line 230
    const/4 v1, 0x0

    return v1
.end method
