.class public Lcom/pantech/audiotag/common/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final MAX_WRITABLE_BASE_SIZE:I = 0xa00000

.field public static final TEMP_FILENAME_LENGTH_MAX:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseFilenameForTempFile(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/16 v2, 0x14

    .line 20
    invoke-static {p0}, Lcom/pantech/audiotag/common/util/FileUtil;->getMinNameForTempFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v2, :cond_d

    .line 27
    .end local v0    # "filename":Ljava/lang/String;
    :goto_c
    return-object v0

    .restart local v0    # "filename":Ljava/lang/String;
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getMinNameForTempFile(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-static {p0}, Lcom/pantech/audiotag/common/util/FileUtil;->getOriginalFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_d

    .line 53
    .end local v0    # "s":Ljava/lang/String;
    :cond_c
    :goto_c
    return-object v0

    .line 40
    .restart local v0    # "s":Ljava/lang/String;
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_27

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 44
    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_41

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 48
    :cond_41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static getOriginalFilename(Ljava/io/File;)Ljava/lang/String;
    .registers 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "index":I
    if-lez v0, :cond_1a

    .line 67
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 70
    :goto_19
    return-object v1

    :cond_1a
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method

.method public static isFileAvailable(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Lcom/pantech/audiotag/exception/WriteException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 85
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_e
    new-instance v0, Lcom/pantech/audiotag/exception/WriteException;

    const-string v1, "File can\'t access"

    invoke-direct {v0, v1}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static replaceFile(Ljava/io/File;Ljava/io/File;)V
    .registers 11
    .param p0, "originalFile"    # Ljava/io/File;
    .param p1, "newFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    const-string v6, "replaceFile()"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 276
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "originalFilePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/pantech/audiotag/common/util/FileUtil;->getOriginalFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".old"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v2, "originalFileBackup":Ljava/io/File;
    const/4 v0, 0x1

    .line 282
    .local v0, "count":I
    :goto_2f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_65

    .line 288
    invoke-virtual {p0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 290
    .local v4, "renameOriginalResult":Z
    if-nez v4, :cond_88

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 293
    new-instance v6, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Write fail to rename original file to backup path: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 294
    const-string v8, " name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 293
    invoke-direct {v6, v7}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 284
    .end local v4    # "renameOriginalResult":Z
    :cond_65
    new-instance v2, Ljava/io/File;

    .end local v2    # "originalFileBackup":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/pantech/audiotag/common/util/FileUtil;->getOriginalFilename(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".old"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .restart local v2    # "originalFileBackup":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 298
    .restart local v4    # "renameOriginalResult":Z
    :cond_88
    invoke-virtual {p1, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    .line 299
    .local v5, "renameResult":Z
    if-nez v5, :cond_104

    .line 303
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_ad

    .line 305
    new-instance v6, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Write fail new file doen\'t exist. path: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 309
    :cond_ad
    invoke-virtual {v2, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 311
    if-nez v4, :cond_da

    .line 313
    new-instance v6, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Write fail rename original backup to original. path: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 314
    const-string v8, "name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 313
    invoke-direct {v6, v7}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :cond_da
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 318
    new-instance v6, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Write fail to rename to original file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 319
    const-string v8, "name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-direct {v6, v7}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 324
    :cond_104
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    .line 326
    .local v1, "deleteResult":Z
    if-nez v1, :cond_131

    .line 329
    new-instance v6, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Write fail to warning unable to delete backup file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 330
    const-string v8, "name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 329
    invoke-direct {v6, v7}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 333
    :cond_131
    return-void
.end method

.method public static writeOnTempFile(Ljava/io/File;Ljava/nio/ByteBuffer;J)V
    .registers 30
    .param p0, "file"    # Ljava/io/File;
    .param p1, "newBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "audioStart_or_restDataStart"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "writeOnTempFile() audioStart_or_restDataStart: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 103
    const/4 v6, 0x0

    .line 111
    .local v6, "fcIn":Ljava/nio/channels/FileChannel;
    :try_start_19
    invoke-static/range {p0 .. p0}, Lcom/pantech/audiotag/common/util/FileUtil;->getBaseFilenameForTempFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v22

    const-string v23, ".new"

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v16

    .line 112
    .local v16, "paddedFile":Ljava/io/File;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Created temp file:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4b} :catch_10e

    .line 122
    :try_start_4b
    new-instance v22, Ljava/io/FileOutputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 123
    .local v7, "fcOut":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 124
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_60
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_60} :catch_12e

    .line 135
    :try_start_60
    new-instance v22, Ljava/io/FileInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v22

    sub-long v18, v22, p2

    .line 140
    .local v18, "restLength":J
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "writeOnTempFile() restLength: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 144
    const-wide/32 v22, 0xa00000

    cmp-long v22, v18, v22

    if-gtz v22, :cond_137

    .line 146
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 147
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 148
    .local v4, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 149
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 152
    .local v20, "restWrite":J
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "restWrite: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 153
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "restLength: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v22 .. v23}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 155
    const/4 v4, 0x0

    .line 157
    cmp-long v22, v20, v18

    if-eqz v22, :cond_1c5

    .line 159
    if-eqz v16, :cond_e7

    .line 160
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 162
    :cond_e7
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "It is differnt audioWrite size to audiolength"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_ef} :catch_ef
    .catchall {:try_start_60 .. :try_end_ef} :catchall_f6

    .line 230
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    .end local v18    # "restLength":J
    .end local v20    # "restWrite":J
    :catch_ef
    move-exception v5

    .line 232
    .local v5, "e":Ljava/lang/Exception;
    if-eqz v16, :cond_f5

    .line 233
    :try_start_f2
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 235
    :cond_f5
    throw v5
    :try_end_f6
    .catchall {:try_start_f2 .. :try_end_f6} :catchall_f6

    .line 238
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_f6
    move-exception v22

    .line 241
    if-eqz v6, :cond_102

    .line 243
    :try_start_f9
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v23

    if-eqz v23, :cond_102

    .line 245
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 249
    :cond_102
    if-eqz v7, :cond_10d

    .line 251
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v23

    if-eqz v23, :cond_10d

    .line 253
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_10d} :catch_202

    .line 261
    :cond_10d
    throw v22

    .line 114
    .end local v7    # "fcOut":Ljava/nio/channels/FileChannel;
    .end local v16    # "paddedFile":Ljava/io/File;
    :catch_10e
    move-exception v5

    .line 116
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v22, Lcom/pantech/audiotag/exception/WriteException;

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Can not make temp file: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 126
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v16    # "paddedFile":Ljava/io/File;
    :catch_12e
    move-exception v9

    .line 128
    .local v9, "ioe":Ljava/io/FileNotFoundException;
    new-instance v22, Lcom/pantech/audiotag/exception/WriteException;

    const-string v23, "Can not modify temp file in folder"

    invoke-direct/range {v22 .. v23}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 167
    .end local v9    # "ioe":Ljava/io/FileNotFoundException;
    .restart local v7    # "fcOut":Ljava/nio/channels/FileChannel;
    .restart local v18    # "restLength":J
    :cond_137
    :try_start_137
    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 169
    const-wide/32 v22, 0xa00000

    div-long v14, v18, v22

    .line 170
    .local v14, "noOfChunks":J
    const-wide/32 v22, 0xa00000

    rem-long v10, v18, v22

    .line 171
    .local v10, "lastChunkSize":J
    const-wide/16 v20, 0x0

    .line 173
    .restart local v20    # "restWrite":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_149
    int-to-long v0, v8

    move-wide/from16 v22, v0

    cmp-long v22, v22, v14

    if-ltz v22, :cond_1ab

    .line 184
    long-to-int v0, v10

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 185
    .local v17, "restBB":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 186
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 188
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    .line 190
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "audioWrite: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 191
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "audiolength: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 193
    const/16 v17, 0x0

    .line 195
    cmp-long v22, v20, v18

    if-eqz v22, :cond_1c5

    .line 197
    if-eqz v16, :cond_1a3

    .line 198
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 200
    :cond_1a3
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "It is differnt audioWrite size to audiolength"

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 175
    .end local v17    # "restBB":Ljava/nio/ByteBuffer;
    :cond_1ab
    const/high16 v22, 0xa00000

    invoke-static/range {v22 .. v22}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 176
    .restart local v4    # "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 177
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 179
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    .line 173
    add-int/lit8 v8, v8, 0x1

    goto :goto_149

    .line 205
    .end local v4    # "bb":Ljava/nio/ByteBuffer;
    .end local v8    # "i":I
    .end local v10    # "lastChunkSize":J
    .end local v14    # "noOfChunks":J
    :cond_1c5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    .line 208
    .local v12, "lastModified":J
    if-eqz v6, :cond_1d4

    .line 210
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v22

    if-eqz v22, :cond_1d4

    .line 212
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 216
    :cond_1d4
    if-eqz v7, :cond_1df

    .line 218
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v22

    if-eqz v22, :cond_1df

    .line 220
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 225
    :cond_1df
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/pantech/audiotag/common/util/FileUtil;->replaceFile(Ljava/io/File;Ljava/io/File;)V

    .line 228
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_1eb} :catch_ef
    .catchall {:try_start_137 .. :try_end_1eb} :catchall_f6

    .line 241
    if-eqz v6, :cond_1f6

    .line 243
    :try_start_1ed
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v22

    if-eqz v22, :cond_1f6

    .line 245
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 249
    :cond_1f6
    if-eqz v7, :cond_201

    .line 251
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v22

    if-eqz v22, :cond_201

    .line 253
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_201
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_201} :catch_20b

    .line 262
    :cond_201
    return-void

    .line 257
    .end local v12    # "lastModified":J
    .end local v18    # "restLength":J
    .end local v20    # "restWrite":J
    :catch_202
    move-exception v5

    .line 259
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v22, Lcom/pantech/audiotag/exception/WriteException;

    const-string v23, "Closing channels and locks error"

    invoke-direct/range {v22 .. v23}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 257
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "lastModified":J
    .restart local v18    # "restLength":J
    .restart local v20    # "restWrite":J
    :catch_20b
    move-exception v5

    .line 259
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v22, Lcom/pantech/audiotag/exception/WriteException;

    const-string v23, "Closing channels and locks error"

    invoke-direct/range {v22 .. v23}, Lcom/pantech/audiotag/exception/WriteException;-><init>(Ljava/lang/String;)V

    throw v22
.end method
