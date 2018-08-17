.class Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;
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
    name = "FavoriteRunnable"
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
    .line 781
    .local p2, "audioIDArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->audioIDArray:Ljava/util/ArrayList;

    .line 783
    iput-boolean p3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->set:Z

    .line 784
    iput-wide p4, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->delay:J

    .line 785
    return-void
.end method

.method constructor <init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;ZJ)V
    .registers 6
    .param p2, "itemList"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p3, "set"    # Z
    .param p4, "delay"    # J

    .prologue
    .line 775
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 777
    iput-boolean p3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->set:Z

    .line 778
    iput-wide p4, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->delay:J

    .line 779
    return-void
.end method


# virtual methods
.method public run()V
    .registers 31

    .prologue
    .line 790
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->delay:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_2c

    .line 796
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const-wide/16 v4, -0x6

    invoke-static {v2, v4, v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->getPlayListName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    .line 799
    .local v20, "playlistName":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .local v29, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v2, " IN ("

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->set:Z

    if-eqz v2, :cond_55

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    if-nez v2, :cond_31

    .line 883
    :cond_2b
    :goto_2b
    return-void

    .line 791
    .end local v20    # "playlistName":Ljava/lang/String;
    .end local v29    # "whereBuilder":Ljava/lang/StringBuilder;
    :catch_2c
    move-exception v15

    .line 792
    .local v15, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 805
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .restart local v20    # "playlistName":Ljava/lang/String;
    .restart local v29    # "whereBuilder":Ljava/lang/StringBuilder;
    :cond_31
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .local v9, "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_3a
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_80

    aget-object v17, v9, v16

    .line 806
    .local v17, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 807
    const/16 v2, 0x2c

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    add-int/lit8 v16, v16, 0x1

    goto :goto_3a

    .line 811
    .end local v9    # "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v16    # "i$":I
    .end local v17    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v18    # "len$":I
    :cond_55
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->audioIDArray:Ljava/util/ArrayList;

    if-eqz v2, :cond_2b

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->audioIDArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_63
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 814
    .local v10, "audioID":J
    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 815
    const/16 v2, 0x2c

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 819
    .end local v10    # "audioID":J
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_80
    const-string v2, "("

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_9b

    .line 820
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 822
    :cond_9b
    const/16 v2, 0x29

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 824
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->set:Z

    if-eqz v2, :cond_f7

    const/16 v25, 0x1

    .line 827
    .local v25, "rating":I
    :goto_aa
    const/4 v14, 0x0

    .line 828
    .local v14, "duplicateCount":I
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    invoke-static {v2, v4, v5, v6}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getContentUri(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Landroid/net/Uri;

    move-result-object v3

    .line 829
    .local v3, "checkUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 830
    .local v13, "cursor":Landroid/database/Cursor;
    :cond_dc
    :goto_dc
    if-eqz v13, :cond_fa

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 831
    const-string v2, "rating"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 832
    .local v28, "value":I
    move/from16 v0, v28

    move/from16 v1, v25

    if-ne v0, v1, :cond_dc

    .line 833
    add-int/lit8 v14, v14, 0x1

    goto :goto_dc

    .line 824
    .end local v3    # "checkUri":Landroid/net/Uri;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v14    # "duplicateCount":I
    .end local v25    # "rating":I
    .end local v28    # "value":I
    :cond_f7
    const/16 v25, 0x0

    goto :goto_aa

    .line 836
    .restart local v3    # "checkUri":Landroid/net/Uri;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "duplicateCount":I
    .restart local v25    # "rating":I
    :cond_fa
    if-eqz v13, :cond_105

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_105

    .line 837
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_105
    sget-object v23, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueue;->CONTENT_URI:Landroid/net/Uri;

    .line 842
    .local v23, "queueUri":Landroid/net/Uri;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 843
    .local v22, "queueContentValues":Landroid/content/ContentValues;
    const-string v2, "rate"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audioID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 847
    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    invoke-static {v2, v4, v5, v6}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getContentUri(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Landroid/net/Uri;

    move-result-object v27

    .line 848
    .local v27, "uri":Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 849
    .local v12, "contentValues":Landroid/content/ContentValues;
    const-string v2, "rating"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v12, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 853
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->refreshQueue()V

    .line 855
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->set:Z

    if-eqz v2, :cond_214

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 858
    .local v24, "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v2, v2

    sub-int v8, v2, v14

    .line 859
    .local v8, "addedCount":I
    if-nez v8, :cond_1c6

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0801a3

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 882
    .end local v8    # "addedCount":I
    .local v19, "msg":Ljava/lang/String;
    :goto_1a7
    new-instance v2, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v4, v4, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2b

    .line 861
    .end local v19    # "msg":Ljava/lang/String;
    .restart local v8    # "addedCount":I
    :cond_1c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v2, v2

    if-ge v8, v2, :cond_1f7

    .line 862
    const v2, 0x7f0d0007

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v21

    .line 863
    .local v21, "quantifyString":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->itemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    array-length v5, v5

    sub-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "msg":Ljava/lang/String;
    goto :goto_1a7

    .line 865
    .end local v19    # "msg":Ljava/lang/String;
    .end local v21    # "quantifyString":Ljava/lang/String;
    :cond_1f7
    const v2, 0x7f0d0006

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v21

    .line 866
    .restart local v21    # "quantifyString":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v2, v4

    const/4 v4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "msg":Ljava/lang/String;
    goto :goto_1a7

    .line 870
    .end local v8    # "addedCount":I
    .end local v19    # "msg":Ljava/lang/String;
    .end local v21    # "quantifyString":Ljava/lang/String;
    .end local v24    # "r":Landroid/content/res/Resources;
    :cond_214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 871
    .restart local v24    # "r":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->audioIDArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v26, v2, v14

    .line 872
    .local v26, "removedCount":I
    if-nez v26, :cond_239

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->this$0:Lcom/pantech/app/music/library/helper/PlaylistHelper;

    iget-object v2, v2, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const v4, 0x7f0801a5

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "msg":Ljava/lang/String;
    goto/16 :goto_1a7

    .line 874
    .end local v19    # "msg":Ljava/lang/String;
    :cond_239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->audioIDArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_276

    .line 875
    const v2, 0x7f0d000b

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v21

    .line 876
    .restart local v21    # "quantifyString":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;->audioIDArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v5, v5, v26

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "msg":Ljava/lang/String;
    goto/16 :goto_1a7

    .line 878
    .end local v19    # "msg":Ljava/lang/String;
    .end local v21    # "quantifyString":Ljava/lang/String;
    :cond_276
    const v2, 0x7f0d000a

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v21

    .line 879
    .restart local v21    # "quantifyString":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v2, v4

    const/4 v4, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "msg":Ljava/lang/String;
    goto/16 :goto_1a7
.end method
