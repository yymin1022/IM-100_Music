.class Lcom/pantech/app/music/player/MusicPlaybackActivity$16;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;->registerSystemChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 1939
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1942
    if-nez p2, :cond_7

    .line 1963
    :cond_6
    :goto_6
    return-void

    .line 1944
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1945
    .local v0, "action":Ljava/lang/String;
    const-string v4, "MusicPlaybackActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-->action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 1947
    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1948
    .local v1, "state":I
    if-ne v1, v2, :cond_55

    :goto_33
    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1302(Z)Z

    .line 1949
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1950
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_55
    move v2, v3

    .line 1948
    goto :goto_33

    .line 1959
    .end local v1    # "state":I
    :cond_57
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1960
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1961
    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$16;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicPlaybackHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6
.end method
