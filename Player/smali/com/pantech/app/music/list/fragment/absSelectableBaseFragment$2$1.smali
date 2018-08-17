.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2$1;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;)V
    .registers 2

    .prologue
    .line 516
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDone()V
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-boolean v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mFragmentDetaching:Z

    if-nez v0, :cond_18

    .line 523
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->updateChecked()V

    .line 524
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2$1;->this$1:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mDialogProgress:Lcom/pantech/app/music/view/SkyDialogFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyDialogFragment;->dismissAllowingStateLoss()V

    .line 526
    :cond_18
    return-void
.end method
