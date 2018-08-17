.class public Lcom/pantech/app/music/library/helper/PlaylistHelper;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/helper/PlaylistHelper$6;,
        Lcom/pantech/app/music/library/helper/PlaylistHelper$PopupToastRunnable;,
        Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;,
        Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;,
        Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;,
        Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;,
        Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;,
        Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;
    }
.end annotation


# static fields
.field public static final ITEM_ID_FAVORITE:I = -0x6

.field public static final ITEM_ID_MOST_PLAYED:I = -0x5

.field public static final ITEM_ID_NOW_PLAYING:I = -0x7

.field public static final ITEM_ID_PLAY_ALL:I = -0x64

.field public static final OPTION_BASIC_LIST_ALL:I = 0xff

.field public static final OPTION_FAVORITE:I = 0x4

.field public static final OPTION_MOST_PLAYED:I = 0x1

.field public static final OPTION_NOW_PLAYING:I = 0x8

.field public static final OPTION_PLAYLIST_ADD:I = 0x100

.field public static final OPTION_PLAY_ALL:I = 0x10

.field public static final OPTION_RECENTLY_ADDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PlaylistHelper"


# instance fields
.field mContext:Landroid/content/Context;

.field mEditText:Landroid/widget/EditText;

.field mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

.field mListener:Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 73
    iput-object p1, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;J)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/library/helper/PlaylistHelper;
    .param p1, "x1"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "x2"    # J

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addFavorite([Lcom/pantech/app/music/list/MusicItemInfo;J)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->checkPlayList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;JLjava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->renamePlayList(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method private addFavorite([Lcom/pantech/app/music/list/MusicItemInfo;J)V
    .registers 12
    .param p1, "itemList"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "delay"    # J

    .prologue
    .line 500
    if-nez p1, :cond_3

    .line 503
    :goto_2
    return-void

    .line 502
    :cond_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;ZJ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method private addNowPlaying([Lcom/pantech/app/music/list/MusicItemInfo;J)V
    .registers 12
    .param p1, "itemList"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "delay"    # J

    .prologue
    .line 488
    if-nez p1, :cond_3

    .line 491
    :goto_2
    return-void

    .line 490
    :cond_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;ZJ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method private addToPlayList([Lcom/pantech/app/music/list/MusicItemInfo;JJ)V
    .registers 16
    .param p1, "itemList"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "playlistID"    # J
    .param p4, "delay"    # J

    .prologue
    .line 506
    if-nez p1, :cond_3

    .line 509
    :goto_2
    return-void

    .line 508
    :cond_3
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;[Lcom/pantech/app/music/list/MusicItemInfo;JZJ)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method private static checkPlayList(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "mDBInterface":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v2, p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->checkPlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v1

    .line 111
    .local v1, "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    sget-object v2, Lcom/pantech/app/music/library/helper/PlaylistHelper$6;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistMakeErrorType:[I

    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3e

    .line 130
    :goto_16
    const/4 v2, 0x0

    :goto_17
    return v2

    .line 113
    :pswitch_18
    const v2, 0x7f080141

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_16

    .line 116
    :pswitch_1f
    const v2, 0x7f08015b

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_16

    .line 119
    :pswitch_26
    const v2, 0x7f080139

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_16

    .line 122
    :pswitch_2d
    const v2, 0x7f08012f

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_16

    .line 125
    :pswitch_34
    const v2, 0x7f0800db

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_16

    .line 128
    :pswitch_3b
    const/4 v2, 0x1

    goto :goto_17

    .line 111
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1f
        :pswitch_26
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method public static getAddedTime(Landroid/content/Context;J)J
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistID"    # J

    .prologue
    const/4 v2, 0x0

    .line 187
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 188
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 190
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 191
    .local v8, "time":J
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 192
    const-string v0, "date_added"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 194
    :cond_34
    if-eqz v6, :cond_39

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_39
    return-wide v8
.end method

.method public static getPlayListName(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistID"    # J

    .prologue
    .line 77
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_d

    .line 78
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1, p0, p1, p2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_c
    return-object v0

    .line 82
    :cond_d
    long-to-int v1, p1

    packed-switch v1, :pswitch_data_24

    .line 90
    const-string v0, ""

    .local v0, "playlistName":Ljava/lang/String;
    goto :goto_c

    .line 84
    .end local v0    # "playlistName":Ljava/lang/String;
    :pswitch_14
    const v1, 0x7f08011d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "playlistName":Ljava/lang/String;
    goto :goto_c

    .line 87
    .end local v0    # "playlistName":Ljava/lang/String;
    :pswitch_1c
    const v1, 0x7f08011c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .restart local v0    # "playlistName":Ljava/lang/String;
    goto :goto_c

    .line 82
    :pswitch_data_24
    .packed-switch -0x7
        :pswitch_14
        :pswitch_1c
    .end packed-switch
.end method

.method public static makePlayList(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "mDBInterface":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v2, p1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v1

    .line 136
    .local v1, "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    if-eq v1, v2, :cond_12

    .line 137
    const-wide/16 v2, -0x1

    .line 139
    :goto_11
    return-wide v2

    :cond_12
    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->getPlaylistID()J

    move-result-wide v2

    goto :goto_11
.end method

.method public static rearrangeItemList(Landroid/content/Context;JLandroid/database/Cursor;II)V
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistID"    # J
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "from"    # I
    .param p5, "to"    # I

    .prologue
    .line 451
    move/from16 v0, p4

    move/from16 v1, p5

    if-eq v0, v1, :cond_a

    if-ltz p4, :cond_a

    if-gez p5, :cond_b

    .line 479
    :cond_a
    :goto_a
    return-void

    .line 454
    :cond_b
    const-string v13, "PlaylistHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "rearrangeItemList() from:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", to:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v2, "addList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_37
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-ge v6, v13, :cond_4f

    .line 458
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 459
    new-instance v13, Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    add-int/lit8 v6, v6, 0x1

    goto :goto_37

    .line 461
    :cond_4f
    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;

    .line 462
    .local v5, "fromInfo":Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;
    move/from16 v0, p5

    invoke-virtual {v2, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 465
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 466
    .local v11, "resolver":Landroid/content/ContentResolver;
    sget-object v13, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const/4 v14, -0x1

    move-wide/from16 v0, p1

    invoke-static {v13, v0, v1, v14}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getContentUri(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Landroid/net/Uri;

    move-result-object v3

    .line 467
    .local v3, "contentUri":Landroid/net/Uri;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v3, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 470
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v4, "contentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 472
    .local v9, "playOrder":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;

    .line 473
    .local v8, "itemInfo":Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .local v12, "value":Landroid/content/ContentValues;
    const-string v13, "play_order"

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "playOrder":I
    .local v10, "playOrder":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const-string v13, "audio_id"

    iget-wide v14, v8, Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;->mAudioID:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 476
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v10

    .line 477
    .end local v10    # "playOrder":I
    .restart local v9    # "playOrder":I
    goto :goto_78

    .line 478
    .end local v8    # "itemInfo":Lcom/pantech/app/music/library/helper/PlaylistHelper$ItemInfo;
    .end local v12    # "value":Landroid/content/ContentValues;
    :cond_a4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/ContentValues;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/ContentValues;

    invoke-virtual {v11, v3, v13}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_a
.end method

.method public static rearrangeNowPlaying(II)V
    .registers 4
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 482
    if-eq p0, p1, :cond_6

    if-ltz p0, :cond_6

    if-gez p1, :cond_7

    .line 485
    :cond_6
    :goto_6
    return-void

    .line 484
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/music/library/helper/PlaylistHelper$rearrangeRunnable;-><init>(II)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method

.method private removeFavorite(Ljava/util/ArrayList;J)V
    .registers 12
    .param p2, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 512
    .local p1, "audioIDArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p1, :cond_3

    .line 515
    :goto_2
    return-void

    .line 514
    :cond_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper$FavoriteRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/util/ArrayList;ZJ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method private removeFromPlayList(JLjava/util/ArrayList;J)V
    .registers 15
    .param p1, "playlistID"    # J
    .param p4, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p3, "audioIDArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p3, :cond_3

    .line 521
    :goto_2
    return-void

    .line 520
    :cond_3
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/library/helper/PlaylistHelper$PlayListRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/util/ArrayList;JZJ)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method private removeNowPlaying(Ljava/util/ArrayList;J)V
    .registers 12
    .param p2, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "audioIDArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p1, :cond_3

    .line 497
    :goto_2
    return-void

    .line 496
    :cond_3
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper$NowPlayingRunnable;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Ljava/util/ArrayList;ZJ)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public static removePlayLists(Landroid/content/Context;Ljava/util/ArrayList;)I
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "playlistIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v5, 0x2c

    .line 201
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 204
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v3, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 207
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 210
    .end local v1    # "id":Ljava/lang/Long;
    :cond_25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_3a

    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 213
    :cond_3a
    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    const-string v4, "PlaylistHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removePlayLists() URI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", where:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const v4, 0x7f08011b

    invoke-static {p0, v4}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    return v4
.end method

.method private static renamePlayList(Landroid/content/Context;JLjava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistID"    # J
    .param p3, "playlistName"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;-><init>(Landroid/content/Context;)V

    .line 145
    .local v0, "mDBInterfacePlaylist":Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 146
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NO_NAME:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 151
    .local v1, "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    :goto_d
    sget-object v2, Lcom/pantech/app/music/library/helper/PlaylistHelper$6;->$SwitchMap$com$pantech$app$music$list$db$DBInterfacePlaylist$PlaylistMakeErrorType:[I

    invoke-virtual {v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4c

    .line 184
    :goto_18
    return-void

    .line 148
    .end local v1    # "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    :cond_19
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    long-to-int v3, p1

    invoke-virtual {v0, v2, v3, p3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->renamePlayList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v1

    .restart local v1    # "resultCode":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    goto :goto_d

    .line 153
    :pswitch_21
    const v2, 0x7f08015b

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_18

    .line 157
    :pswitch_28
    const v2, 0x7f080139

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_18

    .line 161
    :pswitch_2f
    const v2, 0x7f08012f

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_18

    .line 165
    :pswitch_36
    const v2, 0x7f080141

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_18

    .line 177
    :pswitch_3d
    const v2, 0x7f08011e

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_18

    .line 181
    :pswitch_44
    const v2, 0x7f0800dc

    invoke-static {p0, v2}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_18

    .line 151
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_36
        :pswitch_21
        :pswitch_28
        :pswitch_2f
        :pswitch_44
        :pswitch_3d
    .end packed-switch
.end method


# virtual methods
.method public addTracksToList(J[Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 11
    .param p1, "playlistID"    # J
    .param p3, "itemList"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const-wide/16 v4, 0x0

    .line 224
    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_10

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0800f7

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 238
    :cond_f
    :goto_f
    return-void

    .line 229
    :cond_10
    const-wide/16 v0, -0x7

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    .line 230
    invoke-direct {p0, p3, v4, v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addNowPlaying([Lcom/pantech/app/music/list/MusicItemInfo;J)V

    goto :goto_f

    .line 232
    :cond_1a
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_24

    .line 233
    invoke-direct {p0, p3, v4, v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addFavorite([Lcom/pantech/app/music/list/MusicItemInfo;J)V

    goto :goto_f

    .line 235
    :cond_24
    cmp-long v0, p1, v4

    if-lez v0, :cond_f

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->addToPlayList([Lcom/pantech/app/music/list/MusicItemInfo;JJ)V

    goto :goto_f
.end method

.method public removeTracksFromList(JLjava/util/ArrayList;J)V
    .registers 9
    .param p1, "playlistID"    # J
    .param p4, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p3, "audioIDArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0800f9

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 255
    :cond_10
    :goto_10
    return-void

    .line 246
    :cond_11
    const-wide/16 v0, -0x7

    cmp-long v0, p1, v0

    if-nez v0, :cond_1b

    .line 247
    invoke-direct {p0, p3, p4, p5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->removeNowPlaying(Ljava/util/ArrayList;J)V

    goto :goto_10

    .line 249
    :cond_1b
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_25

    .line 250
    invoke-direct {p0, p3, p4, p5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->removeFavorite(Ljava/util/ArrayList;J)V

    goto :goto_10

    .line 252
    :cond_25
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    .line 253
    invoke-direct/range {p0 .. p5}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->removeFromPlayList(JLjava/util/ArrayList;J)V

    goto :goto_10
.end method

.method public showNotice4Created()V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f0800da

    invoke-static {v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 259
    return-void
.end method

.method public showPlayListEditDialog(JILcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;)V
    .registers 14
    .param p1, "playlistID"    # J
    .param p3, "titleResId"    # I
    .param p4, "listener"    # Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;

    .prologue
    .line 352
    const-string v3, "PlaylistHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showPlayListEditDialog() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iput-object p4, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mListener:Lcom/pantech/app/music/library/helper/PlaylistHelper$OnListener;

    .line 357
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_b3

    .line 358
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v3, v4}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getDefaultPlaylistName(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "playlistName":Ljava/lang/String;
    :goto_28
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 366
    const v3, 0x7f030078

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 369
    const v3, 0x7f08001b

    new-instance v4, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$2;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 392
    const v3, 0x7f0800af

    new-instance v4, Lcom/pantech/app/music/library/helper/PlaylistHelper$3;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$3;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 400
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v3, 0x7f100124

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    .line 401
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 402
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 404
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    const/16 v7, 0x1e

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 405
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 406
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    const v4, 0x7f08005c

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 407
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    const-string v4, "com.pantech.skyime.noEmoji"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 410
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/pantech/app/music/library/helper/PlaylistHelper$4;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$4;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 419
    iget-object v3, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mEditText:Landroid/widget/EditText;

    new-instance v4, Lcom/pantech/app/music/library/helper/PlaylistHelper$5;

    invoke-direct {v4, p0, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$5;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 438
    return-void

    .line 360
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "playlistName":Ljava/lang/String;
    :cond_b3
    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v4, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, p1, p2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "playlistName":Ljava/lang/String;
    goto/16 :goto_28
.end method

.method public showPlaylistDialog(Landroid/app/FragmentManager;J)Lcom/pantech/app/music/library/ListDialog;
    .registers 10
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "callerPlaylistID"    # J

    .prologue
    .line 330
    new-instance v2, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v3, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_DIALOG:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v4, 0x7f0800a6

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;I)V

    .line 331
    .local v2, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 332
    invoke-virtual {v2, p2, p3}, Lcom/pantech/app/music/library/FragmentInfo;->setPlayListID(J)V

    .line 335
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 336
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "bundle.key.fragment"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 339
    new-instance v1, Lcom/pantech/app/music/library/ListDialog;

    invoke-direct {v1}, Lcom/pantech/app/music/library/ListDialog;-><init>()V

    .line 341
    .local v1, "dialogFragment":Lcom/pantech/app/music/library/ListDialog;
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/library/ListDialog;->setArguments(Landroid/os/Bundle;)V

    .line 343
    const/4 v3, 0x0

    const v4, 0x7f0b0148

    invoke-virtual {v1, v3, v4}, Lcom/pantech/app/music/library/ListDialog;->setStyle(II)V

    .line 344
    const-string v3, "playlist_dialog"

    invoke-virtual {v1, p1, v3}, Lcom/pantech/app/music/library/ListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 346
    return-object v1
.end method

.method public showPlaylistDialog(Landroid/app/FragmentManager;Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 5
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "itemInfo"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 262
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 263
    .local v0, "itemList":[Lcom/pantech/app/music/list/MusicItemInfo;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 264
    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/music/library/helper/PlaylistHelper;->showPlaylistDialog(Landroid/app/FragmentManager;[Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 265
    return-void
.end method

.method public showPlaylistDialog(Landroid/app/FragmentManager;[Lcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 9
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .param p2, "itemList"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 268
    iput-object p2, p0, Lcom/pantech/app/music/library/helper/PlaylistHelper;->mItemList:[Lcom/pantech/app/music/list/MusicItemInfo;

    .line 271
    new-instance v2, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v3, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_DIALOG:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v4, 0x7f0800a6

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;I)V

    .line 272
    .local v2, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/16 v3, 0x52

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 273
    const-wide/16 v4, -0x7

    invoke-virtual {v2, v4, v5}, Lcom/pantech/app/music/library/FragmentInfo;->setPlayListID(J)V

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "bundle.key.fragment"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 280
    new-instance v1, Lcom/pantech/app/music/library/ListDialog;

    invoke-direct {v1}, Lcom/pantech/app/music/library/ListDialog;-><init>()V

    .line 282
    .local v1, "dialogFragment":Lcom/pantech/app/music/library/ListDialog;
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/library/ListDialog;->setArguments(Landroid/os/Bundle;)V

    .line 283
    const/4 v3, 0x0

    const v4, 0x7f0b0148

    invoke-virtual {v1, v3, v4}, Lcom/pantech/app/music/library/ListDialog;->setStyle(II)V

    .line 284
    const-string v3, "playlist_dialog"

    invoke-virtual {v1, p1, v3}, Lcom/pantech/app/music/library/ListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 286
    new-instance v3, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/library/helper/PlaylistHelper$1;-><init>(Lcom/pantech/app/music/library/helper/PlaylistHelper;)V

    invoke-virtual {v1, v3}, Lcom/pantech/app/music/library/ListDialog;->setOnNoticeDialogListener(Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;)V

    .line 326
    return-void
.end method
