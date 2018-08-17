.class Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;
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
    name = "PlayListRunnable"
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

.field playlistID:J

.field set:Z

.field final synthetic this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/util/ArrayList;JZJ)V
    .registers 8
    .param p3, "playlistID"    # J
    .param p5, "set"    # Z
    .param p6, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;JZJ)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p2, "audioIDArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-wide p3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->playlistID:J

    .line 532
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->audioIDArray:Ljava/util/ArrayList;

    .line 533
    iput-boolean p5, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->set:Z

    .line 534
    iput-wide p6, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->delay:J

    .line 535
    return-void
.end method

.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;JZJ)V
    .registers 8
    .param p2, "list"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p3, "playlistID"    # J
    .param p5, "set"    # Z
    .param p6, "delay"    # J

    .prologue
    .line 537
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput-wide p3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->playlistID:J

    .line 539
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 540
    iput-boolean p5, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->set:Z

    .line 541
    iput-wide p6, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->delay:J

    .line 542
    return-void
.end method


# virtual methods
.method public run()V
    .registers 32

    .prologue
    .line 547
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->delay:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_48

    .line 553
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->playlistID:J

    invoke-static {v4, v6, v7}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->getPlayListName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    .line 556
    .local v25, "playlistName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->set:Z

    if-eqz v4, :cond_194

    .line 557
    sget-object v4, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->playlistID:J

    const/4 v5, -0x1

    invoke-static {v4, v6, v7, v5}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v18

    .line 558
    .local v18, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 559
    .local v15, "cursor":Landroid/database/Cursor;
    if-nez v15, :cond_4d

    .line 634
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v18    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    :goto_47
    return-void

    .line 548
    .end local v25    # "playlistName":Ljava/lang/String;
    :catch_48
    move-exception v16

    .line 549
    .local v16, "e":Ljava/lang/InterruptedException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 563
    .end local v16    # "e":Ljava/lang/InterruptedException;
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    .restart local v25    # "playlistName":Ljava/lang/String;
    :cond_4d
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 564
    .local v12, "baseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :goto_52
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 565
    const-string v4, "audio_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v4, "PlaylistHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "playOrder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "play_order"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 570
    :cond_91
    invoke-interface {v15}, Landroid/database/Cursor;->moveToLast()Z

    .line 571
    const-string v4, "play_order"

    invoke-static {v15, v4}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v24

    .line 574
    .local v24, "playOrder":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v14, "contentValuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .local v11, "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    array-length v0, v11

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_a8
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_e8

    aget-object v19, v11, v17

    .line 576
    .local v19, "itemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 575
    :goto_be
    add-int/lit8 v17, v17, 0x1

    goto :goto_a8

    .line 578
    :cond_c1
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .local v29, "value":Landroid/content/ContentValues;
    const-string v4, "play_order"

    add-int/lit8 v24, v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v4, "audio_id"

    invoke-virtual/range {v19 .. v19}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 581
    move-object/from16 v0, v29

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_be

    .line 586
    .end local v19    # "itemInfo":Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v29    # "value":Landroid/content/ContentValues;
    :cond_e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 587
    .local v27, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v10

    .line 589
    .local v10, "addedCount":I
    if-nez v10, :cond_13e

    .line 590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0801a3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 633
    .end local v10    # "addedCount":I
    .end local v11    # "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v12    # "baseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v14    # "contentValuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "i$":I
    .end local v18    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    .end local v22    # "len$":I
    .end local v24    # "playOrder":I
    .local v23, "msg":Ljava/lang/String;
    :goto_11f
    new-instance v4, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v5, v5, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v0, v23

    invoke-direct {v5, v6, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_47

    .line 591
    .end local v23    # "msg":Ljava/lang/String;
    .restart local v10    # "addedCount":I
    .restart local v11    # "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v12    # "baseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v14    # "contentValuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "i$":I
    .restart local v18    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    .restart local v22    # "len$":I
    .restart local v24    # "playOrder":I
    :cond_13e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v4, v4

    if-ge v10, v4, :cond_16f

    .line 592
    const v4, 0x7f0d0007

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v26

    .line 593
    .local v26, "quantifyString":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v6, v6

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "msg":Ljava/lang/String;
    goto :goto_11f

    .line 595
    .end local v23    # "msg":Ljava/lang/String;
    .end local v26    # "quantifyString":Ljava/lang/String;
    :cond_16f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0006

    invoke-virtual {v4, v5, v10}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v26

    .line 596
    .restart local v26    # "quantifyString":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    const/4 v5, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "msg":Ljava/lang/String;
    goto :goto_11f

    .line 601
    .end local v10    # "addedCount":I
    .end local v11    # "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v12    # "baseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v14    # "contentValuesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v17    # "i$":I
    .end local v18    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    .end local v22    # "len$":I
    .end local v23    # "msg":Ljava/lang/String;
    .end local v24    # "playOrder":I
    .end local v26    # "quantifyString":Ljava/lang/String;
    .end local v27    # "r":Landroid/content/res/Resources;
    :cond_194
    sget-object v4, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->playlistID:J

    const/4 v5, -0x1

    invoke-static {v4, v6, v7, v5}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getContentUri(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Landroid/net/Uri;

    move-result-object v13

    .line 604
    .local v13, "contentUri":Landroid/net/Uri;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v30, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->audioIDArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_1b3
    :goto_1b3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 607
    .local v20, "item":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-ltz v4, :cond_1b3

    .line 609
    move-object/from16 v0, v30

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 610
    const/16 v4, 0x2c

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1b3

    .line 612
    .end local v20    # "item":J
    :cond_1d8
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1f3

    .line 613
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 615
    :cond_1f3
    const/16 v4, 0x29

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 619
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 620
    .restart local v27    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v13, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 621
    .local v28, "removedCount":I
    if-nez v28, :cond_228

    .line 622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const v5, 0x7f0801a5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "msg":Ljava/lang/String;
    goto/16 :goto_11f

    .line 623
    .end local v23    # "msg":Ljava/lang/String;
    :cond_228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->audioIDArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_265

    .line 624
    const v4, 0x7f0d000b

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v26

    .line 625
    .restart local v26    # "quantifyString":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;->audioIDArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v6, v6, v28

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "msg":Ljava/lang/String;
    goto/16 :goto_11f

    .line 627
    .end local v23    # "msg":Ljava/lang/String;
    .end local v26    # "quantifyString":Ljava/lang/String;
    :cond_265
    const v4, 0x7f0d000a

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v26

    .line 628
    .restart local v26    # "quantifyString":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v25, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, v26

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .restart local v23    # "msg":Ljava/lang/String;
    goto/16 :goto_11f
.end method
