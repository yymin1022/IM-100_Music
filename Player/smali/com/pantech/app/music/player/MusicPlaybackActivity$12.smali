.class Lcom/pantech/app/music/player/MusicPlaybackActivity$12;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;->finishDownAnimation(Z)V
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
    .line 1617
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$12;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x0

    .line 1620
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$12;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$2002(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)Z

    .line 1621
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$12;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->finish()V

    .line 1622
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$12;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0, v1, v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->overridePendingTransition(II)V

    .line 1623
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1627
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1631
    return-void
.end method
