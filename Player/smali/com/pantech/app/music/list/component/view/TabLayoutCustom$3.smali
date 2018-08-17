.class Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;
.super Landroid/view/animation/Animation;
.source "TabLayoutCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

.field final synthetic val$startScrollX:I

.field final synthetic val$targetScrollX:I


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/TabLayoutCustom;II)V
    .registers 4

    .prologue
    .line 611
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    iput p2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;->val$startScrollX:I

    iput p3, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;->val$targetScrollX:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 614
    iget v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;->val$startScrollX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;->val$targetScrollX:I

    int-to-float v2, v2

    invoke-static {v1, v2, p1}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->lerp(FFF)F

    move-result v0

    .line 615
    .local v0, "value":F
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/TabLayoutCustom$3;->this$0:Lcom/pantech/app/music/list/component/view/TabLayoutCustom;

    float-to-int v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/list/component/view/TabLayoutCustom;->scrollTo(II)V

    .line 616
    return-void
.end method
