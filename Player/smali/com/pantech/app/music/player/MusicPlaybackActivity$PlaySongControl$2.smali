.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$2;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep1(JI)V
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
    .line 3036
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$2;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    iget v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->mTrackInfoEffectDirection:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->moveTrackStep2(JI)V

    .line 3048
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3043
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3039
    return-void
.end method
