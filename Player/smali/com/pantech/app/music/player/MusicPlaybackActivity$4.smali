.class Lcom/pantech/app/music/player/MusicPlaybackActivity$4;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Lcom/pantech/app/music/player/MusicPlaybackLyrics$callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
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
    .line 248
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$4;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutShow(Z)V
    .registers 5
    .param p1, "OnOff"    # Z

    .prologue
    .line 255
    const-string v0, "MusicPlaybackActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutShow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-nez p1, :cond_26

    .line 257
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$4;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$100(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    .line 259
    :cond_26
    return-void
.end method

.method public onParsingDone(Z)V
    .registers 2
    .param p1, "hasLyrics"    # Z

    .prologue
    .line 251
    return-void
.end method
