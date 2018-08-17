.class public Lcom/pantech/app/music/library/helper/DBProviderHelper;
.super Ljava/lang/Object;
.source "DBProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/helper/DBProviderHelper$1;,
        Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    }
.end annotation


# static fields
.field static final AudioRecord_AlbumName:[Ljava/lang/String;

.field static final AudioRecord_ArtistName:[Ljava/lang/String;

.field public static final RECENTLY_ADDED_WEEK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DBProviderHelper"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\'Voice_record\'"

    aput-object v1, v0, v2

    const-string v1, "\'Call_record\'"

    aput-object v1, v0, v3

    const-string v1, "\'FM Radio\'"

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\'Voice Recorder\'"

    aput-object v1, v0, v2

    const-string v1, "\'FM Radio\'"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 9
    .param p0, "where"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "valueList"    # [Ljava/lang/String;

    .prologue
    .line 55
    if-nez p2, :cond_3

    .line 60
    :cond_2
    return-object p0

    .line 57
    :cond_3
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 58
    .local v3, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " != "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static declared-synchronized deleteSongs(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;)I
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "musicList"    # [Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 556
    const-class v12, Lcom/pantech/app/music/library/helper/DBProviderHelper;

    monitor-enter v12

    if-nez p1, :cond_8

    .line 557
    const/4 v4, 0x0

    .line 599
    :goto_6
    monitor-exit v12

    return v4

    .line 559
    :cond_8
    :try_start_8
    const-string v11, "DBProviderHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deleteSongs() size:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 565
    .local v9, "uri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 566
    .local v10, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v11, "_id IN ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    move-object/from16 v2, p1

    .local v2, "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_33
    if-ge v6, v8, :cond_56

    aget-object v7, v2, v6

    .line 568
    .local v7, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v7, :cond_43

    invoke-virtual {v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-gez v11, :cond_46

    .line 567
    :cond_43
    :goto_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 570
    :cond_46
    invoke-virtual {v7}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 571
    const/16 v11, 0x2c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_53

    goto :goto_43

    .line 556
    .end local v2    # "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v6    # "i$":I
    .end local v7    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v8    # "len$":I
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "whereBuilder":Ljava/lang/StringBuilder;
    :catchall_53
    move-exception v11

    monitor-exit v12

    throw v11

    .line 573
    .restart local v2    # "arr$":[Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v6    # "i$":I
    .restart local v8    # "len$":I
    .restart local v9    # "uri":Landroid/net/Uri;
    .restart local v10    # "whereBuilder":Ljava/lang/StringBuilder;
    :cond_56
    :try_start_56
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v13, 0x2c

    if-ne v11, v13, :cond_6d

    .line 574
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 576
    :cond_6d
    const/16 v11, 0x29

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    const-string v11, "DBProviderHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "->URI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v11, "DBProviderHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "->where:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 586
    .local v4, "deleteCount":I
    move-object/from16 v0, p1

    array-length v11, v0

    new-array v3, v11, [J

    .line 587
    .local v3, "audioIds":[J
    if-lez v4, :cond_d8

    .line 588
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_bf
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v5, v11, :cond_d8

    .line 589
    aget-object v11, p1, v5

    invoke-virtual {v11}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pantech/app/music/utils/StorageUtils;->deleteFile(Ljava/lang/String;)Z

    .line 590
    aget-object v11, p1, v5

    invoke-virtual {v11}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v14

    aput-wide v14, v3, v5

    .line 588
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 597
    .end local v5    # "i":I
    :cond_d8
    invoke-static {v3}, Lcom/pantech/app/music/common/MusicUtils;->removeQueue([J)V
    :try_end_db
    .catchall {:try_start_56 .. :try_end_db} :catchall_53

    goto/16 :goto_6
.end method

.method public static getAlbumIdWithArtistId(Landroid/content/Context;J)J
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "artistID"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 615
    cmp-long v0, p1, v2

    if-gez v0, :cond_9

    .line 616
    const-wide/16 v6, -0x1

    .line 637
    :cond_8
    :goto_8
    return-wide v6

    .line 619
    :cond_9
    invoke-static {p1, p2}, Lcom/pantech/app/music/albumart/AlbumArtCache;->getAlbumIdWithArtistId(J)J

    move-result-wide v6

    .line 620
    .local v6, "albumID":J
    cmp-long v0, v6, v2

    if-gez v0, :cond_8

    .line 621
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 623
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 625
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 626
    if-eqz v8, :cond_39

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 627
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 629
    invoke-static {p1, p2, v6, v7}, Lcom/pantech/app/music/albumart/AlbumArtCache;->putAlbumIdWithArtistId(JJ)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_39} :catch_3f
    .catchall {:try_start_18 .. :try_end_39} :catchall_5e

    .line 634
    :cond_39
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .line 631
    :catch_3f
    move-exception v9

    .line 632
    .local v9, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v0, "DBProviderHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_5e

    .line 634
    if-eqz v8, :cond_8

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_5e
    move-exception v0

    if-eqz v8, :cond_64

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static getBaseIdColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;
    .registers 3
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 456
    sget-object v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 460
    const-string v0, "_id"

    :goto_d
    return-object v0

    .line 458
    :pswitch_e
    const-string v0, "_id"

    goto :goto_d

    .line 456
    nop

    :pswitch_data_12
    .packed-switch 0xf
        :pswitch_e
    .end packed-switch
.end method

.method public static getConditionWithKeywords(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "searchWord"    # Ljava/lang/String;

    .prologue
    .line 507
    const-string v2, ""

    .line 508
    .local v2, "keywords":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getSearchWords(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 510
    .local v3, "wildcardWords":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-eqz v3, :cond_3a

    array-length v4, v3

    if-ge v1, v4, :cond_3a

    .line 512
    if-nez v1, :cond_19

    .line 513
    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 517
    :cond_3a
    if-eqz v3, :cond_5a

    array-length v4, v3

    if-lez v4, :cond_5a

    .line 518
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 520
    :cond_5a
    return-object v2
.end method

.method public static getContentUri(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Landroid/net/Uri;
    .registers 11
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p1, "groupID"    # J
    .param p3, "limit"    # I

    .prologue
    .line 92
    sget-object v2, Lcom/pantech/app/music/library/helper/DBProviderHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ac

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geSortOrder() no match group:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :pswitch_24
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 134
    .local v0, "uri":Landroid/net/Uri;
    :goto_26
    if-lez p3, :cond_49

    .line 135
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 137
    :cond_49
    const-string v2, "DBProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->Uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-object v0

    .line 103
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_70
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 104
    .local v1, "uri2":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 105
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 107
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "uri2":Landroid/net/Uri;
    :pswitch_87
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 108
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 110
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_8a
    sget-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 111
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 113
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_8d
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 114
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 116
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_90
    const-string v2, "content://media/external/audio/folders"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 117
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 120
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_97
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 121
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 123
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_9a
    const-string v2, "external"

    invoke-static {v2, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 124
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 126
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_a1
    sget-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;->LOCAL_URI:Landroid/net/Uri;

    .line 127
    .restart local v0    # "uri":Landroid/net/Uri;
    goto :goto_26

    .line 129
    .end local v0    # "uri":Landroid/net/Uri;
    :pswitch_a4
    const-string v2, "external"

    invoke-static {v2, p1, p2}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .restart local v0    # "uri":Landroid/net/Uri;
    goto/16 :goto_26

    .line 92
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_70
        :pswitch_87
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_97
        :pswitch_97
        :pswitch_9a
        :pswitch_a1
        :pswitch_a4
    .end packed-switch
.end method

.method public static getCount(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentInfo"    # Lcom/pantech/app/music/library/FragmentInfo;

    .prologue
    const/4 v7, 0x0

    .line 641
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 660
    :cond_5
    :goto_5
    return v7

    .line 644
    :cond_6
    const/4 v6, 0x0

    .line 645
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 647
    .local v7, "count":I
    :try_start_8
    invoke-virtual {p1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/pantech/app/music/library/FragmentInfo;->getLimit()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v9

    .line 648
    .local v9, "queryInfo":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(*)"

    aput-object v4, v2, v3

    iget-object v3, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 649
    if-eqz v6, :cond_3e

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3e

    .line 650
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 651
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3d} :catch_44

    move-result v7

    .line 657
    .end local v9    # "queryInfo":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    :cond_3e
    :goto_3e
    if-eqz v6, :cond_5

    .line 658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 654
    :catch_44
    move-exception v8

    .line 655
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "DBProviderHelper"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public static getCursor(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Landroid/database/Cursor;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "groupID"    # J
    .param p4, "limit"    # I

    .prologue
    const/4 v4, 0x0

    .line 78
    invoke-static {p1, p2, p3, p4, v4}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JILjava/lang/String;)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v6

    .line 79
    .local v6, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v6, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    iget-object v5, v6, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getDetailWithArtistCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 603
    const-string v4, "number_of_albums"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 604
    .local v0, "numberOfAlbums":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 605
    .local v2, "strNumberOfAlbums":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 607
    const-string v4, "number_of_tracks"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 608
    .local v1, "numberOfTracks":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0003

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 609
    .local v3, "strNumberOfTrack":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "column"    # Ljava/lang/String;

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 347
    invoke-static {}, Lcom/pantech/app/music/utils/SystemUtils;->isKoreanLocale()Z

    move-result v8

    if-eqz v8, :cond_1b4

    .line 349
    const/4 v8, 0x7

    new-array v3, v8, [[C

    new-array v8, v10, [C

    fill-array-data v8, :array_1b6

    aput-object v8, v3, v11

    new-array v8, v10, [C

    fill-array-data v8, :array_1bc

    aput-object v8, v3, v12

    new-array v8, v10, [C

    fill-array-data v8, :array_1c2

    aput-object v8, v3, v10

    new-array v8, v10, [C

    fill-array-data v8, :array_1c8

    aput-object v8, v3, v13

    new-array v8, v10, [C

    fill-array-data v8, :array_1ce

    aput-object v8, v3, v14

    const/4 v8, 0x5

    new-array v9, v10, [C

    fill-array-data v9, :array_1d4

    aput-object v9, v3, v8

    const/4 v8, 0x6

    new-array v9, v10, [C

    fill-array-data v9, :array_1da

    aput-object v9, v3, v8

    .line 374
    .local v3, "charsMap":[[C
    const/4 v8, 0x7

    new-array v7, v8, [[C

    new-array v8, v10, [C

    fill-array-data v8, :array_1e0

    aput-object v8, v7, v11

    new-array v8, v10, [C

    fill-array-data v8, :array_1e6

    aput-object v8, v7, v12

    new-array v8, v10, [C

    fill-array-data v8, :array_1ec

    aput-object v8, v7, v10

    new-array v8, v10, [C

    fill-array-data v8, :array_1f2

    aput-object v8, v7, v13

    new-array v8, v10, [C

    fill-array-data v8, :array_1f8

    aput-object v8, v7, v14

    const/4 v8, 0x5

    new-array v9, v10, [C

    fill-array-data v9, :array_1fe

    aput-object v9, v7, v8

    const/4 v8, 0x6

    new-array v9, v10, [C

    fill-array-data v9, :array_204

    aput-object v9, v7, v8

    .line 387
    .local v7, "symbolMap":[[C
    new-array v2, v14, [[C

    new-array v8, v10, [C

    fill-array-data v8, :array_20a

    aput-object v8, v2, v11

    new-array v8, v10, [C

    fill-array-data v8, :array_210

    aput-object v8, v2, v12

    new-array v8, v10, [C

    fill-array-data v8, :array_216

    aput-object v8, v2, v10

    new-array v8, v10, [C

    fill-array-data v8, :array_21c

    aput-object v8, v2, v13

    .line 395
    .local v2, "charsJap":[[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v6, "orderBy":Ljava/lang/StringBuilder;
    const-string v8, "(CASE"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    move-object v0, v3

    .local v0, "arr$":[[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_a2
    if-ge v4, v5, :cond_f4

    aget-object v1, v0, v4

    .line 401
    .local v1, "c":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " WHEN SUBSTR("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", 1, 1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " BETWEEN \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v1, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v1, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string v8, " THEN 2"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v4, v4, 0x1

    goto :goto_a2

    .line 408
    .end local v1    # "c":[C
    :cond_f4
    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_f7
    if-ge v4, v5, :cond_149

    aget-object v1, v0, v4

    .line 409
    .restart local v1    # "c":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " WHEN SUBSTR("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", 1, 1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " BETWEEN \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v1, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v1, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v8, " THEN 4"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 430
    .end local v1    # "c":[C
    :cond_149
    move-object v0, v7

    array-length v5, v0

    const/4 v4, 0x0

    :goto_14c
    if-ge v4, v5, :cond_19e

    aget-object v1, v0, v4

    .line 431
    .restart local v1    # "c":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " WHEN SUBSTR("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", 1, 1)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " BETWEEN \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v1, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-char v9, v1, v12

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v8, " THEN 1"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    add-int/lit8 v4, v4, 0x1

    goto :goto_14c

    .line 443
    .end local v1    # "c":[C
    :cond_19e
    const-string v8, " ELSE 3"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v8, " END), "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v8, " COLLATE LOCALIZED"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 451
    .end local v0    # "arr$":[[C
    .end local v2    # "charsJap":[[C
    .end local v3    # "charsMap":[[C
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "orderBy":Ljava/lang/StringBuilder;
    .end local v7    # "symbolMap":[[C
    .end local p0    # "column":Ljava/lang/String;
    :cond_1b4
    return-object p0

    .line 349
    nop

    :array_1b6
    .array-data 2
        0x1100s
        0x11ffs
    .end array-data

    :array_1bc
    .array-data 2
        0x3131s
        0x318fs
    .end array-data

    :array_1c2
    .array-data 2
        -0x5400s
        -0x285ds
    .end array-data

    :array_1c8
    .array-data 2
        0x4e00s
        -0x6001s
    .end array-data

    :array_1ce
    .array-data 2
        0x3400s
        0x4dbfs
    .end array-data

    :array_1d4
    .array-data 2
        0x2e80s
        0x2effs
    .end array-data

    :array_1da
    .array-data 2
        -0x700s
        -0x501s
    .end array-data

    .line 374
    :array_1e0
    .array-data 2
        0x21s
        0x40s
    .end array-data

    :array_1e6
    .array-data 2
        0x5bs
        0x60s
    .end array-data

    :array_1ec
    .array-data 2
        0x7bs
        0x7es
    .end array-data

    :array_1f2
    .array-data 2
        -0xffs
        -0xe0s
    .end array-data

    :array_1f8
    .array-data 2
        -0xc5s
        -0xc0s
    .end array-data

    :array_1fe
    .array-data 2
        -0xa5s
        -0x9bs
    .end array-data

    :array_204
    .array-data 2
        0xa1s
        0xbfs
    .end array-data

    .line 387
    :array_20a
    .array-data 2
        0x3040s
        0x309fs
    .end array-data

    :array_210
    .array-data 2
        0x30a0s
        0x30ffs
    .end array-data

    :array_216
    .array-data 2
        0x31f0s
        0x31ffs
    .end array-data

    :array_21c
    .array-data 2
        -0x9as
        -0x63s
    .end array-data
.end method

.method public static getProjection(Lcom/pantech/app/music/library/FragmentInfo$Category;)[Ljava/lang/String;
    .registers 2
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    .registers 5
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p1, "groupID"    # J
    .param p3, "limit"    # I

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JILjava/lang/String;)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JILjava/lang/String;)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    .registers 10
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p1, "groupID"    # J
    .param p3, "limit"    # I
    .param p4, "searchWord"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    invoke-static {p0, p1, p2, p3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getContentUri(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, p1, p2, p4}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getSelection(Lcom/pantech/app/music/library/FragmentInfo$Category;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getProjection(Lcom/pantech/app/music/library/FragmentInfo$Category;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getSortOrder(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSelection(Lcom/pantech/app/music/library/FragmentInfo$Category;JLjava/lang/String;)Ljava/lang/String;
    .registers 17
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p1, "groupID"    # J
    .param p3, "searchWord"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x0

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v7, "where":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/pantech/app/music/library/helper/DBProviderHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_304

    .line 255
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "getSelection() no match group"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    :pswitch_1a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    cmp-long v8, p1, v10

    if-ltz v8, :cond_9d

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND _id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_53
    :goto_53
    if-eqz p3, :cond_94

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_94

    .line 260
    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " LIKE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getConditionWithKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ESCAPE \'#\')"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :goto_9c
    return-object v8

    .line 152
    :cond_9d
    const-string v8, "album"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v8, "artist"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_53

    .line 158
    :pswitch_ac
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    cmp-long v8, p1, v10

    if-eqz v8, :cond_53

    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND bucket_id = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 166
    :pswitch_ed
    const-string v8, "album != \'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v8, "album"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 171
    :pswitch_fb
    const-string v8, "artist != \'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v8, "artist"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 175
    :pswitch_109
    const-string v8, "bucket_display_name != \'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    cmp-long v8, p1, v10

    if-ltz v8, :cond_53

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND bucket_id == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 181
    :pswitch_12a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 184
    :pswitch_146
    cmp-long v8, p1, v10

    if-ltz v8, :cond_53

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "album_id = \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 191
    :pswitch_18d
    cmp-long v8, p1, v10

    if-ltz v8, :cond_53

    .line 193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "artist_id = \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 198
    :pswitch_1d4
    const/4 v8, 0x0

    goto/16 :goto_9c

    .line 201
    :pswitch_1d7
    const-string v8, "name != \'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    cmp-long v8, p1, v10

    if-lez v8, :cond_53

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND _id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 207
    :pswitch_1f8
    const/4 v6, 0x2

    .line 208
    .local v6, "weeks":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-wide/32 v4, 0x93a80

    .line 214
    .local v4, "unitWeek":J
    int-to-long v8, v6

    mul-long v2, v8, v4

    .line 215
    .local v2, "timePerWeek":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 218
    .local v0, "currentTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND date_added>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v0, v2

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v8, "album"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v8, "artist"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 224
    .end local v0    # "currentTime":J
    .end local v2    # "timePerWeek":J
    .end local v4    # "unitWeek":J
    .end local v6    # "weeks":I
    :pswitch_24e
    const-string v8, "play_count> 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v8, "album"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v8, "artist"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 232
    :pswitch_288
    const-string v8, "rating> 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 240
    :pswitch_2b4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " != \'\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string v8, " AND is_music=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v8, "album"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v8, "artist"

    sget-object v9, Lcom/pantech/app/music/library/helper/DBProviderHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->addExceptCondition(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 249
    :pswitch_2e3
    const-string v8, "name != \'\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    cmp-long v8, p1, v10

    if-lez v8, :cond_53

    .line 251
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND _id == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    .line 143
    :pswitch_data_304
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_ac
        :pswitch_18d
        :pswitch_146
        :pswitch_1f8
        :pswitch_288
        :pswitch_24e
        :pswitch_ed
        :pswitch_fb
        :pswitch_2e3
        :pswitch_109
        :pswitch_1d7
        :pswitch_1d7
        :pswitch_12a
        :pswitch_1d4
        :pswitch_2b4
    .end packed-switch
.end method

.method public static getSortOrder(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;
    .registers 6
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "sortField":Ljava/lang/String;
    const-string v1, " ASC"

    .line 277
    .local v1, "trailer":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/library/helper/DBProviderHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_19a

    .line 327
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geSortOrder() no match group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :pswitch_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_40
    :pswitch_40
    return-object v0

    .line 284
    :pswitch_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album"

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    goto :goto_40

    .line 287
    :pswitch_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist"

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    goto :goto_40

    .line 290
    :pswitch_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_display_name"

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    goto :goto_40

    .line 293
    :pswitch_89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    goto :goto_40

    .line 299
    :pswitch_a9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album"

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "album_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    goto/16 :goto_40

    .line 302
    :pswitch_ec
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play_order"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    goto/16 :goto_40

    .line 305
    :pswitch_101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    goto/16 :goto_40

    .line 311
    :pswitch_128
    const-string v0, "date_added DESC"

    .line 312
    goto/16 :goto_40

    .line 314
    :pswitch_12c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play_count DESC,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    goto/16 :goto_40

    .line 318
    :pswitch_14d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    goto/16 :goto_40

    .line 321
    :pswitch_166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    goto/16 :goto_40

    .line 324
    :pswitch_181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    invoke-static {v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    goto/16 :goto_40

    .line 277
    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_101
        :pswitch_27
        :pswitch_27
        :pswitch_a9
        :pswitch_89
        :pswitch_128
        :pswitch_166
        :pswitch_12c
        :pswitch_41
        :pswitch_59
        :pswitch_181
        :pswitch_71
        :pswitch_14d
        :pswitch_14d
        :pswitch_ec
        :pswitch_40
        :pswitch_27
    .end packed-switch
.end method

.method public static getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;
    .registers 3
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 464
    sget-object v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3c

    .line 502
    :pswitch_b
    const-string v0, "title"

    :goto_d
    return-object v0

    .line 466
    :pswitch_e
    const-string v0, "album"

    goto :goto_d

    .line 468
    :pswitch_11
    const-string v0, "artist"

    goto :goto_d

    .line 470
    :pswitch_14
    const-string v0, "name"

    goto :goto_d

    .line 472
    :pswitch_17
    const-string v0, "bucket_display_name"

    goto :goto_d

    .line 474
    :pswitch_1a
    const-string v0, "name"

    goto :goto_d

    .line 485
    :pswitch_1d
    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBCursorHelper;->isCustomCursor(Lcom/pantech/app/music/library/FragmentInfo$Category;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 486
    invoke-static {}, Lcom/pantech/app/music/utils/PreferenceUtils;->isDisplayAsFilename()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 487
    const-string v0, "_display_name"

    goto :goto_d

    .line 489
    :cond_2c
    const-string v0, "title"

    goto :goto_d

    .line 492
    :cond_2f
    invoke-static {}, Lcom/pantech/app/music/utils/PreferenceUtils;->isDisplayAsFilename()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 493
    const-string v0, "_display_name"

    goto :goto_d

    .line 495
    :cond_38
    const-string v0, "title"

    goto :goto_d

    .line 464
    nop

    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_b
        :pswitch_1a
        :pswitch_1d
        :pswitch_b
        :pswitch_1d
    .end packed-switch
.end method

.method public static getTrackCursor(Landroid/content/Context;Ljava/util/ArrayList;Lcom/pantech/app/music/library/FragmentInfo$Category;)Landroid/database/Cursor;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p1, "idArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v11, 0x2c

    const/4 v2, 0x0

    .line 524
    if-nez p1, :cond_6

    .line 552
    :goto_5
    return-object v2

    .line 527
    :cond_6
    const-string v0, "DBProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrackCursor() size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 533
    .local v1, "uri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v10, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 536
    .local v6, "audioID":J
    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-ltz v0, :cond_32

    .line 538
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 541
    .end local v6    # "audioID":J
    :cond_4f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v11, :cond_64

    .line 542
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 544
    :cond_64
    const/16 v0, 0x29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    const-string v0, "DBProviderHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->where:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTrackOrder(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    move-object v2, v8

    .line 552
    goto/16 :goto_5
.end method

.method public static getTrackOrder(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 335
    sget-object v0, Lcom/pantech/app/music/library/helper/DBProviderHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_30

    .line 341
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geSortOrder() no match group :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :sswitch_24
    invoke-static {p0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getSortOrder(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_28
    return-object v0

    :sswitch_29
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getSortOrder(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 335
    :sswitch_data_30
    .sparse-switch
        0x4 -> :sswitch_24
        0x12 -> :sswitch_29
    .end sparse-switch
.end method
