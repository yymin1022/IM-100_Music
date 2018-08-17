.class Lcom/pantech/app/music/library/ListFragment$7$4;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment$7;->onItemSelected(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/ListFragment$7;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment$7;)V
    .registers 2

    .prologue
    .line 699
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$7$4;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 702
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$7$4;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v2}, Lcom/pantech/app/music/library/IListAdapter;->getAvailableCount()I

    move-result v0

    .line 703
    .local v0, "itemsCount":I
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$7$4;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ListFragment;->requestRemoveGroups()I

    move-result v1

    .line 704
    .local v1, "removedItemsCount":I
    const-string v2, "ListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "items count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", removed items count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$7$4;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/pantech/app/music/library/activity/ListDetailActivity;

    if-eqz v2, :cond_4a

    .line 708
    if-ge v1, v0, :cond_49

    .line 709
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$7$4;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    .line 714
    :cond_49
    :goto_49
    return-void

    .line 712
    :cond_4a
    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$7$4;->this$1:Lcom/pantech/app/music/library/ListFragment$7;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto :goto_49
.end method
