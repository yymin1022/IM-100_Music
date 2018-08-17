.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$8;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->hideController(J)V
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
    .line 3462
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$8;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3470
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$8;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget-object v0, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$4600(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V

    .line 3471
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3476
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 3466
    return-void
.end method
