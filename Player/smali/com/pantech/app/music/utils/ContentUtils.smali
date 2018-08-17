.class public Lcom/pantech/app/music/utils/ContentUtils;
.super Ljava/lang/Object;
.source "ContentUtils.java"


# static fields
.field private static final METADATA_FLAC_MAX_SAMPLINGRATE:I = 0xbb80

.field public static final METADATA_KEY_BITDEPTH:I = 0x1c

.field public static final METADATA_KEY_SAMPLINGRATE:I = 0x1d

.field public static final METADATA_MIMETYPE_FLAC:Ljava/lang/String; = "audio/flac"

.field public static final METADATA_MIMETYPE_MP3:Ljava/lang/String; = "audio/mpeg"

.field private static final METADATA_TYPE:I = 0x0

.field public static final METADATA_TYPE_FLAC_HIFI:I = 0x4

.field public static final METADATA_TYPE_FLAC_NORMAL:I = 0x3

.field public static final METADATA_TYPE_MP3_HD:I = 0x2

.field public static final METADATA_TYPE_NONE:I = 0x0

.field public static final METADATA_TYPE_NORMAL:I = 0x1

.field public static final METADATA_VALUE_BITDEPTH_HIFI_HIGH:Ljava/lang/String; = "24"

.field public static final METADATA_VALUE_BITDEPTH_HIFI_UNDER:Ljava/lang/String; = "16"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileType(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 48
    if-nez p0, :cond_4

    .line 52
    :cond_3
    :goto_3
    return v0

    .line 49
    :cond_4
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static getColumns(Lcom/pantech/app/music/list/MusicItemInfo;)[Ljava/lang/String;
    .registers 4
    .param p0, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 30
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    goto :goto_3
.end method

.method public static getHashKey(Lcom/pantech/app/music/list/MusicItemInfo;)Ljava/lang/String;
    .registers 3
    .param p0, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getAudioID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMetaDataFileType(Landroid/content/Context;Ljava/lang/String;J)I
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "audioID"    # J

    .prologue
    .line 140
    const/4 v12, 0x1

    .line 141
    .local v12, "metaDataType":I
    const-string v8, ""

    .line 142
    .local v8, "bitDepth":Ljava/lang/String;
    const-string v18, ""

    .line 143
    .local v18, "samplingRate":Ljava/lang/String;
    const-string v14, ""

    .line 144
    .local v14, "mimeType":Ljava/lang/String;
    const-string v20, ""

    .line 145
    .local v20, "time":Ljava/lang/String;
    const/4 v9, 0x0

    .line 146
    .local v9, "bitDepthValue":I
    const/16 v19, 0x0

    .line 147
    .local v19, "samplingrateValue":I
    const/16 v21, 0x0

    .line 149
    .local v21, "timeValue":I
    const/4 v10, 0x0

    .line 150
    .local v10, "c":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 154
    .local v16, "retriever":Landroid/media/MediaMetadataRetriever;
    if-eqz p1, :cond_74

    if-eqz p0, :cond_74

    .line 156
    :try_start_15
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-static {v2, v4, v5}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 157
    .local v3, "audioUri":Landroid/net/Uri;
    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "mime_type"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 161
    if-eqz v10, :cond_4c

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4c

    .line 163
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 164
    const-string v2, "mime_type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 168
    :cond_4c
    if-eqz v14, :cond_74

    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 170
    const-string v2, "audio/mpeg"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 172
    new-instance v15, Lcom/pantech/app/music/common/MP3Header;

    invoke-direct {v15}, Lcom/pantech/app/music/common/MP3Header;-><init>()V

    .line 173
    .local v15, "mp3hdr":Lcom/pantech/app/music/common/MP3Header;
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/pantech/app/music/common/MP3Header;->ReadMP3Information(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-virtual {v15}, Lcom/pantech/app/music/common/MP3Header;->getBitrate()I

    move-result v2

    const/16 v4, 0x140

    if-lt v2, v4, :cond_74

    .line 174
    const/4 v12, 0x2

    .line 215
    .end local v3    # "audioUri":Landroid/net/Uri;
    .end local v15    # "mp3hdr":Lcom/pantech/app/music/common/MP3Header;
    :cond_74
    :goto_74
    const-string v2, "VMusicMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMetaDataFileType() [bitDepth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [mimeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [samplingrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] [path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_c0} :catch_14d
    .catchall {:try_start_15 .. :try_end_c0} :catchall_15d

    .line 225
    if-eqz v10, :cond_c5

    .line 226
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_c5
    if-eqz v16, :cond_ca

    .line 229
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 232
    :cond_ca
    const-string v2, "VMusicMetaData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHifiFileType() result: [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v13, v12

    .line 234
    .end local v12    # "metaDataType":I
    .local v13, "metaDataType":I
    :goto_e9
    return v13

    .line 176
    .end local v13    # "metaDataType":I
    .restart local v3    # "audioUri":Landroid/net/Uri;
    .restart local v12    # "metaDataType":I
    :cond_ea
    :try_start_ea
    const-string v2, "audio/flac"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 178
    const/4 v12, 0x3

    .line 180
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUseHifiAudio()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 182
    new-instance v17, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v17 .. v17}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_fe} :catch_14d
    .catchall {:try_start_ea .. :try_end_fe} :catchall_15d

    .line 183
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .local v17, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_fe
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 185
    const/16 v2, 0x1c

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v8

    .line 186
    const/16 v2, 0x1d

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v18

    .line 187
    const/16 v2, 0x9

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v20

    .line 190
    if-eqz v8, :cond_123

    .line 191
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 194
    :cond_123
    if-eqz v18, :cond_129

    .line 195
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 198
    :cond_129
    if-eqz v20, :cond_12f

    .line 199
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_12e} :catch_16d
    .catchall {:try_start_fe .. :try_end_12e} :catchall_169

    move-result v21

    .line 203
    :cond_12f
    const/16 v2, 0x18

    if-lt v9, v2, :cond_134

    .line 204
    const/4 v12, 0x4

    .line 208
    :cond_134
    if-lez v9, :cond_171

    const/16 v2, 0x18

    if-ge v9, v2, :cond_171

    const v2, 0xbb80

    move/from16 v0, v19

    if-le v0, v2, :cond_171

    const v2, 0xea60

    move/from16 v0, v21

    if-lt v0, v2, :cond_171

    .line 209
    const/4 v12, 0x4

    move-object/from16 v16, v17

    .end local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto/16 :goto_74

    .line 218
    .end local v3    # "audioUri":Landroid/net/Uri;
    :catch_14d
    move-exception v11

    .line 220
    .local v11, "e":Ljava/lang/Exception;
    :goto_14e
    :try_start_14e
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_15d

    .line 225
    if-eqz v10, :cond_156

    .line 226
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_156
    if-eqz v16, :cond_15b

    .line 229
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_15b
    move v13, v12

    .end local v12    # "metaDataType":I
    .restart local v13    # "metaDataType":I
    goto :goto_e9

    .line 225
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v13    # "metaDataType":I
    .restart local v12    # "metaDataType":I
    :catchall_15d
    move-exception v2

    :goto_15e
    if-eqz v10, :cond_163

    .line 226
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_163
    if-eqz v16, :cond_168

    .line 229
    invoke-virtual/range {v16 .. v16}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_168
    throw v2

    .line 225
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v3    # "audioUri":Landroid/net/Uri;
    .restart local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catchall_169
    move-exception v2

    move-object/from16 v16, v17

    .end local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_15e

    .line 218
    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    :catch_16d
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_14e

    .end local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    :cond_171
    move-object/from16 v16, v17

    .end local v17    # "retriever":Landroid/media/MediaMetadataRetriever;
    .restart local v16    # "retriever":Landroid/media/MediaMetadataRetriever;
    goto/16 :goto_74
