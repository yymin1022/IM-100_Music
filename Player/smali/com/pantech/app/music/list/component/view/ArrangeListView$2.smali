.class Lcom/pantech/app/music/list/component/view/ArrangeListView$2;
.super Landroid/os/Handler;
.source "ArrangeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/ArrangeListView;
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
    .line 669
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 676
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 678
    .local v1, "pos":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_3c

    .line 699
    :goto_8
    return-void

    .line 680
    :pswitch_9
    const/4 v2, 0x0

    .line 683
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$500(Lcom/pantech/app/music/list/component/view/ArrangeListView;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 684
    const/4 v0, 0x0

    .line 685
    .local v0, "i":I
    :goto_13
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v3, v0}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 686
    if-nez v2, :cond_21

    .line 697
    .end local v0    # "i":I
    :cond_1b
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->invalidateViews()V

    goto :goto_8

    .line 689
    .restart local v0    # "i":I
    :cond_21
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-static {v3, v4, v2}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->access$600(Lcom/pantech/app/music/list/component/view/ArrangeListView;ZLjava/lang/Object;)V

    .line 690
    iget-object v3, p0, Lcom/pantech/app/music/list/component/view/ArrangeListView$2;->this$0:Lcom/pantech/app/music/list/component/view/ArrangeListView;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/component/view/ArrangeListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v1, v3

    if-ne v0, v3, :cond_37

    .line 691
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 684
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 693
    :cond_37
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_34

    .line 678
    nop

    :pswitch_data_3c
    .packed-switch -0x63
        :pswitch_9
    .end packed-switch
.end method
