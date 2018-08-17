.class Lcom/pantech/app/music/service/MusicPlaybackService$9;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
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
    .line 615
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 618
    const-string v0, "MusicPlaybackService"

    const-string v1, "========================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "MusicPlaybackService"

    const-string v1, " mOpenAndPlay-start"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string v0, "MusicPlaybackService"

    const-string v1, "========================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$800(Lcom/pantech/app/music/service/MusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 622
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$902(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z

    .line 624
    :cond_24
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    .line 625
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$902(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z

    .line 627
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 628
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 658
    :cond_47
    :goto_47
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1500(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pantech/app/music/drm/MusicDrm;->setIgnoreErrorPopup(Z)V

    .line 659
    const-string v0, "MusicPlaybackService"

    const-string v1, "========================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "MusicPlaybackService"

    const-string v1, " mOpenAndPlay-stop"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v0, "MusicPlaybackService"

    const-string v1, "========================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void

    .line 630
    :cond_66
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1208(Lcom/pantech/app/music/service/MusicPlaybackService;)I

    .line 631
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRetryCount++  in mOpenAndPlay  mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1200(Lcom/pantech/app/music/service/MusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1200(Lcom/pantech/app/music/service/MusicPlaybackService;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_b0

    .line 633
    const-string v0, "MusicPlaybackService"

    const-string v1, "No more next item to play!!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$100(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 635
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const v1, 0x7f080138

    invoke-static {v0, v1, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1400(Lcom/pantech/app/music/service/MusicPlaybackService;IZ)V

    goto :goto_47

    .line 642
    :cond_b0
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1500(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/drm/MusicDrm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/drm/MusicDrm;->isAvailableROUpdate()Z

    move-result v0

    if-nez v0, :cond_47

    .line 644
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$800(Lcom/pantech/app/music/service/MusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1200(Lcom/pantech/app/music/service/MusicPlaybackService;)I

    move-result v0

    if-lez v0, :cond_eb

    .line 645
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, v0, Lcom/pantech/app/music/service/MusicPlaybackService;->mMainControlHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 646
    :try_start_d1
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->next(Z)Z

    .line 647
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d1 .. :try_end_d8} :catchall_e8

    .line 648
    const-string v0, "MusicPlaybackService"

    const-string v1, "openAndPlay()  in mOpenAndPlay"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->openAndPlay(J)V

    goto/16 :goto_47

    .line 647
    :catchall_e8
    move-exception v0

    :try_start_e9
    monitor-exit v1
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0

    .line 650
    :cond_eb
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MultiPlayer;->isOpenFailed()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 651
    const-string v0, "MusicPlaybackService"

    const-string v1, "mOpenAndPlay() isOpenFailed"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1600(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    .line 653
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$9;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1700(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    goto/16 :goto_47
.end method
