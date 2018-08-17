.class Lcom/pantech/app/music/library/ListFragment$15$1;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment$15;->onItemSelected(JLcom/pantech/app/music/library/FragmentInfo$Category;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/ListFragment$15;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListFragment$15;)V
    .registers 2

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$15$1;->this$1:Lcom/pantech/app/music/library/ListFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonSelected(Z)V
    .registers 2
    .param p1, "yes"    # Z

    .prologue
    .line 1412
    return-void
.end method

.method public onDialogDismissed()V
    .registers 1

    .prologue
    .line 1416
    return-void
.end method

.method public onItemSelected(J)V
    .registers 6
    .param p1, "id"    # J

    .prologue
    .line 1405
    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$15$1;->this$1:Lcom/pantech/app/music/library/ListFragment$15;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment$15;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 1406
    .local v0, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$15$1;->this$1:Lcom/pantech/app/music/library/ListFragment$15;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment$15;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addTracksToList(J[Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 1407
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$15$1;->this$1:Lcom/pantech/app/music/library/ListFragment$15;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment$15;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    .line 1408
    return-void
.end method
