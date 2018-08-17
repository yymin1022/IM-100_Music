.class Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicServiceClient"
.end annotation


# instance fields
.field private mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field private mToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 4440
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4441
    return-void
.end method


# virtual methods
.method bindToService()V
    .registers 2

    .prologue
    .line 4458
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$6500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    .line 4459
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, p0}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 4460
    return-void
.end method

.method duration()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 4584
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->duration()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 4588
    :cond_c
    :goto_c
    return-wide v2

    .line 4585
    :catch_d
    move-exception v0

    .line 4586
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    .registers 5
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "play"    # Z

    .prologue
    .line 4593
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    .line 4594
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4598
    :cond_9
    :goto_9
    return-void

    .line 4595
    :catch_a
    move-exception v0

    .line 4596
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method getArtistName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4739
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getArtistName()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 4743
    :cond_b
    :goto_b
    return-object v1

    .line 4740
    :catch_c
    move-exception v0

    .line 4741
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getAudioId()J
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 4703
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioId()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 4707
    :cond_c
    :goto_c
    return-wide v2

    .line 4704
    :catch_d
    move-exception v0

    .line 4705
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method getAudioSessionId()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4712
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioSessionId()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 4716
    :cond_b
    :goto_b
    return v1

    .line 4713
    :catch_c
    move-exception v0

    .line 4714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getDataPath()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4748
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getDataPath()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 4752
    :cond_b
    :goto_b
    return-object v1

    .line 4749
    :catch_c
    move-exception v0

    .line 4750
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getIsBTConnection()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4757
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getIsBTConnection()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 4761
    :cond_b
    :goto_b
    return v1

    .line 4758
    :catch_c
    move-exception v0

    .line 4759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getLastConnection()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4767
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getLastConnection()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 4771
    :cond_b
    :goto_b
    return v1

    .line 4768
    :catch_c
    move-exception v0

    .line 4769
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getPath()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4721
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getPath()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 4725
    :cond_b
    :goto_b
    return-object v1

    .line 4722
    :catch_c
    move-exception v0

    .line 4723
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4659
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 4663
    :cond_b
    :goto_b
    return-object v1

    .line 4660
    :catch_c
    move-exception v0

    .line 4661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 5
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 4668
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2, p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 4672
    :cond_b
    :goto_b
    return-object v1

    .line 4669
    :catch_c
    move-exception v0

    .line 4670
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getQueueLength()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4677
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueueLength()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 4681
    :cond_b
    :goto_b
    return v1

    .line 4678
    :catch_c
    move-exception v0

    .line 4679
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getQueuePosition()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4686
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueuePosition()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 4690
    :cond_b
    :goto_b
    return v1

    .line 4687
    :catch_c
    move-exception v0

    .line 4688
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getRating()J
    .registers 5

    .prologue
    .line 4566
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getRating()J
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v2

    .line 4570
    :goto_a
    return-wide v2

    .line 4567
    :catch_b
    move-exception v0

    .line 4568
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 4570
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    const-wide/16 v2, 0x0

    goto :goto_a
.end method

.method getReal()Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 4447
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object v0
.end method

.method getRepeatMode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4549
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getRepeatMode()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 4553
    :cond_b
    :goto_b
    return v1

    .line 4550
    :catch_c
    move-exception v0

    .line 4551
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getShuffleMode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4532
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getShuffleMode()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 4536
    :cond_b
    :goto_b
    return v1

    .line 4533
    :catch_c
    move-exception v0

    .line 4534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method getTrackName()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4730
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getTrackName()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 4734
    :cond_b
    :goto_b
    return-object v1

    .line 4731
    :catch_c
    move-exception v0

    .line 4732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method isConnnected()Z
    .registers 2

    .prologue
    .line 4451
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isPlaying()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 4515
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_f

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    .line 4519
    :cond_e
    :goto_e
    return v1

    .line 4516
    :catch_f
    move-exception v0

    .line 4517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method

