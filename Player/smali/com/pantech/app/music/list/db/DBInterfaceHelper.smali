.class public Lcom/pantech/app/music/list/db/DBInterfaceHelper;
.super Ljava/lang/Object;
.source "DBInterfaceHelper.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/db/DBInterfaceHelper$1;,
        Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;,
        Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;
    }
.end annotation


# static fields
.field static final AudioRecord_AlbumName:[Ljava/lang/String;

.field static final AudioRecord_ArtistName:[Ljava/lang/String;

.field static final AudioRecord_BucketName:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DBInterfaceHelper"

.field private static m2ndExternalStorageFile:Ljava/io/File;

.field private static mInstance:Lcom/pantech/app/music/list/db/DBInterfaceHelper;

.field private static mOTGStorageFile:Ljava/io/File;

.field private static szArrCommonField:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    sput-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->szArrCommonField:[Ljava/lang/String;

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "artist_id"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->szArrCommonField:[Ljava/lang/String;

    .line 632
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\'voicerec\'"

    aput-object v1, v0, v3

    const-string v1, "\'callrec\'"

    aput-object v1, v0, v4

    const-string v1, "\'aarec\'"

    aput-object v1, v0, v5

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_BucketName:[Ljava/lang/String;

    .line 633
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\'Voice_record\'"

    aput-object v1, v0, v3

    const-string v1, "\'Call_record\'"

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    .line 634
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\'Voice Recorder\'"

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    .line 1057
    sput-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->m2ndExternalStorageFile:Ljava/io/File;

    .line 1058
    sput-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mOTGStorageFile:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static addExcludeAudioRecordWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 5
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "isExcludeRecord"    # Z

    .prologue
    .line 638
    if-eqz p1, :cond_7d

    .line 640
    const-string v0, " AND ((mime_type != \'audio/qcelp\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    const-string v0, " AND mime_type != \'audio/x-qcelp\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    const-string v0, " AND mime_type != \'audio/qcp\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const-string v0, " AND mime_type != \'audio/amr\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v0, " AND mime_type != \'audio/mp4\')"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " OR (bucket_display_name != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_BucketName:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND bucket_display_name != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_BucketName:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND bucket_display_name != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_BucketName:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_78
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    :cond_7d
    return-object p0
.end method

.method public static addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;
    .registers 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "isExcludeDRM"    # Z

    .prologue
    .line 609
    if-eqz p1, :cond_12

    .line 611
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 613
    const-string v0, " AND _data NOT LIKE \'%.odf\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    const-string v0, " AND _data NOT LIKE \'%.ODF\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :cond_12
    :goto_12
    return-object p0

    .line 616
    :cond_13
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 618
    const-string v0, " AND _data NOT LIKE \'%.dcf\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    const-string v0, " AND _data NOT LIKE \'%.DCF\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12
.end method

.method public static addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 2
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 599
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isReleaseModel()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 601
    const-string v0, " AND _data != \'\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_b
    return-object p0
.end method

.method public static get2ndExternalStorageDirectory()Ljava/io/File;
    .registers 8

    .prologue
    .line 1062
    sget-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->m2ndExternalStorageFile:Ljava/io/File;

    if-nez v6, :cond_27

    .line 1064
    const-class v2, Landroid/os/Environment;

    .line 1067
    .local v2, "env":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Environment;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_c
    if-ge v3, v4, :cond_27

    aget-object v5, v0, v3

    .line 1068
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "get2ndExternalStorageDirectory"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1070
    const/4 v6, 0x0

    :try_start_1d
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    sput-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->m2ndExternalStorageFile:Ljava/io/File;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_30

    .line 1081
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_27
    :goto_27
    sget-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->m2ndExternalStorageFile:Ljava/io/File;

    if-nez v6, :cond_3d

    .line 1082
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 1084
    :goto_2f
    return-object v6

    .line 1071
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    :catch_30
    move-exception v1

    .line 1073
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Method Call Fail : Environment.class@get2ndExternalStorageDirectory"

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 1067
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1084
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_3d
    sget-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->m2ndExternalStorageFile:Ljava/io/File;

    goto :goto_2f
.end method

.method public static getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 6
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "sortField":Ljava/lang/String;
    const-string v1, " ASC"

    .line 236
    .local v1, "trailor":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfaceHelper$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1b0

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "getDefaultSortColumn() Not Match Group"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :pswitch_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_2d
    :pswitch_2d
    const-string v2, "DBInterfaceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->orderBy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-object v0

    .line 242
    :pswitch_46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "artist"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    goto :goto_2d

    .line 246
    :pswitch_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    goto :goto_2d

    .line 250
    :pswitch_76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bucket_display_name"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    goto :goto_2d

    .line 255
    :pswitch_8e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    goto :goto_2d

    .line 262
    :pswitch_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "album"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

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

    const-string v3, "title"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    goto/16 :goto_2d

    .line 271
    :pswitch_e7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    goto/16 :goto_2d

    .line 280
    :pswitch_102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

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

    .line 281
    goto/16 :goto_2d

    .line 284
    :pswitch_129
    const-string v0, "date_added DESC"

    .line 285
    goto/16 :goto_2d

    .line 291
    :pswitch_12d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "title"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    goto/16 :goto_2d

    .line 295
    :pswitch_14c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play_order"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    goto/16 :goto_2d

    .line 299
    :pswitch_161
    const-string v0, "play_count DESC"

    .line 300
    goto/16 :goto_2d

    .line 304
    :pswitch_165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Title"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    goto/16 :goto_2d

    .line 308
    :pswitch_17e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_name"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    goto/16 :goto_2d

    .line 312
    :pswitch_197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_order"

    invoke-static {v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    goto/16 :goto_2d

    .line 236
    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_46
        :pswitch_5e
        :pswitch_76
        :pswitch_8e
        :pswitch_8e
        :pswitch_e7
        :pswitch_12d
        :pswitch_a6
        :pswitch_e7
        :pswitch_e7
        :pswitch_e7
        :pswitch_161
        :pswitch_e7
        :pswitch_129
        :pswitch_e7
        :pswitch_102
        :pswitch_14c
        :pswitch_17e
        :pswitch_197
        :pswitch_165
        :pswitch_165
        :pswitch_2d
    .end packed-switch
.end method

.method public static getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 455
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4c

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultSortColumn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Not Match Group"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :pswitch_2a
    const-string v0, "album"

    .line 495
    :goto_2c
    return-object v0

    .line 460
    :pswitch_2d
    const-string v0, "artist"

    goto :goto_2c

    .line 463
    :pswitch_30
    const-string v0, "name"

    goto :goto_2c

    .line 466
    :pswitch_33
    const-string v0, "bucket_display_name"

    goto :goto_2c

    .line 470
    :pswitch_36
    const-string v0, "name"

    goto :goto_2c

    .line 485
    :pswitch_39
    invoke-static {}, Lcom/pantech/app/music/utils/PreferenceUtils;->isDisplayAsFilename()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 486
    const-string v0, "_display_name"

    goto :goto_2c

    .line 488
    :cond_42
    const-string v0, "title"

    goto :goto_2c

    .line 493
    :pswitch_45
    const-string v0, "Title"

    goto :goto_2c

    .line 495
    :pswitch_48
    const-string v0, "playlist_name"

    goto :goto_2c

    .line 455
    nop

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
        :pswitch_36
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_48
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_39
    .end packed-switch
.end method

.method public static getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;
    .registers 28
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "condition"    # Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    .prologue
    .line 760
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .local v19, "where":Ljava/lang/StringBuilder;
    sget-object v21, Lcom/pantech/app/music/list/db/DBInterfaceHelper$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_900

    .line 1047
    :cond_10
    :goto_10
    const-string v21, "DBInterfaceHelper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "->where:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", groupID:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6e

    .line 1051
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND ("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->additionalWhere:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    :cond_6e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    :goto_76
    return-object v21

    .line 766
    :pswitch_77
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a6

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_a6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_d4

    .line 774
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND _id="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 778
    :cond_d4
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 779
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeAudioRecordWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 780
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 785
    :pswitch_f3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_103

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "getMakeDefaultWhere|group ID Null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 786
    :cond_103
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "album_id = \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13a

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_13a
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 793
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 797
    :pswitch_170
    const-string v21, "album != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1a5

    .line 801
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND _id == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_1a5
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1a6
    sget-object v21, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_10

    .line 806
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND album != "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_AlbumName:[Ljava/lang/String;

    aget-object v22, v22, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a6

    .line 811
    .end local v10    # "i":I
    :pswitch_1d2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_1e2

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "getMakeDefaultWhere|group ID Null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 812
    :cond_1e2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "artist_id = \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_219

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_219
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 817
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 821
    :pswitch_24f
    const-string v21, "artist != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_284

    .line 825
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND _id == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_284
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_285
    sget-object v21, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_10

    .line 830
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND artist != "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->AudioRecord_ArtistName:[Ljava/lang/String;

    aget-object v22, v22, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    add-int/lit8 v10, v10, 0x1

    goto :goto_285

    .line 835
    .end local v10    # "i":I
    :pswitch_2b1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2e0

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_2e0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 841
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeAudioRecordWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 842
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 846
    :pswitch_2ff
    const-string v21, "name != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 849
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND _id == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 854
    :pswitch_336
    const-string v21, "bucket_display_name != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 857
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND bucket_id == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 862
    :pswitch_36d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_37d

    new-instance v21, Ljava/lang/IllegalArgumentException;

    const-string v22, "getMakeDefaultWhere|group ID Null"

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 863
    :cond_37d
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "bucket_id = \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3b4

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_3b4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 868
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 872
    :pswitch_3ea
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 875
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 880
    :pswitch_41a
    const-string v21, "name != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 884
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND _id == "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 889
    :pswitch_451
    const-string v21, "play_count> 0"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_48f

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_48f
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 894
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeAudioRecordWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 895
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 899
    :pswitch_4ae
    const-string v21, "rating> 0"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4ec

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_4ec
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 904
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 908
    :pswitch_4fe
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const-string v21, " AND is_podcast=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 912
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 916
    :pswitch_537
    const/16 v18, 0x2

    .line 917
    .local v18, "weeks":I
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isMusic:Z

    move/from16 v21, v0

    if-eqz v21, :cond_568

    const-string v21, " AND is_music=1"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    :cond_568
    const-wide/32 v16, 0x93a80

    .line 922
    .local v16, "unitWeek":J
    const-wide/16 v14, 0x0

    .line 923
    .local v14, "timePerWeekPreviousWeeks":J
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v12, v22, v16

    .line 924
    .local v12, "timePerWeek":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v8, v22, v24

    .line 926
    .local v8, "currentTime":J
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND date_added<="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v8, v14

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const/16 v21, 0xa

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5bc

    .line 929
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND date_added>"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-long v22, v8, v12

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    :cond_5bc
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 933
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeRecord:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeAudioRecordWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 934
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 938
    .end local v8    # "currentTime":J
    .end local v12    # "timePerWeek":J
    .end local v14    # "timePerWeekPreviousWeeks":J
    .end local v16    # "unitWeek":J
    .end local v18    # "weeks":I
    :pswitch_5db
    const-string v21, "playlist_name != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 942
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND _id = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 948
    :pswitch_612
    const-string v21, "Title != \'\' AND fileID != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 951
    :pswitch_61d
    const-string v21, "Title != \'\' AND fileID != \'\'"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 954
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " AND fileID = \'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_10

    .line 961
    :pswitch_65a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_66a

    .line 963
    const/16 v21, 0x0

    goto/16 :goto_76

    .line 966
    :cond_66a
    const-string v11, ""

    .line 967
    .local v11, "keywords":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->groupID:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getSearchWords(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v20

    .line 969
    .local v20, "wildcardWords":[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 970
    .local v7, "builder":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_67e
    if-eqz v20, :cond_6b5

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_6b5

    .line 972
    if-nez v10, :cond_692

    .line 973
    const-string v21, "\'"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    :cond_692
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    aget-object v22, v20, v10

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    add-int/lit8 v10, v10, 0x1

    goto :goto_67e

    .line 977
    :cond_6b5
    if-eqz v7, :cond_6db

    if-eqz v20, :cond_6db

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_6db

    .line 979
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 986
    :cond_6db
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7a5

    .line 988
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static/range {v21 .. v21}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v6

    .line 989
    .local v6, "TitleColumn":Ljava/lang/String;
    const-string v4, "Album"

    .line 990
    .local v4, "AlbumColumn":Ljava/lang/String;
    const-string v5, "Artist"

    .line 1008
    .local v5, "ArtistColumn":Ljava/lang/String;
    :goto_6f1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7e8

    .line 1010
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LIKE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ESCAPE \'#\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " OR "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LIKE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ESCAPE \'#\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " OR "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LIKE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ESCAPE \'#\')"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :goto_789
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Search:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 994
    .end local v4    # "AlbumColumn":Ljava/lang/String;
    .end local v5    # "ArtistColumn":Ljava/lang/String;
    .end local v6    # "TitleColumn":Ljava/lang/String;
    :cond_7a5
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static/range {v21 .. v21}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v6

    .line 995
    .restart local v6    # "TitleColumn":Ljava/lang/String;
    const-string v4, "album"

    .line 996
    .restart local v4    # "AlbumColumn":Ljava/lang/String;
    const-string v5, "artist"

    .line 998
    .restart local v5    # "ArtistColumn":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultTitleColumn(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " != \'\'"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->isExcludeDRM:Z

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeDRMWhere(Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 1000
    invoke-static/range {v19 .. v19}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->addExcludeNoneDataField(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 1005
    const-string v21, " AND "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6f1

    .line 1017
    :cond_7e8
    const-string v21, "("

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    move-object/from16 v0, p1

    iget v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x1

    if-lez v21, :cond_832

    .line 1020
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LIKE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ESCAPE \'#\')"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    const-string v21, " OR "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    :cond_832
    move-object/from16 v0, p1

    iget v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x2

    if-lez v21, :cond_873

    .line 1026
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LIKE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ESCAPE \'#\')"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v21, " OR "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    :cond_873
    move-object/from16 v0, p1

    iget v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x4

    if-lez v21, :cond_8b4

    .line 1032
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "("

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " LIKE "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ESCAPE \'#\')"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    const-string v21, " OR "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :cond_8b4
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "condition.searchMode :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;->searchMode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " where:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 1039
    const-string v21, " OR "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1040
    const-string v21, ")"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_789

    .line 762
    :pswitch_data_900
    .packed-switch 0x1
        :pswitch_170
        :pswitch_24f
        :pswitch_2ff
        :pswitch_336
        :pswitch_41a
        :pswitch_41a
        :pswitch_77
        :pswitch_f3
        :pswitch_1d2
        :pswitch_2b1
        :pswitch_36d
        :pswitch_4fe
        :pswitch_451
        :pswitch_4ae
        :pswitch_537
        :pswitch_65a
        :pswitch_77
        :pswitch_3ea
        :pswitch_5db
        :pswitch_612
        :pswitch_61d
        :pswitch_65a
    .end packed-switch
.end method

.method public static getDirectories(Ljava/io/File;Ljava/util/ArrayList;)V
    .registers 5
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1211
    .local p1, "directoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1213
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1214
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_d

    .line 1229
    .end local v0    # "files":[Ljava/io/File;
    :cond_c
    return-void

    .line 1216
    .restart local v0    # "files":[Ljava/io/File;
    :cond_d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_c

    .line 1218
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1220
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDirectories(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 1216
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method public static getInstance()Lcom/pantech/app/music/list/db/DBInterfaceHelper;
    .registers 1

    .prologue
    .line 708
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mInstance:Lcom/pantech/app/music/list/db/DBInterfaceHelper;

    if-nez v0, :cond_b

    .line 709
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;

    invoke-direct {v0}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mInstance:Lcom/pantech/app/music/list/db/DBInterfaceHelper;

    .line 711
    :cond_b
    sget-object v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mInstance:Lcom/pantech/app/music/list/db/DBInterfaceHelper;

    return-object v0
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

    .line 330
    invoke-static {}, Lcom/pantech/app/music/utils/SystemUtils;->isKoreanLocale()Z

    move-result v8

    if-eqz v8, :cond_1b4

    .line 333
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

    .line 359
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

    .line 373
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

    .line 382
    .local v2, "charsJap":[[C
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v6, "orderBy":Ljava/lang/StringBuilder;
    const-string v8, "(CASE"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    move-object v0, v3

    .local v0, "arr$":[[C
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_a2
    if-ge v4, v5, :cond_f4

    aget-object v1, v0, v4

    .line 389
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

    .line 390
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

    .line 391
    const-string v8, " THEN 2"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    add-int/lit8 v4, v4, 0x1

    goto :goto_a2

    .line 396
    .end local v1    # "c":[C
    :cond_f4
    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_f7
    if-ge v4, v5, :cond_149

    aget-object v1, v0, v4

    .line 398
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

    .line 399
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

    .line 400
    const-string v8, " THEN 4"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    add-int/lit8 v4, v4, 0x1

    goto :goto_f7

    .line 419
    .end local v1    # "c":[C
    :cond_149
    move-object v0, v7

    array-length v5, v0

    const/4 v4, 0x0

    :goto_14c
    if-ge v4, v5, :cond_19e

    aget-object v1, v0, v4

    .line 421
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

    .line 422
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

    .line 423
    const-string v8, " THEN 1"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    add-int/lit8 v4, v4, 0x1

    goto :goto_14c

    .line 433
    .end local v1    # "c":[C
    :cond_19e
    const-string v8, " ELSE 3"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v8, " END), "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v8, " COLLATE LOCALIZED"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 442
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

    .line 333
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

    .line 359
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

    .line 373
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

.method public static getOTGStorageDirectory()Ljava/io/File;
    .registers 8

    .prologue
    .line 1089
    sget-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mOTGStorageFile:Ljava/io/File;

    if-nez v6, :cond_27

    .line 1091
    const-class v2, Landroid/os/Environment;

    .line 1094
    .local v2, "env":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Environment;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_c
    if-ge v3, v4, :cond_27

    aget-object v5, v0, v3

    .line 1095
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getOTGStorageDirectory"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 1097
    const/4 v6, 0x0

    :try_start_1d
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    sput-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mOTGStorageFile:Ljava/io/File;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_30

    .line 1108
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_27
    :goto_27
    sget-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mOTGStorageFile:Ljava/io/File;

    if-nez v6, :cond_3d

    .line 1109
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 1111
    :goto_2f
    return-object v6

    .line 1098
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    :catch_30
    move-exception v1

    .line 1100
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Method Call Fail : Environment.class@getOTGStorageDirectory"

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 1094
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1111
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_3d
    sget-object v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->mOTGStorageFile:Ljava/io/File;

    goto :goto_2f
.end method

.method public static getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;
    .registers 6
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 79
    const-string v2, "DBInterfaceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProjection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "szTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfaceHelper$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1e0

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "getMusicProjection() Not Match Group"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :pswitch_30
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v2, "artist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    const-string v2, "album_art"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v2, "numsongs"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_49
    :goto_49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 225
    .local v0, "szProjection":[Ljava/lang/String;
    const-string v2, "DBInterfaceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "projection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-object v0

    .line 92
    .end local v0    # "szProjection":[Ljava/lang/String;
    :pswitch_72
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    const-string v2, "artist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    const-string v2, "number_of_albums"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const-string v2, "number_of_tracks"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 99
    :pswitch_87
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 110
    :pswitch_92
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v2, "bucket_display_name"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 118
    :pswitch_a7
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 136
    :pswitch_b2
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v2, "_display_name"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->szArrCommonField:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->putCommonField(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 141
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 143
    const-string v2, "play_count"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v2, "rating"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_dc
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p0, v2, :cond_ea

    .line 149
    const-string v2, "genre_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    const-string v2, "audio_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_ea
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne p0, v2, :cond_49

    .line 155
    const-string v2, "bucket_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_49

    .line 160
    :pswitch_f5
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const-string v2, "_display_name"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->szArrCommonField:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->putCommonField(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 165
    const-string v2, "audio_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const-string v2, "play_order"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const-string v2, "playlist_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 170
    const-string v2, "play_count"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v2, "rating"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_49

    .line 176
    :pswitch_130
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v2, "playlist_name"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_49

    .line 181
    :pswitch_13c
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const-string v2, "map_playlist_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v2, "playlist_order"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v2, "fileID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v2, "fileSize"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    const-string v2, "DownUrl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const-string v2, "AlbumUrl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const-string v2, "Artist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    const-string v2, "Album"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v2, "Title"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v2, "Playtime"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    const-string v2, "Bitrate"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    const-string v2, "FileType"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v2, "Rating"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v2, "Playcount"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v2, "ModifyTime"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_49

    .line 202
    :pswitch_193
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v2, "fileID"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const-string v2, "fileSize"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v2, "DownUrl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v2, "AlbumUrl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v2, "Artist"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v2, "Album"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v2, "Title"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    const-string v2, "Playtime"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v2, "Bitrate"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v2, "FileType"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    const-string v2, "Rating"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v2, "Playcount"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const-string v2, "ModifyTime"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_49

    .line 82
    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_72
        :pswitch_87
        :pswitch_92
        :pswitch_a7
        :pswitch_a7
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_f5
        :pswitch_130
        :pswitch_13c
        :pswitch_193
        :pswitch_193
    .end packed-switch
.end method

.method public static getRootpath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1196
    const/4 v0, 0x0

    .line 1198
    .local v0, "path":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1199
    .local v1, "root":Ljava/io/File;
    if-eqz v1, :cond_b

    .line 1201
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1204
    :cond_b
    if-nez v0, :cond_f

    const-string v0, "/sdcard"

    .line 1206
    .end local v0    # "path":Ljava/lang/String;
    :cond_f
    return-object v0
.end method

.method public static getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 9
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "groupID"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 504
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 506
    .local v0, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/pantech/app/music/list/db/DBInterfaceHelper$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ea

    .line 577
    :goto_d
    if-eqz v0, :cond_36

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-eq p0, v2, :cond_36

    .line 579
    if-lez p2, :cond_36

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 582
    :cond_36
    if-nez v0, :cond_cc

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Argument: category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", groupID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 509
    :pswitch_5b
    sget-object v0, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 510
    goto :goto_d

    .line 513
    :pswitch_5e
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 514
    goto :goto_d

    .line 517
    :pswitch_61
    sget-object v0, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 518
    goto :goto_d

    .line 521
    :pswitch_64
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 522
    goto :goto_d

    .line 525
    :pswitch_67
    sget-object v0, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 526
    goto :goto_d

    .line 529
    :pswitch_6a
    const-string v2, "external"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 530
    goto :goto_d

    .line 533
    :pswitch_7a
    const-string v2, "content://media/external/audio/folders"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 534
    goto :goto_d

    .line 537
    :pswitch_81
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 538
    goto :goto_d

    .line 542
    :pswitch_84
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 543
    goto :goto_d

    .line 546
    :pswitch_87
    const-string v2, "external"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 547
    goto/16 :goto_d

    .line 555
    :pswitch_98
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 556
    goto/16 :goto_d

    .line 560
    :pswitch_9c
    const/4 v1, 0x0

    .line 561
    .local v1, "uri2":Landroid/net/Uri;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 562
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

    .line 563
    goto/16 :goto_d

    .line 567
    .end local v1    # "uri2":Landroid/net/Uri;
    :pswitch_b5
    sget-object v0, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Song;->CONTENT_URI:Landroid/net/Uri;

    .line 568
    goto/16 :goto_d

    .line 570
    :pswitch_b9
    sget-object v0, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Playlist;->CONTENT_URI:Landroid/net/Uri;

    .line 571
    goto/16 :goto_d

    .line 573
    :pswitch_bd
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Playlist$Members;->getMemberContentUri(J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_d

    .line 584
    :cond_cc
    const-string v2, "DBInterfaceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "->Uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-object v0

    .line 506
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_61
        :pswitch_67
        :pswitch_7a
        :pswitch_84
        :pswitch_84
        :pswitch_98
        :pswitch_5e
        :pswitch_64
        :pswitch_6a
        :pswitch_81
        :pswitch_98
        :pswitch_9c
        :pswitch_98
        :pswitch_98
        :pswitch_98
        :pswitch_98
        :pswitch_87
        :pswitch_b9
        :pswitch_bd
        :pswitch_b5
        :pswitch_b5
    .end packed-switch
.end method

.method public static isInternalStorage(Ljava/lang/String;)Z
    .registers 3
    .param p0, "szData"    # Ljava/lang/String;

    .prologue
    .line 1172
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1174
    .local v0, "internal_sdcard_path":Ljava/lang/String;
    if-eqz p0, :cond_12

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    .line 1176
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public static isValidPlaylistItem(Ljava/lang/String;)Z
    .registers 3
    .param p0, "szData"    # Ljava/lang/String;

    .prologue
    .line 1181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1185
    const/4 v1, 0x1

    .line 1189
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private static putCommonField(Ljava/util/ArrayList;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "_szArrCommonField"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "_szTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 72
    sget-object v1, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->szArrCommonField:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_e
    return-object p0
.end method


# virtual methods
.method public getQueryInfo(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 745
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;-><init>(Lcom/pantech/app/music/list/db/DBInterfaceHelper;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    .local v0, "info":Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;
    return-object v0
.end method

.method public getQueryInfo(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;)Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;

    .prologue
    .line 750
    new-instance v0, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getProjection(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;-><init>(Lcom/pantech/app/music/list/db/DBInterfaceHelper;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .local v0, "info":Lcom/pantech/app/music/list/db/DBInterfaceHelper$QueryInfo;
    return-object v0
.end method
