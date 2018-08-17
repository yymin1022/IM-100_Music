.class public Lcom/pantech/app/music/list/db/DBInterfaceCommon;
.super Ljava/lang/Object;
.source "DBInterfaceCommon.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/db/DBInterfaceCommon$1;,
        Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DBInterfaceCommon"


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method public static checkSpecialCharacter(Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 945
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 947
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 948
    const/4 v1, 0x1

    .line 951
    :goto_12
    return v1

    .line 945
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 951
    :cond_16
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getAlbumArtistName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_albumID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 731
    const/4 v7, 0x0

    .line 733
    .local v7, "nRet":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 755
    :cond_5
    :goto_5
    return-object v2

    .line 735
    :cond_6
    if-eq p1, v3, :cond_5

    .line 740
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 742
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

    .line 744
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 746
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 747
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 750
    :cond_40
    if-eqz v6, :cond_45

    .line 751
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 753
    :cond_45
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getAlbumName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 755
    goto :goto_5
.end method

.method public static getAlbumID(Landroid/content/Context;J)I
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioID"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 478
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v8, -0x1

    invoke-static {v0, v5, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 479
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "_id=?"

    .line 480
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 481
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "album_id"

    aput-object v0, v2, v9

    .line 483
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 485
    .local v7, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 487
    .local v6, "albumID":I
    if-eqz v7, :cond_32

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_32

    .line 489
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 490
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 493
    :cond_32
    if-eqz v7, :cond_37

    .line 494
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 496
    :cond_37
    return v6
.end method

.method public static getAlbumName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_albumID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 702
    const/4 v7, 0x0

    .line 704
    .local v7, "nRet":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 726
    :cond_5
    :goto_5
    return-object v2

    .line 706
    :cond_6
    if-eq p1, v3, :cond_5

    .line 711
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 713
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

    .line 715
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 717
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 718
    const-string v0, "album"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 721
    :cond_40
    if-eqz v6, :cond_45

    .line 722
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 724
    :cond_45
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getAlbumName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 726
    goto :goto_5
.end method

.method public static getArtistName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_artistID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 760
    const/4 v7, 0x0

    .line 762
    .local v7, "nRet":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 784
    :cond_5
    :goto_5
    return-object v2

    .line 764
    :cond_6
    if-eq p1, v3, :cond_5

    .line 769
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 771
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

    .line 773
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 775
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 776
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 779
    :cond_40
    if-eqz v6, :cond_45

    .line 780
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 782
    :cond_45
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getArtistName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 784
    goto :goto_5
.end method

.method public static getBucketName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bucketID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 857
    const/4 v7, 0x0

    .line 859
    .local v7, "nRet":Ljava/lang/String;
    if-ne p1, v3, :cond_6

    .line 880
    :cond_5
    :goto_5
    return-object v2

    .line 861
    :cond_6
    if-eqz p0, :cond_5

    .line 865
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 867
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

    .line 869
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 871
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 872
    const-string v0, "bucket_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 875
    :cond_40
    if-eqz v6, :cond_45

    .line 876
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_45
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucketID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BUCKET_DISPLAY_NAME is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 880
    goto :goto_5
.end method

.method public static getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;ILcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "listID"    # Ljava/lang/String;
    .param p3, "searchMode"    # I
    .param p4, "param"    # Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x1

    .line 147
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 149
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    const-string v5, ""

    move v2, v1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v9}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    .local v6, "countCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_22

    .line 155
    :try_start_18
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_29

    move-result v0

    .line 160
    if-eqz v6, :cond_21

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    .end local v6    # "countCursor":Landroid/database/Cursor;
    :cond_21
    :goto_21
    return v0

    .line 160
    .restart local v6    # "countCursor":Landroid/database/Cursor;
    :cond_22
    if-eqz v6, :cond_27

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_27
    const/4 v0, 0x0

    goto :goto_21

    .line 160
    :catchall_29
    move-exception v0

    if-eqz v6, :cond_2f

    .line 161
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2f
    throw v0

    .line 168
    .end local v6    # "countCursor":Landroid/database/Cursor;
    :cond_30
    invoke-static {p1, p2, v9}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v8

    .line 169
    .local v8, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-boolean v1, p4, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isMusic:Z

    iget-boolean v2, p4, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isExcludeDRM:Z

    const-string v5, ""

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v7

    .line 171
    .local v7, "selection":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {p0, v8, v7, v0}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getDatabaseCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_21
.end method

.method public static getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "listID"    # Ljava/lang/String;
    .param p3, "param"    # Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    .prologue
    .line 143
    const/4 v0, 0x7

    invoke-static {p0, p1, p2, v0, p3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;ILcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v0

    return v0
.end method

.method public static getDatabaseCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "select"    # Ljava/lang/String;
    .param p3, "selectArg"    # [Ljava/lang/String;

    .prologue
    const/4 v10, -0x1

    .line 75
    const/4 v7, 0x0

    .line 76
    .local v7, "count":I
    const/4 v6, 0x0

    .line 78
    .local v6, "c":Landroid/database/Cursor;
    if-nez p1, :cond_7

    move v1, v10

    .line 113
    :goto_6
    return v1

    .line 80
    :cond_7
    if-nez p0, :cond_b

    move v1, v10

    .line 81
    goto :goto_6

    .line 83
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    :try_start_10
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "count(*)"

    aput-object v3, v2, v1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_2f

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2f

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_2e} :catch_56
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2e} :catch_67
    .catchall {:try_start_10 .. :try_end_2e} :catchall_78

    move-result v7

    .line 107
    :cond_2f
    if-eqz v6, :cond_34

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_34
    const-string v1, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    .line 113
    goto :goto_6

    .line 95
    :catch_56
    move-exception v8

    .line 97
    .local v8, "e1":Landroid/database/sqlite/SQLiteException;
    :try_start_57
    const-string v1, "DBInterfaceCommon"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_57 .. :try_end_60} :catchall_78

    .line 107
    if-eqz v6, :cond_65

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_65
    move v1, v10

    goto :goto_6

    .line 100
    .end local v8    # "e1":Landroid/database/sqlite/SQLiteException;
    :catch_67
    move-exception v9

    .line 102
    .local v9, "e2":Ljava/lang/Exception;
    :try_start_68
    const-string v1, "DBInterfaceCommon"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_78

    .line 107
    if-eqz v6, :cond_76

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_76
    move v1, v10

    goto :goto_6

    .line 107
    .end local v9    # "e2":Ljava/lang/Exception;
    :catchall_78
    move-exception v1

    if-eqz v6, :cond_7e

    .line 108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7e
    throw v1
