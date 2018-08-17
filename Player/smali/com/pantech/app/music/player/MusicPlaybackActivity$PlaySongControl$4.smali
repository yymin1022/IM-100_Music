.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$4;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->showTrackInfo(J)V
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
    .line 3173
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 3176
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->access$4100(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3177
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->access$4200(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3178
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl$4;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->access$3800(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 3179
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3183
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3187
    return-void
.end method
