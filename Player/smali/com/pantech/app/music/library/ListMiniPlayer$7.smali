.class Lcom/pantech/app/music/library/ListMiniPlayer$7;
.super Ljava/lang/Object;
.source "ListMiniPlayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListMiniPlayer;->setBackgroundColor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListMiniPlayer;I)V
    .registers 3

    .prologue
    .line 540
    iput-object p1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$7;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iput p2, p0, Lcom/pantech/app/music/library/ListMiniPlayer$7;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer$7;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBgEffect:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/pantech/app/music/library/ListMiniPlayer$7;->this$0:Lcom/pantech/app/music/library/ListMiniPlayer;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListMiniPlayer;->mBackground:Landroid/view/View;

    iget v1, p0, Lcom/pantech/app/music/library/ListMiniPlayer$7;->val$color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 549
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 553
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 543
    return-void
.end method