.end method

.method public static getGenreName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "_GenreID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 828
    const/4 v7, 0x0

    .line 830
    .local v7, "nRet":Ljava/lang/String;
    if-nez p0, :cond_6

    .line 852
    :cond_5
    :goto_5
    return-object v2

    .line 832
    :cond_6
    if-eq p1, v3, :cond_5

    .line 837
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 839
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

    .line 841
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_40

    .line 843
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 844
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 847
    :cond_40
    if-eqz v6, :cond_45

    .line 848
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_45
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getGenreName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 852
    goto :goto_5
.end method

.method public static getMusicCount(Landroid/content/Context;ZLcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isExcludeRecord"    # Z
    .param p2, "param"    # Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    .prologue
    const/4 v8, 0x0

    .line 126
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v1, -0x1

    invoke-static {v0, v8, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v6

    .line 129
    .local v6, "uri":Landroid/net/Uri;
    if-eqz p1, :cond_23

    .line 131
    sget-object v9, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    iget-boolean v1, p2, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isMusic:Z

    iget-boolean v2, p2, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isExcludeDRM:Z

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(ZZILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v9, v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "where":Ljava/lang/String;
    :goto_1e
    invoke-static {p0, v6, v7, v8}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getDatabaseCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 135
    .end local v7    # "where":Ljava/lang/String;
    :cond_23
    iget-boolean v0, p2, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;->isMusic:Z

    if-eqz v0, :cond_2a

    const-string v7, "is_music=1"

    .restart local v7    # "where":Ljava/lang/String;
    :goto_29
    goto :goto_1e

    .end local v7    # "where":Ljava/lang/String;
    :cond_2a
    move-object v7, v8

    goto :goto_29
.end method

.method private static getPlayCount(Landroid/content/Context;J)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioID"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 328
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 330
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 331
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "play_count"

    aput-object v0, v2, v6

    .line 332
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 336
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 338
    .local v6, "count":I
    if-eqz v7, :cond_4a

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4a

    .line 340
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 341
    const-string v0, "play_count"

    invoke-static {v7, v0}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    .line 344
    :cond_4a
    if-eqz v7, :cond_4f

    .line 345
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 350
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "count":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_4f
    return v6
.end method

.method public static getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;
    .registers 12
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "_playlistID"    # J

    .prologue
    const/4 v2, 0x0

    .line 789
    const/4 v7, 0x0

    .line 791
    .local v7, "nRet":Ljava/lang/String;
    if-nez p1, :cond_5

    .line 823
    :cond_4
    :goto_4
    return-object v2

    .line 794
    :cond_5
    const-wide/16 v4, -0x1

    cmp-long v0, p2, v4

    if-eqz v0, :cond_4

    .line 799
    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 801
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 808
    :goto_13
    const/4 v0, -0x1

    invoke-static {p0, v2, v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 810
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 812
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_54

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_54

    .line 814
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 815
    invoke-static {p0}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 818
    :cond_54
    if-eqz v6, :cond_59

    .line 819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 821
    :cond_59
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getPlaylistName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v7

    .line 823
    goto :goto_4

    .line 805
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_7d
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_13
.end method

.method public static getRating(Landroid/content/Context;J)J
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioID"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 455
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v7, -0x1

    invoke-static {v0, v5, v7}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 456
    .local v1, "uri":Landroid/net/Uri;
    const-string v3, "_id=?"

    .line 457
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 458
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "rating"

    aput-object v0, v2, v10

    .line 460
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 462
    .local v6, "c":Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 464
    .local v8, "rating":J
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_33

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 470
    :cond_33
    if-eqz v6, :cond_38

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 473
    :cond_38
    return-wide v8
.end method

.method public static queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "condition"    # Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    .param p3, "limit"    # I

    .prologue
    const/4 v7, 0x0

    .line 189
    iget-object v4, p2, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-static {p1, v4, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "selection":Ljava/lang/String;
    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "orderby":Ljava/lang/String;
    if-eqz p0, :cond_a9

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-lez p3, :cond_2e

    .line 199
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v8, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 201
    :cond_2e
    const-string v4, "DBInterfaceCommon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "->category:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", groupID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", selection:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", orderby:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-eqz v0, :cond_87

    if-eqz v1, :cond_87

    .line 207
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 211
    const/4 v4, 0x0

    :try_start_71
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_74
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_71 .. :try_end_74} :catch_76
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_7c

    move-result-object v4

    .line 236
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_75
    return-object v4

    .line 213
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_76
    move-exception v6

    .line 215
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .end local v6    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_7a
    move-object v4, v7

    .line 222
    goto :goto_75

    .line 217
    :catch_7c
    move-exception v6

    .line 219
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7a

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_81
    move-object v4, v7

    .line 227
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_75

    .line 232
    :cond_87
    const-string v4, "DBInterfaceCommon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query Error uri:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " resolver:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_a9
    move-object v4, v7

    .line 236
    goto :goto_75
.end method

.method public static declared-synchronized queryTrackListFast(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "arrGroupIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v8, Lcom/pantech/app/music/list/db/DBInterfaceCommon;

    monitor-enter v8

    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v7, "whereBuilder":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfaceCommon$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_c0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not Support Group ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_32

    .line 241
    .end local v7    # "whereBuilder":Ljava/lang/StringBuilder;
    :catchall_32
    move-exception v0

    monitor-exit v8

    throw v0

    .line 246
    .restart local v7    # "whereBuilder":Ljava/lang/StringBuilder;
    :pswitch_35
    :try_start_35
    const-string v0, "album_id IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :goto_3a
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_64

    .line 260
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 262
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_55
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 249
    .end local v6    # "i":I
    :pswitch_58
    const-string v0, "artist_id IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 252
    :pswitch_5e
    const-string v0, "bucket_id IN ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 268
    .restart local v6    # "i":I
    :cond_64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 269
    const/16 v0, 0x29

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, "is_music=1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, "orderby":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 278
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_bd
    .catchall {:try_start_35 .. :try_end_bd} :catchall_32

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 243
    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_58
        :pswitch_5e
    .end packed-switch
.end method

.method public static setRingtone(Landroid/content/Context;J)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 382
    .local v8, "ringUri":Landroid/net/Uri;
    :try_start_a
    new-instance v10, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v10, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 384
    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "is_alarm"

    const-string v4, "1"

    invoke-virtual {v10, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v8, v10, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_23} :catch_74

    .line 394
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "title"

    aput-object v4, v2, v1

    .line 396
    .local v2, "cols":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, "where":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 401
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_d2

    :try_start_52
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_d2

    .line 403
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 408
    const-string v1, "_data"

    invoke-static {v6, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, "szPath":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-static {v9}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->isAvailableContents(Ljava/lang/String;)Z
    :try_end_6a
    .catchall {:try_start_52 .. :try_end_6a} :catchall_f1

    move-result v1

    if-nez v1, :cond_8f

    .line 411
    const/4 v1, 0x0

    .line 444
    if-eqz v6, :cond_73

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 450
    .end local v2    # "cols":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "szPath":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_73
    :goto_73
    return v1

    .line 388
    :catch_74
    move-exception v7

    .line 390
    .local v7, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v1, "DBInterfaceCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t update ringtone flag for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const/4 v1, 0x0

    goto :goto_73

    .line 416
    .end local v7    # "ex":Ljava/lang/UnsupportedOperationException;
    .restart local v2    # "cols":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "szPath":Ljava/lang/String;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :cond_8f
    :try_start_8f
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 418
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    invoke-static {v9}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_f1

    move-result v1

    if-eqz v1, :cond_c7

    .line 420
    const/4 v1, 0x0

    .line 444
    if-eqz v6, :cond_73

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 423
    :cond_a8
    :try_start_a8
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 425
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c7

    invoke-static {v9}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c7

    invoke-static {v9}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmAvailable(Ljava/lang/String;)Z
    :try_end_bd
    .catchall {:try_start_a8 .. :try_end_bd} :catchall_f1

    move-result v1

    if-nez v1, :cond_c7

    .line 427
    const/4 v1, 0x0

    .line 444
    if-eqz v6, :cond_73

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 433
    :cond_c7
    const/4 v1, 0x1

    :try_start_c8
    invoke-static {p0, v1, v8}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_f1

    .line 435
    const/4 v1, 0x1

    .line 444
    if-eqz v6, :cond_73

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 439
    .end local v9    # "szPath":Ljava/lang/String;
    :cond_d2
    :try_start_d2
    const-string v1, "DBInterfaceCommon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "we can\'t find that song = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_d2 .. :try_end_ea} :catchall_f1

    .line 444
    if-eqz v6, :cond_ef

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_ef
    const/4 v1, 0x0

    goto :goto_73

    .line 444
    :catchall_f1
    move-exception v1

    if-eqz v6, :cond_f7

    .line 446
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f7
    throw v1
.end method

.method public static updatePlaycount(Landroid/content/Context;J)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "audioID"    # J

    .prologue
    const/4 v9, 0x1

    .line 355
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 358
    invoke-static {p0, p1, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getPlayCount(Landroid/content/Context;J)I

    move-result v0

    .line 359
    .local v0, "oldCount":I
    add-int/lit8 v1, v0, 0x1

    .line 361
    .local v1, "playCount":I
    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v4

    .line 362
    .local v4, "uri":Landroid/net/Uri;
    const-string v2, "_id=?"

    .line 363
    .local v2, "selection":Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 365
    .local v3, "selectionArg":[Ljava/lang/String;
    const-string v6, "DBInterfaceCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Update Count audioID:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] count:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 368
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "play_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 372
    .end local v0    # "oldCount":I
    .end local v1    # "playCount":I
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "selectionArg":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_5d
    return-void
.end method

.method public static updateRating(Landroid/content/Context;JIJ)I
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "auidoID"    # J
    .param p3, "playType"    # I
    .param p4, "rate"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 283
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 285
    if-nez p3, :cond_4b

    .line 287
    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5, v8, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 288
    .local v2, "uri":Landroid/net/Uri;
    const-string v0, "_id=?"

    .line 289
    .local v0, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 291
    .local v1, "selectionArg":[Ljava/lang/String;
    const-string v4, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 294
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "rating"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 323
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "selectionArg":[Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_4a
    :goto_4a
    return v4

    .line 303
    :cond_4b
    const/4 v5, 0x3

    if-ne p3, v5, :cond_4a

    .line 305
    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5, v8, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 306
    .restart local v2    # "uri":Landroid/net/Uri;
    const-string v0, "fileID=?"

    .line 307
    .restart local v0    # "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 309
    .restart local v1    # "selectionArg":[Ljava/lang/String;
    const-string v4, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 312
    .restart local v3    # "values":Landroid/content/ContentValues;
    const-string v4, "Rating"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_4a
.end method


# virtual methods
.method public getAlbumID(Ljava/lang/String;)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 551
    const/4 v7, -0x1

    .line 553
    .local v7, "id":I
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 555
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "album=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "album"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 557
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 559
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 560
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 563
    :cond_34
    if-eqz v6, :cond_39

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_39
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Album ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    return v7
.end method

.method public getArtistID(Ljava/lang/String;)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 573
    const/4 v7, -0x1

    .line 575
    .local v7, "id":I
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 577
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "artist=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "artist"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 579
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 581
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 582
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 585
    :cond_34
    if-eqz v6, :cond_39

    .line 586
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 588
    :cond_39
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Artists ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return v7
.end method

.method public getBucketID(Ljava/lang/String;)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 595
    const/4 v7, -0x1

    .line 598
    .local v7, "id":I
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 600
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "bucket_display_name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 602
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 604
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 605
    const-string v0, "bucket_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 608
    :cond_34
    if-eqz v6, :cond_39

    .line 609
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_39
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BUCKET_ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    return v7
.end method

.method public getGenreID(Ljava/lang/String;)I
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 618
    const/4 v7, -0x1

    .line 620
    .local v7, "id":I
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 622
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 624
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_34

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 627
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 630
    :cond_34
    if-eqz v6, :cond_39

    .line 631
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_39
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Genre ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return v7
.end method

.method public getGroupSelectMediaID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)I
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 885
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfaceCommon$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 901
    const/4 v0, -0x1

    :goto_c
    return v0

    .line 888
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getAlbumID(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 890
    :pswitch_12
    invoke-virtual {p0, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getArtistID(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 892
    :pswitch_17
    invoke-virtual {p0, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getGenreID(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 896
    :pswitch_1c
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 898
    :pswitch_21
    invoke-virtual {p0, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getBucketID(Ljava/lang/String;)I

    move-result v0

    goto :goto_c

    .line 885
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_21
        :pswitch_17
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public getGroupSelectMediaName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    .line 906
    const/4 v0, -0x1

    .line 908
    .local v0, "nGroupID":I
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p1, v1, :cond_1d

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p1, v1, :cond_1e

    .line 940
    .end local p2    # "groupID":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-object p2

    .line 919
    .restart local p2    # "groupID":Ljava/lang/String;
    :cond_1e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 921
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 923
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfaceCommon$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    goto :goto_1d

    .line 926
    :pswitch_38
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getAlbumName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1d

    .line 928
    :pswitch_3f
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getArtistName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1d

    .line 930
    :pswitch_46
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getGenreName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1d

    .line 934
    :pswitch_4d
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mContext:Landroid/content/Context;

    int-to-long v2, v0

    invoke-static {p1, v1, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    goto :goto_1d

    .line 936
    :pswitch_55
    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getBucketName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1d

    .line 923
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_38
        :pswitch_3f
        :pswitch_55
        :pswitch_46
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
    .end packed-switch
.end method

.method public getMediaName(I)Ljava/lang/String;
    .registers 10
    .param p1, "_audioID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 526
    const/4 v7, 0x0

    .line 528
    .local v7, "nRet":Ljava/lang/String;
    if-ne p1, v3, :cond_6

    .line 546
    :goto_5
    return-object v2

    .line 533
    :cond_6
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 535
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

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

    .line 537
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 540
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 543
    :cond_3c
    if-eqz v6, :cond_41

    .line 544
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_41
    move-object v2, v7

    .line 546
    goto :goto_5
.end method

.method public getMediaPath(I)Ljava/lang/String;
    .registers 10
    .param p1, "_audioID"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 501
    const/4 v7, 0x0

    .line 503
    .local v7, "nRet":Ljava/lang/String;
    if-ne p1, v3, :cond_6

    .line 521
    :goto_5
    return-object v2

    .line 508
    :cond_6
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 510
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

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

    .line 512
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3c

    .line 514
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 515
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 518
    :cond_3c
    if-eqz v6, :cond_41

    .line 519
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_41
    move-object v2, v7

    .line 521
    goto :goto_5
.end method

.method public getPlaylistData(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;J)Ljava/lang/String;
    .registers 16
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "id"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 640
    const-string v6, ""

    .line 642
    .local v6, "_data":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 644
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 652
    :goto_d
    const/4 v0, -0x1

    invoke-static {p1, v5, v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 654
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "_data"

    aput-object v3, v2, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v10

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 656
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_58

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 658
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 661
    :cond_58
    if-eqz v7, :cond_5d

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_5d
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " playlist _data is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    return-object v6

    .line 649
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_7a
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_d
.end method

.method public getPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)I
    .registers 12
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 671
    const/4 v7, -0x1

    .line 673
    .local v7, "id":I
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxCategory()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 675
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 683
    :goto_b
    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 685
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->mResolver:Landroid/content/ContentResolver;

    new-array v2, v8, [Ljava/lang/String;

    invoke-static {p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    aput-object p2, v4, v5

    invoke-static {p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 687
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_52

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 689
    invoke-static {p1}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 692
    :cond_52
    if-eqz v6, :cond_57

    .line 693
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 695
    :cond_57
    const-string v0, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " playlist ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    return v7

    .line 680
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_74
    sget-object p1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b
.end method
