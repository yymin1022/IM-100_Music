.class public Lcom/pantech/app/music/list/db/DBInterfaceDelete;
.super Lcom/pantech/app/music/list/db/DBInterfaceCommon;
.source "DBInterfaceDelete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/db/DBInterfaceDelete$5;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private DeleteDirectory(Ljava/io/File;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 53
    const/4 v3, 0x0

    .line 55
    .local v3, "isDeleteSuccess":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 59
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_15

    .line 61
    const-string v4, "DBInterfaceCommon"

    const-string v5, "deleteFiles | Abnormal case | listFiles NULL"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v1    # "files":[Ljava/io/File;
    :cond_14
    :goto_14
    return-void

    .line 64
    .restart local v1    # "files":[Ljava/io/File;
    :cond_15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v4, v1

    if-ge v2, v4, :cond_8d

    .line 66
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 68
    aget-object v4, v1, v2

    invoke-direct {p0, v4}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->DeleteDirectory(Ljava/io/File;)V

    .line 64
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 72
    :cond_29
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "filename":Ljava/lang/String;
    const-string v4, ".odf"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 75
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteDRM_RO(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 77
    const-string v4, "DBInterfaceCommon"

    const-string v5, "deleteFiles | DRM RO Files | FAIL OR MP3"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_44
    const-string v4, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeleteDirectory | item delete | success ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    .line 85
    if-nez v3, :cond_26

    .line 87
    const-string v4, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeleteDirectory | item delete | <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> Fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 92
    .end local v0    # "filename":Ljava/lang/String;
    :cond_8d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 94
    if-nez v3, :cond_14

    .line 96
    const-string v4, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeleteDirectory | item delete | <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> Fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14
.end method

.method private deleteDRM_RO(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized deleteEmptyGenres(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/Object;)I
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "genreCursor"    # Landroid/database/Cursor;
    .param p2, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 144
    const-class v15, Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    monitor-enter v15

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/all/members"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 145
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "is_music=1) GROUP BY (genre_id"

    .line 146
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "genre_id"

    aput-object v5, v3, v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_104

    .line 148
    .local v3, "projection":[Ljava/lang/String;
    if-nez p0, :cond_2f

    const/4 v7, 0x0

    .line 214
    :goto_2d
    monitor-exit v15

    return v7

    .line 150
    :cond_2f
    :try_start_2f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 152
    .local v10, "groupbyGenreMemberCursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 153
    .local v9, "genreIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3f
    if-eqz v10, :cond_5f

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_5f

    .line 155
    invoke-interface {v10, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    const-string v1, "genre_id"

    invoke-static {v10, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 158
    .local v8, "genreID":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    add-int/lit8 v11, v11, 0x1

    goto :goto_3f

    .line 160
    .end local v8    # "genreID":I
    :cond_5f
    if-eqz v10, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 162
    :cond_64
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v13, "removingGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p2
    :try_end_6a
    .catchall {:try_start_2f .. :try_end_6a} :catchall_104

    .line 166
    const/4 v11, 0x0

    :goto_6b
    if-eqz p1, :cond_c6

    :try_start_6d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_c6

    .line 168
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 169
    const-string v1, "_id"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    .line 171
    .restart local v8    # "genreID":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 173
    const-string v1, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NAME:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_c3
    add-int/lit8 v11, v11, 0x1

    goto :goto_6b

    .line 177
    .end local v8    # "genreID":I
    :cond_c6
    monitor-exit p2
    :try_end_c7
    .catchall {:try_start_6d .. :try_end_c7} :catchall_107

    .line 179
    if-eqz v9, :cond_cc

    :try_start_c9
    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 180
    :cond_cc
    if-eqz v13, :cond_15c

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_15c

    .line 182
    const-string v1, "DBInterfaceCommon"

    const-string v5, "*********************** Removing Genres **"

    invoke-static {v1, v5}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v14, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_e9
    :goto_e9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 189
    .restart local v8    # "genreID":I
    if-lez v8, :cond_e9

    .line 191
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const/16 v1, 0x2c

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_103
    .catchall {:try_start_c9 .. :try_end_103} :catchall_104

    goto :goto_e9

    .line 144
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "projection":[Ljava/lang/String;
    .end local v4    # "selection":Ljava/lang/String;
    .end local v8    # "genreID":I
    .end local v9    # "genreIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v10    # "groupbyGenreMemberCursor":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "removingGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "whereBuilder":Ljava/lang/StringBuilder;
    :catchall_104
    move-exception v1

    monitor-exit v15

    throw v1

    .line 177
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v3    # "projection":[Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v9    # "genreIDTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .restart local v10    # "groupbyGenreMemberCursor":Landroid/database/Cursor;
    .restart local v11    # "i":I
    .restart local v13    # "removingGenres":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_107
    move-exception v1

    :try_start_108
    monitor-exit p2
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    :try_start_109
    throw v1

    .line 200
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "whereBuilder":Ljava/lang/StringBuilder;
    :cond_10a
    const-string v1, "("

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_121

    .line 201
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 203
    :cond_121
    const/16 v1, 0x29

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v5, Landroid/provider/MediaStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v5, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 206
    .local v7, "deleteCount":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 208
    const-string v1, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "DBInterfaceCommon"

    const-string v5, "******************************************"

    invoke-static {v1, v5}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15a
    .catchall {:try_start_109 .. :try_end_15a} :catchall_104

    goto/16 :goto_2d

    .line 214
    .end local v7    # "deleteCount":I
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "whereBuilder":Ljava/lang/StringBuilder;
    :cond_15c
    const/4 v7, 0x0

    goto/16 :goto_2d
.end method

.method public static deleteFavorites(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I
    .registers 23
    .param p0, "contextWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v14, "selectedAudioLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    new-instance v18, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lcom/pantech/app/music/list/db/DBInterfaceDelete$1;-><init>(Ljava/util/ArrayList;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 320
    const/4 v15, 0x0

    .line 321
    .local v15, "updateCount":I
    const/4 v12, 0x0

    .line 323
    .local v12, "queueUpdatecount":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_136

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 325
    .local v10, "mediaIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v17, "whereBuilder":Ljava/lang/StringBuilder;
    const-string v18, " IN ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 329
    .local v8, "mediaID":J
    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    const/16 v18, 0x2c

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 333
    .end local v8    # "mediaID":J
    :cond_4e
    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_69

    .line 334
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 336
    :cond_69
    const/16 v18, 0x29

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    const-string v18, "DBInterfaceCommon"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "deleteFavorites:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v18, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v19, 0x0

    const/16 v20, -0x1

    invoke-static/range {v18 .. v20}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v16

    .line 342
    .local v16, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 343
    .local v4, "contentValues":Landroid/content/ContentValues;
    const-string v18, "rating"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    add-int v15, v15, v18

    .line 347
    sget-object v13, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueue;->CONTENT_URI:Landroid/net/Uri;

    .line 348
    .local v13, "queueUri":Landroid/net/Uri;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 349
    .local v11, "queueContentValues":Landroid/content/ContentValues;
    const-string v18, "rate"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "audioID"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v13, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v18

    add-int v12, v12, v18

    .line 352
    const-string v18, "DBInterfaceCommon"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "deleteFavorites:updateCount:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 355
    .end local v4    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "mediaIDList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "queueContentValues":Landroid/content/ContentValues;
    .end local v13    # "queueUri":Landroid/net/Uri;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v17    # "whereBuilder":Ljava/lang/StringBuilder;
    :cond_136
    if-lez v12, :cond_155

    .line 357
    new-instance v5, Landroid/os/Handler;

    invoke-interface/range {p0 .. p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 358
    .local v5, "h":Landroid/os/Handler;
    new-instance v18, Lcom/pantech/app/music/list/module/RefreshQueue;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pantech/app/music/list/module/RefreshQueue;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    .end local v5    # "h":Landroid/os/Handler;
    :cond_155
    return v15
.end method

.method public static deleteServiceQueues(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I
    .registers 10
    .param p0, "serviceWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 828
    .local p1, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v4, "selectedAudioLists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Lcom/pantech/app/music/list/db/DBInterfaceDelete$4;

    invoke-direct {v5, v4}, Lcom/pantech/app/music/list/db/DBInterfaceDelete$4;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1, v5}, Lcom/pantech/app/music/list/db/SelectManager;->makeContentSelectInfoList(Ljava/util/Collection;Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;)V

    .line 843
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 845
    .local v1, "count":I
    if-lez v1, :cond_3d

    .line 847
    new-array v0, v1, [J

    .line 848
    .local v0, "audioIDs":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2b

    .line 849
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v0, v3

    .line 848
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 851
    :cond_2b
    invoke-interface {p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v5

    if-eqz v5, :cond_3d

    .line 855
    :try_start_31
    invoke-interface {p0}, Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;->getService()Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->removeQueues([J)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_38} :catch_39

    .line 867
    .end local v0    # "audioIDs":[J
    .end local v1    # "count":I
    .end local v3    # "i":I
    :goto_38
    return v1

    .line 859
    .restart local v0    # "audioIDs":[J
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    :catch_39
    move-exception v2

    .line 862
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 867
    .end local v0    # "audioIDs":[J
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :cond_3d
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private deletefile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "szPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 112
    invoke-direct {p0, v0}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->DeleteDirectory(Ljava/io/File;)V

    .line 136
    :goto_f
    return v1

    .line 118
    :cond_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 120
    const-string v2, ".odf"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 122
    invoke-direct {p0, p1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteDRM_RO(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 124
    const-string v2, "DBInterfaceCommon"

    const-string v3, "delete DRM RO File Fail or Not Exist."

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_2b
    const-string v2, "DBInterfaceCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFiles | item | success ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 134
    :cond_4a
    const-string v1, "DBInterfaceCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFiles | item | fail ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x0

    goto :goto_f
.end method


# virtual methods
.method public declared-synchronized deleteGroupChecked(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/Collection;)I
    .registers 13
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "groupList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    const/4 v6, 0x0

    .line 769
    monitor-enter p0

    const/4 v2, 0x0

    .line 771
    .local v2, "deleteGroupCount":I
    :try_start_3
    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 773
    const-string v7, "DBInterfaceCommon"

    const-string v8, " ################################"

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v7, "DBInterfaceCommon"

    const-string v8, " ## Just Support Group Delete"

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v7, "DBInterfaceCommon"

    const-string v8, " ################################"

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_7a

    .line 823
    :goto_1e
    monitor-exit p0

    return v6

    .line 779
    :cond_20
    :try_start_20
    const-string v6, "DBInterfaceCommon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteGroupChecked category"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_78

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 784
    .local v5, "selectInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    move-object v0, v5

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v3, v0

    .line 787
    .local v3, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    iget-object v6, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    iget-object v8, v3, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    new-instance v9, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct {v9}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    invoke-static {v6, v7, v8, v9}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v1

    .line 789
    .local v1, "childCount":I
    if-nez v1, :cond_4a

    .line 791
    iget-object v6, v3, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iget-object v7, v3, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteGroupOnly(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Z)I
    :try_end_75
    .catchall {:try_start_20 .. :try_end_75} :catchall_7a

    move-result v6

    add-int/2addr v2, v6

    goto :goto_4a

    .end local v1    # "childCount":I
    .end local v3    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v5    # "selectInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_78
    move v6, v2

    .line 823
    goto :goto_1e

    .line 769
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_7a
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized deleteGroupOnly(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Z)I
    .registers 12
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .param p3, "isNotifiy"    # Z

    .prologue
    const/4 v0, 0x0

    .line 695
    monitor-enter p0

    const/4 v4, -0x1

    :try_start_3
    invoke-static {p1, p2, v4}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 697
    .local v2, "uri":Landroid/net/Uri;
    sget-object v4, Lcom/pantech/app/music/list/db/DBInterfaceDelete$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_e4

    .line 728
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteGroup nogrouptype ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_31

    .line 695
    .end local v2    # "uri":Landroid/net/Uri;
    :catchall_31
    move-exception v4

    monitor-exit p0

    throw v4

    .line 702
    .restart local v2    # "uri":Landroid/net/Uri;
    :pswitch_34
    if-eqz p3, :cond_68

    :try_start_36
    iget-object v4, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    if-eqz v4, :cond_68

    .line 704
    const-string v4, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteGroupID exception. ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v4, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_68
    .catchall {:try_start_36 .. :try_end_68} :catchall_31

    .line 764
    :cond_68
    :goto_68
    monitor-exit p0

    return v0

    .line 711
    :pswitch_6a
    :try_start_6a
    const-string v3, "_id=?"

    .line 731
    .local v3, "where":Ljava/lang/String;
    :goto_6c
    const/4 v0, 0x0

    .line 733
    .local v0, "delCount":I
    iget-object v4, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    if-eqz v4, :cond_b8

    .line 735
    iget-object v4, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 737
    const-string v4, "DBInterfaceCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteGroupID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] delCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    if-lez v0, :cond_b8

    if-eqz p3, :cond_b8

    .line 743
    move-object v1, v2

    .line 745
    .local v1, "notify_uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;

    invoke-direct {v5, p0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;-><init>(Lcom/pantech/app/music/list/db/DBInterfaceDelete;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    .end local v1    # "notify_uri":Landroid/net/Uri;
    :cond_b8
    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {p1, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    if-lez v0, :cond_68

    goto :goto_68

    .line 716
    .end local v0    # "delCount":I
    .end local v3    # "where":Ljava/lang/String;
    :pswitch_c3
    const-string v3, "_id=?"

    .line 717
    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_6c

    .line 721
    .end local v3    # "where":Ljava/lang/String;
    :pswitch_c6
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 722
    iget-object v4, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Playlist$Members;->getMemberContentUri(J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 724
    :cond_e0
    const-string v3, "_id=?"
    :try_end_e2
    .catchall {:try_start_6a .. :try_end_e2} :catchall_31

    .line 725
    .restart local v3    # "where":Ljava/lang/String;
    goto :goto_6c

    .line 697
    nop

    :pswitch_data_e4
    .packed-switch 0x3
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_6a
        :pswitch_c3
        :pswitch_c3
        :pswitch_c6
    .end packed-switch
.end method

.method public declared-synchronized deleteSong(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;J)I
    .registers 12
    .param p1, "contextWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "audioID"    # J

    .prologue
    .line 256
    monitor-enter p0

    const/4 v1, 0x0

    .line 258
    .local v1, "delCount":I
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v3, "selectInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    iget-object v4, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    new-instance v6, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;-><init>(Ljava/lang/String;)V

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->queryTrackList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/db/DBInterfaceHelper$MusicQueryWhereCondition;I)Landroid/database/Cursor;
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_71

    move-result-object v0

    .line 264
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2d

    :try_start_1b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 266
    new-instance v4, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    sget-object v5, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v6, ""

    invoke-direct {v4, v5, v6, v0}, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Landroid/database/Cursor;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_1b .. :try_end_2d} :catchall_6a

    .line 271
    :cond_2d
    if-eqz v0, :cond_32

    .line 272
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v2, "removeQueueArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v5, ""

    invoke-virtual {p0, v4, v5, v3, v2}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteSongsPartial(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;)I

    .line 283
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_68

    .line 287
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/pantech/app/music/list/module/RemoveQueue;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-direct {v5, p1, v6, v2}, Lcom/pantech/app/music/list/module/RemoveQueue;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/ArrayList;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeQueue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_68
    .catchall {:try_start_2f .. :try_end_68} :catchall_71

    .line 290
    :cond_68
    monitor-exit p0

    return v1

    .line 271
    .end local v2    # "removeQueueArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_6a
    move-exception v4

    if-eqz v0, :cond_70

    .line 272
    :try_start_6d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_70
    throw v4
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_71

    .line 256
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v3    # "selectInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    :catchall_71
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized deleteSongs(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/Collection;)I
    .registers 30
    .param p1, "contextWrapper"    # Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;
    .param p2, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 497
    .local p3, "deleteInfoList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;>;"
    monitor-enter p0

    const/4 v8, 0x0

    .line 498
    .local v8, "deleteCount":I
    const/4 v12, 0x0

    .line 499
    .local v12, "groupDeleteCount":I
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v7

    .line 501
    .local v7, "deleteChildCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v17, "removeQueueArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v21, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deleteSongs categoryType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " child category:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " deleteInfoListSize:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    if-eqz p3, :cond_4a

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_b7

    move-result v21

    if-nez v21, :cond_4e

    :cond_4a
    move/from16 v21, v8

    .line 689
    :goto_4c
    monitor-exit p0

    return v21

    .line 512
    :cond_4e
    :try_start_4e
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5f

    .line 514
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteFavorites(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I

    move-result v21

    goto :goto_4c

    .line 516
    :cond_5f
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_70

    .line 518
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteServiceQueues(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Ljava/util/Collection;)I

    move-result v21

    goto :goto_4c

    .line 521
    :cond_70
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 526
    .local v10, "deleteTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_de

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;

    .line 528
    .local v9, "deleteInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    instance-of v0, v9, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move/from16 v21, v0

    if-eqz v21, :cond_ba

    .line 530
    move-object v0, v9

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;

    move-object v14, v0

    .line 531
    .local v14, "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    iget-object v0, v14, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 532
    .local v5, "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    if-nez v5, :cond_ab

    .line 534
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .restart local v5    # "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    iget-object v0, v14, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mGroupID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :cond_ab
    iget-object v0, v14, Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;->mChildTable:Lcom/pantech/app/music/list/component/ArrayListMap;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/pantech/app/music/list/db/SelectManager;->getSelectedChildList(Lcom/pantech/app/music/list/component/ArrayListMap;)Ljava/util/Collection;

    move-result-object v4

    .line 539
    .local v4, "childContentsList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_b6
    .catchall {:try_start_4e .. :try_end_b6} :catchall_b7

    goto :goto_79

    .line 497
    .end local v4    # "childContentsList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    .end local v5    # "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    .end local v7    # "deleteChildCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v9    # "deleteInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .end local v10    # "deleteTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;>;"
    .end local v14    # "groupInfo":Lcom/pantech/app/music/list/db/SelectManager$GroupSelectInfo;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "removeQueueArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_b7
    move-exception v21

    monitor-exit p0

    throw v21

    .line 543
    .restart local v7    # "deleteChildCategory":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .restart local v9    # "deleteInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    .restart local v10    # "deleteTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;>;"
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "removeQueueArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_ba
    :try_start_ba
    move-object v0, v9

    check-cast v0, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    move-object v6, v0

    .line 544
    .local v6, "contentInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    invoke-virtual {v6}, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->getGroupID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 546
    .restart local v5    # "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    if-nez v5, :cond_da

    .line 548
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .restart local v5    # "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-virtual {v6}, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->getGroupID()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_da
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 558
    .end local v5    # "childInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    .end local v6    # "contentInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v9    # "deleteInfo":Lcom/pantech/app/music/list/db/SelectManager$SelectInfo;
    :cond_de
    invoke-virtual {v10}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_e6
    :goto_e6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_294

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 560
    .local v13, "groupID":Ljava/lang/String;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v20, "tmpDeleteContentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v11, "dividedDeleteContentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;>;"
    :goto_fc
    invoke-virtual {v10, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1f4

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_12e

    .line 565
    invoke-virtual {v10, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    const/16 v22, 0x0

    const/16 v23, 0x1f4

    invoke-virtual/range {v21 .. v23}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    .line 566
    .local v19, "sublist":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    goto :goto_fc

    .line 570
    .end local v19    # "sublist":Ljava/util/List;, "Ljava/util/List<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    :cond_12e
    invoke-virtual {v10, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 571
    .local v18, "sublist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_148

    .line 573
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 577
    :cond_148
    const-string v21, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deleteSongs divided to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_165
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v15, v0, :cond_195

    .line 581
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_189

    .line 584
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Collection;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-virtual {v0, v7, v13, v1, v2}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteSongsPartial(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;)I

    move-result v21

    add-int v8, v8, v21

    .line 585
    :cond_189
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 579
    add-int/lit8 v15, v15, 0x1

    goto :goto_165

    .line 588
    :cond_195
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 589
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 594
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_248

    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1c5

    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1c5

    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_248

    .line 598
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v22 .. v22}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v7, v13, v1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v21

    if-nez v21, :cond_240

    .line 600
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v21

    invoke-virtual {v0, v1, v13, v2}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteGroupOnly(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Z)I

    move-result v21

    add-int v12, v12, v21

    .line 601
    add-int/2addr v8, v12

    .line 619
    :cond_1e9
    :goto_1e9
    if-gtz v8, :cond_1ed

    if-lez v12, :cond_e6

    .line 621
    :cond_1ed
    const-string v21, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "deleSong category:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " id:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e6

    .line 630
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_282

    .line 632
    sget-object v21, Lcom/pantech/app/music/albumart/AlbumArtCache$Type;->LOCAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Type;

    sget-object v22, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/albumart/AlbumArtCache;->clear(Lcom/pantech/app/music/albumart/AlbumArtCache$Type;Lcom/pantech/app/music/albumart/AlbumArtCache$Size;J)V

    goto/16 :goto_e6

    .line 605
    :cond_240
    const-string v21, "DBInterfaceCommon"

    const-string v22, "Something Wrong. not deleted !!!"

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e9

    .line 610
    :cond_248
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1e9

    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e9

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;

    invoke-direct/range {v22 .. v22}, Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v7, v13, v1}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->getCountList(Landroid/content/Context;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Lcom/pantech/app/music/list/db/DBInterfaceCommon$GetCountOptionParams;)I

    move-result v21

    if-nez v21, :cond_1e9

    .line 614
    sget-object v21, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v13, v2}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteGroupOnly(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Z)I

    move-result v21

    add-int v12, v12, v21

    .line 615
    add-int/2addr v8, v12

    goto/16 :goto_1e9

    .line 637
    :cond_282
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isGroup()Z

    move-result v21

    if-eqz v21, :cond_e6

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_e6

    goto/16 :goto_e6

    .line 644
    .end local v11    # "dividedDeleteContentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;>;"
    .end local v13    # "groupID":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v18    # "sublist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    .end local v20    # "tmpDeleteContentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    :cond_294
    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 646
    const-string v21, "DBInterfaceCommon"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "delete Count: groupDeleteCount:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " deleteCount:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " removingQueue:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_2fd

    .line 655
    new-instance v21, Ljava/lang/Thread;

    new-instance v22, Lcom/pantech/app/music/list/module/RemoveQueue;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/music/list/module/RemoveQueue;-><init>(Lcom/pantech/app/music/list/fragment/IContextServiceWrapper;Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/util/ArrayList;)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "removeQueue"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V
    :try_end_2fd
    .catchall {:try_start_ba .. :try_end_2fd} :catchall_b7

    :cond_2fd
    move/from16 v21, v8

    .line 689
    goto/16 :goto_4c
.end method

.method public declared-synchronized deleteSongsPartial(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;)I
    .registers 21
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "groupID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 366
    .local p3, "selectedList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;>;"
    .local p4, "removeQueueArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    monitor-enter p0

    const/4 v10, 0x0

    .line 367
    .local v10, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 368
    .local v3, "deleteCount":I
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v11, "whereBuilder":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v6, "mDeleteFileArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v7, "mSecretInfoFileArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "DBInterfaceCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "deleteSongsPartial  categoryType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " listID:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " selectedList:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_20f

    if-eqz p3, :cond_20f

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v12

    if-lez v12, :cond_20f

    .line 376
    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d1

    .line 377
    const-string v12, "audio_id IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :goto_63
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_67
    :goto_67
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .line 385
    .local v9, "selectInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    iget-wide v12, v9, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_67

    .line 387
    iget-wide v12, v9, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 388
    const/16 v12, 0x2c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_67

    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_67

    .line 398
    iget-wide v12, v9, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->audioID:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v12, v9, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v12, v12, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    const-string v12, "DBInterfaceCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add deleting file ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    iget-object v14, v14, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_3 .. :try_end_cd} :catchall_ce

    goto :goto_67

    .line 366
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mDeleteFileArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "mSecretInfoFileArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "selectInfo":Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;
    .end local v11    # "whereBuilder":Ljava/lang/StringBuilder;
    :catchall_ce
    move-exception v12

    monitor-exit p0

    throw v12

    .line 378
    .restart local v6    # "mDeleteFileArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "mSecretInfoFileArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "whereBuilder":Ljava/lang/StringBuilder;
    :cond_d1
    :try_start_d1
    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e1

    .line 379
    const-string v12, "map_file_id IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 381
    :cond_e1
    const-string v12, "_id IN ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_63

    .line 408
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_e8
    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v12, v13, :cond_ff

    .line 409
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 411
    :cond_ff
    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    sget-object v12, Lcom/pantech/app/music/list/db/DBInterfaceDelete$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_214

    .line 426
    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-static {v12, v13, v14}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v10

    .line 429
    :goto_117
    const-string v12, "DBInterfaceCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "URI:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " where:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v10, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 439
    if-lez v3, :cond_1da

    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1da

    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1da

    .line 442
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_165
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_1da

    .line 444
    const/4 v2, 0x0

    .line 447
    .local v2, "count":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v3, v12, :cond_1ae

    .line 449
    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    aput-object v12, v8, v13

    .line 451
    .local v8, "selectArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mContext:Landroid/content/Context;

    const-string v13, "_data=?"

    invoke-static {v12, v10, v13, v8}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->getDatabaseCount(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 453
    const-string v13, "DBInterfaceCommon"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_1d7

    const-string v12, "DB DELETED"

    :goto_193
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " path:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .end local v8    # "selectArgs":[Ljava/lang/String;
    :cond_1ae
    if-nez v2, :cond_1bb

    .line 458
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deletefile(Ljava/lang/String;)Z

    .line 442
    :cond_1bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_165

    .line 420
    .end local v2    # "count":I
    .end local v4    # "i":I
    :pswitch_1be
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1cc

    .line 421
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "listID is Null"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 422
    :cond_1cc
    const/4 v12, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v10

    .line 423
    goto/16 :goto_117

    .line 453
    .restart local v2    # "count":I
    .restart local v4    # "i":I
    .restart local v8    # "selectArgs":[Ljava/lang/String;
    :cond_1d7
    const-string v12, "DB DELETE FAIL"

    goto :goto_193

    .line 463
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v8    # "selectArgs":[Ljava/lang/String;
    :cond_1da
    const-string v12, "DBInterfaceCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Delete Complete -- deleteCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    if-lez v3, :cond_20f

    sget-object v12, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_20f

    .line 472
    invoke-static {}, Lcom/pantech/app/music/list/module/QuerySimilartySort;->clearSavedCursor()V

    .line 474
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/pantech/app/music/list/db/DBInterfaceDelete$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/pantech/app/music/list/db/DBInterfaceDelete$2;-><init>(Lcom/pantech/app/music/list/db/DBInterfaceDelete;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_20f
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_212
    .catchall {:try_start_d1 .. :try_end_212} :catchall_ce

    .line 490
    monitor-exit p0

    return v3

    .line 416
    :pswitch_data_214
    .packed-switch 0x1
        :pswitch_1be
        :pswitch_1be
    .end packed-switch
.end method
