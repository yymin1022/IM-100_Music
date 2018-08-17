.class Lcom/pantech/app/music/list/fragment/SearchListFragment$1;
.super Ljava/lang/Object;
.source "SearchListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/SearchListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/SearchListFragment;)V
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 10
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 250
    const-string v5, "VMusicSearchTag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onQueryTextChange: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v5, "##1475#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.app.music.action.DRM_HIDDEN_INIT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v1, "launchDelayed":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 294
    .end local v1    # "launchDelayed":Landroid/content/Intent;
    :goto_3b
    return v4

    .line 259
    :cond_3c
    const-string v5, "##3695#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 261
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.app.music.action.DRM_HIDDEN_SERVER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .restart local v1    # "launchDelayed":Landroid/content/Intent;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_3b

    .line 265
    .end local v1    # "launchDelayed":Landroid/content/Intent;
    :cond_5e
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v5

    if-nez v5, :cond_6c

    const-string v5, "##1#"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    :cond_6c
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v5

    if-eqz v5, :cond_c2

    const-string v5, "##1#@@"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c2

    .line 267
    :cond_7a
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "devMenuEnable"

    invoke-static {v5, v6, v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 269
    .local v0, "devMode":Z
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "devMenuEnable"

    if-nez v0, :cond_91

    move v3, v4

    :cond_91
    invoke-static {v5, v6, v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 271
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "developer setting menu "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_bf

    const-string v3, "closed "

    :goto_a9
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3b

    .line 271
    :cond_bf
    const-string v3, "opened"

    goto :goto_a9

    .line 280
    .end local v0    # "devMode":Z
    :cond_c2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ec

    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v5}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-static {v6}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->access$000(Lcom/pantech/app/music/list/fragment/SearchListFragment;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/db/SearchHistoryManager;->checkHistoryIsEmpty(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_ec

    .line 282
    iget-object v5, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget-object v5, v5, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 289
    :goto_e1
    invoke-static {p1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "searchKeyword":Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    invoke-virtual {v3, v2}, Lcom/pantech/app/music/list/fragment/SearchListFragment;->doSearch(Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 286
    .end local v2    # "searchKeyword":Ljava/lang/String;
    :cond_ec
    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/SearchListFragment;

    iget-object v3, v3, Lcom/pantech/app/music/list/fragment/SearchListFragment;->mSeachHistoryListView:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_e1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 5
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v0, "VMusicSearchTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryTextSubmit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/fragment/SearchListFragment$1;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
