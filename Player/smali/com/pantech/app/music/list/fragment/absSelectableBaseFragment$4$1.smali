.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)V
    .registers 2

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(I)V
    .registers 6
    .param p1, "count"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->access$000(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 1442
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->access$100(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isRemovingCategory()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 1443
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->access$200(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-lez p1, :cond_54

    const v0, 0x7f080145

    :goto_2b
    invoke-static {v1, v0}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    .line 1448
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-boolean v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFragmentDetaching:Z

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    if-eqz v0, :cond_47

    .line 1450
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 1453
    :cond_47
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    iget-object v1, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    const/4 v2, 0x4

    if-lez p1, :cond_6f

    const/4 v0, 0x1

    :goto_4f
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onSelectMenuResult(IZLjava/lang/Object;)V

    .line 1454
    return-void

    .line 1443
    :cond_54
    const v0, 0x7f080144

    goto :goto_2b

    .line 1445
    :cond_58
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->access$300(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-lez p1, :cond_6b

    const v0, 0x7f08012b

    :goto_67
    invoke-static {v1, v0}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;I)V

    goto :goto_2e

    :cond_6b
    const v0, 0x7f08012a

    goto :goto_67

    .line 1453
    :cond_6f
    const/4 v0, 0x0

    goto :goto_4f
.end method
