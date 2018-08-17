.class Lcom/pantech/app/music/list/fragment/GroupGridFragment$1;
.super Ljava/lang/Object;
.source "GroupGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/GroupGridFragment;->onPageSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/GroupGridFragment;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mIAdapter:Lcom/pantech/app/music/list/adapter/IAdapterCommon;

    invoke-interface {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon;->cmGetCursor()Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/GroupGridFragment$1;->this$0:Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    iget-object v2, v2, Lcom/pantech/app/music/list/fragment/GroupGridFragment;->mCursorLock:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteEmptyGenres(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Object;)I

    .line 328
    return-void
.end method
