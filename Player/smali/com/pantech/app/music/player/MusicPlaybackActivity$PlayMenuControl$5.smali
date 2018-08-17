.class Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$5;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->toggleController(J)V
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
    .line 4195
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$5;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 4198
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl$5;->this$1:Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->access$6100(Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4199
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 4203
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 4207
    return-void
.end method
