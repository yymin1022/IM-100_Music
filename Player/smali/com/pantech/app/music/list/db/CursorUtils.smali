.class public Lcom/pantech/app/music/list/db/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/db/CursorUtils$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CursorUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static CopyCursor(Landroid/database/Cursor;IILjava/lang/Object;)Landroid/database/Cursor;
    .registers 12
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "startPosition"    # I
    .param p2, "length"    # I
    .param p3, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 560
    if-nez p0, :cond_4

    .line 561
    const/4 v5, 0x0

    .line 605
    :goto_3
    return-object v5

    .line 563
    :cond_4
    if-nez p3, :cond_b

    .line 564
    new-instance p3, Ljava/lang/Object;

    .end local p3    # "cursorLock":Ljava/lang/Object;
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 566
    .restart local p3    # "cursorLock":Ljava/lang/Object;
    :cond_b
    monitor-enter p3

    .line 570
    :try_start_c
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "szCol":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v3, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    move v0, p1

    .local v0, "i":I
    :goto_16
    add-int v5, p1, p2

    if-ge v0, v5, :cond_a0

    .line 575
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_9c

    .line 577
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 578
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v2, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_29
    array-length v5, v4

    if-ge v1, v5, :cond_73

    .line 583
    aget-object v5, v4, v1

    invoke-static {v5}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnLong(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 585
    aget-object v5, v4, v1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 587
    :cond_48
    aget-object v5, v4, v1

    invoke-static {v5}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnInteger(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 589
    aget-object v5, v4, v1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 606
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v3    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    .end local v4    # "szCol":[Ljava/lang/String;
    :catchall_62
    move-exception v5

    monitor-exit p3
    :try_end_64
    .catchall {:try_start_c .. :try_end_64} :catchall_62

    throw v5

    .line 593
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v3    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    .restart local v4    # "szCol":[Ljava/lang/String;
    :cond_65
    :try_start_65
    aget-object v5, v4, v1

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 597
    :cond_73
    const-string v5, "CursorUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CopyCursor() index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", record:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v1    # "j":I
    .end local v2    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_9c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16

    .line 605
    :cond_a0
    new-instance v5, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v5, v4, v3}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit p3
    :try_end_a6
    .catchall {:try_start_65 .. :try_end_a6} :catchall_62

    goto/16 :goto_3
.end method

.method public static CopyCursor(Landroid/database/Cursor;Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 12
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 513
    if-nez p1, :cond_7

    new-instance p1, Ljava/lang/Object;

    .end local p1    # "cursorLock":Ljava/lang/Object;
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 515
    .restart local p1    # "cursorLock":Ljava/lang/Object;
    :cond_7
    monitor-enter p1

    .line 516
    if-nez p0, :cond_d

    .line 517
    const/4 v8, 0x0

    :try_start_b
    monitor-exit p1

    .line 552
    :goto_c
    return-object v8

    .line 519
    :cond_d
    instance-of v8, p0, Lcom/pantech/app/music/common/ArrayListCursor;

    if-eqz v8, :cond_1e

    .line 520
    move-object v0, p0

    check-cast v0, Lcom/pantech/app/music/common/ArrayListCursor;

    move-object v2, v0

    .line 521
    .local v2, "c":Lcom/pantech/app/music/common/ArrayListCursor;
    invoke-virtual {v2}, Lcom/pantech/app/music/common/ArrayListCursor;->clone()Landroid/database/Cursor;

    move-result-object v8

    monitor-exit p1

    goto :goto_c

    .line 553
    .end local v2    # "c":Lcom/pantech/app/music/common/ArrayListCursor;
    :catchall_1b
    move-exception v8

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_1b

    throw v8

    .line 524
    :cond_1e
    :try_start_1e
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    .line 525
    .local v7, "szCol":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v6, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_84

    .line 529
    invoke-interface {p0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 530
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v5, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_37
    array-length v8, v7

    if-ge v4, v8, :cond_7e

    .line 535
    aget-object v8, v7, v4

    invoke-static {v8}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnLong(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 537
    aget-object v8, v7, v4

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    :goto_53
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 539
    :cond_56
    aget-object v8, v7, v4

    invoke-static {v8}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnInteger(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 541
    aget-object v8, v7, v4

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 545
    :cond_70
    aget-object v8, v7, v4

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 549
    :cond_7e
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 552
    .end local v4    # "j":I
    .end local v5    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_84
    new-instance v8, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v8, v7, v6}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_1e .. :try_end_8a} :catchall_1b

    goto :goto_c
.end method

.method public static convertCursor([Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/database/Cursor;
    .registers 7
    .param p0, "arrMusicItemInfo"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 754
    const/16 v4, 0x10

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "album_id"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "rating"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "duration"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "album"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "artist"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "_size"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "date_modified"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "mime_type"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "retryCount"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "url"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "contentsType"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "albumartUrl"

    aput-object v5, v3, v4

    .line 763
    .local v3, "szCol":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v2, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_62
    array-length v4, p0

    if-ge v0, v4, :cond_119

    .line 767
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v1, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getRate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getDisaplyTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    aget-object v4, p0, v0

    iget v4, v4, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    aget-object v4, p0, v0

    iget v4, v4, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    aget-object v4, p0, v0

    iget-object v4, v4, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getSkipCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getCntsType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    aget-object v4, p0, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumartUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_62

    .line 792
    .end local v1    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_119
    new-instance v4, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v4, v3, v2}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v4
.end method

.method public static convertCursorToList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "cursorLock"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 686
    const/4 v0, 0x0

    .line 688
    .local v0, "count":I
    const/4 v4, 0x0

    .line 690
    .local v4, "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    const/4 v6, 0x0

    .line 695
    .local v6, "sessionId":Ljava/lang/String;
    if-nez p3, :cond_c

    .line 696
    :try_start_6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .end local p3    # "cursorLock":Ljava/lang/Object;
    .local v1, "cursorLock":Ljava/lang/Object;
    move-object p3, v1

    .line 698
    .end local v1    # "cursorLock":Ljava/lang/Object;
    .restart local p3    # "cursorLock":Ljava/lang/Object;
    :cond_c
    monitor-enter p3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_b2

    .line 700
    if-eqz p2, :cond_9d

    :try_start_f
    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_9d

    .line 702
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 704
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_af

    .line 706
    .end local v4    # "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .local v5, "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :try_start_1e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### convertCursorToList Start count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 708
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_35
    if-ge v3, v0, :cond_82

    .line 710
    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 712
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5e

    .line 715
    sget-object v8, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p1, v8, :cond_52

    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaPath(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 717
    :cond_52
    new-instance v8, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-static {p1}, Lcom/pantech/app/music/list/MusicItemInfo;->chooseCntsType(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I

    move-result v9

    invoke-direct {v8, p2, v9}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(Landroid/database/Cursor;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_5e
    const/4 v8, 0x5

    if-ge v3, v8, :cond_7f

    .line 724
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] title:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaTitle(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 708
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 728
    :cond_82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### convertCursorToList End size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_1e .. :try_end_9c} :catchall_b7

    move-object v4, v5

    .line 730
    .end local v3    # "i":I
    .end local v5    # "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v4    # "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :cond_9d
    :try_start_9d
    monitor-exit p3
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_af

    .line 739
    if-eqz v4, :cond_a4

    .line 740
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 742
    :cond_a4
    if-lez v0, :cond_ae

    .line 744
    new-array v8, v0, [Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 748
    :cond_ae
    :goto_ae
    return-object v7

    .line 730
    :catchall_af
    move-exception v8

    :goto_b0
    :try_start_b0
    monitor-exit p3
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v8
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_b2} :catch_b2

    .line 733
    :catch_b2
    move-exception v2

    .line 735
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ae

    .line 730
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v5    # "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    :catchall_b7
    move-exception v8

    move-object v4, v5

    .end local v5    # "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    .restart local v4    # "musicItemInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/MusicItemInfo;>;"
    goto :goto_b0
.end method

.method public static getAlbumName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_albumID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 361
    const/4 v7, 0x0

    .line 363
    .local v7, "nRet":Ljava/lang/String;
    if-ne p1, v3, :cond_6

    .line 383
    :goto_5
    return-object v2

    .line 368
    :cond_6
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 370
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

    .line 372
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3e

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 375
    const-string v0, "album"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 378
    :cond_3e
    if-eqz v6, :cond_43

    .line 379
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getGenreName is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v2, v7

    .line 383
    goto :goto_5
.end method

.method public static getAllSelectableID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;Ljava/lang/Object;)J
    .registers 5
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 33
    if-nez p2, :cond_7

    .line 34
    new-instance p2, Ljava/lang/Object;

    .end local p2    # "cursorLock":Ljava/lang/Object;
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 36
    .restart local p2    # "cursorLock":Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 42
    :goto_15
    return-wide v0

    :cond_16
    invoke-static {p0, p1}, Lcom/pantech/app/music/list/db/CursorUtils;->getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J

    move-result-wide v0

    goto :goto_15
.end method

.method public static getBucketName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bucketID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 306
    const/4 v7, 0x0

    .line 308
    .local v7, "nRet":Ljava/lang/String;
    if-ne p1, v3, :cond_6

    .line 329
    :goto_5
    return-object v2

    .line 314
    :cond_6
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

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

    .line 318
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3e

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 321
    const-string v0, "bucket_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    :cond_3e
    if-eqz v6, :cond_43

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucketID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " BUCKET_DISPLAY_NAME is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v2, v7

    .line 329
    goto :goto_5
.end method

.method public static getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 6
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v2, -0x1

    .line 168
    .local v2, "value":I
    if-nez p0, :cond_5

    .line 170
    const/4 v3, -0x1

    .line 184
    :goto_4
    return v3

    .line 175
    :cond_5
    :try_start_5
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "colIndex":I
    if-ltz v0, :cond_f

    .line 177
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_11

    move-result v2

    .end local v0    # "colIndex":I
    :cond_f
    :goto_f
    move v3, v2

    .line 184
    goto :goto_4

    .line 179
    :catch_11
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public static getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 8
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 143
    const-wide/16 v2, -0x1

    .line 145
    .local v2, "value":J
    if-nez p0, :cond_7

    .line 147
    const-wide/16 v4, -0x1

    .line 161
    :goto_6
    return-wide v4

    .line 152
    :cond_7
    :try_start_7
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, "colIndex":I
    if-ltz v0, :cond_11

    .line 154
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_13

    move-result-wide v2

    .end local v0    # "colIndex":I
    :cond_11
    :goto_11
    move-wide v4, v2

    .line 161
    goto :goto_6

    .line 156
    :catch_13
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public static getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v2, ""

    .line 191
    .local v2, "value":Ljava/lang/String;
    if-nez p0, :cond_7

    .line 193
    const-string v3, ""

    .line 212
    :goto_6
    return-object v3

    .line 198
    :cond_7
    :try_start_7
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, "colIndex":I
    if-ltz v0, :cond_11

    .line 200
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    :cond_11
    if-nez v2, :cond_15

    .line 204
    const-string v2, ""
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_17

    .end local v0    # "colIndex":I
    :cond_15
    :goto_15
    move-object v3, v2

    .line 212
    goto :goto_6

    .line 207
    :catch_17
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static getDataFieldType(Landroid/content/Context;J)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioID"    # J

    .prologue
    const/4 v2, 0x0

    .line 417
    const/4 v7, 0x0

    .line 419
    .local v7, "nRet":Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_9

    .line 441
    :cond_8
    :goto_8
    return-object v2

    .line 423
    :cond_9
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 426
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 428
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

    .line 430
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4a

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 433
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 436
    :cond_4a
    if-eqz v6, :cond_4f

    .line 437
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 439
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " DATA is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v2, v7

    .line 441
    goto :goto_8
.end method

.method public static getDiaplyName(Landroid/database/Cursor;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 217
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    :cond_8
    const-string v0, ""

    .line 220
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static getGenreName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_GenreID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 334
    const/4 v7, 0x0

    .line 336
    .local v7, "nRet":Ljava/lang/String;
    if-ne p1, v3, :cond_6

    .line 356
    :goto_5
    return-object v2

    .line 341
    :cond_6
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 343
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

    .line 345
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3e

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 348
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 351
    :cond_3e
    if-eqz v6, :cond_43

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 354
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getGenreName is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v2, v7

    .line 356
    goto :goto_5
.end method

.method public static getGroupNameFromCursor(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 225
    const-string v0, ""

    .line 227
    .local v0, "groupID":Ljava/lang/String;
    if-nez p1, :cond_6

    move-object v1, v0

    .line 258
    .end local v0    # "groupID":Ljava/lang/String;
    .local v1, "groupID":Ljava/lang/String;
    :goto_5
    return-object v1

    .line 230
    .end local v1    # "groupID":Ljava/lang/String;
    .restart local v0    # "groupID":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/pantech/app/music/list/db/CursorUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_78

    .line 255
    :pswitch_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGroupIDFromCursor  getSortType():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :pswitch_2a
    const-string v2, "album"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_34
    move-object v1, v0

    .line 258
    .end local v0    # "groupID":Ljava/lang/String;
    .restart local v1    # "groupID":Ljava/lang/String;
    goto :goto_5

    .line 236
    .end local v1    # "groupID":Ljava/lang/String;
    .restart local v0    # "groupID":Ljava/lang/String;
    :pswitch_36
    const-string v2, "artist"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    goto :goto_34

    .line 239
    :pswitch_41
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    goto :goto_34

    .line 242
    :pswitch_4c
    const-string v2, "bucket_display_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_34

    .line 246
    :pswitch_57
    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    goto :goto_34

    .line 249
    :pswitch_62
    const-string v2, "playlist_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    goto :goto_34

    .line 252
    :pswitch_6d
    const-string v2, "Title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    goto :goto_34

    .line 230
    :pswitch_data_78
    .packed-switch 0x2
        :pswitch_6d
        :pswitch_11
        :pswitch_11
        :pswitch_2a
        :pswitch_36
        :pswitch_41
        :pswitch_4c
        :pswitch_57
        :pswitch_57
        :pswitch_62
    .end packed-switch
.end method

.method public static getMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)J
    .registers 9
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 48
    const-wide/16 v0, -0x1

    .line 51
    .local v0, "audioID":J
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 52
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NOT Supported category : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_21
    if-eqz p1, :cond_3a

    .line 56
    sget-object v4, Lcom/pantech/app/music/list/db/CursorUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4e

    .line 67
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, "columnIndex":I
    :goto_34
    if-ltz v2, :cond_3a

    .line 74
    :try_start_36
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_49

    move-result-wide v0

    .line 82
    .end local v2    # "columnIndex":I
    :cond_3a
    :goto_3a
    return-wide v0

    .line 59
    :pswitch_3b
    const-string v4, "audio_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 60
    .restart local v2    # "columnIndex":I
    goto :goto_34

    .line 64
    .end local v2    # "columnIndex":I
    :pswitch_42
    const-string v4, "fileID"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 65
    .restart local v2    # "columnIndex":I
    goto :goto_34

    .line 76
    :catch_49
    move-exception v3

    .line 78
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    .line 56
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_42
        :pswitch_42
        :pswitch_42
    .end packed-switch
.end method

.method public static getMediaPath(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 8
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 87
    const-string v2, ""

    .line 90
    .local v2, "mediaPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 91
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOT Supported category : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 93
    :cond_21
    if-eqz p1, :cond_3a

    .line 95
    sget-object v3, Lcom/pantech/app/music/list/db/CursorUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_48

    .line 104
    const-string v3, "_data"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "columnIndex":I
    :goto_34
    if-ltz v0, :cond_3a

    .line 111
    :try_start_36
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_42

    move-result-object v2

    .line 119
    .end local v0    # "columnIndex":I
    :cond_3a
    :goto_3a
    return-object v2

    .line 100
    :pswitch_3b
    const-string v3, "DownUrl"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    .restart local v0    # "columnIndex":I
    goto :goto_34

    .line 113
    :catch_42
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a

    .line 95
    nop

    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public static getMediaTitle(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 6
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 124
    const-string v2, ""

    .line 126
    .local v2, "title":Ljava/lang/String;
    invoke-static {p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, "columnIndex":I
    if-ltz v0, :cond_10

    .line 131
    :try_start_c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_11

    move-result-object v2

    .line 138
    :cond_10
    :goto_10
    return-object v2

    .line 133
    :catch_11
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public static getMineType(Landroid/content/Context;J)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioID"    # J

    .prologue
    const/4 v2, 0x0

    .line 388
    const/4 v7, 0x0

    .line 390
    .local v7, "nRet":Ljava/lang/String;
    const-wide/16 v4, -0x1

    cmp-long v0, p1, v4

    if-nez v0, :cond_9

    .line 412
    :cond_8
    :goto_8
    return-object v2

    .line 394
    :cond_9
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 397
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 399
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

    .line 401
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_4a

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4a

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 404
    const-string v0, "mime_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 407
    :cond_4a
    if-eqz v6, :cond_4f

    .line 408
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 410
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " MIME_TYPE is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    move-object v2, v7

    .line 412
    goto :goto_8
.end method

.method public static getPlaylistAddedTime(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_playlistID"    # I

    .prologue
    const/4 v2, 0x0

    .line 267
    const/4 v7, 0x0

    .line 269
    .local v7, "nRet":Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 271
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

    .line 273
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_63

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_63

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    const-string v0, "date_added"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 296
    :goto_3b
    if-eqz v6, :cond_40

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_40
    const-string v0, "CursorUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPlaylistAddedTime() id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-object v7

    .line 278
    :cond_63
    const/16 v0, -0x64

    if-ne p1, v0, :cond_6a

    .line 281
    const-string v7, "shortcut_playall"

    goto :goto_3b

    .line 283
    :cond_6a
    const/4 v0, -0x3

    if-ne p1, v0, :cond_70

    .line 285
    const-string v7, "shortcut_podcasts"

    goto :goto_3b

    .line 287
    :cond_70
    const/4 v0, -0x4

    if-ne p1, v0, :cond_76

    .line 289
    const-string v7, "shortcut_recentlyadded"

    goto :goto_3b

    .line 293
    :cond_76
    const-string v7, "error"

    goto :goto_3b
.end method

.method public static isColumnInteger(Ljava/lang/String;)Z
    .registers 2
    .param p0, "column"    # Ljava/lang/String;

    .prologue
    .line 487
    const-string v0, "artist_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "album_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "play_count"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "duration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "is_podcast"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "date_modified"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "_size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "play_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "fileSize"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "Playtime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "Bitrate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "FileType"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "ModifyTime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "Rating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "Playcount"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "map_playlist_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "playlist_order"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 506
    :cond_90
    const/4 v0, 0x1

    .line 509
    :goto_91
    return v0

    :cond_92
    const/4 v0, 0x0

    goto :goto_91
.end method

.method public static isColumnLong(Ljava/lang/String;)Z
    .registers 2
    .param p0, "column"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string v0, "bookmark"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "fileID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "rating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "audio_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "map_file_id"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 479
    :cond_30
    const/4 v0, 0x1

    .line 482
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public static isRealPlaylistAvailable(Landroid/database/Cursor;Ljava/lang/Object;)Z
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 447
    monitor-enter p1

    .line 449
    const/4 v0, 0x0

    .line 451
    .local v0, "hasRealPlaylist":Z
    if-eqz p0, :cond_17

    .line 453
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_17

    .line 455
    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 456
    const-string v3, "_id"

    invoke-static {p0, v3}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 458
    .local v2, "playlistID":I
    if-lez v2, :cond_19

    .line 460
    const/4 v0, 0x1

    .line 466
    .end local v1    # "i":I
    .end local v2    # "playlistID":I
    :cond_17
    monitor-exit p1

    return v0

    .line 453
    .restart local v1    # "i":I
    .restart local v2    # "playlistID":I
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 467
    .end local v1    # "i":I
    .end local v2    # "playlistID":I
    :catchall_1c
    move-exception v3

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v3
.end method

.method public static makeItemCursor(ILjava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 9
    .param p0, "id"    # I
    .param p1, "szTitle"    # Ljava/lang/String;
    .param p2, "originalCursor"    # Landroid/database/Cursor;

    .prologue
    .line 611
    const-string v4, "makeItemCursor()"

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v2, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "szCol":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v1, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    array-length v4, v3

    if-ge v0, v4, :cond_f0

    .line 621
    aget-object v4, v3, v0

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 623
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 625
    :cond_2b
    aget-object v4, v3, v0

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 627
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 629
    :cond_3d
    aget-object v4, v3, v0

    const-string v5, "fileID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 631
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 633
    :cond_4f
    aget-object v4, v3, v0

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 635
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 637
    :cond_61
    aget-object v4, v3, v0

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 639
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 641
    :cond_6f
    aget-object v4, v3, v0

    const-string v5, "playlist_name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 643
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 645
    :cond_7d
    aget-object v4, v3, v0

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 647
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 649
    :cond_8b
    aget-object v4, v3, v0

    const-string v5, "Title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_99

    .line 651
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 653
    :cond_99
    aget-object v4, v3, v0

    const-string v5, "title"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 655
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 657
    :cond_a7
    aget-object v4, v3, v0

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 659
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 661
    :cond_b6
    aget-object v4, v3, v0

    const-string v5, "bucket_id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 663
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 665
    :cond_c9
    aget-object v4, v3, v0

    const-string v5, "bucket_display_name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 667
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 669
    :cond_d8
    aget-object v4, v3, v0

    const-string v5, "_data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 671
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 675
    :cond_e9
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_28

    .line 679
    :cond_f0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    new-instance v4, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v4, v3, v2}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v4
.end method
