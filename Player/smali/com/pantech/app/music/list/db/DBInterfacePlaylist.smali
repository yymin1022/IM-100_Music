.class public Lcom/pantech/app/music/list/db/DBInterfacePlaylist;
.super Lcom/pantech/app/music/list/db/DBInterfaceCommon;
.source "DBInterfacePlaylist.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/db/DBInterfacePlaylist$2;,
        Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;,
        Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;,
        Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    }
.end annotation


# static fields
.field private static final RET_ADDED:I = 0x0

.field private static final RET_DUP:I = 0x1

.field private static final mDebug:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;-><init>(Landroid/content/Context;)V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;IJ)Landroid/content/ContentValues;
    .registers 6
    .param p0, "x0"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->setPlaylistColumns(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;IJ)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultPlaylistName(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 229
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 237
    :goto_8
    new-instance v20, Ljava/util/Hashtable;

    invoke-direct/range {v20 .. v20}, Ljava/util/Hashtable;-><init>()V

    .line 238
    .local v20, "playlistNameTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 239
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 240
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_82

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_82

    .line 242
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2a
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_82

    .line 244
    invoke-interface {v8, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 247
    .local v14, "playlistID":I
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 249
    .local v15, "playlistName":Ljava/lang/String;
    const-string v2, "DBInterfaceCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlistName["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 253
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_7c
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    .line 234
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v14    # "playlistID":I
    .end local v15    # "playlistName":Ljava/lang/String;
    .end local v20    # "playlistNameTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7f
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_8

    .line 257
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v20    # "playlistNameTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_82
    if-eqz v8, :cond_87

    .line 258
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_87
    const/4 v12, 0x1

    .line 261
    .local v12, "index":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080085

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 263
    .local v21, "prefix":Ljava/lang/String;
    const-string v10, "Playlist"

    .line 264
    .local v10, "engPrefix":Ljava/lang/String;
    const-string v13, "\uc7ac\uc0dd \ubaa9\ub85d"

    .line 265
    .local v13, "korPrefix":Ljava/lang/String;
    const-string v9, "\u64ad\u653e\u5217\u8868"

    .line 266
    .local v9, "chPrefix":Ljava/lang/String;
    const-string v22, "\u64ad\u653e?\u55ae"

    .line 270
    .local v22, "twPrefix":Ljava/lang/String;
    :goto_9b
    invoke-static {v10, v12}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylistName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 271
    .local v17, "playlistNameEng":Ljava/lang/String;
    invoke-static {v13, v12}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylistName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 272
    .local v18, "playlistNameKor":Ljava/lang/String;
    invoke-static {v9, v12}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylistName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 273
    .local v16, "playlistNameCH":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylistName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 275
    .local v19, "playlistNameTW":Ljava/lang/String;
    const-string v2, "DBInterfaceCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlistNameEng["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " playlistNameKor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " containKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12b

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12b

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12b

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 279
    :cond_12b
    add-int/lit8 v12, v12, 0x1

    .line 285
    goto/16 :goto_9b

    .line 287
    :cond_12f
    move-object/from16 v0, v21

    invoke-static {v0, v12}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->makePlaylistName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLastPlayOrder(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)I
    .registers 6
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, "lastOrder":I
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 469
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 471
    invoke-static {p0}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistMemberPlayOrder(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 474
    :cond_14
    const-string v1, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ==> getLastPlayOrder index["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return v0
.end method

.method public static getPlaylistAddedTime(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_playlistID"    # I

    .prologue
    const/4 v2, 0x0

    .line 961
    const/4 v7, 0x0

    .line 963
    .local v7, "nRet":Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 965
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 967
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_63

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_63

    .line 969
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 970
    const-string v0, "date_added"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 990
    :goto_3b
    if-eqz v6, :cond_40

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 993
    :cond_40
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getPlaylistAddedTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return-object v7

    .line 972
    :cond_63
    const/16 v0, -0x64

    if-ne p1, v0, :cond_6a

    .line 975
    const-string v7, "shortcut_playall"

    goto :goto_3b

    .line 977
    :cond_6a
    const/4 v0, -0x3

    if-ne p1, v0, :cond_70

    .line 979
    const-string v7, "shortcut_podcasts"

    goto :goto_3b

    .line 981
    :cond_70
    const/4 v0, -0x4

    if-ne p1, v0, :cond_76

    .line 983
    const-string v7, "shortcut_recentlyadded"

    goto :goto_3b

    .line 987
    :cond_76
    const-string v7, "error"

    goto :goto_3b
.end method

.method public static declared-synchronized insertCloudPlaylistSongs(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLjava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "nPlaylistID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)",
            "Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;"
        }
    .end annotation

    .prologue
    .line 670
    .local p4, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    const-class v21, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    monitor-enter v21

    const-wide/16 v22, 0x0

    cmp-long v20, p2, v22

    if-gez v20, :cond_18

    :try_start_9
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string v22, "insertCloudPlaylistSongs targetPlaylistID < 0"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v20

    monitor-exit v21

    throw v20

    .line 675
    :cond_18
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v20

    if-eqz v20, :cond_d7

    .line 677
    sget-object v16, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 678
    .local v16, "playlistCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 685
    .local v18, "playlistSongCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    const-string v20, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "insertCloudPlaylistSongs selectedList:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    if-eqz p4, :cond_274

    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v20

    if-lez v20, :cond_274

    .line 689
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 691
    .local v17, "playlistName":Ljava/lang/String;
    const-string v20, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "insertCloudPlaylistSongs ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] count:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p4 .. p4}, Ljava/util/Collection;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v20, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v5

    .line 696
    .local v5, "baseCursor":Landroid/database/Cursor;
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getLastPlayOrder(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)I

    move-result v20

    add-int/lit8 v6, v20, 0x1

    .line 699
    .local v6, "baseIndex":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 700
    .local v4, "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_f8

    if-eqz v4, :cond_f8

    .line 702
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 704
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_b2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_f8

    .line 706
    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 708
    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    .line 710
    .local v10, "currentAudioID":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    add-int/lit8 v13, v13, 0x1

    goto :goto_b2

    .line 682
    .end local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5    # "baseCursor":Landroid/database/Cursor;
    .end local v6    # "baseIndex":I
    .end local v10    # "currentAudioID":J
    .end local v13    # "i":I
    .end local v16    # "playlistCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v17    # "playlistName":Ljava/lang/String;
    .end local v18    # "playlistSongCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :cond_d7
    new-instance v20, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "insertCloudPlaylistSongs \uc798\ubabb\ub41c category "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 714
    .restart local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v5    # "baseCursor":Landroid/database/Cursor;
    .restart local v6    # "baseIndex":I
    .restart local v16    # "playlistCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .restart local v17    # "playlistName":Ljava/lang/String;
    .restart local v18    # "playlistSongCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :cond_f8
    if-eqz v5, :cond_fd

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 717
    :cond_fd
    if-nez v4, :cond_103

    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_101
    .catchall {:try_start_18 .. :try_end_101} :catchall_15

    .line 779
    .end local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5    # "baseCursor":Landroid/database/Cursor;
    .end local v6    # "baseIndex":I
    .end local v17    # "playlistName":Ljava/lang/String;
    :goto_101
    monitor-exit v21

    return-object v20

    .line 719
    .restart local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v5    # "baseCursor":Landroid/database/Cursor;
    .restart local v6    # "baseIndex":I
    .restart local v17    # "playlistName":Ljava/lang/String;
    :cond_103
    :try_start_103
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v7, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;

    sget-object v20, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, v20

    invoke-direct {v14, v0, v6, v7, v4}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 722
    .local v14, "mMakeSelectListTemplate":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;
    move-object/from16 v0, p4

    invoke-static {v0, v14}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 724
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 727
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 728
    .local v8, "contentValuesListSize":I
    if-lez v8, :cond_258

    .line 730
    const/4 v9, 0x0

    .line 731
    .local v9, "dbAddedCount":I
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    const/16 v22, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v19

    .line 733
    .local v19, "uri":Landroid/net/Uri;
    if-nez v19, :cond_135

    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_101

    .line 734
    :cond_135
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    if-nez v20, :cond_13e

    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_101

    .line 735
    :cond_13e
    if-nez p0, :cond_143

    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_101

    .line 737
    :cond_143
    const/16 v12, 0x7d0

    .line 738
    .local v12, "divideValue":I
    const/4 v15, 0x0

    .line 740
    .local v15, "partialList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_146
    :goto_146
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-le v0, v12, :cond_182

    .line 742
    const/16 v20, 0x0

    const/16 v22, 0x7cf

    move/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v15

    .line 743
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/ContentValues;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v20

    add-int v9, v9, v20

    .line 744
    if-eqz v15, :cond_146

    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto :goto_146

    .line 747
    :cond_182
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_1aa

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/ContentValues;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v20

    add-int v9, v9, v20

    .line 752
    :cond_1aa
    const-string v20, "DBInterfaceCommon"

    const-string v22, "#### Add Cloud Playlist Songs #####"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v20, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DB Inserted count: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    const-string v20, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "contentValuesList count: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v20, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Except Dup count: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mAddedCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v20, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Dup count: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 760
    if-lez v9, :cond_254

    .line 762
    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    move/from16 v20, v0

    if-lez v20, :cond_248

    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v20

    goto/16 :goto_101

    .line 763
    :cond_248
    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v20

    goto/16 :goto_101

    .line 767
    :cond_254
    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto/16 :goto_101

    .line 773
    .end local v9    # "dbAddedCount":I
    .end local v12    # "divideValue":I
    .end local v15    # "partialList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v19    # "uri":Landroid/net/Uri;
    :cond_258
    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mAddedCount:I

    move/from16 v20, v0

    if-nez v20, :cond_270

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    move/from16 v20, v0

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mTryCount:I

    move/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_270

    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ALL_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto/16 :goto_101

    .line 774
    :cond_270
    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto/16 :goto_101

    .line 779
    .end local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5    # "baseCursor":Landroid/database/Cursor;
    .end local v6    # "baseIndex":I
    .end local v7    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "contentValuesListSize":I
    .end local v14    # "mMakeSelectListTemplate":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;
    .end local v17    # "playlistName":Ljava/lang/String;
    :cond_274
    sget-object v20, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_276
    .catchall {:try_start_103 .. :try_end_276} :catchall_15

    goto/16 :goto_101
.end method

.method public static insertFavorites(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/service/IMusicPlaybackService;Ljava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 36
    .param p0, "contextWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p1, "IService"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Lcom/pantech/app/music/service/IMusicPlaybackService;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)",
            "Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;"
        }
    .end annotation

    .prologue
    .line 825
    .local p2, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    if-eqz p2, :cond_213

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v28

    if-lez v28, :cond_213

    .line 830
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 831
    .local v7, "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v28

    sget-object v29, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v30, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    const-string v31, ""

    const-string v32, "rating > 0"

    invoke-direct/range {v30 .. v32}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v31, -0x1

    invoke-static/range {v28 .. v31}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v8

    .line 832
    .local v8, "baseCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_51

    if-eqz v7, :cond_51

    .line 834
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 836
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2a
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_51

    .line 838
    invoke-interface {v8, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 840
    sget-object v28, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, v28

    invoke-static {v0, v8}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    .line 842
    .local v10, "currentAudioID":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    add-int/lit8 v14, v14, 0x1

    goto :goto_2a

    .line 846
    .end local v10    # "currentAudioID":J
    .end local v14    # "i":I
    :cond_51
    if-eqz v8, :cond_56

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 848
    :cond_56
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 849
    .local v6, "addingAudioIDsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v12, "duplicatedAudioIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v28, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;

    move-object/from16 v0, v28

    invoke-direct {v0, v7, v6, v12}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$1;-><init>(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 886
    const/16 v23, 0x0

    .line 887
    .local v23, "updateCount":I
    const/16 v21, 0x0

    .line 889
    .local v21, "queueUpdatecount":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_76
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_181

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 891
    .local v17, "mediaIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v27, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v28, " IN ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_90
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_ad

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 895
    .local v18, "mediaID":J
    move-object/from16 v0, v27

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 896
    const/16 v28, 0x2c

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 899
    .end local v18    # "mediaID":J
    :cond_ad
    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c8

    .line 900
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->length()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 902
    :cond_c8
    const/16 v28, 0x29

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    const-string v28, "DBInterfaceCommon"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "insertFavorites:where:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static {}, Lcom/pantech/app/music/list/utility/ListUtil;->getCurrentTimeSec()J

    move-result-wide v24

    .line 909
    .local v24, "updateTime":J
    sget-object v28, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v29, 0x0

    const/16 v30, -0x1

    invoke-static/range {v28 .. v30}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v26

    .line 910
    .local v26, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 911
    .local v9, "contentValues":Landroid/content/ContentValues;
    const-string v28, "rating"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 912
    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "_id"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    add-int v23, v23, v28

    .line 915
    sget-object v22, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueue;->CONTENT_URI:Landroid/net/Uri;

    .line 916
    .local v22, "queueUri":Landroid/net/Uri;
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 917
    .local v20, "queueContentValues":Landroid/content/ContentValues;
    const-string v28, "rate"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 918
    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "audioID"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    add-int v21, v21, v28

    .line 919
    goto/16 :goto_76

    .line 924
    .end local v9    # "contentValues":Landroid/content/ContentValues;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "mediaIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20    # "queueContentValues":Landroid/content/ContentValues;
    .end local v22    # "queueUri":Landroid/net/Uri;
    .end local v24    # "updateTime":J
    .end local v26    # "uri":Landroid/net/Uri;
    .end local v27    # "whereBuilder":Ljava/lang/StringBuilder;
    :cond_181
    const-string v28, "DBInterfaceCommon"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "insertFavorites:updateCount:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " queueUpdatecount:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " dupCount:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    if-gtz v23, :cond_1be

    .line 929
    sget-object v28, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ALL_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    .line 955
    .end local v6    # "addingAudioIDsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v7    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v8    # "baseCursor":Landroid/database/Cursor;
    .end local v12    # "duplicatedAudioIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "queueUpdatecount":I
    .end local v23    # "updateCount":I
    :goto_1bd
    return-object v28

    .line 937
    .restart local v6    # "addingAudioIDsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .restart local v7    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v8    # "baseCursor":Landroid/database/Cursor;
    .restart local v12    # "duplicatedAudioIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v21    # "queueUpdatecount":I
    .restart local v23    # "updateCount":I
    :cond_1be
    if-lez v21, :cond_1dd

    .line 939
    new-instance v13, Landroid/os/Handler;

    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v13, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 940
    .local v13, "h":Landroid/os/Handler;
    new-instance v28, Lcom/pantech/app/music/list/module/RefreshQueue;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/RefreshQueue;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 943
    .end local v13    # "h":Landroid/os/Handler;
    :cond_1dd
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_1fb

    .line 945
    sget-object v28, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const v30, 0x7f0800a0

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v28

    goto :goto_1bd

    .line 949
    :cond_1fb
    sget-object v28, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v29

    const v30, 0x7f0800a0

    invoke-virtual/range {v29 .. v30}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v28

    goto :goto_1bd

    .line 955
    .end local v6    # "addingAudioIDsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v7    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v8    # "baseCursor":Landroid/database/Cursor;
    .end local v12    # "duplicatedAudioIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v21    # "queueUpdatecount":I
    .end local v23    # "updateCount":I
    :cond_213
    sget-object v28, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_1bd
.end method

.method public static declared-synchronized insertPlaylistSongs(Landroid/content/Context;JLjava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nPlaylistID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)",
            "Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;"
        }
    .end annotation

    .prologue
    .line 562
    .local p3, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    const-class v19, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;

    monitor-enter v19

    const-wide/16 v20, 0x0

    cmp-long v18, p1, v20

    if-gez v18, :cond_18

    :try_start_9
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v20, "insertPlaylist targetPlaylistID < 0"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_15

    :catchall_15
    move-exception v18

    monitor-exit v19

    throw v18

    .line 564
    :cond_18
    if-eqz p3, :cond_24b

    :try_start_1a
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v18

    if-lez v18, :cond_24b

    .line 566
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v16

    .line 567
    .local v16, "playlistName":Ljava/lang/String;
    const-string v18, "DBInterfaceCommon"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "insertPlaylists ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] count:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v20, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v5

    .line 573
    .local v5, "baseCursor":Landroid/database/Cursor;
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getLastPlayOrder(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)I

    move-result v18

    add-int/lit8 v6, v18, 0x1

    .line 576
    .local v6, "baseIndex":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v4, "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_b1

    if-eqz v4, :cond_b1

    .line 579
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 581
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_8a
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v13, v0, :cond_b1

    .line 583
    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 585
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v10

    .line 586
    .local v10, "currentMediaID":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    add-int/lit8 v13, v13, 0x1

    goto :goto_8a

    .line 590
    .end local v10    # "currentMediaID":J
    .end local v13    # "i":I
    :cond_b1
    if-eqz v5, :cond_b6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 593
    :cond_b6
    if-nez v4, :cond_bc

    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_ba
    .catchall {:try_start_1a .. :try_end_ba} :catchall_15

    .line 664
    .end local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5    # "baseCursor":Landroid/database/Cursor;
    .end local v6    # "baseIndex":I
    .end local v16    # "playlistName":Ljava/lang/String;
    :goto_ba
    monitor-exit v19

    return-object v18

    .line 595
    .restart local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v5    # "baseCursor":Landroid/database/Cursor;
    .restart local v6    # "baseIndex":I
    .restart local v16    # "playlistName":Ljava/lang/String;
    :cond_bc
    :try_start_bc
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 597
    .local v7, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;

    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v6, v7, v4}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 598
    .local v14, "mMakeSelectListTemplate":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;
    move-object/from16 v0, p3

    invoke-static {v0, v14}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 600
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 603
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 604
    .local v8, "contentValuesListSize":I
    if-lez v8, :cond_22f

    .line 606
    const/4 v9, 0x0

    .line 607
    .local v9, "dbAddedCount":I
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v17

    .line 609
    .local v17, "uri":Landroid/net/Uri;
    if-nez v17, :cond_f0

    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_ba

    .line 610
    :cond_f0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    if-nez v18, :cond_f9

    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_ba

    .line 611
    :cond_f9
    if-nez p0, :cond_fe

    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_ba

    .line 614
    :cond_fe
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    new-instance v21, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v21 .. v21}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v18

    if-gtz v18, :cond_11a

    .line 616
    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto :goto_ba

    .line 619
    :cond_11a
    const/16 v12, 0x7d0

    .line 620
    .local v12, "divideValue":I
    const/4 v15, 0x0

    .line 622
    .local v15, "partialList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_11d
    :goto_11d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v12, :cond_159

    .line 624
    const/16 v18, 0x0

    const/16 v20, 0x7cf

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v15

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v18

    add-int v9, v9, v18

    .line 626
    if-eqz v15, :cond_11d

    invoke-interface {v15}, Ljava/util/List;->clear()V

    goto :goto_11d

    .line 629
    :cond_159
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_181

    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Landroid/content/ContentValues;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v18

    add-int v9, v9, v18

    .line 634
    :cond_181
    const-string v18, "DBInterfaceCommon"

    const-string v20, "#### Add Playlist Songs #####"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v18, "DBInterfaceCommon"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DB Inserted count: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v18, "DBInterfaceCommon"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "contentValuesList count: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v18, "DBInterfaceCommon"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Except Dup count: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mAddedCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v18, "DBInterfaceCommon"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Dup count: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 642
    if-lez v9, :cond_22b

    .line 647
    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    move/from16 v18, v0

    if-lez v18, :cond_21f

    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v18

    goto/16 :goto_ba

    .line 648
    :cond_21f
    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->setInsertedCountAndName(ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v18

    goto/16 :goto_ba

    .line 652
    :cond_22b
    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto/16 :goto_ba

    .line 658
    .end local v9    # "dbAddedCount":I
    .end local v12    # "divideValue":I
    .end local v15    # "partialList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_22f
    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mAddedCount:I

    move/from16 v18, v0

    if-nez v18, :cond_247

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mDuplicationCount:I

    move/from16 v18, v0

    iget v0, v14, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;->mTryCount:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_247

    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_ALL_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto/16 :goto_ba

    .line 659
    :cond_247
    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    goto/16 :goto_ba

    .line 664
    .end local v4    # "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v5    # "baseCursor":Landroid/database/Cursor;
    .end local v6    # "baseIndex":I
    .end local v7    # "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "contentValuesListSize":I
    .end local v14    # "mMakeSelectListTemplate":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$MakeSelectListTemplateImp;
    .end local v16    # "playlistName":Ljava/lang/String;
    :cond_24b
    sget-object v18, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_NONE_TO_ADD:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_24d
    .catchall {:try_start_bc .. :try_end_24d} :catchall_15

    goto/16 :goto_ba
.end method

.method private static makePlaylistName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "index"    # I

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveReAraangedList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/database/Cursor;Ljava/lang/Object;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "playlistID"    # J
    .param p4, "rearrangeCursor"    # Landroid/database/Cursor;
    .param p5, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 789
    monitor-enter p5

    .line 791
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 793
    .local v9, "resolver":Landroid/content/ContentResolver;
    if-nez p4, :cond_b

    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_REARRANGE_FAIL:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    monitor-exit p5

    .line 818
    :goto_a
    return-object v7

    .line 794
    :cond_b
    if-nez v9, :cond_14

    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_REARRANGE_FAIL:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    monitor-exit p5

    goto :goto_a

    .line 819
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :catchall_11
    move-exception v0

    monitor-exit p5
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0

    .line 796
    .restart local v9    # "resolver":Landroid/content/ContentResolver;
    :cond_14
    :try_start_14
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 797
    .local v6, "cursorCount":I
    if-nez v6, :cond_1e

    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;->ERROR_REARRANGE_FAIL:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    monitor-exit p5

    goto :goto_a

    .line 800
    :cond_1e
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v8

    .line 801
    .local v8, "playlistMemberUri":Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v8, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    const/4 v3, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/db/SelectManager;->makeSelectionList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;IILjava/lang/Object;)Ljava/util/Collection;

    move-result-object v10

    .line 807
    .local v10, "selectedSongList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p1, v0, :cond_45

    .line 809
    invoke-static {p0, p1, p2, p3, v10}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->insertCloudPlaylistSongs(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLjava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;

    move-result-object v7

    .line 818
    .local v7, "nRet":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :goto_43
    monitor-exit p5

    goto :goto_a

    .line 813
    .end local v7    # "nRet":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :cond_45
    invoke-static {p0, p2, p3, v10}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->insertPlaylistSongs(Landroid/content/Context;JLjava/util/Collection;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    :try_end_48
    .catchall {:try_start_14 .. :try_end_48} :catchall_11

    move-result-object v7

    .restart local v7    # "nRet":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistInsertErrorType;
    goto :goto_43
.end method

.method public static setContentsValue(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;Ljava/util/ArrayList;Ljava/util/HashMap;)I
    .registers 9
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "addedPoint"    # I
    .param p2, "contentsInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "I",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 485
    .local p3, "contentValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local p4, "baseAuioIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_23

    iget-wide v0, p2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    .line 488
    iget-wide v0, p2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 490
    iget-wide v0, p2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {p0, p1, v0, v1}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->setPlaylistColumns(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;IJ)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const/4 v0, 0x0

    .line 500
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20

    .line 505
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding Playlist : Not Support AudioID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static setPlaylistColumns(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;IJ)Landroid/content/ContentValues;
    .registers 8
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "nPlayOrder"    # I
    .param p2, "nAudioID"    # J

    .prologue
    .line 454
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 456
    .local v0, "value":Landroid/content/ContentValues;
    invoke-static {p0}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistMemberPlayOrder(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    invoke-static {p0}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistMemberMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 459
    return-object v0
.end method


# virtual methods
.method public checkPlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "playlistName"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 191
    :cond_8
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NO_NAME:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 217
    :goto_a
    return-object v1

    .line 193
    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_16

    .line 195
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_TOO_LONG:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_a

    .line 198
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "playlistID":I
    if-ltz v0, :cond_1f

    .line 202
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_a

    .line 208
    :cond_1f
    invoke-static {p2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->checkSpecialCharacter(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 210
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_EMOJI_CHAR:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_a

    .line 213
    :cond_28
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 215
    .local v1, "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->setPlaylistID(J)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_a
.end method

.method public makePlaylist(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .registers 16
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "playlistName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 292
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 294
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 302
    :goto_9
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_17

    .line 303
    :cond_11
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NO_NAME:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 344
    :cond_13
    :goto_13
    return-object v1

    .line 299
    :cond_14
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_9

    .line 305
    :cond_17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x1e

    if-le v7, v8, :cond_22

    .line 307
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_TOO_LONG:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_13

    .line 310
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)I

    move-result v7

    int-to-long v2, v7

    .line 312
    .local v2, "playlistID":J
    const-wide/16 v8, -0x1

    cmp-long v7, v2, v8

    if-nez v7, :cond_99

    .line 314
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 315
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v0, v8

    .line 317
    .local v0, "modifiedTime":I
    invoke-static {p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistDateAdded(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v7, "DBInterfaceCommon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "makePlaylist Category:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " playlistName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/4 v7, -0x1

    invoke-static {p1, v12, v7}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v5

    .line 324
    .local v5, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->mResolver:Landroid/content/ContentResolver;

    if-nez v7, :cond_7a

    .line 325
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_13

    .line 327
    :cond_7a
    iget-object v7, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 328
    .local v4, "resultUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)I

    move-result v7

    int-to-long v2, v7

    .line 332
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 334
    .local v1, "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-ltz v7, :cond_13

    .line 336
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 337
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->setPlaylistID(J)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto/16 :goto_13

    .line 344
    .end local v0    # "modifiedTime":I
    .end local v1    # "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .end local v4    # "resultUri":Landroid/net/Uri;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_99
    sget-object v7, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    invoke-virtual {v7, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->setPlaylistID(J)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    move-result-object v1

    goto/16 :goto_13
.end method

.method public renamePlayList(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;ILjava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    .registers 22
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "targetPlaylistId"    # I
    .param p3, "newPlayListName"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v11, 0x0

    .line 352
    .local v11, "update_count":I
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 354
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 362
    :goto_9
    if-nez p3, :cond_16

    .line 364
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "renamePlayList (newPlayListName == null)"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 359
    :cond_13
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_9

    .line 367
    :cond_16
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x1e

    if-le v14, v15, :cond_21

    .line 369
    sget-object v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_TOO_LONG:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 446
    :cond_20
    :goto_20
    return-object v10

    .line 373
    :cond_21
    invoke-static/range {p3 .. p3}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->checkSpecialCharacter(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 375
    sget-object v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_EMOJI_CHAR:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_20

    .line 379
    :cond_2a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)I

    move-result v7

    .line 381
    .local v7, "namedPlaylistID":I
    if-ltz v7, :cond_57

    move/from16 v0, p2

    if-eq v7, v0, :cond_57

    .line 383
    const-string v14, "DBInterfaceCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "duplication name"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_DUPLICATION:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto :goto_20

    .line 387
    :cond_57
    const-string v14, "DBInterfaceCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "try to rename playlist ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "] to ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v13, Landroid/content/ContentValues;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/content/ContentValues;-><init>(I)V

    .line 390
    .local v13, "values":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v6, v14

    .line 391
    .local v6, "modifiedTime":I
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistDateModified(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    sget-object v14, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_16e

    .line 399
    move/from16 v0, p2

    int-to-long v14, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v15}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->getPlaylistData(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;J)Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "_data":Ljava/lang/String;
    if-nez v4, :cond_bb

    const-string v4, ""

    .line 403
    :cond_bb
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v9, "playlistFile":Ljava/io/File;
    const-string v14, "DBInterfaceCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RenamePlaylist:_data:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " isExist:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_16e

    .line 409
    move-object v5, v4

    .line 411
    .local v5, "ext":Ljava/lang/String;
    if-nez v5, :cond_f1

    const-string v5, ""

    .line 413
    :cond_f1
    const-string v14, "DBInterfaceCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RenamePlaylist:EXT:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v14, "wpl"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16e

    const-string v14, "m3u"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16e

    const-string v14, "pls"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16e

    const-string v14, "M3U8"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16e

    const-string v14, "MPD"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_16e

    .line 421
    move-object v8, v4

    .line 422
    .local v8, "path":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 424
    const-string v14, "DBInterfaceCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RenamePlaylist:new path:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v14, "_data"

    invoke-virtual {v13, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    .end local v4    # "_data":Ljava/lang/String;
    .end local v5    # "ext":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "playlistFile":Ljava/io/File;
    :cond_16e
    const/4 v14, 0x0

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v12

    .line 433
    .local v12, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->mResolver:Landroid/content/ContentResolver;

    if-nez v14, :cond_180

    .line 434
    sget-object v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto/16 :goto_20

    .line 436
    :cond_180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->mResolver:Landroid/content/ContentResolver;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v12, v13, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/music/list/db/DBInterfacePlaylist;->mResolver:Landroid/content/ContentResolver;

    const/4 v15, 0x0

    invoke-virtual {v14, v12, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 440
    const-string v14, "DBInterfaceCommon"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "renamePlayList update_count("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_NONE:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 444
    .local v10, "result":Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;
    int-to-long v14, v7

    invoke-virtual {v10, v14, v15}, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->setPlaylistID(J)Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    .line 446
    if-gtz v11, :cond_20

    sget-object v10, Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;->ERROR_UNKNOWN:Lcom/pantech/app/music/list/db/DBInterfacePlaylist$PlaylistMakeErrorType;

    goto/16 :goto_20
.end method
