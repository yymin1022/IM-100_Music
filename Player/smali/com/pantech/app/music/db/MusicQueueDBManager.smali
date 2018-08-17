.class public Lcom/pantech/app/music/db/MusicQueueDBManager;
.super Ljava/lang/Object;
.source "MusicQueueDBManager.java"


# instance fields
.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    if-nez p1, :cond_d

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    .line 24
    return-void
.end method

.method public static loadQueueInternal(Landroid/content/ContentResolver;Landroid/net/Uri;)[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 50
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 228
    if-eqz p0, :cond_1bb

    .line 230
    const-wide/16 v40, 0x0

    .line 233
    .local v40, "ll":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[Performance] loadQueueInternal startQuery: Startup:"

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v44, Lcom/pantech/app/music/common/Global;->mStartLap:J

    sub-long v44, v40, v44

    move-wide/from16 v0, v44

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 237
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "position ASC"

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 240
    .local v21, "c":Landroid/database/Cursor;
    const-string v2, "VMusicDefault"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "[Performance-L] loadQueueInternal query end: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v40

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-static {v2, v0}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    if-nez v21, :cond_17d

    const/16 v42, 0x0

    .line 244
    .local v42, "totalCount":I
    :goto_57
    move/from16 v0, v42

    new-array v0, v0, [Lcom/pantech/app/music/list/MusicItemInfo;

    move-object/from16 v39, v0

    .line 246
    .local v39, "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    if-eqz v21, :cond_1b5

    if-lez v42, :cond_1b5

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1b5

    .line 249
    const-string v2, "contentsType"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 250
    .local v27, "columnIdxCntsType":I
    const-string v2, "audioID"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 251
    .local v26, "columnIdxAudioID":I
    const-string v2, "albumID"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 252
    .local v23, "columnIdxAlbumID":I
    const-string v2, "retryCount"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 253
    .local v35, "columnIdxSkipCount":I
    const-string v2, "duration"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 254
    .local v31, "columnIdxDuration":I
    const-string v2, "rate"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 255
    .local v33, "columnIdxRating":I
    const-string v2, "url"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 256
    .local v37, "columnIdxUrl":I
    const-string v2, "albumartUrl"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 257
    .local v24, "columnIdxAlbumUrl":I
    const-string v2, "data"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 258
    .local v28, "columnIdxData":I
    const-string v2, "title"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v36

    .line 259
    .local v36, "columnIdxTitle":I
    const-string v2, "disp_title"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 260
    .local v30, "columnIdxDisplayName":I
    const-string v2, "artist"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 261
    .local v25, "columnIdxArtist":I
    const-string v2, "size"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 262
    .local v34, "columnIdxSize":I
    const-string v2, "dateModified"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 263
    .local v29, "columnIdxDateModified":I
    const-string v2, "MimeType"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 264
    .local v32, "columnIdxMimeType":I
    const-string v2, "album"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 266
    .local v22, "columnIdxAlbum":I
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_e9
    move/from16 v0, v38

    move/from16 v1, v42

    if-ge v0, v1, :cond_183

    .line 268
    move-object/from16 v0, v21

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 270
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 271
    .local v3, "nCntType":I
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 272
    .local v4, "lAudioID":J
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 273
    .local v6, "nAlbumID":I
    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 274
    .local v7, "lRating":J
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 275
    .local v9, "nDuration":I
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 276
    .local v10, "nSkipCount":I
    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 277
    .local v11, "szTitle":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 278
    .local v12, "szDisplayName":Ljava/lang/String;
    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 279
    .local v13, "szAlbum":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 280
    .local v14, "szArtist":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, "szUrl":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 282
    .local v16, "szData":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 283
    .local v17, "szAlbumartUrl":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 284
    .local v18, "nSize":I
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 285
    .local v19, "nDateModified":I
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 287
    .local v20, "szMimeType":Ljava/lang/String;
    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-direct/range {v2 .. v20}, Lcom/pantech/app/music/list/MusicItemInfo;-><init>(IJIJIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    aput-object v2, v39, v38

    .line 266
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_e9

    .line 242
    .end local v3    # "nCntType":I
    .end local v4    # "lAudioID":J
    .end local v6    # "nAlbumID":I
    .end local v7    # "lRating":J
    .end local v9    # "nDuration":I
    .end local v10    # "nSkipCount":I
    .end local v11    # "szTitle":Ljava/lang/String;
    .end local v12    # "szDisplayName":Ljava/lang/String;
    .end local v13    # "szAlbum":Ljava/lang/String;
    .end local v14    # "szArtist":Ljava/lang/String;
    .end local v15    # "szUrl":Ljava/lang/String;
    .end local v16    # "szData":Ljava/lang/String;
    .end local v17    # "szAlbumartUrl":Ljava/lang/String;
    .end local v18    # "nSize":I
    .end local v19    # "nDateModified":I
    .end local v20    # "szMimeType":Ljava/lang/String;
    .end local v22    # "columnIdxAlbum":I
    .end local v23    # "columnIdxAlbumID":I
    .end local v24    # "columnIdxAlbumUrl":I
    .end local v25    # "columnIdxArtist":I
    .end local v26    # "columnIdxAudioID":I
    .end local v27    # "columnIdxCntsType":I
    .end local v28    # "columnIdxData":I
    .end local v29    # "columnIdxDateModified":I
    .end local v30    # "columnIdxDisplayName":I
    .end local v31    # "columnIdxDuration":I
    .end local v32    # "columnIdxMimeType":I
    .end local v33    # "columnIdxRating":I
    .end local v34    # "columnIdxSize":I
    .end local v35    # "columnIdxSkipCount":I
    .end local v36    # "columnIdxTitle":I
    .end local v37    # "columnIdxUrl":I
    .end local v38    # "i":I
    .end local v39    # "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v42    # "totalCount":I
    :cond_17d
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v42

    goto/16 :goto_57

    .line 292
    .restart local v22    # "columnIdxAlbum":I
    .restart local v23    # "columnIdxAlbumID":I
    .restart local v24    # "columnIdxAlbumUrl":I
    .restart local v25    # "columnIdxArtist":I
    .restart local v26    # "columnIdxAudioID":I
    .restart local v27    # "columnIdxCntsType":I
    .restart local v28    # "columnIdxData":I
    .restart local v29    # "columnIdxDateModified":I
    .restart local v30    # "columnIdxDisplayName":I
    .restart local v31    # "columnIdxDuration":I
    .restart local v32    # "columnIdxMimeType":I
    .restart local v33    # "columnIdxRating":I
    .restart local v34    # "columnIdxSize":I
    .restart local v35    # "columnIdxSkipCount":I
    .restart local v36    # "columnIdxTitle":I
    .restart local v37    # "columnIdxUrl":I
    .restart local v38    # "i":I
    .restart local v39    # "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .restart local v42    # "totalCount":I
    :cond_183
    const-string v2, "VMusicDefault"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "[Performance-L] loadQueueInternal load end:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    sub-long v44, v44, v40

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, " Startup:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    sget-wide v46, Lcom/pantech/app/music/common/Global;->mStartLap:J

    sub-long v44, v44, v46

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-static {v2, v0}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v22    # "columnIdxAlbum":I
    .end local v23    # "columnIdxAlbumID":I
    .end local v24    # "columnIdxAlbumUrl":I
    .end local v25    # "columnIdxArtist":I
    .end local v26    # "columnIdxAudioID":I
    .end local v27    # "columnIdxCntsType":I
    .end local v28    # "columnIdxData":I
    .end local v29    # "columnIdxDateModified":I
    .end local v30    # "columnIdxDisplayName":I
    .end local v31    # "columnIdxDuration":I
    .end local v32    # "columnIdxMimeType":I
    .end local v33    # "columnIdxRating":I
    .end local v34    # "columnIdxSize":I
    .end local v35    # "columnIdxSkipCount":I
    .end local v36    # "columnIdxTitle":I
    .end local v37    # "columnIdxUrl":I
    .end local v38    # "i":I
    :cond_1b5
    if-eqz v21, :cond_1ba

    .line 296
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 301
    .end local v21    # "c":Landroid/database/Cursor;
    .end local v39    # "tmpList":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v40    # "ll":J
    .end local v42    # "totalCount":I
    :cond_1ba
    :goto_1ba
    return-object v39

    :cond_1bb
    const/16 v39, 0x0

    goto :goto_1ba
.end method

.method public static declared-synchronized restoreDLNAToServiceQueue(Landroid/content/Context;)[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-class v2, Lcom/pantech/app/music/db/MusicQueueDBManager;

    monitor-enter v2

    if-eqz p0, :cond_11

    .line 126
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->DLNA_URI:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/pantech/app/music/db/MusicQueueDBManager;->loadQueueInternal(Landroid/content/ContentResolver;Landroid/net/Uri;)[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    move-result-object v0

    .line 134
    :goto_f
    monitor-exit v2

    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 124
    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized saveDLNAQueue(Landroid/content/Context;[Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "musicItemInfo"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "len"    # I

    .prologue
    .line 109
    const-class v1, Lcom/pantech/app/music/db/MusicQueueDBManager;

    monitor-enter v1

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    .line 111
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->DLNA_URI:Landroid/net/Uri;

    invoke-static {v0, v2, p1, p2}, Lcom/pantech/app/music/db/MusicQueueDBManager;->saveQueueInternal(Landroid/content/ContentResolver;Landroid/net/Uri;[Lcom/pantech/app/music/list/MusicItemInfo;I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    .line 113
    :cond_10
    monitor-exit v1

    return-void

    .line 109
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized saveQueueInternal(Landroid/content/ContentResolver;Landroid/net/Uri;[Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 14
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "musicItemInfo"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p3, "len"    # I

    .prologue
    .line 144
    const-class v7, Lcom/pantech/app/music/db/MusicQueueDBManager;

    monitor-enter v7

    if-eqz p2, :cond_14a

    .line 146
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 148
    .local v4, "start":J
    array-length v6, p2

    invoke-static {p3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 150
    .local v1, "count":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### saveQueue Start count="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 152
    if-eqz p0, :cond_12f

    .line 154
    new-array v0, v1, [Landroid/content/ContentValues;

    .line 156
    .local v0, "arrValue":[Landroid/content/ContentValues;
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 158
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2e
    if-ge v2, v1, :cond_10e

    .line 160
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v3, "value":Landroid/content/ContentValues;
    const-string v6, "position"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v6, "contentsType"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getCntsType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v6, "audioID"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v6, "albumID"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumID()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v6, "retryCount"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getSkipCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v6, "duration"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getDuration()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v6, "rate"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getRate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const-string v6, "title"

    aget-object v8, p2, v2

    iget-object v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v6, "disp_title"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getDisaplyTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v6, "artist"

    aget-object v8, p2, v2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getArtist(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v6, "album"

    aget-object v8, p2, v2

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbum(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "url"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v6, "data"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v6, "albumartUrl"

    aget-object v8, p2, v2

    invoke-virtual {v8}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumartUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v6, "size"

    aget-object v8, p2, v2

    iget v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v6, "dateModified"

    aget-object v8, p2, v2

    iget v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v6, "MimeType"

    aget-object v8, p2, v2

    iget-object v8, v8, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    invoke-virtual {v3, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    aput-object v3, v0, v2

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2e

    .line 186
    .end local v3    # "value":Landroid/content/ContentValues;
    :cond_10e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### saveQueue end + loop:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 188
    array-length v6, v0

    if-lez v6, :cond_12f

    .line 190
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 194
    .end local v0    # "arrValue":[Landroid/content/ContentValues;
    .end local v2    # "i":I
    :cond_12f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### saveQueue end + time:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V
    :try_end_14a
    .catchall {:try_start_5 .. :try_end_14a} :catchall_14c

    .line 196
    .end local v1    # "count":I
    .end local v4    # "start":J
    :cond_14a
    monitor-exit v7

    return-void

    .line 144
    :catchall_14c
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method public loadDLNAQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 2

    .prologue
    .line 200
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->DLNA_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/db/MusicQueueDBManager;->loadQueueInternal(Landroid/net/Uri;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadQueue(Z)Landroid/database/Cursor;
    .registers 9
    .param p1, "random"    # Z

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_6

    .line 213
    :goto_5
    return-object v2

    .line 208
    :cond_6
    if-nez p1, :cond_16

    .line 209
    iget-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "position ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    :goto_14
    move-object v2, v6

    .line 213
    goto :goto_5

    .line 211
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_16
    iget-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "random()"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6    # "c":Landroid/database/Cursor;
    goto :goto_14
.end method

.method public loadQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 2

    .prologue
    .line 218
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/db/MusicQueueDBManager;->loadQueueInternal(Landroid/net/Uri;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadQueueInternal(Landroid/net/Uri;)[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/pantech/app/music/db/MusicQueueDBManager;->loadQueueInternal(Landroid/content/ContentResolver;Landroid/net/Uri;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized removeCurrentPlayItemInfo()V
    .registers 5

    .prologue
    .line 92
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_e

    .line 94
    iget-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/app/music/db/MusicQueueStore$MusicCurrentPlayColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 96
    :cond_e
    monitor-exit p0

    return-void

    .line 92
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveQueue([Lcom/pantech/app/music/list/MusicItemInfo;I)V
    .registers 5
    .param p1, "musicItemInfo"    # [Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "len"    # I

    .prologue
    .line 139
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v1, p1, p2}, Lcom/pantech/app/music/db/MusicQueueDBManager;->saveQueueInternal(Landroid/content/ContentResolver;Landroid/net/Uri;[Lcom/pantech/app/music/list/MusicItemInfo;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentPlayItemInfo(ILcom/pantech/app/music/list/MusicItemInfo;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "musicItemInfo"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_c8

    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, "currentPlaySongValues":Landroid/content/ContentValues;
    const-string v1, "contentsType"

    iget v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v1, "audioID"

    iget-wide v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->lAudioID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v1, "url"

    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "albumartUrl"

    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->getAlbumartUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "data"

    iget-object v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->szData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "retryCount"

    iget v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->nSkipCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v1, "albumID"

    iget v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->nAlbumID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v1, "title"

    iget-object v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "disp_title"

    iget-object v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->szDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "artist"

    iget-object v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->szArtist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "album"

    iget-object v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->szAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "rate"

    iget-wide v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->lRating:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 76
    const-string v1, "duration"

    iget v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->nDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 79
    const-string v1, "size"

    iget v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->nSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v1, "dateModified"

    iget v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->nDateModified:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "MimeType"

    iget-object v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->szMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "position"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentPlaySongInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/pantech/app/music/list/MusicItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/pantech/app/music/db/MusicQueueStore$MusicCurrentPlayColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_c8
    .catchall {:try_start_1 .. :try_end_c8} :catchall_ca

    .line 88
    .end local v0    # "currentPlaySongValues":Landroid/content/ContentValues;
    :cond_c8
    monitor-exit p0

    return-void

    .line 60
    :catchall_ca
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateRate(JJ)V
    .registers 10
    .param p1, "audioID"    # J
    .param p3, "rating"    # J

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1e

    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "rate"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 32
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueue;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 34
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_1e
    monitor-exit p0

    return-void

    .line 28
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateSkipCount(JI)V
    .registers 9
    .param p1, "audioID"    # J
    .param p3, "skipCount"    # I

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1e

    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "retryCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 42
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueue;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 44
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_1e
    monitor-exit p0

    return-void

    .line 38
    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateSongInfo(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "audioID"    # J
    .param p3, "newTitle"    # Ljava/lang/String;
    .param p4, "newAlbum"    # Ljava/lang/String;
    .param p5, "newArtist"    # Ljava/lang/String;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    if-eqz v1, :cond_24

    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "album"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "artist"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueDBManager;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueue;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 56
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_24
    monitor-exit p0

    return-void

    .line 48
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method
