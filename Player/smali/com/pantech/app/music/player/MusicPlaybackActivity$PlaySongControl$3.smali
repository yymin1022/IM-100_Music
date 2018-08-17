.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$3;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep2(JI)V
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
    .line 3112
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 3123
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "isTrackInfoEffectMoving = false"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iput-boolean v2, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->isTrackInfoEffectMoving:Z

    .line 3125
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$3;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iput v2, v0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectDirection:I

    .line 3126
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3119
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3115
    return-void
.end method
