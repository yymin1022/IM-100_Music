.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$6;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->showRepeatShuffle(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)V
    .registers 2

    .prologue
    .line 4244
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$6;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 4247
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$6;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->access$6200(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4248
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 4252
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 4256
    return-void
.end method
