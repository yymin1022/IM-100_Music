.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$FileStatus;
    }
.end annotation


# static fields
.field private static final SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-string v0, "[\\w%+,./=_-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 114
    .local v2, "result":Z
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_13

    .line 116
    .local v1, "in":Ljava/io/InputStream;
    :try_start_6
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    move-result v2

    .line 118
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 123
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_d
    return v2

    .line 118
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_e
    move-exception v3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_13

    .line 120
    .end local v1    # "in":Ljava/io/InputStream;
    :catch_13
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 9
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "destFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 132
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 135
    :cond_a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_2d

    .line 137
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_11
    new-array v0, v5, [B

    .line 139
    .local v0, "buffer":[B
    :goto_13
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-ltz v1, :cond_2f

    .line 140
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 143
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_1e
    move-exception v5

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 145
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_3e

    .line 148
    :goto_29
    :try_start_29
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v5

    .line 151
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2d
    move-exception v2

    .line 152
    :goto_2e
    return v4

    .line 143
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_2f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_32} :catch_2d

    .line 145
    :try_start_32
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_39} :catch_40

    .line 148
    :goto_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_2d

    .line 150
    const/4 v4, 0x1

    goto :goto_2e

    .line 146
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_3e
    move-exception v6

    goto :goto_29

    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :catch_40
    move-exception v5

    goto :goto_39
.end method

.method public static native getFatVolumeId(Ljava/lang/String;)I
.end method

.method public static native getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z
.end method

.method public static native getPermissions(Ljava/lang/String;[I)I
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 164
    sget-object v0, Landroid/os/FileUtils;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "file"    # Ljava/io/File;
    .param p1, "max"    # I
    .param p2, "ellipsis"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    .local v2, "input":Ljava/io/InputStream;
    :try_start_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 179
    .local v8, "size":J
    if-gtz p1, :cond_13

    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_64

    if-nez p1, :cond_64

    .line 180
    :cond_13
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_21

    if-eqz p1, :cond_20

    int-to-long v10, p1

    cmp-long v10, v8, v10

    if-gez v10, :cond_21

    :cond_20
    long-to-int p1, v8

    .line 181
    :cond_21
    add-int/lit8 v10, p1, 0x1

    new-array v1, v10, [B

    .line 182
    .local v1, "data":[B
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 183
    .local v5, "length":I
    if-gtz v5, :cond_31

    const-string v10, ""
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_e7

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .end local v5    # "length":I
    :goto_30
    return-object v10

    .line 184
    .restart local v5    # "length":I
    :cond_31
    if-gt v5, p1, :cond_3d

    :try_start_33
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v5}, Ljava/lang/String;-><init>([BII)V
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_e7

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_30

    .line 185
    :cond_3d
    if-nez p2, :cond_49

    :try_start_3f
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, p1}, Ljava/lang/String;-><init>([BII)V
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_e7

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_30

    .line 186
    :cond_49
    :try_start_49
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v11, v1, v12, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_49 .. :try_end_5f} :catchall_e7

    move-result-object v10

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_30

    .line 187
    .end local v1    # "data":[B
    .end local v5    # "length":I
    :cond_64
    if-gez p1, :cond_c8

    .line 189
    const/4 v6, 0x0

    .line 190
    .local v6, "rolled":Z
    const/4 v3, 0x0

    .local v3, "last":[B
    const/4 v1, 0x0

    .line 192
    .restart local v1    # "data":[B
    :cond_69
    if-eqz v3, :cond_6c

    const/4 v6, 0x1

    .line 193
    :cond_6c
    move-object v7, v3

    .local v7, "tmp":[B
    move-object v3, v1

    move-object v1, v7

    .line 194
    if-nez v1, :cond_74

    neg-int v10, p1

    :try_start_72
    new-array v1, v10, [B

    .line 195
    :cond_74
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 196
    .local v4, "len":I
    array-length v10, v1

    if-eq v4, v10, :cond_69

    .line 198
    if-nez v3, :cond_85

    if-gtz v4, :cond_85

    const-string v10, ""
    :try_end_81
    .catchall {:try_start_72 .. :try_end_81} :catchall_e7

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_30

    .line 199
    :cond_85
    if-nez v3, :cond_91

    :try_start_87
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v1, v11, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_8d
    .catchall {:try_start_87 .. :try_end_8d} :catchall_e7

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_30

    .line 200
    :cond_91
    if-lez v4, :cond_a0

    .line 201
    const/4 v6, 0x1

    .line 202
    const/4 v10, 0x0

    :try_start_95
    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v3, v4, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    const/4 v10, 0x0

    array-length v11, v3

    sub-int/2addr v11, v4

    invoke-static {v1, v10, v3, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    :cond_a0
    if-eqz p2, :cond_a4

    if-nez v6, :cond_ad

    :cond_a4
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_a9
    .catchall {:try_start_95 .. :try_end_a9} :catchall_e7

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_30

    .line 206
    :cond_ad
    :try_start_ad
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c2
    .catchall {:try_start_ad .. :try_end_c2} :catchall_e7

    move-result-object v10

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_30

    .line 208
    .end local v1    # "data":[B
    .end local v3    # "last":[B
    .end local v4    # "len":I
    .end local v6    # "rolled":Z
    .end local v7    # "tmp":[B
    :cond_c8
    :try_start_c8
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    .local v0, "contents":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    new-array v1, v10, [B

    .line 212
    .restart local v1    # "data":[B
    :cond_d1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 213
    .restart local v4    # "len":I
    if-lez v4, :cond_db

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 214
    :cond_db
    array-length v10, v1

    if-eq v4, v10, :cond_d1

    .line 215
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_e1
    .catchall {:try_start_c8 .. :try_end_e1} :catchall_e7

    move-result-object v10

    .line 218
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_30

    .end local v0    # "contents":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v4    # "len":I
    .end local v8    # "size":J
    :catchall_e7
    move-exception v10

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v10
.end method

.method public static native setPermissions(Ljava/lang/String;III)I
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 2
    .param p0, "stream"    # Ljava/io/FileOutputStream;

    .prologue
    .line 100
    if-eqz p0, :cond_9

    .line 101
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    .line 103
    :cond_9
    const/4 v0, 0x1

    .line 106
    :goto_a
    return v0

    .line 104
    :catch_b
    move-exception v0

    .line 106
    const/4 v0, 0x0

    goto :goto_a
.end method
