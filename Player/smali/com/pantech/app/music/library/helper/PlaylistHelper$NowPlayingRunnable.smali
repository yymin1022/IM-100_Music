.class Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/helper/PlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NowPlayingRunnable"
.end annotation


# instance fields
.field audioIDArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field delay:J

.field itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field set:Z

.field final synthetic this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/util/ArrayList;ZJ)V
    .registers 6
    .param p3, "set"    # Z
    .param p4, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p2, "audioIDArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    .line 645
    iput-boolean p3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->set:Z

    .line 646
    iput-wide p4, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->delay:J

    .line 647
    return-void
.end method

.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;ZJ)V
    .registers 6
    .param p2, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p3, "set"    # Z
    .param p4, "delay"    # J

    .prologue
    .line 649
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 650
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 651
    iput-boolean p3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->set:Z

    .line 652
    iput-wide p4, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->delay:J

    .line 653
    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 658
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->delay:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_2c

    .line 664
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-wide/16 v22, -0x7

    invoke-static/range {v21 .. v23}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->getPlayListName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 667
    .local v16, "playlistName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->set:Z

    move/from16 v21, v0

    if-eqz v21, :cond_170

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    move-object/from16 v21, v0

    if-nez v21, :cond_31

    .line 738
    :cond_2b
    :goto_2b
    return-void

    .line 659
    .end local v16    # "playlistName":Ljava/lang/String;
    :catch_2c
    move-exception v8

    .line 660
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_9

    .line 671
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .restart local v16    # "playlistName":Ljava/lang/String;
    :cond_31
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v20

    .line 673
    .local v20, "tempList":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v20, :cond_ea

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_ea

    .line 676
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 677
    .local v7, "baseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    move-object/from16 v5, v20

    .local v5, "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_47
    if-ge v10, v12, :cond_63

    aget-object v11, v5, v10

    .line 678
    .local v11, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v11}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    .line 681
    .end local v11    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_63
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v14, "newArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v12, v5

    const/4 v10, 0x0

    :goto_6e
    if-ge v10, v12, :cond_89

    aget-object v11, v5, v10

    .line 683
    .restart local v11    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v11}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_85

    .line 682
    :goto_82
    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    .line 685
    :cond_85
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 688
    .end local v11    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_89
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v15, v0, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 689
    .local v15, "newList":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 690
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v15, v0}, Lcom/pantech/app/music/common/MusicUtils;->addQueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 699
    .end local v5    # "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v7    # "baseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v14    # "newArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :goto_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 700
    .local v18, "r":Landroid/content/res/Resources;
    array-length v4, v15

    .line 701
    .local v4, "addedCount":I
    if-nez v4, :cond_fa

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0801a3

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 737
    .end local v4    # "addedCount":I
    .end local v15    # "newList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v20    # "tempList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .local v13, "msg":Ljava/lang/String;
    :goto_c1
    new-instance v21, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v22, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v13}, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2b

    .line 693
    .end local v13    # "msg":Ljava/lang/String;
    .end local v18    # "r":Landroid/content/res/Resources;
    .restart local v20    # "tempList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 694
    .restart local v15    # "newList":[Lcom/pantech/app/music/list/MusicItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/common/MusicUtils;->addQueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    goto :goto_9b

    .line 703
    .restart local v4    # "addedCount":I
    .restart local v18    # "r":Landroid/content/res/Resources;
    :cond_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_147

    .line 704
    const v21, 0x7f0d0007

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v17

    .line 705
    .local v17, "quantifyString":Ljava/lang/String;
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, v4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "msg":Ljava/lang/String;
    goto/16 :goto_c1

    .line 707
    .end local v13    # "msg":Ljava/lang/String;
    .end local v17    # "quantifyString":Ljava/lang/String;
    :cond_147
    const v21, 0x7f0d0006

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v17

    .line 708
    .restart local v17    # "quantifyString":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    const/16 v22, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "msg":Ljava/lang/String;
    goto/16 :goto_c1

    .line 712
    .end local v4    # "addedCount":I
    .end local v13    # "msg":Ljava/lang/String;
    .end local v15    # "newList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v17    # "quantifyString":Ljava/lang/String;
    .end local v18    # "r":Landroid/content/res/Resources;
    .end local v20    # "tempList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2b

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v6, v0, [J

    .line 716
    .local v6, "audioIDs":[J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_1ac

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    aput-wide v22, v6, v9

    .line 716
    add-int/lit8 v9, v9, 0x1

    goto :goto_187

    .line 719
    :cond_1ac
    invoke-static {v6}, Lcom/pantech/app/music/common/MusicUtils;->removeQueue([J)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 724
    .restart local v18    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 725
    .local v19, "removedCount":I
    if-nez v19, :cond_1e0

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0801a5

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "msg":Ljava/lang/String;
    goto/16 :goto_c1

    .line 727
    .end local v13    # "msg":Ljava/lang/String;
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_22f

    .line 728
    const v21, 0x7f0d000b

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v17

    .line 729
    .restart local v17    # "quantifyString":Ljava/lang/String;
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;->audioIDArray:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    sub-int v23, v23, v19

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "msg":Ljava/lang/String;
    goto/16 :goto_c1

    .line 731
    .end local v13    # "msg":Ljava/lang/String;
    .end local v17    # "quantifyString":Ljava/lang/String;
    :cond_22f
    const v21, 0x7f0d000a

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v17

    .line 732
    .restart local v17    # "quantifyString":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v16, v21, v22

    const/16 v22, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "msg":Ljava/lang/String;
    goto/16 :goto_c1
.end method
