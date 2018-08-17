.class Lcom/pantech/app/music/list/fragment/ChildListViewManager$1;
.super Ljava/lang/Object;
.source "ChildListViewManager.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/ChildListViewManager;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/ChildListViewManager;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/ChildListViewManager;)V
    .registers 2

    .prologue
    .line 438
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager$1;->this$0:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectDone()V
    .registers 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ChildListViewManager$1;->this$0:Lcom/pantech/app/music/list/fragment/ChildListViewManager;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/ChildListViewManager;->mParentFragment:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    check-cast v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->onSelectChanged(ZLcom/pantech/app/music/list/db/SelectCallbackParam;)V

    .line 443
    return-void
.end method
