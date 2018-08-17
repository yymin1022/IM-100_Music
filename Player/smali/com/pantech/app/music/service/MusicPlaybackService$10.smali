.class Lcom/pantech/app/music/service/MusicPlaybackService$10;
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
    .line 664
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, "isMusicActive":Z
    const/4 v5, 0x0

    .line 670
    .local v5, "isWiredHeaset":Z
    const-class v6, Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v7}, Lcom/pantech/app/music/common/MusicUtils;->GetClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 671
    .local v0, "isAudioPreview":Z
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v7, "com.pantech.app.tdmb"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/ActivityUtils;->isAppForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 672
    .local v3, "isTDMB":Z
    invoke-static {}, Lcom/pantech/app/music/utils/CameraUtils;->isWorking()Z

    move-result v1

    .line 673
    .local v1, "isCAMERA":Z
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v7, "com.pantech.app.tdmb"

    const-string v8, "com.pantech.app.tdmb.DmbAotPlayer"

    invoke-static {v6, v7, v8}, Lcom/pantech/app/music/utils/ActivityUtils;->isAppClass(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 675
    .local v4, "isTDMBAOT":Z
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1800(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/media/AudioManager;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 676
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1800(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    .line 677
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1800(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    .line 680
    :cond_44
    if-eqz v5, :cond_bc

    .line 681
    if-nez v0, :cond_4a

    if-eqz v1, :cond_6d

    .line 682
    :cond_4a
    const-string v6, "MusicPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->audiopreview:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", camera:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_6c
    return-void

    .line 683
    :cond_6d
    if-nez v3, :cond_71

    if-eqz v4, :cond_94

    .line 684
    :cond_71
    const-string v6, "MusicPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->TDMB:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", TDMBAOT:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 685
    :cond_94
    if-eqz v2, :cond_af

    .line 686
    const-string v6, "MusicPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->isMusicActive:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    .line 688
    :cond_af
    const-string v6, "MusicPlaybackService"

    const-string v7, "=>AUTO Plug & Play"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$10;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->playRequest()V

    goto :goto_6c

    .line 692
    :cond_bc
    const-string v6, "MusicPlaybackService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->isWiredHeaset:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c
.end method
