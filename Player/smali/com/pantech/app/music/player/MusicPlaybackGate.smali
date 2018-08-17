.class public Lcom/pantech/app/music/player/MusicPlaybackGate;
.super Landroid/app/Activity;
.source "MusicPlaybackGate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlaybackGate"


# instance fields
.field private mActivityPaused:Z

.field private mPlaybackDelay:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackGate;->mActivityPaused:Z

    .line 32
    new-instance v0, Lcom/pantech/app/music/player/MusicPlaybackGate$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/player/MusicPlaybackGate$1;-><init>(Lcom/pantech/app/music/player/MusicPlaybackGate;)V

    iput-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackGate;->mPlaybackDelay:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v2, "MusicPlaybackGate"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcom/pantech/app/music/utils/ActivityUtils;->GetBaseClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "baseClass":Ljava/lang/String;
    if-eqz v0, :cond_2c

    const-string v2, ".player.MusicPlaybackGate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 22
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackGate;->finish()V

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "fromlist"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/player/MusicPlaybackGate;->startActivity(Landroid/content/Intent;)V

    .line 30
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2b
    return-void

    .line 28
    :cond_2c
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackGate;->mPlaybackDelay:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2b
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 43
    const-string v0, "MusicPlaybackGate"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 49
    const-string v0, "MusicPlaybackGate"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackGate;->mActivityPaused:Z

    .line 51
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    const-string v0, "MusicPlaybackGate"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/pantech/app/music/player/MusicPlaybackGate;->mActivityPaused:Z

    if-eqz v0, :cond_11

    .line 58
    invoke-virtual {p0}, Lcom/pantech/app/music/player/MusicPlaybackGate;->finish()V

    .line 60
    :cond_11
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 65
    const-string v0, "MusicPlaybackGate"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 71
    const-string v0, "MusicPlaybackGate"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
