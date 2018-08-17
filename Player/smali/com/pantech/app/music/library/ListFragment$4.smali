.class Lcom/pantech/app/music/library/ListFragment$4;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 493
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$4;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonSelected(Z)V
    .registers 2
    .param p1, "yes"    # Z

    .prologue
    .line 500
    return-void
.end method

.method public onDialogDismissed()V
    .registers 1

    .prologue
    .line 503
    return-void
.end method

.method public onItemSelected(J)V
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 496
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$4;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/pantech/app/music/utils/IntentUtils;->gotoSelectList(Landroid/app/Activity;J)V

    .line 497
    return-void
.end method
