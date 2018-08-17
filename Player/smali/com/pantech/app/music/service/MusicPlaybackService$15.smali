.class Lcom/pantech/app/music/service/MusicPlaybackService$15;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;->registerSystemChangeListener()V
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
    .line 1381
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1384
    const-string v4, "MusicPlaybackService"

    const-string v5, "mSystemChangeReceiver()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    if-eqz p2, :cond_4b

    .line 1386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1387
    .local v0, "action":Ljava/lang/String;
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSystemChangeReceiver() action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    const-string v4, "com.pantech.intent.action.PANTECH_SHUTDOWN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1389
    :cond_37
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3000(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 1390
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$100(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 1391
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$2702(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z

    .line 1392
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v3, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3102(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z

    .line 1444
    .end local v0    # "action":Ljava/lang/String;
    :cond_4b
    :goto_4b
    return-void

    .line 1393
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4c
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 1394
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/assist/MusicSensorControl;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 1395
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/assist/MusicSensorControl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/pantech/app/music/assist/MusicSensorControl;->setShakeEnable(Z)V

    goto :goto_4b

    .line 1397
    :cond_66
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1398
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/assist/MusicSensorControl;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 1399
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/assist/MusicSensorControl;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/pantech/app/music/assist/MusicSensorControl;->setShakeEnable(Z)V

    goto :goto_4b

    .line 1401
    :cond_80
    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 1402
    const-string v4, "MusicPlaybackService"

    const-string v5, "Intent.ACTION_AUDIO_BECOMING_NOISY"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3300(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1404
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3402(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z

    .line 1405
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v3, v3, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    new-instance v4, Lcom/pantech/app/music/service/MusicPlaybackService$15$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$15$1;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService$15;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1415
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->pauseRequest()V

    goto :goto_4b

    .line 1417
    :cond_b7
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f5

    .line 1418
    const-string v4, "state"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1419
    .local v2, "state":I
    if-ne v2, v3, :cond_c8

    move v1, v3

    .line 1420
    .local v1, "isHeasetPlugged":Z
    :cond_c8
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent.ACTION_HEADSET_PLUG  state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isHeasetPlugged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->useLastConnection()Z

    move-result v4

    if-ne v4, v3, :cond_4b

    .line 1422
    invoke-static {v3, v1}, Lcom/pantech/app/music/service/MultiPlayer;->setLastConnection(IZ)V

    goto/16 :goto_4b

    .line 1424
    .end local v1    # "isHeasetPlugged":Z
    .end local v2    # "state":I
    :cond_f5
    const-string v3, "android.mtp.action.MTP_DELETE_FILE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1425
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v3, v3, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$2900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1426
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v3, v3, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$15;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$2900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4b
.end method
