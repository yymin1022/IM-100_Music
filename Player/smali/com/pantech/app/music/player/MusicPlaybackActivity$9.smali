.class Lcom/pantech/app/music/player/MusicPlaybackActivity$9;
.super Ljava/lang/Object;
.source "MusicPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;->setBubbleTip(I)V
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
    .line 782
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$9;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 789
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$9;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1800(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$9;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v0, v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1902(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)Z

    .line 792
    iget-object v0, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$9;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "detailcontrollertip"

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 793
    const-string v0, "MusicPlaybackActivity"

    const-string v1, "onAnimationEnd() called with: finish bubble tip."

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 798
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 785
    return-void
.end method
