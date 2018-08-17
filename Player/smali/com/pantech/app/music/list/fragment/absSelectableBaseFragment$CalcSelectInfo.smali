.class public Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalcSelectInfo"
.end annotation


# instance fields
.field mContentSelectCountInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

.field mListener:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;

.field mSelectState:I

.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;)V
    .registers 3
    .param p2, "listener"    # Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;

    .prologue
    .line 994
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 995
    iput-object p2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->mListener:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;

    .line 996
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->getAllCount(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->mContentSelectCountInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    .line 1007
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v2, v2, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->mContentSelectCountInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/SelectManager;->getCheckState(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->mSelectState:I

    .line 1009
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mListHandler:Lcom/pantech/app/music/list/fragment/FragmentMainHandler;

    new-instance v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo$1;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/FragmentMainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1017
    return-void
.end method
