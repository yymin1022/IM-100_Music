.class Lcom/pantech/app/music/list/component/view/ArrangeListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ArrangeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/component/view/ArrangeListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/ArrangeListView;)V
    .registers 2

    .prologue
    .line 456
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 462
    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 464
    .local v1, "x":I
    cmpg-float v3, p4, v4

    if-gez v3, :cond_1a

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$000(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I

    move-result v3

    if-eq v3, v7, :cond_26

    :cond_1a
    cmpl-float v3, p4, v4

    if-lez v3, :cond_35

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$000(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I

    move-result v3

    if-ne v3, v5, :cond_35

    .line 465
    :cond_26
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 467
    .local v0, "tempdistanceY":F
    const/high16 v3, 0x40c00000    # 6.0f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_35

    .line 469
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3, v6}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$002(Lcom/pantech/app/music/list/component/view/ArrangeListView;I)I

    .line 473
    .end local v0    # "tempdistanceY":F
    :cond_35
    cmpg-float v3, p4, v4

    if-gez v3, :cond_6b

    .line 476
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_5b

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$100(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I

    move-result v3

    if-ge v2, v3, :cond_5b

    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$200(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I

    move-result v3

    if-le v2, v3, :cond_5b

    invoke-static {}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$300()I

    move-result v3

    if-le v1, v3, :cond_5b

    .line 478
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3, v5}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$002(Lcom/pantech/app/music/list/component/view/ArrangeListView;I)I

    .line 491
    :cond_5a
    :goto_5a
    return v7

    .line 479
    :cond_5b
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$200(Lcom/pantech/app/music/list/component/view/ArrangeListView;)I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    if-ge v2, v3, :cond_5a

    .line 480
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3, v6}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$002(Lcom/pantech/app/music/list/component/view/ArrangeListView;I)I

    goto :goto_5a

    .line 482
    :cond_6b
    cmpl-float v3, p4, v4

    if-lez v3, :cond_5a

    .line 485
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_89

    if-lez v2, :cond_89

    invoke-static {}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$400()I

    move-result v3

    if-ge v2, v3, :cond_89

    invoke-static {}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$300()I

    move-result v3

    if-le v1, v3, :cond_89

    .line 486
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3, v7}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$002(Lcom/pantech/app/music/list/component/view/ArrangeListView;I)I

    goto :goto_5a

    .line 487
    :cond_89
    invoke-static {}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$400()I

    move-result v3

    if-le v2, v3, :cond_5a

    .line 488
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$1;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3, v6}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$002(Lcom/pantech/app/music/list/component/view/ArrangeListView;I)I

    goto :goto_5a
.end method
