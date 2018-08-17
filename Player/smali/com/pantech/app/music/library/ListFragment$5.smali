.class Lcom/pantech/app/music/library/ListFragment$5;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->startActionMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;)V
    .registers 2

    .prologue
    .line 528
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 596
    const-string v0, "ListFragment"

    const-string v1, "onActionItemClicked()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 13
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 531
    const-string v4, "ListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateActionMode() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v6, v6, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-static {v4, v3}, Lcom/pantech/app/music/library/ListFragment;->access$000(Lcom/pantech/app/music/library/ListFragment;Z)V

    .line 535
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 536
    .local v1, "inflater":Landroid/view/MenuInflater;
    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo;->getActionMenuID()I

    move-result v4

    invoke-virtual {v1, v4, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_47

    .line 538
    invoke-interface {p2, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 563
    :cond_47
    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    new-instance v5, Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v7, v7, Lcom/pantech/app/music/library/ListFragment;->mActionModeView:Landroid/view/View;

    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v8, v8, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v8}, Lcom/pantech/app/music/library/FragmentInfo;->getActionMenuID()I

    move-result v8

    iget-object v9, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-static {v9}, Lcom/pantech/app/music/library/ListFragment;->access$100(Lcom/pantech/app/music/library/ListFragment;)Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/pantech/app/music/library/helper/ActionMenuHelper;-><init>(Landroid/app/Activity;Landroid/view/View;ILcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;)V

    iput-object v5, v4, Lcom/pantech/app/music/library/ListFragment;->mActionMenuHelper:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    .line 564
    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListFragment;->mActionMenuHelper:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    iget-object v5, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v5, v5, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v5

    if-nez v5, :cond_79

    move v2, v3

    :cond_79
    invoke-virtual {v4, v2}, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->show(Z)V

    .line 565
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 6
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v0, 0x0

    .line 570
    const-string v1, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroyActionMode() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v3, v3, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/pantech/app/music/library/ListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 573
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mActionMenuHelper:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    if-nez v1, :cond_35

    .line 578
    :cond_34
    :goto_34
    return-void

    .line 576
    :cond_35
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-static {v1, v0}, Lcom/pantech/app/music/library/ListFragment;->access$000(Lcom/pantech/app/music/library/ListFragment;Z)V

    .line 577
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mActionMenuHelper:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/library/FragmentInfo;->hasOptions(I)Z

    move-result v2

    if-nez v2, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->hide(Z)V

    goto :goto_34
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 582
    const-string v1, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareActionMode() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v3, v3, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mActionMenuHelper:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    if-eqz v1, :cond_41

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "options":I
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->isFixedItemChecked()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 587
    const/4 v0, 0x1

    .line 589
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mActionMenuHelper:Lcom/pantech/app/music/library/helper/ActionMenuHelper;

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$5;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v2}, Lcom/pantech/app/music/library/IListAdapter;->getCheckedCount()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/pantech/app/music/library/helper/ActionMenuHelper;->onPrepareMenu(II)V

    .line 591
    .end local v0    # "options":I
    :cond_41
    const/4 v1, 0x1

    return v1
.end method
