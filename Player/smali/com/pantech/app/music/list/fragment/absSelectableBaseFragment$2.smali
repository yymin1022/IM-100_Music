.class Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;
.super Ljava/lang/Object;
.source "absSelectableBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->processOptionsMenu(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;)V
    .registers 2

    .prologue
    .line 510
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 515
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v0, v0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mSelectManager:Lcom/pantech/app/music/list/db/SelectManager;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v2, v2, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;->this$0:Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;

    iget-object v3, v3, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment;->mCursorLock:Ljava/lang/Object;

    new-instance v4, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2$1;-><init>(Lcom/pantech/app/music/list/fragment/absSelectableBaseFragment$2;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/music/list/db/SelectManager;->selectall(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/db/SelectManager$AsyncSelectDoneListener;)V

    .line 528
    return-void
.end method
