.class Lcom/pantech/app/music/list/fragment/absBaseFragment$3;
.super Ljava/lang/Object;
.source "absBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/fragment/absBaseFragment;->onQueryComplete(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/fragment/absBaseFragment;)V
    .registers 2

    .prologue
    .line 742
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/absBaseFragment$3;->this$0:Lcom/pantech/app/music/list/fragment/absBaseFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/fragment/absBaseFragment;->updateHintLayer(Landroid/view/View;)V

    .line 746
    return-void
.end method