.method next(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 4634
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    const-wide/16 v2, 0x1f4

    invoke-interface {v1, p1, v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->next(ZJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 4638
    :cond_b
    :goto_b
    return-void

    .line 4635
    :catch_c
    move-exception v0

    .line 4636
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "classname"    # Landroid/content/ComponentName;
    .param p2, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 4473
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4474
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4475
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$3500(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4477
    :cond_32
    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 4478
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    .line 4479
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$6300(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    .line 4480
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$6700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    .line 4481
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->notifyDataSetChanged()V

    .line 4482
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "onServiceConnected"

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setPage(IZLjava/lang/CharSequence;)V

    .line 4483
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v0

    const/16 v1, 0x3e8

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->requestLargeAlbumart(II)V

    .line 4485
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 4486
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->refreshPopupMenu()V

    .line 4489
    :cond_84
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    move-result-object v0

    if-eqz v0, :cond_95

    .line 4490
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setBitrateImage()V

    .line 4494
    :cond_95
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 4495
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->startROUpdateIfNeeded()V

    .line 4499
    :cond_a6
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4505
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "classname"    # Landroid/content/ComponentName;

    .prologue
    .line 4509
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 4511
    return-void
.end method

.method open([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 5
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 4602
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4606
    :cond_9
    :goto_9
    return-void

    .line 4603
    :catch_a
    move-exception v0

    .line 4604
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method pause()V
    .registers 3

    .prologue
    .line 4618
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->pause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4622
    :cond_9
    :goto_9
    return-void

    .line 4619
    :catch_a
    move-exception v0

    .line 4620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method play()V
    .registers 3

    .prologue
    .line 4610
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->play()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4614
    :cond_9
    :goto_9
    return-void

    .line 4611
    :catch_a
    move-exception v0

    .line 4612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method position()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 4575
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->position()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 4579
    :cond_c
    :goto_c
    return-wide v2

    .line 4576
    :catch_d
    move-exception v0

    .line 4577
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method prev(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 4642
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    const-wide/16 v2, 0x1f4

    invoke-interface {v1, p1, v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->prev(ZJ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 4646
    :cond_b
    :goto_b
    return-void

    .line 4643
    :catch_c
    move-exception v0

    .line 4644
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method

.method release()V
    .registers 1

    .prologue
    .line 4444
    return-void
.end method

.method seek(J)J
    .registers 8
    .param p1, "pos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 4650
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->seek(J)J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    move-result-wide v2

    .line 4654
    :cond_c
    :goto_c
    return-wide v2

    .line 4651
    :catch_d
    move-exception v0

    .line 4652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method setQueuePosition(IJ)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "delay"    # J

    .prologue
    .line 4695
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1, p1, p2, p3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->setQueuePosition(IJ)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4699
    :cond_9
    :goto_9
    return-void

    .line 4696
    :catch_a
    move-exception v0

    .line 4697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method stop()V
    .registers 3

    .prologue
    .line 4626
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->stop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4630
    :cond_9
    :goto_9
    return-void

    .line 4627
    :catch_a
    move-exception v0

    .line 4628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method toggleRating()V
    .registers 3

    .prologue
    .line 4558
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->toggleRating()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4562
    :cond_9
    :goto_9
    return-void

    .line 4559
    :catch_a
    move-exception v0

    .line 4560
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method toggleRepeat()V
    .registers 3

    .prologue
    .line 4541
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->toggleRepeat()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4545
    :cond_9
    :goto_9
    return-void

    .line 4542
    :catch_a
    move-exception v0

    .line 4543
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method toggleShuffle()V
    .registers 3

    .prologue
    .line 4524
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mIService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->toggleShuffle()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 4528
    :cond_9
    :goto_9
    return-void

    .line 4525
    :catch_a
    move-exception v0

    .line 4526
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method unbindFromService()V
    .registers 2

    .prologue
    .line 4463
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$6600(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    .line 4464
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 4466
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->mToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    if-nez v0, :cond_13

    .line 4467
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    .line 4469
    :cond_13
    return-void
.end method
