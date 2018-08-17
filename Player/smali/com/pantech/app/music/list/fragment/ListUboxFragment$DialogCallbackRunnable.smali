.class Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogCallbackRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;


# direct methods
.method private constructor <init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 2

    .prologue
    .line 742
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment;
    .param p2, "x1"    # Lcom/pantech/app/music/list/fragment/ListUboxFragment$1;

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;-><init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$000(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 767
    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$002(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)I

    .line 768
    return-void

    .line 750
    :pswitch_10
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 752
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, v1, :cond_9

    .line 753
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$100(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    goto :goto_9

    .line 756
    :pswitch_28
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$200(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    goto :goto_9

    .line 759
    :pswitch_2e
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$300(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    goto :goto_9

    .line 762
    :pswitch_34
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, v1, :cond_9

    .line 763
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$DialogCallbackRunnable;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$400(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    goto :goto_9

    .line 746
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_28
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method
