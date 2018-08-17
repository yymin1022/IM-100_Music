.class public Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;
.super Ljava/lang/Object;
.source "ArtistAlbumSeparatorHelper.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mCursorLock:Ljava/lang/Object;

.field mInternalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    .line 25
    iput-object p1, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mCursorLock:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method public static convertCursorToHashtable(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/Hashtable;
    .registers 9
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 34
    .local v3, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v4, :cond_1e

    aget-object v1, v0, v2

    .line 36
    .local v1, "col":Ljava/lang/String;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_18

    const-string v5, ""

    .end local v5    # "value":Ljava/lang/String;
    :cond_18
    invoke-virtual {v3, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 40
    .end local v1    # "col":Ljava/lang/String;
    :cond_1e
    return-object v3
.end method


# virtual methods
.method public buildInternalList(Landroid/database/Cursor;)V
    .registers 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 45
    const/4 v6, -0x1

    .line 46
    .local v6, "oldAlbumID":I
    const-string v5, ""

    .line 48
    .local v5, "oldAlbum":Ljava/lang/String;
    const-string v2, ""

    .line 49
    .local v2, "currentAlbum":Ljava/lang/String;
    const/4 v0, 0x0

    .line 50
    .local v0, "albumID":I
    const/4 v1, 0x0

    .line 52
    .local v1, "artistID":I
    iget-object v8, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 54
    iget-object v9, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mCursorLock:Ljava/lang/Object;

    monitor-enter v9

    .line 56
    if-eqz p1, :cond_b5

    .line 58
    :try_start_11
    const-string v8, "buildNewCursor"

    invoke-static {v8}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 60
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "szCol":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_b0

    .line 64
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 65
    const-string v8, "album"

    invoke-static {p1, v8}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-string v8, "album_id"

    invoke-static {p1, v8}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 67
    const-string v8, "artist_id"

    invoke-static {p1, v8}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 70
    if-eq v6, v0, :cond_90

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "makeHeader: currentAlbum"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 74
    move v6, v0

    .line 75
    move-object v5, v2

    .line 77
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 78
    .local v4, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "album"

    invoke-virtual {v4, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v8, "_id"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v8, "seperator_type"

    const/16 v10, -0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v8, "cursor_position"

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v8, "album_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v8, "artist_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v8, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v4    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_90
    invoke-static {p1, v7}, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->convertCursorToHashtable(Landroid/database/Cursor;[Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 89
    .restart local v4    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "seperator_type"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v8, "cursor_position"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v8, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1b

    .line 95
    .end local v4    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_b0
    const-string v8, "build album seperator finish"

    invoke-static {v8}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 97
    .end local v3    # "i":I
    .end local v7    # "szCol":[Ljava/lang/String;
    :cond_b5
    monitor-exit v9

    .line 98
    return-void

    .line 97
    :catchall_b7
    move-exception v8

    monitor-exit v9
    :try_end_b9
    .catchall {:try_start_11 .. :try_end_b9} :catchall_b7

    throw v8
.end method

.method public buildNewCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 16
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 150
    const/4 v7, -0x1

    .line 151
    .local v7, "oldAlbumID":I
    const-string v6, ""

    .line 153
    .local v6, "oldAlbum":Ljava/lang/String;
    const/4 v1, -0x1

    .line 154
    .local v1, "currentAlbumID":I
    const-string v0, ""

    .line 156
    .local v0, "currentAlbum":Ljava/lang/String;
    if-eqz p1, :cond_18d

    .line 158
    const-string v11, "buildNewCursor"

    invoke-static {v11}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, "szOldCol":[Ljava/lang/String;
    array-length v11, v10

    add-int/lit8 v11, v11, 0x2

    new-array v9, v11, [Ljava/lang/String;

    .line 162
    .local v9, "szCol":[Ljava/lang/String;
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v10

    invoke-static {v10, v11, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    array-length v11, v10

    add-int/lit8 v11, v11, 0x0

    const-string v12, "seperator_type"

    aput-object v12, v9, v11

    .line 164
    array-length v11, v10

    add-int/lit8 v11, v11, 0x1

    const-string v12, "cursor_position"

    aput-object v12, v9, v11

    .line 166
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v8, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v3, v11, :cond_182

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, "headerRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v4, "itemRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 174
    const-string v11, "album_id"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 175
    const-string v11, "album"

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buildNewCursor: currentAlbum"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " oldAlbum:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 180
    if-eq v7, v1, :cond_10e

    .line 182
    move-object v6, v0

    .line 183
    move v7, v1

    .line 185
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_7c
    array-length v11, v9

    if-ge v5, v11, :cond_10b

    .line 187
    aget-object v11, v9, v5

    const-string v12, "album"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8f

    .line 189
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_8c
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 191
    :cond_8f
    aget-object v11, v9, v5

    const-string v12, "_id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a2

    .line 193
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 195
    :cond_a2
    aget-object v11, v9, v5

    const-string v12, "seperator_type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b6

    .line 197
    const/16 v11, -0x64

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 199
    :cond_b6
    aget-object v11, v9, v5

    const-string v12, "cursor_position"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c9

    .line 201
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 205
    :cond_c9
    aget-object v11, v9, v5

    invoke-static {v11}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnLong(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e3

    .line 207
    aget-object v11, v9, v5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 209
    :cond_e3
    aget-object v11, v9, v5

    invoke-static {v11}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnInteger(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_fd

    .line 211
    aget-object v11, v9, v5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 215
    :cond_fd
    aget-object v11, v9, v5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 220
    :cond_10b
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v5    # "j":I
    :cond_10e
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_10f
    array-length v11, v9

    if-ge v5, v11, :cond_17b

    .line 227
    aget-object v11, v9, v5

    const-string v12, "seperator_type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_127

    .line 229
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_124
    add-int/lit8 v5, v5, 0x1

    goto :goto_10f

    .line 231
    :cond_127
    aget-object v11, v9, v5

    const-string v12, "cursor_position"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_139

    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 237
    :cond_139
    aget-object v11, v9, v5

    invoke-static {v11}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnInteger(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_153

    .line 239
    aget-object v11, v9, v5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 241
    :cond_153
    aget-object v11, v9, v5

    invoke-static {v11}, Lcom/pantech/app/music/list/db/CursorUtils;->isColumnLong(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16d

    .line 243
    aget-object v11, v9, v5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 247
    :cond_16d
    aget-object v11, v9, v5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_124

    .line 252
    :cond_17b
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_30

    .line 255
    .end local v2    # "headerRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v4    # "itemRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v5    # "j":I
    :cond_182
    const-string v11, "build album seperator finish"

    invoke-static {v11}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 257
    new-instance v11, Lcom/pantech/app/music/common/ArrayListCursor;

    invoke-direct {v11, v9, v8}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 260
    .end local v3    # "i":I
    .end local v8    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    .end local v9    # "szCol":[Ljava/lang/String;
    .end local v10    # "szOldCol":[Ljava/lang/String;
    :goto_18c
    return-object v11

    :cond_18d
    const/4 v11, 0x0

    goto :goto_18c
.end method

.method public clearAll()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 138
    return-void
.end method

.method public getCursorPosition(I)I
    .registers 6
    .param p1, "iInternalPosition"    # I

    .prologue
    const/4 v1, -0x1

    .line 102
    if-gez p1, :cond_4

    .line 116
    :goto_3
    return v1

    .line 105
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mCursorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_7
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2a

    .line 109
    iget-object v3, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 110
    .local v0, "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_2a

    .line 112
    const-string v1, "cursor_position"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_3

    .line 117
    .end local v0    # "item":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_27
    move-exception v1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1

    .line 116
    :cond_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_27

    goto :goto_3
.end method

.method public getInternalItem(I)Ljava/util/Hashtable;
    .registers 3
    .param p1, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public getInternalList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInternalListSize()I
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/pantech/app/music/list/adapter/helper/ArtistAlbumSeparatorHelper;->mInternalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
