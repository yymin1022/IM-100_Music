.class Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteControlClientCompat"
.end annotation


# instance fields
.field private isActiveMediaSession:Z

.field mAudioManager:Landroid/media/AudioManager;

.field mRemoteControlClient:Landroid/media/RemoteControlClient;

.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;Landroid/media/AudioManager;Landroid/content/ComponentName;)V
    .registers 9
    .param p2, "audiomanager"    # Landroid/media/AudioManager;
    .param p3, "Responder"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 4439
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4437
    iput-boolean v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    .line 4440
    sget-boolean v2, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_RCC:Z

    if-eqz v2, :cond_35

    .line 4441
    const-string v2, "MusicPlaybackService"

    const-string v3, "Enable FEATURE_USE_RCC."

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4447
    iput-object p2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mAudioManager:Landroid/media/AudioManager;

    .line 4450
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4451
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "fromPantechMusicPlayer"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4452
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4453
    invoke-virtual {p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 4454
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/media/RemoteControlClient;

    invoke-direct {v2, v1}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 4480
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_34
    return-void

    .line 4444
    :cond_35
    const-string v2, "MusicPlaybackService"

    const-string v3, "Disable FEATURE_USE_RCC."

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34
.end method

.method static synthetic access$2100(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
    .param p1, "x1"    # Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;

    .prologue
    .line 4432
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->setBrowsedPlayerUpdateListener(Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
    .param p1, "x1"    # Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;

    .prologue
    .line 4432
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->setPlayItemListener(Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Lcom/pantech/app/music/service/MusicPlaybackService$GetNowPlayingEntriesMonitor;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
    .param p1, "x1"    # Lcom/pantech/app/music/service/MusicPlaybackService$GetNowPlayingEntriesMonitor;

    .prologue
    .line 4432
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->setNowPlayingEntriesUpdateListener(Lcom/pantech/app/music/service/MusicPlaybackService$GetNowPlayingEntriesMonitor;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    .prologue
    .line 4432
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->unregister()V

    return-void
.end method

.method static synthetic access$4300(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;[J)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
    .param p1, "x1"    # [J

    .prologue
    .line 4432
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->updateNowPlayingEntries([J)V

    return-void
.end method

.method static synthetic access$4400(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Landroid/net/Uri;)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 4432
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->updateFolderInfoBrowsedPlayer(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;
    .param p1, "x1"    # Z

    .prologue
    .line 4432
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->playItemResponse(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    .prologue
    .line 4432
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->setPlayingState()V

    return-void
.end method

.method private playItemResponse(Z)V
    .registers 3
    .param p1, "success"    # Z

    .prologue
    .line 4707
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->playItemResponse(Z)V

    .line 4708
    return-void
.end method

.method private setBrowsedPlayerUpdateListener(Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/pantech/app/music/service/MusicPlaybackService$SetBrowsedPlayerMonitor;

    .prologue
    .line 4715
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setBrowsedPlayerUpdateListener(Landroid/media/RemoteControlClient$OnSetBrowsedPlayerListener;)V

    .line 4716
    return-void
.end method

.method private setNowPlayingEntriesUpdateListener(Lcom/pantech/app/music/service/MusicPlaybackService$GetNowPlayingEntriesMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/pantech/app/music/service/MusicPlaybackService$GetNowPlayingEntriesMonitor;

    .prologue
    .line 4723
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setNowPlayingEntriesUpdateListener(Landroid/media/RemoteControlClient$OnGetNowPlayingEntriesListener;)V

    .line 4724
    return-void
.end method

.method private setPlayItemListener(Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/pantech/app/music/service/MusicPlaybackService$SetPlayItemMonitor;

    .prologue
    .line 4719
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->setPlayItemListener(Landroid/media/RemoteControlClient$OnSetPlayItemListener;)V

    .line 4720
    return-void
.end method

.method private setPlayingState()V
    .registers 6

    .prologue
    .line 4644
    sget-boolean v2, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_RCC:Z

    if-nez v2, :cond_5

    .line 4656
    :goto_4
    return-void

    .line 4646
    :cond_5
    iget-boolean v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    if-nez v2, :cond_11

    .line 4647
    const-string v2, "MusicPlaybackService"

    const-string v3, "* RCC.setPlayingState() :: RCC is not yet  registered. >> return "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4651
    :cond_11
    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J

    move-result-wide v0

    .line 4652
    .local v0, "position":J
    const-string v2, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "* RCC.setPlayingState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4654
    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v2, 0x3

    :goto_4a
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v0, v1, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    goto :goto_4

    :cond_50
    const/4 v2, 0x2

    goto :goto_4a
.end method

.method private unregister()V
    .registers 3

    .prologue
    .line 4539
    sget-boolean v0, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_RCC:Z

    if-nez v0, :cond_5

    .line 4543
    :goto_4
    return-void

    .line 4541
    :cond_5
    const-string v0, "MusicPlaybackService"

    const-string v1, "* RCC.unregister()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4542
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    goto :goto_4
.end method

.method private updateFolderInfoBrowsedPlayer(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4711
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->updateFolderInfoBrowsedPlayer(Ljava/lang/String;)V

    .line 4712
    return-void
.end method

.method private updateMetadata()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4546
    sget-boolean v5, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_RCC:Z

    if-nez v5, :cond_7

    .line 4602
    :goto_6
    return-void

    .line 4548
    :cond_7
    iget-boolean v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    if-nez v5, :cond_13

    .line 4549
    const-string v5, "MusicPlaybackService"

    const-string v6, "* RCC.updateMetadata() :: RCC is not yet  registered. >> return "

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 4552
    :cond_13
    const-string v5, "MusicPlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "* RCC.updateMetadata() track : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/service/MusicPlaybackService;->getTrackName(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4554
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v5, v8}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v3

    .line 4555
    .local v3, "metadataEditor":Landroid/media/RemoteControlClient$MetadataEditor;
    const/4 v5, 0x7

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6, v8}, Lcom/pantech/app/music/service/MusicPlaybackService;->getTrackName(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4556
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v5, v8}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumName(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v8, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4557
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6, v8}, Lcom/pantech/app/music/service/MusicPlaybackService;->getArtistName(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4558
    const/16 v5, 0x9

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4559
    const/16 v5, 0xd

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6, v8}, Lcom/pantech/app/music/service/MusicPlaybackService;->getArtistName(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4561
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v5

    if-eqz v5, :cond_ee

    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v5

    if-ltz v5, :cond_ee

    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueLength()I

    move-result v6

    if-ge v5, v6, :cond_ee

    .line 4562
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAudioId()J

    move-result-wide v6

    invoke-virtual {v3, v9, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4566
    :goto_91
    const/16 v5, 0xe

    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4568
    const/16 v5, 0xa

    :try_start_9f
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueLength()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;
    :try_end_a9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9f .. :try_end_a9} :catch_f4

    .line 4587
    :goto_a9
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5100(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_e9

    .line 4589
    const/16 v0, 0x1f4

    .line 4590
    .local v0, "ALBUMART_SIZE_RCC":I
    move v4, v0

    .line 4592
    .local v4, "rccAlbumartSize":I
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5100(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v0, :cond_c2

    .line 4593
    add-int/lit8 v4, v0, 0xc

    .line 4596
    :cond_c2
    iget-object v5, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5100(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v4, v4, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4598
    .local v2, "metadataAlbumArt":Landroid/graphics/Bitmap;
    const/16 v5, 0x64

    invoke-virtual {v3, v5, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 4599
    const-string v5, "MusicPlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "* RCC.updateMetadata bitmap : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4601
    .end local v0    # "ALBUMART_SIZE_RCC":I
    .end local v2    # "metadataAlbumArt":Landroid/graphics/Bitmap;
    .end local v4    # "rccAlbumartSize":I
    :cond_e9
    invoke-virtual {v3}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    goto/16 :goto_6

    .line 4564
    :cond_ee
    const-wide/16 v6, -0x1

    invoke-virtual {v3, v9, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    goto :goto_91

    .line 4569
    :catch_f4
    move-exception v1

    .line 4570
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "MusicPlaybackService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "METADATA_KEY_NUM_TRACKS: failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a9
.end method

.method private updateNowPlayingContentChange()V
    .registers 2

    .prologue
    .line 4727
    .line 4728
    return-void
.end method

.method private updateNowPlayingEntries([J)V
    .registers 3
    .param p1, "nowPlayingList"    # [J

    .prologue
    .line 4703
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, p1}, Landroid/media/RemoteControlClient;->updateNowPlayingEntries([J)V

    .line 4704
    return-void
.end method


# virtual methods
.method public notifyChange(Landroid/content/Intent;)V
    .registers 7
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 4659
    sget-boolean v1, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_RCC:Z

    if-nez v1, :cond_c

    .line 4660
    const-string v1, "MusicPlaybackService"

    const-string v2, "* RCC.notifyChange() :: FEATURE_USE_RCC not define"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    :cond_b
    :goto_b
    return-void

    .line 4664
    :cond_c
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 4665
    const-string v1, "MusicPlaybackService"

    const-string v2, "* RCC.notifyChange() :: mRemoteControlClientCompat null"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 4669
    :cond_1c
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 4670
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    .line 4671
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    if-nez v1, :cond_3c

    .line 4672
    const-string v1, "MusicPlaybackService"

    const-string v2, "* RCC.notifyChange() :: RCC is not yet  registered. >> return "

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 4677
    :cond_3c
    if-eqz p1, :cond_b

    .line 4680
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4682
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 4683
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    move-result-object v1

    invoke-direct {v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->setPlayingState()V

    .line 4684
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    move-result-object v1

    invoke-direct {v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->updateMetadata()V

    goto :goto_b

    .line 4685
    :cond_5d
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 4686
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    move-result-object v1

    invoke-direct {v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->setPlayingState()V

    goto :goto_b

    .line 4692
    :cond_6f
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 4693
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    move-result-object v1

    invoke-direct {v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->updateNowPlayingContentChange()V

    goto :goto_b

    .line 4694
    :cond_81
    const-string v1, "com.pantech.app.music.settingchanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4695
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v2, "org.codeaurora.music.playersettingsresponse"

    iget-object v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$3900(Lcom/pantech/app/music/service/MusicPlaybackService;)Ljava/util/HashMap;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v1, v2, v3, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->notifyAttributeValues(Ljava/lang/String;Ljava/util/HashMap;I)V

    goto/16 :goto_b
.end method

.method public register()V
    .registers 7

    .prologue
    .line 4483
    sget-boolean v1, Lcom/pantech/app/music/service/MusicPlaybackService;->FEATURE_USE_RCC:Z

    if-nez v1, :cond_5

    .line 4536
    :goto_4
    return-void

    .line 4490
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 4491
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    .line 4492
    iget-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    if-eqz v1, :cond_25

    .line 4493
    const-string v1, "MusicPlaybackService"

    const-string v2, "* RCC registerd,  MediaSession  isActive "

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 4498
    :cond_25
    const-string v1, "MusicPlaybackService"

    const-string v2, "* RCC.register()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4499
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 4502
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 4503
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1}, Landroid/media/RemoteControlClient;->getMediaSession()Landroid/media/session/MediaSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    .line 4505
    :cond_47
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* RCC registerd, isActiveMediaSession =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->isActiveMediaSession:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    const/16 v0, 0x1bd

    .line 4514
    .local v0, "flags":I
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 4515
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 4516
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    new-instance v2, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$1;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;)V

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 4523
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    new-instance v2, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat$2;-><init>(Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;)V

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 4532
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MultiPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 4533
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    move-result-object v1

    invoke-direct {v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->updateMetadata()V

    .line 4535
    :cond_a3
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5200(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;

    move-result-object v1

    invoke-direct {v1}, Lcom/pantech/app/music/service/MusicPlaybackService$RemoteControlClientCompat;->setPlayingState()V

    goto/16 :goto_4
.end method
