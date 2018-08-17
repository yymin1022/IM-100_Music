.class Lcom/pantech/app/music/library/ListFragment$15;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListFragment;->requestCartTracks()V
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
    .line 1387
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$15;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNegativeClick(Landroid/app/DialogFragment;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 1394
    return-void
.end method

.method public onDialogPositiveClick(Landroid/app/DialogFragment;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 1390
    return-void
.end method

.method public onItemSelected(JLcom/pantech/app/music/library/FragmentInfo$Category;)V
    .registers 9
    .param p1, "itemID"    # J
    .param p3, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 1398
    const-string v1, "ListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$15;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v0, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    sget-object v1, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p3}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    .line 1420
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$15;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v1}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addTracksToList(J[Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 1421
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$15;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    .line 1424
    :goto_48
    return-void

    .line 1402
    :pswitch_49
    const-wide/16 v2, -0x1

    const v1, 0x7f080045

    new-instance v4, Lcom/pantech/app/music/library/ListFragment$15$1;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/library/ListFragment$15$1;-><init>(Lcom/pantech/app/music/library/ListFragment$15;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V

    goto :goto_48

    .line 1400
    nop

    :pswitch_data_58
    .packed-switch 0xf
        :pswitch_49
    .end packed-switch
.end method
