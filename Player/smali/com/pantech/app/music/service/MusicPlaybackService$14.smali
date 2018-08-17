.class Lcom/pantech/app/music/service/MusicPlaybackService$14;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;->registerExternalStorageListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 1342
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1345
    if-eqz p2, :cond_49

    .line 1346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=>action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1350
    :cond_2e
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$2700(Lcom/pantech/app/music/service/MusicPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1351
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->isMounted()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1352
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, v1, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$2800(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1362
    .end local v0    # "action":Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 1354
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4a
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, v1, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$2900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1355
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, v1, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$14;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$2900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_49
.end method
