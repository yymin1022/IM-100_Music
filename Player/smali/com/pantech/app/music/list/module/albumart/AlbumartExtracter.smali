.class public Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;
.super Ljava/lang/Object;
.source "AlbumartExtracter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$1;,
        Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;,
        Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;,
        Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    }
.end annotation


# static fields
.field private static final BLUR_RADIUS:F = 25.0f

.field private static final TAG:Ljava/lang/String; = "AlbumartExtracter"

.field static final THREAD_COUNT:I

.field private static mInstance:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

.field private static mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:[Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field mRequestCount:J

.field mUIHandler:Landroid/os/Handler;

.field mWorker:[Lcom/pantech/app/music/common/MusicWorker;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 44
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    :goto_7
    sput v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->THREAD_COUNT:I

    .line 239
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mInstance:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    .line 290
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    .line 44
    :cond_15
    const/4 v0, 0x2

    goto :goto_7
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mRequestCount:J

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mUIHandler:Landroid/os/Handler;

    .line 289
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    sget v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->THREAD_COUNT:I

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 277
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mContext:Landroid/content/Context;

    .line 279
    sget v1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->THREAD_COUNT:I

    new-array v1, v1, [Lcom/pantech/app/music/common/MusicWorker;

    iput-object v1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mWorker:[Lcom/pantech/app/music/common/MusicWorker;

    .line 280
    sget v1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->THREAD_COUNT:I

    new-array v1, v1, [Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

    iput-object v1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mHandler:[Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    sget v1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->THREAD_COUNT:I

    if-ge v0, v1, :cond_4a

    .line 284
    iget-object v1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mWorker:[Lcom/pantech/app/music/common/MusicWorker;

    new-instance v2, Lcom/pantech/app/music/common/MusicWorker;

    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getThreadName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/common/MusicWorker;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v0

    .line 285
    iget-object v1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mHandler:[Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

    new-instance v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

    iget-object v3, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mWorker:[Lcom/pantech/app/music/common/MusicWorker;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/pantech/app/music/common/MusicWorker;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;-><init>(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;Landroid/content/Context;Landroid/os/Looper;I)V

    aput-object v2, v1, v0

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 287
    :cond_4a
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v8, 0x64

    .line 369
    const-string v6, "AlbumartExtracter"

    const-string v7, "blur"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v6, 0x0

    invoke-static {p1, v8, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 371
    .local v0, "inputBitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 373
    .local v1, "outputBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    .line 374
    .local v2, "rs":Landroid/renderscript/RenderScript;
    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    .line 375
    .local v3, "theIntrinsic":Landroid/renderscript/ScriptIntrinsicBlur;
    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    .line 376
    .local v4, "tmpIn":Landroid/renderscript/Allocation;
    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 377
    .local v5, "tmpOut":Landroid/renderscript/Allocation;
    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v3, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 378
    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 379
    invoke-virtual {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 380
    invoke-virtual {v5, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 382
    return-object v1
.end method

.method public static getBestAlbumIDs(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;J)[Ljava/lang/Long;
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentCategory"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # J

    .prologue
    .line 612
    const/4 v3, 0x0

    .line 614
    .local v3, "uri":Landroid/net/Uri;
    const-string v5, ""

    .line 616
    .local v5, "where":Ljava/lang/String;
    const/4 v15, 0x0

    .line 618
    .local v15, "memberCursor":Landroid/database/Cursor;
    sget-object v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v6

    aget v2, v2, v6

    packed-switch v2, :pswitch_data_2c6

    .line 769
    :cond_f
    :goto_f
    if-eqz v15, :cond_2b7

    :try_start_11
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2b7

    .line 771
    invoke-static {v15}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->getBestGroupIDs(Landroid/database/Cursor;)[Ljava/lang/Long;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_2bf

    move-result-object v14

    .line 777
    if-eqz v15, :cond_20

    .line 778
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 781
    :cond_20
    :goto_20
    return-object v14

    .line 621
    :pswitch_21
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/Long;

    .line 622
    .local v14, "albumIDs":[Ljava/lang/Long;
    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v14, v2

    goto :goto_20

    .line 626
    .end local v14    # "albumIDs":[Ljava/lang/Long;
    :pswitch_2c
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "numsongs"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "numsongs_by_artist"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "album_art"

    aput-object v6, v4, v2

    .line 638
    .local v4, "cols":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "album"

    invoke-static {v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getLocaleBaseOrderBy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 639
    .local v7, "orderby":Ljava/lang/String;
    const-string v5, "album_art!=\"\""

    .line 640
    const-string v2, "external"

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 653
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 658
    if-eqz v15, :cond_82

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_f

    .line 660
    :cond_82
    if-eqz v15, :cond_87

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_87
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    const-string v8, "1"

    invoke-virtual {v2, v6, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 663
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v3

    move-object v10, v4

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_f

    .line 668
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :pswitch_a6
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "title"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 672
    .restart local v4    # "cols":[Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .line 673
    .restart local v7    # "orderby":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v5

    .line 675
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    invoke-static {v2, v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 677
    goto/16 :goto_f

    .line 680
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :pswitch_10a
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "audio_id"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "title"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 687
    .restart local v4    # "cols":[Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .line 688
    .restart local v7    # "orderby":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v5

    .line 690
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    invoke-static {v2, v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 691
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 692
    goto/16 :goto_f

    .line 695
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :pswitch_173
    const-string v2, "external"

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 697
    .local v9, "playlistUri":Landroid/net/Uri;
    const-wide/16 v10, -0x3

    cmp-long v2, p2, v10

    if-nez v2, :cond_1bf

    .line 699
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "title"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 705
    .restart local v4    # "cols":[Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v6, 0x0

    const/4 v8, -0x1

    invoke-static {v2, v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 706
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>()V

    invoke-static {v2, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v5

    .line 707
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .line 763
    .restart local v7    # "orderby":Ljava/lang/String;
    :goto_1b1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v12, 0x0

    move-object v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_f

    .line 709
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :cond_1bf
    const-wide/16 v10, -0x4

    cmp-long v2, p2, v10

    if-nez v2, :cond_1f6

    .line 711
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "date_added"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 717
    .restart local v4    # "cols":[Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v6, 0x0

    const/4 v8, -0x1

    invoke-static {v2, v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 718
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>()V

    invoke-static {v2, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v5

    .line 719
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "orderby":Ljava/lang/String;
    goto :goto_1b1

    .line 721
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :cond_1f6
    const-wide/16 v10, -0x5

    cmp-long v2, p2, v10

    if-nez v2, :cond_22d

    .line 723
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "play_count"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 729
    .restart local v4    # "cols":[Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v6, 0x0

    const/4 v8, -0x1

    invoke-static {v2, v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 730
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>()V

    invoke-static {v2, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v5

    .line 731
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "orderby":Ljava/lang/String;
    goto :goto_1b1

    .line 733
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :cond_22d
    const-wide/16 v10, -0x6

    cmp-long v2, p2, v10

    if-nez v2, :cond_265

    .line 735
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "play_count"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 741
    .restart local v4    # "cols":[Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v6, 0x0

    const/4 v8, -0x1

    invoke-static {v2, v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    .line 742
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-direct {v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>()V

    invoke-static {v2, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v5

    .line 743
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "orderby":Ljava/lang/String;
    goto/16 :goto_1b1

    .line 745
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    :cond_265
    const-wide/16 v10, 0x0

    cmp-long v2, p2, v10

    if-ltz v2, :cond_f

    .line 747
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "album_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "album"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "play_order"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "title"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 754
    .restart local v4    # "cols":[Ljava/lang/String;
    const-string v2, "external"

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 755
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultWhere(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;)Ljava/lang/String;

    move-result-object v5

    .line 756
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getDefaultOrderby(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "orderby":Ljava/lang/String;
    goto/16 :goto_1b1

    .line 777
    .end local v4    # "cols":[Ljava/lang/String;
    .end local v7    # "orderby":Ljava/lang/String;
    .end local v9    # "playlistUri":Landroid/net/Uri;
    :cond_2b7
    if-eqz v15, :cond_2bc

    .line 778
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 781
    :cond_2bc
    const/4 v14, 0x0

    goto/16 :goto_20

    .line 777
    :catchall_2bf
    move-exception v2

    if-eqz v15, :cond_2c5

    .line 778
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2c5
    throw v2

    .line 618
    :pswitch_data_2c6
    .packed-switch 0x1
        :pswitch_21
        :pswitch_2c
        :pswitch_a6
        :pswitch_10a
        :pswitch_173
    .end packed-switch
.end method

.method private static getBestGroupIDs(Landroid/database/Cursor;)[Ljava/lang/Long;
    .registers 9
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 583
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 584
    .local v3, "albumIDMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v2, "albumIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_b
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_39

    .line 588
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 589
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 591
    .local v0, "albumID":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 593
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 598
    .end local v0    # "albumID":J
    :cond_39
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Long;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    .line 600
    .local v4, "albumIDs":[Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 602
    if-eqz v4, :cond_4e

    array-length v6, v4

    if-lez v6, :cond_4e

    .line 607
    .end local v4    # "albumIDs":[Ljava/lang/Long;
    :goto_4d
    return-object v4

    .restart local v4    # "albumIDs":[Ljava/lang/Long;
    :cond_4e
    const/4 v4, 0x0

    goto :goto_4d
.end method

.method private declared-synchronized getGoodQueueID(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)I
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    .line 325
    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    move-result v0

    if-eqz v0, :cond_18

    .line 327
    :cond_15
    const/4 v0, 0x2

    .line 341
    :goto_16
    monitor-exit p0

    return v0

    .line 332
    :cond_18
    :try_start_18
    iget-boolean v0, p1, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCurrentFragment:Z
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_20

    if-eqz v0, :cond_1e

    .line 334
    const/4 v0, 0x0

    goto :goto_16

    .line 341
    :cond_1e
    const/4 v0, 0x1

    goto :goto_16

    .line 325
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    sget-object v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mInstance:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    if-nez v0, :cond_f

    .line 244
    new-instance v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mInstance:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    .line 246
    :cond_f
    sget-object v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mInstance:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    return-object v0
.end method

.method private getThreadName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 257
    if-nez p1, :cond_5

    .line 259
    const-string v0, "AlbumartExtracter Main priority"

    .line 270
    :goto_4
    return-object v0

    .line 261
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 263
    const-string v0, "AlbumartExtracter Low priority"

    goto :goto_4

    .line 265
    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 267
    const-string v0, "AlbumartExtracter For Ubox"

    goto :goto_4

    .line 270
    :cond_11
    const-string v0, "what for ?"

    goto :goto_4
.end method


# virtual methods
.method public getAlbumart(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    const/4 v1, 0x0

    .line 405
    sget-object v0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 432
    :cond_9
    return-object v1
.end method

.method public getAlbumartInfo(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    .registers 3
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    .line 363
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumartInfoSync(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;JZ)Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    .registers 7
    .param p1, "type"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Type;
    .param p2, "size"    # Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .param p3, "albumID"    # J
    .param p5, "useDefaultAlbumartCache"    # Z

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumartUbox(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    .line 491
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumarts(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;)[Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "param"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;

    .prologue
    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumartsAll(JZZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)[Landroid/graphics/Bitmap;
    .registers 7
    .param p1, "key_id"    # J
    .param p3, "isSecret"    # Z
    .param p4, "useDefaultAlbumartCache"    # Z
    .param p5, "callback"    # Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlbumartsUboxAll(Ljava/lang/String;Ljava/lang/String;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)[Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "useDefaultAlbumartCache"    # Z
    .param p4, "callback"    # Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public terminate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 294
    sget-object v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mTerminated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->THREAD_COUNT:I

    if-ge v1, v2, :cond_1d

    .line 298
    iget-object v2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mHandler:[Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    iget-object v2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mHandler:[Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4}, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractHandler;->sendEmptyMessage(I)Z

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 305
    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_31

    .line 313
    :goto_22
    const/4 v1, 0x0

    :goto_23
    sget v2, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->THREAD_COUNT:I

    if-ge v1, v2, :cond_36

    .line 315
    iget-object v2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;->mWorker:[Lcom/pantech/app/music/common/MusicWorker;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/pantech/app/music/common/MusicWorker;->stopWorkerNoSync()V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 307
    :catch_31
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_22

    .line 317
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_36
    return-void
.end method
