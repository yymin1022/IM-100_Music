.class Lcom/pantech/app/music/service/MusicPlaybackControl$MultiPlayerListener;
.super Ljava/lang/Object;
.source "MusicPlaybackControl.java"

# interfaces
.implements Lcom/pantech/app/music/service/MultiPlayer$OnMultiPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/MusicPlaybackControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/service/MusicPlaybackControl;)V
    .registers 2

    .prologue
    .line 330
    iput-object p1, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/pantech/app/music/service/MusicPlaybackControl$MultiPlayerListener;->this$0:Lcom/pantech/app/music/service/MusicPlaybackControl;

    iget-object v0, v0, Lcom/pantech/app/music/service/MusicPlaybackControl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 337
    return-void
.end method

.method public onMediaServerDied(Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 346
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 333
    return-void
.end method
