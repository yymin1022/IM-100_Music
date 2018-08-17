.class Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackService;)V
    .registers 2

    .prologue
    .line 4064
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4082
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$5000(Lcom/pantech/app/music/service/MusicPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4083
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendEmptyMessage(I)Z

    .line 4084
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .registers 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4088
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError()  what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1208(Lcom/pantech/app/music/service/MusicPlaybackService;)I

    .line 4091
    const-string v0, "MusicPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRetryCount++  in onError()  mRetryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1200(Lcom/pantech/app/music/service/MusicPlaybackService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4093
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$100(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 4095
    const/16 v0, -0x26

    if-ne p2, v0, :cond_58

    .line 4097
    const-string v0, "MusicPlaybackService"

    const-string v1, "return!  do nothing"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    :cond_57
    :goto_57
    return-void

    .line 4101
    :cond_58
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/ContentUtils;->isNotSupportFileType(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 4102
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const v1, 0x7f080098

    invoke-static {v0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1400(Lcom/pantech/app/music/service/MusicPlaybackService;IZ)V

    .line 4106
    :goto_70
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1700(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 4110
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1200(Lcom/pantech/app/music/service/MusicPlaybackService;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/service/MusicQueue;->getLength()I

    move-result v1

    if-lt v0, v1, :cond_a0

    .line 4111
    const-string v0, "MusicPlaybackService"

    const-string v1, "No more next item to play!!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4113
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const v1, 0x7f080138

    invoke-static {v0, v1, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1400(Lcom/pantech/app/music/service/MusicPlaybackService;IZ)V

    goto :goto_57

    .line 4104
    :cond_97
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const v1, 0x7f080097

    invoke-static {v0, v1, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1400(Lcom/pantech/app/music/service/MusicPlaybackService;IZ)V

    goto :goto_70

    .line 4120
    :cond_a0
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$800(Lcom/pantech/app/music/service/MusicPlaybackService;)Z

    move-result v0

    if-ne v0, v3, :cond_57

    .line 4121
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3, v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->nextRequest(ZJZ)V

    goto :goto_57
.end method

.method public onMediaServerDied(Landroid/media/MediaPlayer;)V
    .registers 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4129
    new-instance v0, Lcom/pantech/app/music/common/ArrayRunnable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Lcom/pantech/app/music/common/ArrayRunnable;-><init>(Ljava/util/ArrayList;)V

    .line 4130
    .local v0, "ar":Lcom/pantech/app/music/common/ArrayRunnable;
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, v1, Lcom/pantech/app/music/service/MusicPlaybackService;->mTurnOffAudioEffect:Lcom/pantech/app/music/service/MusicPlaybackService$AudioFXReleaseSwitch;

    sget-object v2, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_TURNOFF_AUDIOEFFECT_IDX:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/common/ArrayRunnable;->add(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    .line 4131
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    iget-object v1, v1, Lcom/pantech/app/music/service/MusicPlaybackService;->mOpenAsyncComplete:Ljava/lang/Runnable;

    sget-object v2, Lcom/pantech/app/music/service/MusicPlaybackService;->ARRAYRUN_OPENCOMPLETE_IDX:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/common/ArrayRunnable;->add(Ljava/lang/Runnable;Ljava/lang/Integer;)V

    .line 4133
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$100(Lcom/pantech/app/music/service/MusicPlaybackService;Z)V

    .line 4134
    iget-object v1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/pantech/app/music/service/MusicPlaybackService$MediaplayerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4135
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 4067
    const-string v0, "MusicPlaybackService"

    const-string v1, "onPrepared()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$200(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    .line 4069
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4900(Lcom/pantech/app/music/service/MusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4070
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 4071
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackService$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$4902(Lcom/pantech/app/music/service/MusicPlaybackService;Z)Z

    .line 4073
    :cond_21
    return-void
.end method
