.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)V
    .registers 2

    .prologue
    .line 2226
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2229
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "mUpdateAlbumartUIThread"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$2600(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$2500(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$AlbumartAdapter;->updateImageView(ZI)V

    .line 2231
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$2500(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 2236
    .local v0, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$2700(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2237
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->access$2700(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->post(Ljava/lang/Runnable;)Z

    .line 2241
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl$2;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->post(Ljava/lang/Runnable;)Z

    .line 2247
    return-void
.end method
