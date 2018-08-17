.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)V
    .registers 2

    .prologue
    .line 2826
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->access$3600(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3c

    .line 2830
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->access$3700(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_28

    .line 2831
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveExpand()V

    .line 2838
    :goto_27
    return-void

    .line 2833
    :cond_28
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$700(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->seek(J)J

    goto :goto_27

    .line 2836
    :cond_3c
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$1;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->access$3800(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_27
.end method
