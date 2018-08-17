.class Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;
.super Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/pantech/app/music/service/MusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 5
    .param p1, "service"    # Lcom/pantech/app/music/service/MusicPlaybackService;

    .prologue
    .line 3568
    invoke-direct {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;-><init>()V

    .line 3569
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceStub() created:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 3571
    return-void
.end method


# virtual methods
.method public duration()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 3850
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->duration()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 3854
    :cond_12
    :goto_12
    return-wide v2

    .line 3851
    :catch_13
    move-exception v0

    .line 3852
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    .registers 7
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "play"    # Z

    .prologue
    .line 3764
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3769
    :cond_f
    :goto_f
    return-void

    .line 3765
    :catch_10
    move-exception v0

    .line 3766
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3767
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public getAlbumId()J
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 3731
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumId()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 3736
    :cond_12
    :goto_12
    return-wide v2

    .line 3732
    :catch_13
    move-exception v0

    .line 3733
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3720
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAlbumName()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result-object v1

    .line 3725
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v2

    .line 3720
    goto :goto_11

    .line 3721
    :catch_14
    move-exception v0

    .line 3722
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3725
    goto :goto_11
.end method

.method public getArtistId()J
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 3753
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getArtistId()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 3758
    :cond_12
    :goto_12
    return-wide v2

    .line 3754
    :catch_13
    move-exception v0

    .line 3755
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3742
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getArtistName()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result-object v1

    .line 3747
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v2

    .line 3742
    goto :goto_11

    .line 3743
    :catch_14
    move-exception v0

    .line 3744
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3745
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3747
    goto :goto_11
.end method

.method public getAudioId()J
    .registers 7

    .prologue
    const-wide/16 v2, -0x1

    .line 3829
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAudioId()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 3834
    :cond_12
    :goto_12
    return-wide v2

    .line 3830
    :catch_13
    move-exception v0

    .line 3831
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getAudioSessionId()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3945
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getAudioSessionId()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3949
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3945
    goto :goto_11

    .line 3946
    :catch_14
    move-exception v0

    .line 3947
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3949
    goto :goto_11
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3818
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getDataPath()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result-object v1

    .line 3823
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v2

    .line 3818
    goto :goto_11

    .line 3819
    :catch_14
    move-exception v0

    .line 3820
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3823
    goto :goto_11
.end method

.method public getIsBTConnection()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4009
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getIsBTConnection()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 4013
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 4009
    goto :goto_11

    .line 4010
    :catch_14
    move-exception v0

    .line 4011
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 4013
    goto :goto_11
.end method

.method public getLastConnection()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4020
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getLastConnection()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 4024
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 4020
    goto :goto_11

    .line 4021
    :catch_14
    move-exception v0

    .line 4022
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 4024
    goto :goto_11
.end method

.method public getMediaMountedCount()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3910
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getMediaMountedCount()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3914
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3910
    goto :goto_11

    .line 3911
    :catch_14
    move-exception v0

    .line 3912
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3914
    goto :goto_11
.end method

.method public getPath()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3807
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPath()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result-object v1

    .line 3812
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v2

    .line 3807
    goto :goto_11

    .line 3808
    :catch_14
    move-exception v0

    .line 3809
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3812
    goto :goto_11
.end method

.method public getPlayState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3698
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getPlayState()Ljava/lang/String;

    move-result-object v1

    .line 3703
    :goto_10
    return-object v1

    .line 3698
    :cond_11
    const-string v1, "paused"
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_10

    .line 3699
    :catch_14
    move-exception v0

    .line 3700
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3701
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3703
    const-string v1, "paused"

    goto :goto_10
.end method

.method public getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3774
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result-object v1

    .line 3779
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v2

    .line 3774
    goto :goto_11

    .line 3775
    :catch_14
    move-exception v0

    .line 3776
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3779
    goto :goto_11
.end method

.method public getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 7
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 3785
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result-object v1

    .line 3790
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v2

    .line 3785
    goto :goto_11

    .line 3786
    :catch_14
    move-exception v0

    .line 3787
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3788
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3790
    goto :goto_11
.end method

.method public getQueueLength()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3796
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueueLength()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3801
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3796
    goto :goto_11

    .line 3797
    :catch_14
    move-exception v0

    .line 3798
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3801
    goto :goto_11
.end method

.method public getQueuePosition()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3646
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getQueuePosition()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3651
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3646
    goto :goto_11

    .line 3647
    :catch_14
    move-exception v0

    .line 3648
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3651
    goto :goto_11
.end method

.method public getRating()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 3930
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getRating()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 3934
    :cond_12
    :goto_12
    return-wide v2

    .line 3931
    :catch_13
    move-exception v0

    .line 3932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getRepeatMode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3900
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getRepeatMode()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3904
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3900
    goto :goto_11

    .line 3901
    :catch_14
    move-exception v0

    .line 3902
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3904
    goto :goto_11
.end method

.method public getShuffleMode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3870
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getShuffleMode()I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3874
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3870
    goto :goto_11

    .line 3871
    :catch_14
    move-exception v0

    .line 3872
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3874
    goto :goto_11
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3709
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->getTrackName()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result-object v1

    .line 3714
    :goto_11
    return-object v1

    :cond_12
    move-object v1, v2

    .line 3709
    goto :goto_11

    .line 3710
    :catch_14
    move-exception v0

    .line 3711
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 3714
    goto :goto_11
.end method

.method public isCallState()Z
    .registers 2

    .prologue
    .line 3939
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 3687
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3692
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3687
    goto :goto_11

    .line 3688
    :catch_14
    move-exception v0

    .line 3689
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3692
    goto :goto_11
.end method

.method public next(ZJ)V
    .registers 8
    .param p1, "force"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 3636
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3641
    :cond_f
    :goto_f
    return-void

    .line 3637
    :catch_10
    move-exception v0

    .line 3638
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public open([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 7
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 3586
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3591
    :cond_f
    :goto_f
    return-void

    .line 3587
    :catch_10
    move-exception v0

    .line 3588
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public openFile(Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3576
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->open(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3581
    :cond_f
    :goto_f
    return-void

    .line 3577
    :catch_10
    move-exception v0

    .line 3578
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3579
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public pause()V
    .registers 5

    .prologue
    .line 3606
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->pauseRequest()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3611
    :cond_f
    :goto_f
    return-void

    .line 3607
    :catch_10
    move-exception v0

    .line 3608
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public play()V
    .registers 5

    .prologue
    .line 3616
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->playRequest()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3621
    :cond_f
    :goto_f
    return-void

    .line 3617
    :catch_10
    move-exception v0

    .line 3618
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public position()J
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 3840
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->position()J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 3844
    :cond_12
    :goto_12
    return-wide v2

    .line 3841
    :catch_13
    move-exception v0

    .line 3842
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public prev(ZJ)V
    .registers 8
    .param p1, "force"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 3626
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->prevRequest(ZJ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3631
    :cond_f
    :goto_f
    return-void

    .line 3627
    :catch_10
    move-exception v0

    .line 3628
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 6
    .param p1, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 3667
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3672
    :cond_f
    :goto_f
    return-void

    .line 3668
    :catch_10
    move-exception v0

    .line 3669
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3670
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public refreshQueue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3999
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->refreshQueue()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 4004
    :cond_f
    :goto_f
    return-void

    .line 4000
    :catch_10
    move-exception v0

    .line 4001
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4002
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public removeQueues([J)V
    .registers 6
    .param p1, "audioIDs"    # [J

    .prologue
    .line 3677
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeTracks([J)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3682
    :cond_f
    :goto_f
    return-void

    .line 3678
    :catch_10
    move-exception v0

    .line 3679
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3680
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public removeTrack(J)I
    .registers 6
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 3890
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeTrack(J)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3894
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3890
    goto :goto_11

    .line 3891
    :catch_14
    move-exception v0

    .line 3892
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3894
    goto :goto_11
.end method

.method public removeTracks(II)I
    .registers 6
    .param p1, "first"    # I
    .param p2, "last"    # I

    .prologue
    const/4 v2, 0x0

    .line 3880
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->removeTracks(II)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    move-result v1

    .line 3884
    :goto_11
    return v1

    :cond_12
    move v1, v2

    .line 3880
    goto :goto_11

    .line 3881
    :catch_14
    move-exception v0

    .line 3882
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 3884
    goto :goto_11
.end method

.method public seek(J)J
    .registers 8
    .param p1, "pos"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 3860
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_13

    move-result-wide v2

    .line 3864
    :cond_12
    :goto_12
    return-wide v2

    .line 3861
    :catch_13
    move-exception v0

    .line 3862
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public setFileTagChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "audioID"    # J
    .param p3, "newTitle"    # Ljava/lang/String;
    .param p4, "newAlbum"    # Ljava/lang/String;
    .param p5, "newArtist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3959
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->setFileTagChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 3964
    :cond_13
    :goto_13
    return-void

    .line 3960
    :catch_14
    move-exception v0

    .line 3961
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3962
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public setMusicButtonReceiver()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3969
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->setMusicButtonReceiver()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3974
    :cond_f
    :goto_f
    return-void

    .line 3970
    :catch_10
    move-exception v0

    .line 3971
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3972
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public setQueuePosition(IJ)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "delay"    # J

    .prologue
    .line 3657
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/pantech/app/music/service/MusicPlaybackService;->setQueuePosition(IJ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3662
    :cond_f
    :goto_f
    return-void

    .line 3658
    :catch_10
    move-exception v0

    .line 3659
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public setWidgetThemeType(I)V
    .registers 2
    .param p1, "themeType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3954
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 3596
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->stopEx()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3601
    :cond_f
    :goto_f
    return-void

    .line 3597
    :catch_10
    move-exception v0

    .line 3598
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3599
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public toggleRating()V
    .registers 5

    .prologue
    .line 3920
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleRating()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3925
    :cond_f
    :goto_f
    return-void

    .line 3921
    :catch_10
    move-exception v0

    .line 3922
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public toggleRepeat()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3979
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleRepeat()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3984
    :cond_f
    :goto_f
    return-void

    .line 3980
    :catch_10
    move-exception v0

    .line 3981
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3982
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public toggleShuffle()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3989
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->toggleShuffle()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 3994
    :cond_f
    :goto_f
    return-void

    .line 3990
    :catch_10
    move-exception v0

    .line 3991
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MusicPlaybackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3992
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
