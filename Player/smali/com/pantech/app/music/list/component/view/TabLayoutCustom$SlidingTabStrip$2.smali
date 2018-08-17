.class Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;
.super Ljava/lang/Object;
.source "TabLayoutCustom.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;I)V
    .registers 3

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;->this$1:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    iput p2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;->this$1:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;->val$position:I

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->access$1902(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;I)I

    .line 1234
    iget-object v0, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip$2;->this$1:Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;->access$2002(Lcom/pantech/app/music/list/component/view/TabLayoutCustom$SlidingTabStrip;F)F

    .line 1235
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1238
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1230
    return-void
.end method
