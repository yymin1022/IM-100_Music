.class Lcom/pantech/app/music/service/MusicPlaybackService$17;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/service/MusicPlaybackService;->registerMiracastConnectListener()V
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
    .line 1992
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1995
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1996
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_72

    const-string v4, "com.pantech.app.miracast.Audio_Device"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1997
    const-string v4, "MusicPlaybackService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=> Miracast state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MultiPlayer;->isOpenSuccess()Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1300(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MusicQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MusicQueue;->getItem()Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/ContentUtils;->isFLACFileType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1999
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v2

    .line 2000
    .local v2, "pos":J
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MultiPlayer;->isPlaying()Z

    move-result v1

    .line 2001
    .local v1, "wasPlaying":Z
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    .line 2002
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v4, v2, v3}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    .line 2003
    if-eqz v1, :cond_72

    .line 2004
    iget-object v4, p0, Lcom/pantech/app/music/service/MusicPlaybackService$17;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v4}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 2008
    .end local v1    # "wasPlaying":Z
    .end local v2    # "pos":J
    :cond_72
    return-void
.end method
