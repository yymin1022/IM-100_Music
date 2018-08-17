.class Lcom/pantech/app/music/library/ListFragment$3;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/ListFragment;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment;)V
    .registers 2

    .prologue
    .line 257
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$3;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$3;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_13

    .line 261
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$3;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->mFloatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->show()V

    .line 263
    :cond_13
    return-void
.end method
