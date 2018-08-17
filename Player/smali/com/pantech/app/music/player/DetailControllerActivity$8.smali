.class Lcom/pantech/app/music/player/DetailControllerActivity$8;
.super Ljava/lang/Object;
.source "DetailControllerActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/player/DetailControllerActivity;->setAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/DetailControllerActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/DetailControllerActivity;)V
    .registers 2

    .prologue
    .line 540
    iput-object p1, p0, Lcom/pantech/app/music/player/DetailControllerActivity$8;->this$0:Lcom/pantech/app/music/player/DetailControllerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 548
    const-string v0, "MusicDetailController"

    const-string v1, "fadeOut onAnimationEnd"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 554
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 544
    return-void
.end method
