.class Lcom/pantech/app/music/service/MusicPlaybackService$12;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackService.java"


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
    .line 704
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 707
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "action":Ljava/lang/String;
    const-string v6, "command"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "cmd":Ljava/lang/String;
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v6, v0, v1, p2}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1900(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 712
    const-string v6, "com.pantech.app.music.rmsaction"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 713
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 714
    const-string v6, "sketch"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 716
    .local v2, "isSketch":Z
    if-nez v2, :cond_4b

    .line 717
    const/4 v3, 0x0

    .line 718
    .local v3, "wasPlaying":Z
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 719
    const/4 v3, 0x1

    .line 721
    :cond_30
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1100(Lcom/pantech/app/music/service/MusicPlaybackService;)Lcom/pantech/app/music/service/MultiPlayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MultiPlayer;->position()J

    move-result-wide v4

    .line 722
    .local v4, "seekPos":J
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-static {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$1000(Lcom/pantech/app/music/service/MusicPlaybackService;)V

    .line 723
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6, v4, v5}, Lcom/pantech/app/music/service/MusicPlaybackService;->seek(J)J

    .line 724
    if-eqz v3, :cond_4b

    .line 725
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-virtual {v6}, Lcom/pantech/app/music/service/MusicPlaybackService;->play()V

    .line 740
    .end local v2    # "isSketch":Z
    .end local v3    # "wasPlaying":Z
    .end local v4    # "seekPos":J
    :cond_4b
    :goto_4b
    return-void

    .line 729
    :cond_4c
    const-string v6, "com.pantech.app.music.changetitle"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 730
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.pantech.app.music.action.WIDGETCHANGETITLE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/pantech/app/music/service/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 731
    iget-object v6, p0, Lcom/pantech/app/music/service/MusicPlaybackService$12;->this$0:Lcom/pantech/app/music/service/MusicPlaybackService;

    const-string v7, "com.pantech.app.music.metachanged"

    invoke-static {v6, v7}, Lcom/pantech/app/music/service/MusicPlaybackService;->access$200(Lcom/pantech/app/music/service/MusicPlaybackService;Ljava/lang/String;)V

    goto :goto_4b

    .line 734
    :cond_68
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 735
    const-string v6, "MusicPlaybackService"

    const-string v7, "mIntentReceiver() ACTION_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    sget-object v6, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    if-eqz v6, :cond_4b

    .line 737
    sget-object v6, Lcom/pantech/app/music/service/MusicPlaybackService;->mOnePlayer:Lcom/pantech/app/music/player/oneplayer/OnePlayer;

    invoke-virtual {v6, p2}, Lcom/pantech/app/music/player/oneplayer/OnePlayer;->deliverySystemKeyReason(Landroid/content/Intent;)V

    goto :goto_4b
.end method
