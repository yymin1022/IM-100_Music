.class public Lcom/pantech/app/music/list/utility/MusicLibraryUtils;
.super Ljava/lang/Object;
.source "MusicLibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method public static IsDrmAvailable(Ljava/lang/String;)Z
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 712
    const/4 v2, 0x0

    .line 714
    .local v2, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 716
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_39

    const-string v6, ".odf"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 718
    const/16 v3, -0xa

    .line 721
    .local v3, "ret":I
    new-instance v0, Lcom/pantech/app/music/drm/LGUDRMInterface;

    invoke-direct {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;-><init>()V

    .line 722
    .local v0, "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    if-eqz v0, :cond_34

    .line 723
    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMInit()I

    move-result v6

    if-nez v6, :cond_30

    .line 724
    invoke-virtual {v0, p0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMCheckRO(Ljava/lang/String;)I

    move-result v3

    .line 726
    :cond_30
    invoke-virtual {v0}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMDestroy()V

    .line 727
    const/4 v0, 0x0

    .line 730
    :cond_34
    if-nez v3, :cond_37

    .line 757
    .end local v0    # "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    .end local v3    # "ret":I
    :cond_36
    :goto_36
    return v4

    .restart local v0    # "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    .restart local v3    # "ret":I
    :cond_37
    move v4, v5

    .line 730
    goto :goto_36

    .line 732
    .end local v0    # "drmH":Lcom/pantech/app/music/drm/LGUDRMInterface;
    .end local v3    # "ret":I
    :cond_39
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v6

    if-eqz v6, :cond_d0

    if-eqz p0, :cond_d0

    const-string v6, ".dcf"

    invoke-virtual {p0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 734
    new-instance v2, Landroid/media/MediaPlayer;

    .end local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 736
    .restart local v2    # "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_4e
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 737
    const-string v6, "TEST"

    const-string v7, "mMediaPlayer.start()"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_58} :catch_77
    .catchall {:try_start_4e .. :try_end_58} :catchall_b0

    .line 745
    const-string v5, "TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finally mMediaPlayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    if-eqz v2, :cond_36

    .line 748
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 749
    const/4 v2, 0x0

    goto :goto_36

    .line 739
    :catch_77
    move-exception v1

    .line 740
    .local v1, "e":Ljava/io/IOException;
    :try_start_78
    const-string v4, "TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IsDrmAvailable IOException:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_78 .. :try_end_90} :catchall_b0

    .line 745
    const-string v4, "TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finally mMediaPlayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    if-eqz v2, :cond_ae

    .line 748
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 749
    const/4 v2, 0x0

    :cond_ae
    move v4, v5

    goto :goto_36

    .line 745
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_b0
    move-exception v4

    const-string v5, "TEST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finally mMediaPlayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    if-eqz v2, :cond_cf

    .line 748
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 749
    const/4 v2, 0x0

    :cond_cf
    throw v4

    :cond_d0
    move v4, v5

    .line 757
    goto/16 :goto_36
.end method

.method public static IsDrmContents(Landroid/database/Cursor;)Z
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 691
    const-string v1, "_data"

    invoke-static {p0, v1}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static IsDrmContents(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 698
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, ".odf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 707
    :cond_15
    :goto_15
    return v0

    .line 702
    :cond_16
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, ".dcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 707
    :cond_2a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static IsNowPlaying(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 143
    const-string v2, "com.pantech.app.music.preference.playstate"

    const-string v3, "stop"

    invoke-static {p0, v2, v3}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "status":Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v2, "playing"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_14

    .line 150
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static ThreadSleep(J)V
    .registers 4
    .param p0, "sleepTime"    # J

    .prologue
    .line 908
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 915
    :goto_3
    return-void

    .line 910
    :catch_4
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public static addSafeBoxPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .registers 9
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "packakges"    # Ljava/lang/String;

    .prologue
    .line 941
    const-class v2, Landroid/app/ActivityManager;

    .line 946
    .local v2, "methodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v3, "addSafeBoxPackage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 947
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    .line 954
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_19
    return-void

    .line 949
    :catch_1a
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public static checkMask(JJ)Z
    .registers 8
    .param p0, "lockMask"    # J
    .param p2, "mask"    # J

    .prologue
    .line 804
    and-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    .line 806
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static clearMask(JJ)J
    .registers 6
    .param p0, "lockMask"    # J
    .param p2, "mask"    # J

    .prologue
    .line 816
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p2

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static computeDisplayFolderPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 248
    if-nez p1, :cond_37

    const-string v10, ""

    .line 249
    .local v10, "s":Ljava/lang/String;
    :goto_4
    const-string v9, ""

    .line 251
    .local v9, "replacedString":Ljava/lang/String;
    const-string v1, "/storage/emulated/0"

    .line 252
    .local v1, "prefix_internal":Ljava/lang/String;
    const v11, 0x7f0800cd

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "prefix_replace_internal":Ljava/lang/String;
    const-string v2, "/storage/sdcard0"

    .line 256
    .local v2, "prefix_internal2":Ljava/lang/String;
    const-string v0, "/storage/sdcard1"

    .line 257
    .local v0, "prefix_external":Ljava/lang/String;
    const v11, 0x7f0800cc

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, "prefix_replace_external":Ljava/lang/String;
    const-string v8, "/storage/otg_storage"

    .line 260
    .local v8, "prefix_usbmemory":Ljava/lang/String;
    const v11, 0x7f0800cf

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, "prefix_replace_usbmemory":Ljava/lang/String;
    const-string v7, "/data/safe_contents"

    .line 263
    .local v7, "prefix_secretbox":Ljava/lang/String;
    const v11, 0x7f0800ce

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "prefix_replace_secretbox":Ljava/lang/String;
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 267
    invoke-virtual {v10, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 290
    :goto_36
    return-object v9

    .line 248
    .end local v0    # "prefix_external":Ljava/lang/String;
    .end local v1    # "prefix_internal":Ljava/lang/String;
    .end local v2    # "prefix_internal2":Ljava/lang/String;
    .end local v3    # "prefix_replace_external":Ljava/lang/String;
    .end local v4    # "prefix_replace_internal":Ljava/lang/String;
    .end local v5    # "prefix_replace_secretbox":Ljava/lang/String;
    .end local v6    # "prefix_replace_usbmemory":Ljava/lang/String;
    .end local v7    # "prefix_secretbox":Ljava/lang/String;
    .end local v8    # "prefix_usbmemory":Ljava/lang/String;
    .end local v9    # "replacedString":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    :cond_37
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 269
    .restart local v0    # "prefix_external":Ljava/lang/String;
    .restart local v1    # "prefix_internal":Ljava/lang/String;
    .restart local v2    # "prefix_internal2":Ljava/lang/String;
    .restart local v3    # "prefix_replace_external":Ljava/lang/String;
    .restart local v4    # "prefix_replace_internal":Ljava/lang/String;
    .restart local v5    # "prefix_replace_secretbox":Ljava/lang/String;
    .restart local v6    # "prefix_replace_usbmemory":Ljava/lang/String;
    .restart local v7    # "prefix_secretbox":Ljava/lang/String;
    .restart local v8    # "prefix_usbmemory":Ljava/lang/String;
    .restart local v9    # "replacedString":Ljava/lang/String;
    .restart local v10    # "s":Ljava/lang/String;
    :cond_3c
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 271
    invoke-virtual {v10, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_36

    .line 273
    :cond_47
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_52

    .line 275
    invoke-virtual {v10, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_36

    .line 277
    :cond_52
    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5d

    .line 279
    invoke-virtual {v10, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_36

    .line 281
    :cond_5d
    invoke-virtual {v10, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_68

    .line 283
    invoke-virtual {v10, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    goto :goto_36

    .line 287
    :cond_68
    move-object v9, v10

    goto :goto_36
.end method

.method public static display_free_memory(Landroid/content/Context;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v10, 0x400

    .line 295
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 296
    .local v2, "max":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 297
    .local v4, "total":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 299
    .local v0, "free":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MEMORY(USED:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v4, v0

    div-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "K FREE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v8, v0, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "K TOTAL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v8, v4, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "K MAX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    div-long v8, v2, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "K"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public static getActionMenuView(Landroid/app/Activity;)Landroid/view/View;
    .registers 15
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v9, 0x0

    .line 820
    if-nez p0, :cond_5

    move-object v1, v9

    .line 866
    :cond_4
    :goto_4
    return-object v1

    .line 824
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 825
    .local v8, "window":Landroid/view/Window;
    if-nez v8, :cond_d

    move-object v1, v9

    .line 826
    goto :goto_4

    .line 829
    :cond_d
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 830
    .local v3, "decorView":Landroid/view/ViewGroup;
    if-nez v3, :cond_17

    move-object v1, v9

    .line 831
    goto :goto_4

    .line 835
    :cond_17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    packed-switch v10, :pswitch_data_76

    move-object v1, v9

    .line 847
    goto :goto_4

    .line 837
    :pswitch_26
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "split_action_bar"

    const-string v12, "id"

    const-string v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 838
    .local v6, "splitActionBarId":I
    move v5, v6

    .line 849
    .end local v6    # "splitActionBarId":I
    .local v5, "id":I
    :goto_35
    if-nez v5, :cond_49

    move-object v1, v9

    .line 850
    goto :goto_4

    .line 842
    .end local v5    # "id":I
    :pswitch_39
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "action_bar"

    const-string v12, "id"

    const-string v13, "android"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 843
    .local v0, "actionBarId":I
    move v5, v0

    .line 844
    .restart local v5    # "id":I
    goto :goto_35

    .line 853
    .end local v0    # "actionBarId":I
    :cond_49
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 854
    .local v7, "viewGroup":Landroid/view/ViewGroup;
    if-nez v7, :cond_53

    move-object v1, v9

    .line 855
    goto :goto_4

    .line 858
    :cond_53
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 860
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_58
    if-ge v4, v2, :cond_73

    .line 861
    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 862
    .local v1, "actionMenuView":Landroid/view/View;
    if-eqz v1, :cond_70

    const-string v10, "com.android.internal.view.menu.ActionMenuView"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 860
    :cond_70
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .end local v1    # "actionMenuView":Landroid/view/View;
    :cond_73
    move-object v1, v9

    .line 866
    goto :goto_4

    .line 835
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_39
        :pswitch_26
    .end packed-switch
.end method

.method public static getAudioSessionID(Lcom/pantech/app/music/service/IMusicPlaybackService;)I
    .registers 3
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    const/4 v1, -0x1

    .line 594
    if-nez p0, :cond_4

    .line 611
    :goto_3
    return v1

    .line 599
    :cond_4
    :try_start_4
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioSessionId()I
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_e

    move-result v1

    goto :goto_3

    .line 601
    :catch_9
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 605
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_e
    move-exception v0

    .line 608
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getCurrentPlaying(Lcom/pantech/app/music/service/IMusicPlaybackService;)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 3
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    const/4 v1, 0x0

    .line 581
    if-nez p0, :cond_4

    .line 589
    :cond_3
    :goto_3
    return-object v1

    .line 584
    :cond_4
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I

    move-result v0

    .line 586
    .local v0, "currentPosition":I
    if-ltz v0, :cond_3

    .line 589
    invoke-static {p0, v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueue(Lcom/pantech/app/music/service/IMusicPlaybackService;I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    goto :goto_3
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .registers 1

    .prologue
    .line 616
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentChooserResolveList(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/ArrayList;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    const-string v7, "getShareDispItemList()"

    invoke-static {v7}, Lcom/pantech/app/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 329
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v3, "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 333
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "activitiesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1c

    .line 336
    const-string v7, "mShareDispItemList == null"

    invoke-static {v7}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 337
    const/4 v3, 0x0

    .line 364
    .end local v3    # "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;>;"
    :cond_1b
    :goto_1b
    return-object v3

    .line 341
    .restart local v3    # "item":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;>;"
    :cond_1c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 345
    .local v4, "numActivities":I
    new-instance v7, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v7, v5}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 349
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-eq v2, v4, :cond_1b

    .line 351
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 352
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_39

    .line 354
    const-string v7, "resolveInfo == null"

    invoke-static {v7}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_1b

    .line 358
    :cond_39
    new-instance v1, Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {p1, v6}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getResolvedIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v9

    invoke-direct {v1, v7, v8, v9}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V

    .line 361
    .local v1, "dispItem":Lcom/pantech/app/music/list/utility/MusicLibraryUtils$IntentChooserItem;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto :goto_29
.end method

.method public static getOrientation(Landroid/content/Context;)I
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 896
    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 898
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 901
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public static getPlayingType(Lcom/pantech/app/music/service/IMusicPlaybackService;)I
    .registers 4
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 644
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueue(Lcom/pantech/app/music/service/IMusicPlaybackService;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 645
    .local v1, "tmp":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I

    move-result v0

    .line 647
    .local v0, "position":I
    if-eqz v1, :cond_18

    array-length v2, v1

    if-lez v2, :cond_18

    array-length v2, v1

    if-ge v0, v2, :cond_18

    if-ltz v0, :cond_18

    .line 649
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget v2, v2, Lcom/pantech/app/music/list/MusicItemInfo;->nCntType:I

    .line 652
    :goto_17
    return v2

    :cond_18
    const/4 v2, -0x1

    goto :goto_17
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 55
    if-eqz p0, :cond_d

    .line 57
    const-string v1, "musicLibraryPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 58
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 61
    .end local v0    # "preference":Landroid/content/SharedPreferences;
    .end local p2    # "defValue":I
    :cond_d
    return p2
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 88
    if-eqz p0, :cond_d

    .line 90
    const-string v1, "musicLibraryPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 94
    .end local v0    # "preference":Landroid/content/SharedPreferences;
    .end local p2    # "defValue":J
    :cond_d
    return-wide p2
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p0, :cond_d

    .line 79
    const-string v1, "musicLibraryPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 83
    .end local v0    # "preference":Landroid/content/SharedPreferences;
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_d
    return-object p2
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 66
    if-eqz p0, :cond_d

    .line 68
    const-string v1, "musicLibraryPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 72
    .end local v0    # "preference":Landroid/content/SharedPreferences;
    .end local p2    # "defValue":Z
    :cond_d
    return p2
.end method

.method private static getResolvedIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .registers 7
    .param p0, "sendIntent"    # Landroid/content/Intent;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 319
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 320
    .local v1, "resolvedIntent":Landroid/content/Intent;
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 321
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 322
    return-object v1
.end method

.method public static getSearchWords(Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 9
    .param p0, "keywords"    # Ljava/lang/String;
    .param p1, "whenUI"    # Z

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_75

    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "searchWords":[Ljava/lang/String;
    :goto_14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, "keywordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, v4

    .line 198
    .local v3, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    if-ge v0, v3, :cond_79

    .line 201
    aget-object v5, v4, v0

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    .line 203
    aget-object v5, v4, v0

    invoke-static {v5}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "key":Ljava/lang/String;
    if-nez p1, :cond_6f

    .line 206
    const-string v5, "#"

    const-string v6, "##"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v5, "\\"

    const-string v6, "#\\"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 208
    const-string v5, "%"

    const-string v6, "#%"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v5, "_"

    const-string v6, "#_"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 210
    const-string v5, "-"

    const-string v6, "#-"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v5, "$"

    const-string v6, "#$"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 212
    const-string v5, "\""

    const-string v6, "#\""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v5, "\'"

    const-string v6, "#\'\'"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 216
    :cond_6f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v1    # "key":Ljava/lang/String;
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 193
    .end local v0    # "i":I
    .end local v2    # "keywordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "len":I
    .end local v4    # "searchWords":[Ljava/lang/String;
    :cond_75
    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    goto :goto_14

    .line 237
    .restart local v0    # "i":I
    .restart local v2    # "keywordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "len":I
    .restart local v4    # "searchWords":[Ljava/lang/String;
    :cond_79
    const-string v5, "VMusicSearchTag"

    const-string v6, "SearchKeywords:"

    invoke-static {v5, v6, v2}, Lcom/pantech/app/music/utils/MLog;->list(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 239
    if-eqz v2, :cond_95

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_95

    .line 241
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 244
    :goto_94
    return-object v5

    :cond_95
    const/4 v5, 0x0

    goto :goto_94
.end method

.method public static getServiceQueue(Lcom/pantech/app/music/service/IMusicPlaybackService;I)Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 6
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 525
    if-nez p0, :cond_4

    .line 558
    :goto_3
    return-object v2

    .line 530
    :cond_4
    :try_start_4
    invoke-interface {p0, p1}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_7} :catch_e

    move-result-object v2

    .line 532
    .local v2, "item":Lcom/pantech/app/music/list/MusicItemInfo;
    goto :goto_3

    .line 534
    .end local v2    # "item":Lcom/pantech/app/music/list/MusicItemInfo;
    :catch_9
    move-exception v0

    .line 537
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 539
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_e
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 545
    :try_start_12
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v3

    .line 546
    .local v3, "tmp":[Lcom/pantech/app/music/list/MusicItemInfo;
    aget-object v2, v3, p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_1e

    goto :goto_3

    .line 548
    .end local v3    # "tmp":[Lcom/pantech/app/music/list/MusicItemInfo;
    :catch_19
    move-exception v1

    .line 550
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_3

    .line 552
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v1

    .line 554
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_3
.end method

.method public static getServiceQueue(Lcom/pantech/app/music/service/IMusicPlaybackService;)[Lcom/pantech/app/music/list/MusicItemInfo;
    .registers 3
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    const/4 v1, 0x0

    .line 563
    if-nez p0, :cond_4

    .line 576
    :goto_3
    return-object v1

    .line 568
    :cond_4
    :try_start_4
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 570
    :catch_9
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I
    .registers 3
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    const/4 v1, -0x1

    .line 507
    if-nez p0, :cond_4

    .line 520
    :goto_3
    return v1

    .line 512
    :cond_4
    :try_start_4
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueuePosition()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    goto :goto_3

    .line 514
    :catch_9
    move-exception v0

    .line 517
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static getTextString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "szText"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "szConvertedKeywords":Ljava/lang/String;
    if-eqz p0, :cond_7

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_7
    invoke-static {v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->removeLongSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoiceActionTextString(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "szText"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "szTrimed":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 166
    .local v2, "szStringLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_2d

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 173
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static guarentee1SecSleep(J)V
    .registers 8
    .param p0, "startTime"    # J

    .prologue
    .line 919
    const-wide/16 v2, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p0

    sub-long v0, v2, v4

    .line 920
    .local v0, "sleepTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_28

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 924
    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->ThreadSleep(J)V

    .line 926
    :cond_28
    return-void
.end method

.method public static guarenteeNSecSleep(JI)V
    .registers 9
    .param p0, "startTime"    # J
    .param p2, "guarenteeTime"    # I

    .prologue
    .line 930
    int-to-long v2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p0

    sub-long v0, v2, v4

    .line 931
    .local v0, "sleepTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_27

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 935
    invoke-static {v0, v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->ThreadSleep(J)V

    .line 937
    :cond_27
    return-void
.end method

.method public static is3GDataConnected(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 456
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 458
    .local v1, "m_NetConnectMgr":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_c

    .line 470
    :cond_b
    :goto_b
    return v2

    .line 460
    :cond_c
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 462
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_b

    .line 464
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 466
    const-string v2, "TRUE:"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 467
    const/4 v2, 0x1

    goto :goto_b
.end method

.method public static isAvailableContents(Ljava/lang/String;)Z
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 762
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 764
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_5
    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 765
    const-string v2, "mMediaPlayer.start()"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_2b
    .catchall {:try_start_5 .. :try_end_d} :catchall_60

    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finally mMediaPlayer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 775
    if-eqz v1, :cond_29

    .line 776
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 777
    const/4 v1, 0x0

    .line 781
    :cond_29
    const/4 v2, 0x1

    :cond_2a
    :goto_2a
    return v2

    .line 767
    :catch_2b
    move-exception v0

    .line 768
    .local v0, "e":Ljava/io/IOException;
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IsDrmAvailable IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_60

    .line 769
    const/4 v2, 0x0

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finally mMediaPlayer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 775
    if-eqz v1, :cond_2a

    .line 776
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 777
    const/4 v1, 0x0

    goto :goto_2a

    .line 773
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finally mMediaPlayer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 775
    if-eqz v1, :cond_7d

    .line 776
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 777
    const/4 v1, 0x0

    :cond_7d
    throw v2
.end method

.method public static isAvailableSimStatus(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 871
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 872
    .local v3, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 873
    .local v1, "simState":I
    const-string v2, "NA"

    .line 874
    .local v2, "simStateString":Ljava/lang/String;
    const/4 v0, 0x1

    .line 876
    .local v0, "simAvailAbleStatus":Z
    packed-switch v1, :pswitch_data_42

    .line 884
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE_Not_Available>>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 885
    const/4 v0, 0x0

    .line 889
    :goto_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 891
    return v0

    .line 879
    :pswitch_3d
    const-string v2, "STATE_READY"

    .line 880
    const/4 v0, 0x1

    .line 881
    goto :goto_26

    .line 876
    nop

    :pswitch_data_42
    .packed-switch 0x5
        :pswitch_3d
    .end packed-switch
.end method

.method public static isCallState(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, "callstate":I
    const-string v1, "phone"

    .line 1030
    .local v1, "srvName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1031
    .local v2, "telephoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1032
    const/4 v3, 0x2

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    :goto_11
    return v3

    :cond_12
    const/4 v3, 0x0

    goto :goto_11
.end method

.method public static isDrmDisableContents(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/database/Cursor;I)Z
    .registers 6
    .param p0, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 788
    .local v0, "startPlayback":Z
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->isUBoxSongCategory()Z

    move-result v2

    if-nez v2, :cond_29

    .line 790
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 792
    const-string v2, "_data"

    invoke-static {p1, v2}, Lcom/pantech/app/music/list/db/CursorUtils;->getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "szPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmContents(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v1}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->IsDrmAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 795
    const/4 v0, 0x1

    .line 799
    .end local v1    # "szPath":Ljava/lang/String;
    :cond_29
    return v0
.end method

.method public static isExternalStorageReady()Z
    .registers 2

    .prologue
    .line 621
    invoke-static {}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "status":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isServicePlaying(Lcom/pantech/app/music/service/IMusicPlaybackService;)Z
    .registers 4
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    const/4 v1, 0x0

    .line 668
    if-nez p0, :cond_4

    .line 684
    :cond_3
    :goto_3
    return v1

    .line 671
    :cond_4
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->isServiceQueueExist(Lcom/pantech/app/music/service/IMusicPlaybackService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    :try_start_a
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_f

    move-result v1

    goto :goto_3

    .line 678
    :catch_f
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static isServiceQueueCount(Lcom/pantech/app/music/service/IMusicPlaybackService;)I
    .registers 4
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 657
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueue(Lcom/pantech/app/music/service/IMusicPlaybackService;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 658
    .local v1, "tmp":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I

    move-result v0

    .line 660
    .local v0, "position":I
    if-eqz v1, :cond_c

    if-gez v0, :cond_e

    .line 661
    :cond_c
    const/4 v2, 0x0

    .line 663
    :goto_d
    return v2

    :cond_e
    array-length v2, v1

    goto :goto_d
.end method

.method public static isServiceQueueExist(Lcom/pantech/app/music/service/IMusicPlaybackService;)Z
    .registers 4
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 628
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueue(Lcom/pantech/app/music/service/IMusicPlaybackService;)[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v1

    .line 629
    .local v1, "tmp":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-static {p0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I

    move-result v0

    .line 631
    .local v0, "position":I
    if-eqz v1, :cond_1a

    array-length v2, v1

    if-lez v2, :cond_1a

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    if-ltz v0, :cond_1a

    .line 633
    invoke-static {}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->isExternalStorageReady()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 635
    const/4 v2, 0x1

    .line 639
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public static isWIFIDataConnected(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 475
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 477
    .local v1, "m_NetConnectMgr":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_d

    .line 489
    :cond_c
    :goto_c
    return v2

    .line 479
    :cond_d
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 481
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_c

    .line 483
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 485
    const-string v2, "TRUE:"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    move v2, v3

    .line 486
    goto :goto_c
.end method

.method public static registerDataNetworkChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 494
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 495
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 497
    if-eqz p0, :cond_f

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 498
    :cond_f
    return-void
.end method

.method public static removeLongSpace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "szSearchKeyword"    # Ljava/lang/String;

    .prologue
    .line 178
    if-nez p0, :cond_5

    .line 179
    const-string p0, ""

    .line 186
    :cond_4
    :goto_4
    return-object p0

    .line 183
    :cond_5
    const-string v0, "  "

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 184
    if-eqz p0, :cond_4

    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto :goto_4
.end method

.method public static removeSafeBoxPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .registers 9
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "packakges"    # Ljava/lang/String;

    .prologue
    .line 958
    const-class v2, Landroid/app/ActivityManager;

    .line 963
    .local v2, "methodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v3, "removeSafeBoxPackage"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 964
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    .line 971
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_19
    return-void

    .line 966
    :catch_1a
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public static setDisableRearTouchEvent(Landroid/widget/AbsListView;Z)V
    .registers 9
    .param p0, "listview"    # Landroid/widget/AbsListView;
    .param p1, "flag"    # Z

    .prologue
    .line 975
    const-class v2, Landroid/widget/AbsListView;

    .line 980
    .local v2, "methodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v3, "setDisableRearTouchEvent"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 981
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 988
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_1d
    return-void

    .line 983
    :catch_1e
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public static setFastScrollIncludeChildview(Landroid/widget/AbsListView;Z)V
    .registers 9
    .param p0, "listview"    # Landroid/widget/AbsListView;
    .param p1, "flag"    # Z

    .prologue
    .line 992
    const-class v2, Landroid/widget/ExpandableListView;

    .line 997
    .local v2, "methodClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v3, "setFastScrollIncludeChild"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 998
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 1005
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_1d
    return-void

    .line 1000
    :catch_1e
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method public static setMask(JJ)J
    .registers 6
    .param p0, "lockMask"    # J
    .param p2, "mask"    # J

    .prologue
    .line 811
    or-long v0, p0, p2

    return-wide v0
.end method

.method public static setPreference(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 110
    if-eqz p0, :cond_13

    .line 112
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 113
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :cond_13
    return-void
.end method

.method public static setPreference(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 121
    if-eqz p0, :cond_13

    .line 123
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 124
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :cond_13
    return-void
.end method

.method public static setPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p0, :cond_13

    .line 101
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :cond_13
    return-void
.end method

.method public static setPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 132
    if-eqz p0, :cond_13

    .line 134
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :cond_13
    return-void
.end method

.method public static startMediaLink(Landroid/content/Context;IJ)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item_position"    # I
    .param p2, "seek_position"    # J

    .prologue
    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaLink("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.app.dlna.DLNA_LINKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, "launchMediaLink":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.pantech.app.dlna"

    const-string v3, "com.pantech.app.dlna.device.LinkageDeviceSelectActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1040
    const-string v1, "item_position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1041
    const-string v1, "seek_position"

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1043
    if-eqz p0, :cond_55

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 1045
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1051
    :goto_54
    return-void

    .line 1049
    :cond_55
    const-string v1, "no activity for launch intent"

    invoke-static {p0, v1}, Lcom/pantech/app/music/list/utility/ListUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_54
.end method

.method public static unregisterDataNetworkChangeReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 502
    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 503
    :cond_5
    return-void
.end method
