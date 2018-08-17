.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;
.super Lcom/pantech/app/music/list/component/DeleteConfirmDialog$DeleleteDialogRunnable;
.source "absSelectableBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->processSelectMenu(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDeleteThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;)V
    .registers 6
    .param p2, "x0"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p3, "x1"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 1411
    .local p4, "x2":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-direct {p0, p2, p3, p4}, Lcom/pantech/app/music/list/component/DeleteConfirmDialog$DeleleteDialogRunnable;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;)V

    .line 1412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mDeleteThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/PageInfoType;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1418
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1419
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    .line 1435
    :goto_10
    new-instance v0, Lcom/pantech/app/music/list/module/DeleteContents;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mSelectedInfo:Ljava/util/Collection;

    new-instance v4, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4$1;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pantech/app/music/list/module/DeleteContents;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/list/PageInfoType;Ljava/util/Collection;Lcom/pantech/app/music/list/module/DeleteContents$OnDeleteCompleteListener;)V

    .line 1456
    .local v0, "mDeleteContents":Lcom/pantech/app/music/list/module/DeleteContents;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v3}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mDeleteThread:Ljava/lang/Thread;

    .line 1457
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mDeleteThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1458
    return-void

    .line 1420
    .end local v0    # "mDeleteContents":Lcom/pantech/app/music/list/module/DeleteContents;
    :cond_46
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isRemovingCategory()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 1421
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080189

    const v4, 0x7f080182

    invoke-static {v2, v3, v4, v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->showLoadingPopupList(Landroid/app/Activity;IIZ)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v2

    iput-object v2, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    goto :goto_10

    .line 1423
    :cond_67
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$4;->mContextServiceWrapper:Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;

    invoke-interface {v2}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080186

    const v4, 0x7f08017f

    invoke-static {v2, v3, v4, v5}, Lcom/pantech/app/music/view/SkyDialogFragment;->showLoadingPopupList(Landroid/app/Activity;IIZ)Lcom/pantech/app/music/view/SkyDialogFragment;

    move-result-object v2

    iput-object v2, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    goto :goto_10
.end method
