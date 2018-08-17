.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked$1;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$CalcSelectInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;)V
    .registers 2

    .prologue
    .line 1039
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalcSelectInfoComplete(II)V
    .registers 5
    .param p1, "selectedCount"    # I
    .param p2, "selectState"    # I

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-boolean v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mActivityVisible:Z

    if-eqz v0, :cond_10

    .line 1045
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$UpdateChecked;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateSelectionMenu(IIZ)Z

    .line 1046
    :cond_10
    return-void
.end method
