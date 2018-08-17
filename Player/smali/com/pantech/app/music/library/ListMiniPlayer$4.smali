.class Lcom/pantech/app/music/library/ListMiniPlayer$4;
.super Ljava/lang/Object;
.source "ListMiniPlayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListMiniPlayer;->show(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListMiniPlayer;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListMiniPlayer;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$4;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer$4;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListMiniPlayer;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 396
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 389
    return-void
.end method
