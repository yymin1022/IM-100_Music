.class Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;
.super Ljava/lang/Object;
.source "PlayInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MakePlayInfo"
.end annotation


# instance fields
.field mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

.field mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field mContext:Landroid/content/Context;

.field mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;
    .param p3, "callback"    # Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    .line 433
    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    .line 435
    iget-object v0, p2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 437
    iput-object p3, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    .line 438
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 563
    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCallback:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;

    new-instance v1, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;

    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->setPlayAllList()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;-><init>([Lcom/pantech/app/music/list/MusicItemInfo;Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;)V

    iget-object v2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v2, v2, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPlayType:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoCallback;->onMakePlayInfoComplele(Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;Lcom/pantech/app/music/list/module/PlayInterface$PlayType;)V

    .line 564
    return-void
.end method

.method public declared-synchronized setPlayAllList()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 15

    .prologue
    const/4 v8, 0x0

    .line 442
    monitor-enter p0

    const/4 v0, 0x0

    .line 444
    .local v0, "allList":[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_start_3
    iget-object v9, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v9, v9, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_fc

    .line 446
    :try_start_8
    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v10, v10, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-static {v10}, Lcom/pantech/app/music/list/utility/ListUtil;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 447
    monitor-exit v9
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_f9

    .line 556
    :goto_13
    monitor-exit p0

    return-object v8

    .line 449
    :cond_15
    :try_start_15
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v8, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v8

    if-nez v8, :cond_39

    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v8, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v8

    if-nez v8, :cond_39

    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v8, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 453
    :cond_39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v2, "arrPositionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v7, "positionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_44
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_7d

    .line 458
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 460
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v10, v10, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v11, v11, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v8, v10, v11}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/16 v10, 0x1f4

    if-lt v8, v10, :cond_7a

    .line 464
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 456
    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 470
    :cond_7d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_8f

    .line 472
    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 476
    :cond_8f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [Landroid/database/Cursor;

    .line 478
    .local v1, "arrCursor":[Landroid/database/Cursor;
    const/4 v4, 0x0

    :goto_96
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_af

    .line 480
    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v10, v11, v8}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackListFast(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v8

    aput-object v8, v1, v4

    .line 478
    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    .line 483
    :cond_af
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 485
    .local v5, "mergedCursor":Landroid/database/MergeCursor;
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v10}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v10, v5, v11}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 488
    invoke-virtual {v5}, Landroid/database/MergeCursor;->close()V

    .line 489
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 554
    .end local v1    # "arrCursor":[Landroid/database/Cursor;
    .end local v2    # "arrPositionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v4    # "i":I
    .end local v5    # "mergedCursor":Landroid/database/MergeCursor;
    .end local v7    # "positionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c7
    :goto_c7
    monitor-exit v9

    move-object v8, v0

    .line 556
    goto/16 :goto_13

    .line 491
    :cond_cb
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v8}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v8

    if-nez v8, :cond_119

    .line 493
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    if-nez v8, :cond_ff

    .line 495
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v11, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v11}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>()V

    const/4 v12, -0x1

    invoke-static {v8, v10, v11, v12}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v6

    .line 497
    .local v6, "playCursor":Landroid/database/Cursor;
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v11, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v11, v11, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    invoke-static {v8, v10, v6, v11}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 499
    if-eqz v6, :cond_c7

    .line 500
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_c7

    .line 554
    .end local v6    # "playCursor":Landroid/database/Cursor;
    :catchall_f9
    move-exception v8

    monitor-exit v9
    :try_end_fb
    .catchall {:try_start_15 .. :try_end_fb} :catchall_f9

    :try_start_fb
    throw v8
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    .line 442
    :catchall_fc
    move-exception v8

    monitor-exit p0

    throw v8

    .line 504
    :cond_ff
    :try_start_ff
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v10, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_104
    .catchall {:try_start_ff .. :try_end_104} :catchall_f9

    .line 530
    :try_start_104
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v12, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v12, v12, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    iget-object v13, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v13, v13, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    invoke-static {v8, v11, v12, v13}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 531
    monitor-exit v10

    goto :goto_c7

    :catchall_116
    move-exception v8

    monitor-exit v10
    :try_end_118
    .catchall {:try_start_104 .. :try_end_118} :catchall_116

    :try_start_118
    throw v8

    .line 534
    :cond_119
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v8}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v8

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v8, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v8

    if-nez v8, :cond_c7

    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v8, v10}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v8

    if-nez v8, :cond_c7

    .line 536
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    new-array v1, v8, [Landroid/database/Cursor;

    .line 538
    .restart local v1    # "arrCursor":[Landroid/database/Cursor;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_144
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_17a

    .line 540
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v8, v8, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 542
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v10, v10, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mParam:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;

    iget-object v11, v11, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoParam;->mCursorLock:Ljava/lang/Object;

    invoke-virtual {v8, v10, v11}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, "groupID":Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v10}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    new-instance v11, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v11, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v12, -0x1

    invoke-static {v8, v10, v11, v12}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v8

    aput-object v8, v1, v4

    .line 538
    add-int/lit8 v4, v4, 0x1

    goto :goto_144

    .line 547
    .end local v3    # "groupID":Ljava/lang/String;
    :cond_17a
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 549
    .restart local v5    # "mergedCursor":Landroid/database/MergeCursor;
    iget-object v8, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v10}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v10, v5, v11}, Lcom/pantech/app/music/list/db/CursorUtils;->convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    .line 552
    invoke-virtual {v5}, Landroid/database/MergeCursor;->close()V
    :try_end_18f
    .catchall {:try_start_118 .. :try_end_18f} :catchall_f9

    goto/16 :goto_c7
.end method