.end method

.method public static getUri(I)Landroid/net/Uri;
    .registers 2
    .param p0, "cntsType"    # I

    .prologue
    .line 21
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static getUri(Lcom/pantech/app/music/list/MusicItemInfo;)Landroid/net/Uri;
    .registers 2
    .param p0, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 25
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 26
    :goto_3
    return-object v0

    :cond_4
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_3
.end method

.method public static isDCFFileType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "dcf"

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    const/4 v0, 0x1

    .line 77
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isDrmContent(Lcom/pantech/app/music/list/MusicItemInfo;)Z
    .registers 5
    .param p0, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    if-nez p0, :cond_5

    .line 101
    :cond_4
    :goto_4
    return v0

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getDisaplyTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dcf"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 97
    goto :goto_4

    .line 98
    :cond_13
    invoke-virtual {p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getDisaplyTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "odf"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 99
    goto :goto_4
.end method

.method public static isFLACFileType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "flac"

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 82
    const/4 v0, 0x1

    .line 83
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isMP3FileType(Ljava/lang/String;)Z
    .registers 2
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "mp3"

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 88
    const/4 v0, 0x1

    .line 89
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNotSupportFileType(Lcom/pantech/app/music/list/MusicItemInfo;)Z
    .registers 5
    .param p0, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    if-nez p0, :cond_5

    .line 71
    :cond_4
    :goto_4
    return v1

    .line 60
    :cond_5
    invoke-static {p0}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getDisaplyTitle()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "filename":Ljava/lang/String;
    const-string v3, "mid"

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v1, v2

    .line 63
    goto :goto_4

    .line 64
    :cond_19
    const-string v3, "midi"

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    move v1, v2

    .line 65
    goto :goto_4

    .line 66
    :cond_23
    const-string v3, "smf"

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    move v1, v2

    .line 67
    goto :goto_4

    .line 68
    :cond_2d
    const-string v3, "imy"

    invoke-static {v0, v3}, Lcom/pantech/app/music/utils/ContentUtils;->checkFileType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 69
    goto :goto_4
.end method

.method public static isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z
    .registers 4
    .param p0, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_4

    .line 44
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/music/list/MusicItemInfo;->getCntsType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;Landroid/content/Context;)Z
    .registers 5
    .param p0, "item"    # Lcom/pantech/app/music/list/MusicItemInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    if-nez p0, :cond_4

    .line 39
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/pantech/app/music/list/MusicItemInfo;->getURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method
