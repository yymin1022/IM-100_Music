.class Lcom/pantech/app/music/library/ListFragment$9;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListAdapter$OnItemClickListener;


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
    .line 779
    iput-object p1, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChecked(IZI)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "checked"    # Z
    .param p3, "count"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 837
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->startActionMode()V

    .line 840
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_24

    .line 841
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mSelectedCountFormat:Ljava/lang/String;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    :cond_24
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->iListAdapter:Lcom/pantech/app/music/library/IListAdapter;

    invoke-interface {v0}, Lcom/pantech/app/music/library/IListAdapter;->getAvailableCount()I

    move-result v0

    if-ne p3, v0, :cond_44

    .line 846
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_43

    .line 847
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iput-boolean v4, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBoxChangedByItemCheck:Z

    .line 848
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 857
    :cond_43
    :goto_43
    return-void

    .line 852
    :cond_44
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 853
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iput-boolean v4, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBoxChangedByItemCheck:Z

    .line 854
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->mCheckAllBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_43
.end method

.method public onItemRemoved(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v4, 0x1f4

    .line 812
    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;-><init>(Landroid/content/Context;)V

    .line 813
    .local v0, "helper":Lcom/pantech/app/music/library/helper/PlaylistHelper;
    move-object v3, p1

    .line 814
    .local v3, "itemArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v1, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v2, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v2, v2, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 820
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/pantech/app/music/library/ListFragment$9$1;

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/music/library/ListFragment$9$1;-><init>(Lcom/pantech/app/music/library/ListFragment$9;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 832
    :goto_2e
    return-void

    .line 817
    :pswitch_2f
    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->removeTracksFromList(JLjava/util/ArrayList;J)V

    goto :goto_2e

    .line 814
    nop

    :pswitch_data_3c
    .packed-switch 0x3
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method

.method public onItemSelected(Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;

    .prologue
    .line 861
    const-string v0, "ListFragment"

    const-string v1, "onSendItemInfo()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    sget-object v0, Lcom/pantech/app/music/library/ListFragment$17;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    iget-object v1, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListFragment;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_3a

    .line 870
    :goto_1a
    return-void

    .line 864
    :sswitch_1b
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getID()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/pantech/app/music/utils/IntentUtils;->sendShortcutInfoIntent(Landroid/app/Activity;JLjava/lang/String;)V

    goto :goto_1a

    .line 867
    :sswitch_2d
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    iget-object v0, v0, Lcom/pantech/app/music/library/ListFragment;->iListActivity:Lcom/pantech/app/music/library/IListActivity;

    invoke-virtual {p1}, Lcom/pantech/app/music/library/IListHolderHelper$ItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListActivity;->requestSearchQuery(Ljava/lang/String;)V

    goto :goto_1a

    .line 862
    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_2d
        0x5 -> :sswitch_1b
    .end sparse-switch
.end method

.method public onRequestDetailList(Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V
    .registers 4
    .param p1, "info"    # Lcom/pantech/app/music/library/FragmentInfo;
    .param p2, "transitionView"    # Landroid/view/View;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/pantech/app/music/utils/IntentUtils;->gotoDetailList(Landroid/app/Activity;Lcom/pantech/app/music/library/FragmentInfo;Landroid/view/View;)V

    .line 808
    return-void
.end method

.method public onRequestPlay([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 10
    .param p1, "playList"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "position"    # I

    .prologue
    .line 782
    const-string v4, "ListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRequestPlay position = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, "doNotMoveToPlayer":Z
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1e

    const/4 p2, 0x0

    const/4 v2, 0x1

    .line 792
    :cond_1e
    const-wide/16 v0, -0x1

    .line 793
    .local v0, "audioID":J
    if-ltz p2, :cond_2b

    array-length v4, p1

    if-ge p2, v4, :cond_2b

    .line 794
    aget-object v4, p1, p2

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    .line 797
    :cond_2b
    if-nez v2, :cond_4b

    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getPlayingID()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_4b

    const/4 v3, 0x1

    .line 799
    .local v3, "moveToPlayer":Z
    :goto_36
    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/pantech/app/music/list/module/PlayInterface;->playPlayer(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;I)Z

    .line 800
    if-eqz v3, :cond_4a

    .line 801
    iget-object v4, p0, Lcom/pantech/app/music/library/ListFragment$9;->this$0:Lcom/pantech/app/music/library/ListFragment;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/IntentUtils;->gotoPlayerFromList(Landroid/app/Activity;)V

    .line 803
    :cond_4a
    return-void

    .line 797
    .end local v3    # "moveToPlayer":Z
    :cond_4b
    const/4 v3, 0x0

    goto :goto_36
.end method
