.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo$1;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;)V
    .registers 2

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->mListener:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->mContentSelectCountInfo:Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;

    iget v1, v1, Lcom/pantech/app/music/list/db/SelectManager$ContentsSelectCountInfo;->mAllSelectedCount:I

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;

    iget v2, v2, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfo;->mSelectState:I

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;->onCalcSelectInfoComplete(II)V

    .line 1015
    return-void
.end method
