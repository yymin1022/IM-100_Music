.class Lcom/pantech/app/music/library/activity/ListBaseActivity$1;
.super Ljava/lang/Object;
.source "ListBaseActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ListBaseActivity;->bindToMusicService()V
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
    .line 252
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 255
    const-string v1, "ListBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ListBaseActivity.this.isFinishing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 258
    const-string v1, "ListBaseActivity"

    const-string v2, "RETURN: ListBaseActivity.this.isFinishing() = true"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    :goto_2d
    return-void

    .line 262
    :cond_2e
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v2

    iput-object v2, v1, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 265
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    if-eqz v1, :cond_67

    .line 266
    const-string v1, "ListBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMiniPlayer.isActivated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v3, v3, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    invoke-interface {v3}, Lcom/pantech/app/music/library/IListMiniPlayer;->isActivated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v2, v2, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, v2}, Lcom/pantech/app/music/library/IListMiniPlayer;->onServiceConnected(Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    .line 271
    :cond_67
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getAlbumID()J

    move-result-wide v2

    iget-object v4, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getMainLayoutView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->setBackgroundWithColor(JLandroid/view/View;)V

    .line 274
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getFragment()Lcom/pantech/app/music/library/IListFragment;

    move-result-object v0

    .line 275
    .local v0, "iFragment":Lcom/pantech/app/music/library/IListFragment;
    if-eqz v0, :cond_8d

    .line 276
    const-string v1, "ListBaseActivity"

    const-string v2, "iFragment != null"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_85
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    iget-object v1, v1, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListFragment;->onServiceConnected(Lcom/pantech/app/music/service/IMusicPlaybackService;)V

    goto :goto_2d

    .line 278
    :cond_8d
    const-string v1, "ListBaseActivity"

    const-string v2, "iFragment == null"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 286
    return-void
.end method
