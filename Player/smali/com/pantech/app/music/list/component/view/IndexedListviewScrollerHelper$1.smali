.class Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;
.super Landroid/os/Handler;
.source "IndexedListviewScrollerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;->this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 53
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;->this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget-boolean v0, v1, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mbShowIndexTitle:Z

    .line 54
    .local v0, "bShow":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2e

    .line 70
    :cond_a
    :goto_a
    return-void

    .line 57
    :pswitch_b
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;->this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mbShowIndexTitle:Z

    .line 58
    if-ne v3, v0, :cond_a

    .line 59
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;->this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget-object v1, v1, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mListview:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_a

    .line 62
    :pswitch_1a
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;->this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iput-boolean v3, v1, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mbShowIndexTitle:Z

    goto :goto_a

    .line 66
    :pswitch_1f
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;->this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget-object v1, v1, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    if-eqz v1, :cond_a

    .line 67
    iget-object v1, p0, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper$1;->this$0:Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;

    iget-object v1, v1, Lcom/pantech/app/music/list/component/view/IndexedListviewScrollerHelper;->mIndexBar:Lcom/pantech/app/music/list/adapter/helper/Indexbar;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/helper/Indexbar;->awakenScrollBars()V

    goto :goto_a

    .line 54
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method
