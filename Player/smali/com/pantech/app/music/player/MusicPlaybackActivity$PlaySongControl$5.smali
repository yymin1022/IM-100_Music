.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$5;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showSeekbarExpand(J)V
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
    .line 3228
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$5;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$5;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->access$4402(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;Z)Z

    .line 3232
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3236
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3240
    return-void
.end method
