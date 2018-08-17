.class public Lcom/pantech/app/music/component/ExtendCursorLoader;
.super Landroid/content/CursorLoader;
.source "ExtendCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/component/ExtendCursorLoader$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtendCursorLoader"


# instance fields
.field contentObserver:Landroid/database/ContentObserver;

.field mChangedUri:Landroid/net/Uri;

.field mCursor:Landroid/database/Cursor;

.field mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

.field mObserverUri:Landroid/net/Uri;

.field mSearchWord:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentInfo"    # Lcom/pantech/app/music/library/FragmentInfo;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .registers 22

    .prologue
    .line 36
    const-string v2, "ExtendCursorLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadInBackground() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v2, Lcom/pantech/app/music/component/ExtendCursorLoader$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_27a

    .line 73
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v3}, Lcom/pantech/app/music/library/FragmentInfo;->getLimit()I

    move-result v3

    invoke-static {v2, v4, v5, v3}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v10

    .line 75
    .local v10, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    :try_start_4f
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v4, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v5, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_63} :catch_19f

    move-result-object v12

    .line 80
    .local v12, "newCursor":Landroid/database/Cursor;
    iget-object v2, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    .line 85
    .end local v10    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    :goto_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->contentObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_a2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    if-eqz v2, :cond_a2

    .line 86
    new-instance v2, Lcom/pantech/app/music/component/ExtendCursorLoader$1;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/pantech/app/music/component/ExtendCursorLoader$1;-><init>(Lcom/pantech/app/music/component/ExtendCursorLoader;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->contentObserver:Landroid/database/ContentObserver;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    :cond_a2
    const/4 v11, 0x0

    .line 102
    .local v11, "isResultChanged":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_bb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_bb

    if-eqz v12, :cond_bb

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 103
    :cond_bb
    const/4 v11, 0x1

    .line 147
    :cond_bc
    :goto_bc
    if-eqz v11, :cond_251

    .line 148
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    .line 165
    :goto_c2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_106

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_106

    .line 166
    const-string v2, "ExtendCursorLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v4}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCursor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> is closed!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    .end local v11    # "isResultChanged":Z
    .end local v12    # "newCursor":Landroid/database/Cursor;
    :goto_10a
    return-object v2

    .line 41
    :pswitch_10b
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mSearchWord:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/pantech/app/music/library/helper/DBCursorHelper;->getSearchCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 42
    .restart local v12    # "newCursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    goto/16 :goto_6a

    .line 45
    .end local v12    # "newCursor":Landroid/database/Cursor;
    :pswitch_11f
    const/16 v19, 0x7

    .line 46
    .local v19, "options":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/pantech/app/music/library/helper/DBCursorHelper;->getPlayListCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v12

    .line 47
    .restart local v12    # "newCursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    goto/16 :goto_6a

    .line 50
    .end local v12    # "newCursor":Landroid/database/Cursor;
    .end local v19    # "options":I
    :pswitch_133
    const/16 v19, 0x10c

    .line 51
    .restart local v19    # "options":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getPlaylistID()J

    move-result-wide v2

    const-wide/16 v4, -0x7

    cmp-long v2, v2, v4

    if-nez v2, :cond_145

    .line 52
    and-int/lit8 v19, v19, -0x9

    .line 53
    :cond_145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getPlaylistID()J

    move-result-wide v2

    const-wide/16 v4, -0x6

    cmp-long v2, v2, v4

    if-nez v2, :cond_155

    .line 54
    and-int/lit8 v19, v19, -0x5

    .line 56
    :cond_155
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/pantech/app/music/library/helper/DBCursorHelper;->getPlayListCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v12

    .line 57
    .restart local v12    # "newCursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    goto/16 :goto_6a

    .line 60
    .end local v12    # "newCursor":Landroid/database/Cursor;
    .end local v19    # "options":I
    :pswitch_167
    const/16 v19, 0x15

    .line 61
    .restart local v19    # "options":I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/pantech/app/music/library/helper/DBCursorHelper;->getPlayListCursor(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v12

    .line 62
    .restart local v12    # "newCursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    goto/16 :goto_6a

    .line 65
    .end local v12    # "newCursor":Landroid/database/Cursor;
    .end local v19    # "options":I
    :pswitch_17b
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/library/helper/DuplicateHelper;->getCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v12

    .line 66
    .restart local v12    # "newCursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    goto/16 :goto_6a

    .line 69
    .end local v12    # "newCursor":Landroid/database/Cursor;
    :pswitch_18b
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-static {v2, v3}, Lcom/pantech/app/music/library/helper/DBCursorHelper;->getArtistTrackCursor(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)Landroid/database/Cursor;

    move-result-object v12

    .line 70
    .restart local v12    # "newCursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mObserverUri:Landroid/net/Uri;

    goto/16 :goto_6a

    .line 76
    .end local v12    # "newCursor":Landroid/database/Cursor;
    .restart local v10    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    :catch_19f
    move-exception v9

    .line 77
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v2, 0x0

    goto/16 :goto_10a

    .line 105
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    .restart local v11    # "isResultChanged":Z
    .restart local v12    # "newCursor":Landroid/database/Cursor;
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_1b7

    .line 106
    const/4 v11, 0x1

    goto/16 :goto_bc

    .line 109
    :cond_1b7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 110
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 111
    :cond_1c1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v2

    if-eqz v2, :cond_208

    const-string v20, "title"

    .line 113
    .local v20, "titleColumn":Ljava/lang/String;
    :goto_1dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->isCustomCursor()Z

    move-result v2

    if-eqz v2, :cond_215

    const-string v8, "itemID"

    .line 116
    .local v8, "baseIdColumn":Ljava/lang/String;
    :goto_1e9
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 117
    .local v14, "newID":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 118
    .local v16, "oldID":J
    cmp-long v2, v14, v16

    if-eqz v2, :cond_222

    .line 119
    const/4 v11, 0x1

    .line 120
    goto/16 :goto_bc

    .line 112
    .end local v8    # "baseIdColumn":Ljava/lang/String;
    .end local v14    # "newID":J
    .end local v16    # "oldID":J
    .end local v20    # "titleColumn":Ljava/lang/String;
    :cond_208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v20

    goto :goto_1dd

    .line 113
    .restart local v20    # "titleColumn":Ljava/lang/String;
    :cond_215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mFragmentInfo:Lcom/pantech/app/music/library/FragmentInfo;

    invoke-virtual {v2}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getBaseIdColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1e9

    .line 124
    .restart local v8    # "baseIdColumn":Ljava/lang/String;
    .restart local v14    # "newID":J
    .restart local v16    # "oldID":J
    :cond_222
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1c1

    .line 128
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, "newName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, "oldName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c1

    .line 131
    const/4 v11, 0x1

    .line 132
    goto/16 :goto_bc

    .line 155
    .end local v8    # "baseIdColumn":Ljava/lang/String;
    .end local v13    # "newName":Ljava/lang/String;
    .end local v14    # "newID":J
    .end local v16    # "oldID":J
    .end local v18    # "oldName":Ljava/lang/String;
    .end local v20    # "titleColumn":Ljava/lang/String;
    :cond_251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_261

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_26e

    .line 156
    :cond_261
    const-string v2, "ExtendCursorLoader"

    const-string v3, "not use old cursor!! has to use new cursor!!"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_c2

    .line 159
    :cond_26e
    const-string v2, "ExtendCursorLoader"

    const-string v3, "use old cursor!! has to be closed new cursor.."

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c2

    .line 39
    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_11f
        :pswitch_133
        :pswitch_167
        :pswitch_17b
        :pswitch_18b
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelLoad()Z
    .registers 2

    .prologue
    .line 174
    invoke-super {p0}, Landroid/content/CursorLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method protected onReset()V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pantech/app/music/component/ExtendCursorLoader;->contentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_14

    .line 181
    invoke-virtual {p0}, Lcom/pantech/app/music/component/ExtendCursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/component/ExtendCursorLoader;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/component/ExtendCursorLoader;->contentObserver:Landroid/database/ContentObserver;

    .line 184
    :cond_14
    invoke-super {p0}, Landroid/content/CursorLoader;->onReset()V

    .line 185
    return-void
.end method

.method public setSearchWord(Ljava/lang/String;)V
    .registers 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/pantech/app/music/component/ExtendCursorLoader;->mSearchWord:Ljava/lang/String;

    .line 189
    return-void
.end method
