.class public Lcom/pantech/app/music/library/helper/DBCursorHelper;
.super Ljava/lang/Object;
.source "DBCursorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/helper/DBCursorHelper$1;
    }
.end annotation


# static fields
.field public static final COLUMN_NAME_ALBUM_ID:Ljava/lang/String; = "albumID"

.field public static final COLUMN_NAME_ALBUM_NAME:Ljava/lang/String; = "album"

.field public static final COLUMN_NAME_CATEGORY:Ljava/lang/String; = "category"

.field public static final COLUMN_NAME_DETAIL:Ljava/lang/String; = "detail"

.field public static final COLUMN_NAME_FILE_NAME:Ljava/lang/String; = "_display_name"

.field public static final COLUMN_NAME_ITEM_ID:Ljava/lang/String; = "itemID"

.field public static final COLUMN_NAME_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_NAME_VIEW:Ljava/lang/String; = "viewType"

.field private static final TAG:Ljava/lang/String; = "DBCursorHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method

.method public static getArtistTrackCursor(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo;)Landroid/database/Cursor;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fragmentInfo"    # Lcom/pantech/app/music/library/FragmentInfo;

    .prologue
    .line 36
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v15, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v7, "columnArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "category"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "viewType"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "itemID"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "albumID"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "title"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "detail"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "album"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "_display_name"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    .line 50
    .local v8, "columnNames":[Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    const-wide/16 v12, -0x1

    .line 59
    .local v12, "oldAlbumID":J
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/library/FragmentInfo;->getGroupID()J

    move-result-wide v2

    const/4 v1, -0x1

    invoke-static {v0, v2, v3, v1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v9

    .line 60
    .local v9, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 63
    .local v6, "c":Landroid/database/Cursor;
    :goto_5b
    if-eqz v6, :cond_149

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 64
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 65
    .local v10, "newAlbumID":J
    cmp-long v0, v10, v12

    if-eqz v0, :cond_c9

    .line 66
    move-wide v12, v10

    .line 68
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v14, "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER_BUTTON:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "album"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    const-string v0, ""

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v14    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_c9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .restart local v14    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/library/FragmentInfo;->getCategory()Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    const-string v0, "album"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5b

    .line 92
    .end local v10    # "newAlbumID":J
    .end local v14    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_149
    if-eqz v6, :cond_14e

    .line 93
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_14e
    new-instance v0, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v0, v8, v15}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static getPlayListCursor(Landroid/content/Context;I)Landroid/database/Cursor;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 104
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v12, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v7, "columnArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "category"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    const-string v0, "viewType"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    const-string v0, "itemID"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    const-string v0, "albumID"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    const-string v0, "title"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const-string v0, "detail"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    .line 133
    .local v8, "columnNames":[Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 137
    and-int/lit16 v0, p1, 0xff

    if-eqz v0, :cond_76

    .line 138
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v11, "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_76
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_bb

    .line 150
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAY_ALL:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    const-wide/16 v0, -0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_bb
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_100

    .line 162
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NOW_PLAYING:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    const-wide/16 v0, -0x7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    const v0, 0x7f0801af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_100
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_143

    .line 174
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_143
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_188

    .line 186
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const-wide/16 v0, -0x5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_188
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1cd

    .line 198
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    const-wide/16 v0, -0x6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const v0, 0x7f0801ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1cd
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_210

    .line 211
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_ADD:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_210
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const/4 v1, -0x1

    invoke-static {v0, v2, v3, v1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JI)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v10

    .line 224
    .local v10, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    const/4 v6, 0x0

    .line 226
    .local v6, "c":Landroid/database/Cursor;
    :try_start_218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    if-eqz v6, :cond_274

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_274

    .line 231
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_274
    :goto_274
    if-eqz v6, :cond_2da

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2da

    .line 243
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2ca
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_2ca} :catch_2cb
    .catchall {:try_start_218 .. :try_end_2ca} :catchall_2e0

    goto :goto_274

    .line 252
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catch_2cb
    move-exception v9

    .line 253
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2cc
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2cf
    .catchall {:try_start_2cc .. :try_end_2cf} :catchall_2e0

    .line 255
    if-eqz v6, :cond_2d4

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 260
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2d4
    :goto_2d4
    new-instance v0, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v0, v8, v12}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0

    .line 255
    :cond_2da
    if-eqz v6, :cond_2d4

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2d4

    .line 255
    :catchall_2e0
    move-exception v0

    if-eqz v6, :cond_2e6

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2e6
    throw v0
.end method

.method public static getSearchCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "searchWord"    # Ljava/lang/String;

    .prologue
    .line 267
    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 268
    :cond_a
    const/4 v0, 0x0

    .line 385
    :goto_b
    return-object v0

    .line 271
    :cond_c
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v12, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v7, "columnArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "category"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v0, "viewType"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v0, "itemID"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const-string v0, "albumID"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    const-string v0, "title"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    const-string v0, "detail"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Ljava/lang/String;

    .line 282
    .local v8, "columnNames":[Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JILjava/lang/String;)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v10

    .line 291
    .local v10, "info":Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;
    const-string v0, "DBCursorHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 293
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_123

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 296
    .local v9, "count":I
    :goto_77
    if-lez v9, :cond_ca

    .line 297
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v11, "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_ca
    :goto_ca
    if-eqz v6, :cond_126

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 308
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-static {p0, v6}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getDetailWithArtistCursor(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 293
    .end local v9    # "count":I
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_123
    const/4 v9, 0x0

    goto/16 :goto_77

    .line 317
    .restart local v9    # "count":I
    :cond_126
    if-eqz v6, :cond_12b

    .line 318
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_12b
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JILjava/lang/String;)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v10

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 325
    if-eqz v6, :cond_205

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 328
    :goto_14b
    if-lez v9, :cond_19e

    .line 329
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_19e
    :goto_19e
    if-eqz v6, :cond_208

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_208

    .line 340
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v0, "album"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19e

    .line 325
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_205
    const/4 v9, 0x0

    goto/16 :goto_14b

    .line 349
    :cond_208
    if-eqz v6, :cond_20d

    .line 350
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_20d
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getQueryInfo(Lcom/pantech/app/music/library/FragmentInfo$Category;JILjava/lang/String;)Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;

    move-result-object v10

    .line 356
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mContentUri:Landroid/net/Uri;

    iget-object v2, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mProjection:[Ljava/lang/String;

    iget-object v3, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSelection:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v10, Lcom/pantech/app/music/library/helper/DBProviderHelper$QueryInfo;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 357
    if-eqz v6, :cond_2eb

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 360
    :goto_22d
    if-lez v9, :cond_280

    .line 361
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    const-string v0, ""

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_280
    :goto_280
    if-eqz v6, :cond_2ee

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2ee

    .line 372
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .restart local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const-string v0, "album_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0}, Lcom/pantech/app/music/library/helper/DBProviderHelper;->getTitleColumn(Lcom/pantech/app/music/library/FragmentInfo$Category;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const-string v0, "artist"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_280

    .line 357
    .end local v11    # "recordArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2eb
    const/4 v9, 0x0

    goto/16 :goto_22d

    .line 381
    :cond_2ee
    if-eqz v6, :cond_2f3

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_2f3
    new-instance v0, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v0, v8, v12}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_b
.end method

.method public static isCustomCursor(Lcom/pantech/app/music/library/FragmentInfo$Category;)Z
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    const/4 v0, 0x0

    .line 389
    sget-object v1, Lcom/pantech/app/music/library/helper/DBCursorHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_10

    .line 400
    :goto_c
    :pswitch_c
    return v0

    .line 395
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 389
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
