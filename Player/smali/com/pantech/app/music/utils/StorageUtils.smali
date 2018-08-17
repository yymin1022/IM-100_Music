.class public Lcom/pantech/app/music/utils/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# static fields
.field public static final SDCARD_FIRST:I = 0x1

.field public static final SDCARD_MOUNT:I = 0x3

.field public static final SDCARD_SECOND:I = 0x2

.field public static final SDCARD_UNMOUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicStorageUtils"

.field public static mMediaScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final mediaScanningFlagLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/pantech/app/music/utils/StorageUtils;->mMediaScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .registers 5
    .param p0, "szPath"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 77
    const-string v1, ".odf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 82
    :cond_13
    const/4 v1, 0x1

    .line 85
    :goto_14
    return v1

    .line 84
    :cond_15
    const-string v1, "MusicStorageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile() fail ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static getCardId(Landroid/content/Context;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    .local v0, "res":Landroid/content/ContentResolver;
    const-string v1, "content://media/external/fs_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "fsid"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 199
    .local v7, "nVolumeID":I
    if-eqz v6, :cond_2c

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_29

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 203
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 206
    :cond_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 209
    :cond_2c
    const-string v1, "MusicStorageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=>cardId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return v7
.end method

.method public static getMediaScanningPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-string v0, ""

    .line 104
    .local v0, "path":Ljava/lang/String;
    sget-object v3, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v3

    .line 105
    :try_start_5
    const-string v2, "musicLibraryPreference"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 106
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v2, "MediascanningDir"

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1a

    .line 109
    if-nez v0, :cond_19

    const-string v0, ""

    .line 111
    :cond_19
    return-object v0

    .line 107
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public static isDrmAvailable(Ljava/lang/String;)Z
    .registers 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 235
    const-string v6, "MusicStorageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isDrmAvailable() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {p0}, Lcom/pantech/app/music/utils/StorageUtils;->isDrmFileWithFileName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 237
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 238
    const/16 v3, -0xa

    .line 241
    .local v3, "ret":I
    new-instance v0, Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-direct {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;-><init>()V

    .line 242
    .local v0, "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMInit()I

    move-result v6

    if-nez v6, :cond_37

    .line 243
    invoke-virtual {v0, p0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMCheckRO(Ljava/lang/String;)I

    move-result v3

    .line 245
    :cond_37
    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMDestroy()V

    .line 246
    if-nez v3, :cond_3d

    .line 265
    .end local v0    # "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    .end local v3    # "ret":I
    :goto_3c
    return v4

    .restart local v0    # "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    .restart local v3    # "ret":I
    :cond_3d
    move v4, v5

    .line 246
    goto :goto_3c

    .line 248
    .end local v0    # "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    .end local v3    # "ret":I
    :cond_3f
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 249
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 251
    .local v2, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_4a
    const-string v6, "setDataSource"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->performance(Ljava/lang/String;Z)V

    .line 252
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 253
    const-string v6, "setDataSource"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->performance(Ljava/lang/String;Z)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_5d
    .catchall {:try_start_4a .. :try_end_59} :catchall_66

    .line 260
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_3c

    .line 255
    :catch_5d
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5e
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_66

    .line 260
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    move v4, v5

    goto :goto_3c

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_66
    move-exception v4

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    throw v4

    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    :cond_6b
    move v4, v5

    .line 265
    goto :goto_3c
.end method

.method public static isDrmFileWithFileHeader(Ljava/lang/String;)Z
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x66

    const/4 v3, 0x0

    .line 221
    const/16 v4, 0x14

    new-array v0, v4, [C

    .line 223
    .local v0, "buffer":[C
    :try_start_7
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 224
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileReader;->read([CII)I

    .line 225
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_4f

    .line 230
    .end local v2    # "file":Ljava/io/FileReader;
    :goto_15
    const/4 v4, 0x4

    aget-char v4, v0, v4

    if-ne v4, v6, :cond_4e

    const/4 v4, 0x5

    aget-char v4, v0, v4

    const/16 v5, 0x74

    if-ne v4, v5, :cond_4e

    const/4 v4, 0x6

    aget-char v4, v0, v4

    const/16 v5, 0x79

    if-ne v4, v5, :cond_4e

    const/4 v4, 0x7

    aget-char v4, v0, v4

    const/16 v5, 0x70

    if-ne v4, v5, :cond_4e

    const/16 v4, 0x8

    aget-char v4, v0, v4

    const/16 v5, 0x6f

    if-ne v4, v5, :cond_4e

    const/16 v4, 0x9

    aget-char v4, v0, v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4e

    const/16 v4, 0xa

    aget-char v4, v0, v4

    const/16 v5, 0x63

    if-ne v4, v5, :cond_4e

    const/16 v4, 0xb

    aget-char v4, v0, v4

    if-ne v4, v6, :cond_4e

    const/4 v3, 0x1

    :cond_4e
    return v3

    .line 227
    :catch_4f
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public static isDrmFileWithFileName(Ljava/lang/String;)Z
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 214
    if-nez p0, :cond_4

    .line 217
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "odf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isMediaScanning(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 179
    if-nez p0, :cond_4

    .line 187
    :goto_3
    return v0

    .line 183
    :cond_4
    sget-object v3, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v3

    .line 184
    :try_start_7
    const-string v2, "musicLibraryPreference"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 185
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v2, "isMediascanning"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, "isScanning":Z
    monitor-exit v3

    goto :goto_3

    .end local v0    # "isScanning":Z
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v2
.end method

.method public static declared-synchronized isMediaScanningTimeExpired(Landroid/content/Context;I)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxTime"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 160
    const-class v6, Lcom/pantech/app/music/utils/StorageUtils;

    monitor-enter v6

    const/4 v0, 0x0

    .line 162
    .local v0, "isExpired":Z
    if-nez p0, :cond_b

    move v1, v0

    .line 175
    .end local v0    # "isExpired":Z
    .local v1, "isExpired":I
    :goto_9
    monitor-exit v6

    return v1

    .line 164
    .end local v1    # "isExpired":I
    .restart local v0    # "isExpired":Z
    :cond_b
    :try_start_b
    sget-object v7, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_32

    .line 166
    :try_start_e
    const-string v3, "musicLibraryPreference"

    const/4 v8, 0x0

    invoke-virtual {p0, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 167
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string v3, "MediaScanningStartTime"

    const-wide/16 v8, 0x0

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 169
    .local v4, "time":J
    cmp-long v3, v4, v10

    if-lez v3, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    int-to-long v10, p1

    cmp-long v3, v8, v10

    if-ltz v3, :cond_2c

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_2c
    monitor-exit v7

    move v1, v0

    .line 175
    .restart local v1    # "isExpired":I
    goto :goto_9

    .line 173
    .end local v1    # "isExpired":I
    .end local v2    # "preference":Landroid/content/SharedPreferences;
    .end local v4    # "time":J
    :catchall_2f
    move-exception v3

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_2f

    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 160
    :catchall_32
    move-exception v3

    monitor-exit v6

    throw v3
.end method

.method public static isMounted()Z
    .registers 1

    .prologue
    .line 35
    invoke-static {}, Lcom/pantech/app/music/utils/StorageUtils;->mountStorage()I

    move-result v0

    if-nez v0, :cond_8

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static mountStorage()I
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 42
    const-class v2, Landroid/os/Environment;

    .line 43
    .local v2, "env":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Environment;>;"
    const/4 v5, 0x0

    .line 47
    .local v5, "state":Ljava/lang/String;
    :try_start_4
    const-string v6, "get2ndExternalStorageState"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 48
    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_4c

    .line 49
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 50
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 51
    :cond_2a
    const-string v6, "MusicStorageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "->External storage is available:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_42} :catch_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_7a

    .line 52
    const/4 v6, 0x2

    .line 71
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :goto_43
    return v6

    .line 56
    :catch_44
    move-exception v3

    .line 57
    .local v3, "ex":Ljava/lang/NoSuchMethodException;
    const-string v6, "MusicStorageUtils"

    const-string v8, "get2ndExternalStorageState method not found!!!"

    invoke-static {v6, v8}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v3    # "ex":Ljava/lang/NoSuchMethodException;
    :cond_4c
    :goto_4c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 65
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 66
    :cond_60
    const-string v6, "MusicStorageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->Internal storage is only available:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v6, 0x1

    goto :goto_43

    .line 59
    :catch_7a
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7f
    const-string v6, "MusicStorageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Storage is not available:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 71
    goto :goto_43
.end method

.method public static replaceRealPathToEasyPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f0800cd

    .line 269
    if-nez p1, :cond_8

    .line 270
    const-string v6, ""

    .line 301
    :goto_7
    return-object v6

    .line 273
    :cond_8
    const-string v2, "/storage/emulated/0"

    .line 274
    .local v2, "prefix_internal":Ljava/lang/String;
    const-string v3, "/storage/sdcard0"

    .line 275
    .local v3, "prefix_internal2":Ljava/lang/String;
    const-string v1, "/storage/sdcard1"

    .line 276
    .local v1, "prefix_external":Ljava/lang/String;
    const-string v5, "/storage/otg_storage"

    .line 277
    .local v5, "prefix_usbmemory":Ljava/lang/String;
    const-string v4, "/data/safe_contents"

    .line 279
    .local v4, "prefix_secretbox":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 280
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "replacedString":Ljava/lang/String;
    :goto_20
    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 299
    .local v0, "lastIndex":I
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 301
    goto :goto_7

    .line 282
    .end local v0    # "lastIndex":I
    .end local v6    # "replacedString":Ljava/lang/String;
    :cond_2c
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 283
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacedString":Ljava/lang/String;
    goto :goto_20

    .line 285
    .end local v6    # "replacedString":Ljava/lang/String;
    :cond_3b
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 286
    const v7, 0x7f0800cc

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacedString":Ljava/lang/String;
    goto :goto_20

    .line 288
    .end local v6    # "replacedString":Ljava/lang/String;
    :cond_4d
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 289
    const v7, 0x7f0800cf

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacedString":Ljava/lang/String;
    goto :goto_20

    .line 291
    .end local v6    # "replacedString":Ljava/lang/String;
    :cond_5f
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 292
    const v7, 0x7f0800ce

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "replacedString":Ljava/lang/String;
    goto :goto_20

    .line 295
    .end local v6    # "replacedString":Ljava/lang/String;
    :cond_71
    move-object v6, p1

    .restart local v6    # "replacedString":Ljava/lang/String;
    goto :goto_20
.end method

.method public static declared-synchronized setMediaScanPath(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v3, Lcom/pantech/app/music/utils/StorageUtils;

    monitor-enter v3

    :try_start_3
    sget-object v4, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_23

    .line 94
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "musicLibraryPreference"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 95
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 96
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "MediascanningDir"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 98
    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_20

    .line 99
    monitor-exit v3

    return-void

    .line 98
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    .line 93
    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized setMediaScanning(Landroid/content/Context;Z)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fSet"    # Z

    .prologue
    .line 116
    const-class v5, Lcom/pantech/app/music/utils/StorageUtils;

    monitor-enter v5

    if-nez p0, :cond_7

    .line 139
    :goto_5
    monitor-exit v5

    return-void

    .line 118
    :cond_7
    :try_start_7
    sget-object v6, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_4c

    .line 120
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "musicLibraryPreference"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "isMediascanning"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    if-eqz p1, :cond_3f

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 131
    .local v2, "time":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " START MEDIA SCANTIME : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 132
    const-string v4, "MediaScanningStartTime"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 135
    .end local v2    # "time":J
    :cond_3f
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    sget-object v4, Lcom/pantech/app/music/utils/StorageUtils;->mMediaScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    monitor-exit v6

    goto :goto_5

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :catchall_49
    move-exception v4

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 116
    :catchall_4c
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized setMediaScanningTime(Landroid/content/Context;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const-class v5, Lcom/pantech/app/music/utils/StorageUtils;

    monitor-enter v5

    if-nez p0, :cond_7

    .line 156
    :goto_5
    monitor-exit v5

    return-void

    .line 144
    :cond_7
    :try_start_7
    sget-object v6, Lcom/pantech/app/music/utils/StorageUtils;->mediaScanningFlagLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_40

    .line 146
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "musicLibraryPreference"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 147
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 149
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 151
    .local v2, "time":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " UPDATE MEDIA SCANTIME : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 153
    const-string v4, "MediaScanningStartTime"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 155
    monitor-exit v6

    goto :goto_5

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    .end local v2    # "time":J
    :catchall_3d
    move-exception v4

    monitor-exit v6
    :try_end_3f
    .catchall {:try_start_a .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 142
    :catchall_40
    move-exception v4

    monitor-exit v5

    throw v4
.end method
