.class Lcom/pantech/app/music/library/activity/ListBaseActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "ListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/activity/ListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_c

    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v3, v3, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-nez v3, :cond_d

    .line 398
    :cond_c
    :goto_c
    return-void

    .line 380
    :cond_d
    const-string v3, "ListBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=>broadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v3, "com.pantech.app.music.infochanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 382
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getAlbumID()J

    move-result-wide v4

    iget-object v6, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getMainLayoutView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->setBackgroundWithColor(JLandroid/view/View;)V

    .line 386
    :cond_3c
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getAllFragments()Ljava/util/Collection;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 387
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getAllFragments()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 388
    .local v1, "fragment":Landroid/app/Fragment;
    check-cast v1, Lcom/pantech/app/music/library/IListFragment;

    .end local v1    # "fragment":Landroid/app/Fragment;
    invoke-interface {v1, p2}, Lcom/pantech/app/music/library/IListFragment;->onPlayingStatusChanged(Landroid/content/Intent;)V

    goto :goto_4e

    .line 391
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_60
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getFragment()Lcom/pantech/app/music/library/IListFragment;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 392
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getFragment()Lcom/pantech/app/music/library/IListFragment;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/pantech/app/music/library/IListFragment;->onPlayingStatusChanged(Landroid/content/Intent;)V

    .line 395
    :cond_71
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v3, v3, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    if-eqz v3, :cond_c

    .line 396
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v3, v3, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    invoke-interface {v3, p2}, Lcom/pantech/app/music/library/IListMiniPlayer;->onPlayingStatusChanged(Landroid/content/Intent;)V

    goto :goto_c
.end method
