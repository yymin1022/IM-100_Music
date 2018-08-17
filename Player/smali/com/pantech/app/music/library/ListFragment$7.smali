.class Lcom/pantech/app/music/library/ListFragment$7;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Lcom/pantech/app/music/library/helper/ActionMenuHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListFragment;
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
    .line 645
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/MenuItem;)V
    .registers 13
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v10, 0x7f0800af

    const v9, 0x7f080072

    const v8, 0x7f080026

    .line 649
    new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10306df

    invoke-direct {v1, v6, v7}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 651
    .local v1, "context":Landroid/content/Context;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_100

    .line 757
    :goto_1e
    :pswitch_1e
    return-void

    .line 664
    :pswitch_1f
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Lcom/pantech/app/music/library/ListFragment;->requestPlayTracks(J)V

    .line 665
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto :goto_1e

    .line 669
    :pswitch_2c
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->requestRingtone()V

    .line 670
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto :goto_1e

    .line 674
    :pswitch_37
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080123

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 675
    .local v5, "removeBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v6, Lcom/pantech/app/music/library/ListFragment$7$1;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$7$1;-><init>(Lcom/pantech/app/music/library/ListFragment$7;)V

    invoke-virtual {v5, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 681
    new-instance v6, Lcom/pantech/app/music/library/ListFragment$7$2;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$7$2;-><init>(Lcom/pantech/app/music/library/ListFragment$7;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 688
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1e

    .line 692
    .end local v5    # "removeBuilder":Landroid/app/AlertDialog$Builder;
    :pswitch_5b
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080122

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 693
    .local v2, "deleteBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v6, Lcom/pantech/app/music/library/ListFragment$7$3;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$7$3;-><init>(Lcom/pantech/app/music/library/ListFragment$7;)V

    invoke-virtual {v2, v10, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 699
    new-instance v6, Lcom/pantech/app/music/library/ListFragment$7$4;

    invoke-direct {v6, p0}, Lcom/pantech/app/music/library/ListFragment$7$4;-><init>(Lcom/pantech/app/music/library/ListFragment$7;)V

    invoke-virtual {v2, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 716
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1e

    .line 720
    .end local v2    # "deleteBuilder":Landroid/app/AlertDialog$Builder;
    :pswitch_7f
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->requestShare()V

    .line 721
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto :goto_1e

    .line 725
    :pswitch_8a
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->requestProperties()V

    .line 726
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto :goto_1e

    .line 730
    :pswitch_95
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->requestYoutube()V

    .line 731
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto/16 :goto_1e

    .line 735
    :pswitch_a1
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v6, v6, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v6}, Lcom/pantech/app/music/library/IListAdapter;->getGroupList()Ljava/util/ArrayList;

    move-result-object v3

    .line 736
    .local v3, "groupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 739
    .local v4, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const v8, 0x7f080066

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V

    .line 740
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto/16 :goto_1e

    .line 744
    .end local v3    # "groupArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v4    # "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    :pswitch_cd
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->requestCartTracks()V

    goto/16 :goto_1e

    .line 748
    :pswitch_d4
    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 749
    .local v0, "addHelper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v6, v6, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/FragmentInfo;->getPlaylistID()J

    move-result-wide v6

    iget-object v8, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v8, v8, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v8}, Lcom/pantech/app/music/library/IListAdapter;->getMusicList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addTracksToList(J[Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 750
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto/16 :goto_1e

    .line 754
    .end local v0    # "addHelper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    :pswitch_f9
    iget-object v6, p0, Lcom/pantech/app/music/library/ListFragment$7;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v6}, Lcom/pantech/app/music/library/ListFragment;->finishActionMode()V

    goto/16 :goto_1e

    .line 651
    :pswitch_data_100
    .packed-switch 0x7f1001eb
        :pswitch_1f
        :pswitch_cd
        :pswitch_5b
        :pswitch_7f
        :pswitch_2c
        :pswitch_37
        :pswitch_8a
        :pswitch_95
        :pswitch_a1
        :pswitch_1e
        :pswitch_f9
        :pswitch_d4
    .end packed-switch
.end method
