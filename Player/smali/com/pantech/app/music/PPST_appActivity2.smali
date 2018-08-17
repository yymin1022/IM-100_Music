.class public Lcom/pantech/app/music/PPST_appActivity2;
.super Landroid/app/Activity;
.source "PPST_appActivity2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/PPST_appActivity2$BackThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PPST_FileCopy"


# instance fields
.field private COPY_BUFFER_SIZE:I

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FILENAME:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_COPY:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_GET_SIZE:Ljava/lang/String;

.field private PPST_BACKUP_RESTORE_EXTRA_VALUE_TARTGET_FILE_NAME:Ljava/lang/String;

.field private PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_RESUlT:Ljava/lang/String;

.field private PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_SIZE:Ljava/lang/String;

.field private PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

.field private file_name:Ljava/lang/String;

.field private funtion_name:Ljava/lang/String;

.field private retrnString:Ljava/lang/String;

.field private sizeforcopy:J

.field private target_file_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->COPY_BUFFER_SIZE:I

    .line 25
    const-string v0, "fileName"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FILENAME:Ljava/lang/String;

    .line 26
    const-string v0, "funtion"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION:Ljava/lang/String;

    .line 27
    const-string v0, "getSIZE"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_GET_SIZE:Ljava/lang/String;

    .line 28
    const-string v0, "copy"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_COPY:Ljava/lang/String;

    .line 29
    const-string v0, "com.android.ppst.send_copy"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

    .line 30
    const-string v0, "size"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_SIZE:Ljava/lang/String;

    .line 31
    const-string v0, "result"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_RESUlT:Ljava/lang/String;

    .line 32
    const-string v0, "targetFileName"

    iput-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_TARTGET_FILE_NAME:Ljava/lang/String;

    .line 293
    return-void
.end method

.method private SendTotalResultBroadcast(Ljava/lang/String;J)V
    .registers 10
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "copySize"    # J

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_RESUlT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BK_RS_BROAD_CAST_EXTRA_VALUE_SIZE:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/PPST_appActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    const-string v2, "PPST_FileCopy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BK_RS_BROAD_CAST_SEND_COPY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 215
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_38
    return-void

    .line 210
    :catch_39
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PPST_FileCopy"

    const-string v3, "error PPST_BK_RS_BROAD_CAST_SEND_SIZE"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method static synthetic access$000(Lcom/pantech/app/music/PPST_appActivity2;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->sizeforcopy:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/pantech/app/music/PPST_appActivity2;J)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/pantech/app/music/PPST_appActivity2;->sizeforcopy:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->retrnString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/pantech/app/music/PPST_appActivity2;->retrnString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_GET_SIZE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->funtion_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/pantech/app/music/PPST_appActivity2;->getTargetSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/PPST_appActivity2;->SendTotalResultBroadcast(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION_COPY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/pantech/app/music/PPST_appActivity2;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pantech/app/music/PPST_appActivity2;->target_file_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/pantech/app/music/PPST_appActivity2;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/PPST_appActivity2;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/PPST_appActivity2;->startCopy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private changePermission(Ljava/lang/String;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "modFile":Ljava/io/File;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 162
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 163
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 169
    .end local v1    # "modFile":Ljava/io/File;
    :goto_14
    return-void

    .line 165
    :catch_15
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PPST_FileCopy"

    const-string v3, "error changePermission."

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_14
.end method

.method private copyFileInDir(Ljava/io/File;Ljava/lang/String;)Z
    .registers 15
    .param p1, "src_dir"    # Ljava/io/File;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v7, 0x1

    .line 96
    .local v7, "ret":Z
    if-eqz p1, :cond_76

    .line 99
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_9
    if-ge v5, v6, :cond_3a

    aget-object v4, v0, v5

    .line 101
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 103
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, "strSrcFile":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v4, v10}, Lcom/pantech/app/music/PPST_appActivity2;->copyFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    .line 106
    if-nez v7, :cond_6d

    .line 133
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v9    # "strSrcFile":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return v7

    .line 108
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_3b
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_6d

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "strSrcDirName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "direcName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, "dirFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 119
    invoke-direct {p0, v2}, Lcom/pantech/app/music/PPST_appActivity2;->changePermission(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v4, v2}, Lcom/pantech/app/music/PPST_appActivity2;->copyFileInDir(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6a} :catch_70

    move-result v7

    .line 123
    if-eqz v7, :cond_3a

    .line 99
    .end local v1    # "dirFile":Ljava/io/File;
    .end local v2    # "direcName":Ljava/lang/String;
    .end local v8    # "strSrcDirName":Ljava/lang/String;
    :cond_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 126
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_70
    move-exception v3

    .line 127
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const/4 v7, 0x0

    .line 129
    goto :goto_3a

    .line 131
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_76
    const/4 v7, 0x0

    goto :goto_3a
.end method

.method private getTargetSize(Ljava/lang/String;)J
    .registers 14
    .param p1, "srcFilePath"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 173
    const-wide/16 v6, 0x0

    .line 174
    .local v6, "totalsize":J
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v4, "srcFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_11

    move-wide v6, v8

    .line 198
    .end local v4    # "srcFile":Ljava/io/File;
    .end local v6    # "totalsize":J
    :cond_10
    :goto_10
    return-wide v6

    .line 178
    .restart local v4    # "srcFile":Ljava/io/File;
    .restart local v6    # "totalsize":J
    :cond_11
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 179
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_10

    .line 180
    :cond_1d
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 181
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_29
    if-ge v2, v3, :cond_10

    aget-object v5, v0, v2

    .line 182
    .local v5, "subfile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_35

    move-wide v6, v8

    .line 183
    goto :goto_10

    .line 184
    :cond_35
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 185
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 181
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 187
    :cond_43
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_40

    .line 188
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/pantech/app/music/PPST_appActivity2;->getTargetSize(Ljava/lang/String;)J
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_50} :catch_53

    move-result-wide v10

    add-long/2addr v6, v10

    goto :goto_40

    .line 195
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "srcFile":Ljava/io/File;
    .end local v5    # "subfile":Ljava/io/File;
    :catch_53
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "PPST_FileCopy"

    const-string v9, "error getTargetSize()"

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    const-wide/16 v6, -0x1

    goto :goto_10
.end method

.method private sendScanFile(Ljava/lang/String;)V
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 142
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/PPST_appActivity2;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    const-string v3, "PPST_FileCopy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send broadcast Path : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 152
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_3c
    return-void

    .line 148
    :catch_3d
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PPST_FileCopy"

    const-string v4, "error activity file scan."

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method private startCopy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "srcFileName"    # Ljava/lang/String;
    .param p2, "targetFileName"    # Ljava/lang/String;

    .prologue
    .line 255
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, "srcfile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 257
    invoke-direct {p0, v2, p2}, Lcom/pantech/app/music/PPST_appActivity2;->copyFileInDir(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 263
    .local v0, "bResult":Z
    :goto_f
    const/4 v2, 0x0

    .line 266
    if-eqz v0, :cond_22

    const-string v1, "Success"

    .line 269
    .local v1, "result":Ljava/lang/String;
    :goto_14
    return-object v1

    .line 258
    .end local v0    # "bResult":Z
    .end local v1    # "result":Ljava/lang/String;
    :cond_15
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 259
    invoke-virtual {p0, v2, p2}, Lcom/pantech/app/music/PPST_appActivity2;->copyFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .restart local v0    # "bResult":Z
    goto :goto_f

    .line 261
    .end local v0    # "bResult":Z
    :cond_20
    const/4 v0, 0x0

    .restart local v0    # "bResult":Z
    goto :goto_f

    .line 267
    :cond_22
    const-string v1, "Fail"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_14
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/lang/String;)Z
    .registers 16
    .param p1, "file"    # Ljava/io/File;
    .param p2, "save_file"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v11, 0x0

    .line 42
    .local v11, "result":Z
    const/4 v2, 0x0

    .line 43
    .local v2, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 44
    .local v6, "newfos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 45
    .local v4, "inBuffer":Ljava/io/BufferedInputStream;
    const/4 v8, 0x0

    .line 47
    .local v8, "outBuffer":Ljava/io/BufferedOutputStream;
    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8d

    .line 50
    :try_start_d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_a1
    .catchall {:try_start_d .. :try_end_12} :catchall_79

    .line 51
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_12
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_a3
    .catchall {:try_start_12 .. :try_end_17} :catchall_8f

    .line 52
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .local v7, "newfos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 54
    .local v0, "buffer":[B
    :try_start_18
    iget v12, p0, Lcom/pantech/app/music/PPST_appActivity2;->COPY_BUFFER_SIZE:I

    new-array v0, v12, [B

    .line 55
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_a6
    .catchall {:try_start_18 .. :try_end_21} :catchall_92

    .line 56
    .end local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    .local v5, "inBuffer":Ljava/io/BufferedInputStream;
    :try_start_21
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_aa
    .catchall {:try_start_21 .. :try_end_26} :catchall_96

    .line 58
    .end local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    .local v9, "outBuffer":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 60
    .local v10, "readDatacount":I
    :goto_27
    :try_start_27
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .line 61
    const/4 v12, -0x1

    if-ne v10, v12, :cond_4e

    .line 65
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/FileDescriptor;->sync()V

    .line 66
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p2}, Lcom/pantech/app/music/PPST_appActivity2;->sendScanFile(Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p2}, Lcom/pantech/app/music/PPST_appActivity2;->changePermission(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3c} :catch_53
    .catchall {:try_start_27 .. :try_end_3c} :catchall_9b

    .line 73
    const/4 v11, 0x1

    .line 79
    :try_start_3d
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 80
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 81
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 82
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_49} :catch_6f

    move-object v8, v9

    .end local v9    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 91
    .end local v0    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "readDatacount":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_4d
    return v11

    .line 62
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .end local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v9    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v10    # "readDatacount":I
    :cond_4e
    const/4 v12, 0x0

    :try_start_4f
    invoke-virtual {v9, v0, v12, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53
    .catchall {:try_start_4f .. :try_end_52} :catchall_9b

    goto :goto_27

    .line 74
    :catch_53
    move-exception v1

    move-object v8, v9

    .end local v9    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 75
    .end local v0    # "buffer":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "readDatacount":I
    .local v1, "e":Ljava/io/IOException;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_79

    .line 76
    const/4 v11, 0x0

    .line 79
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 80
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 81
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_69

    goto :goto_4d

    .line 83
    :catch_69
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const/4 v11, 0x0

    .line 87
    goto :goto_4d

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .end local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v9    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v10    # "readDatacount":I
    :catch_6f
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const/4 v11, 0x0

    move-object v8, v9

    .end local v9    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 87
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4d

    .line 78
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v10    # "readDatacount":I
    :catchall_79
    move-exception v12

    .line 79
    :goto_7a
    :try_start_7a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 80
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 81
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 82
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_86} :catch_87

    .line 86
    :goto_86
    throw v12

    .line 83
    :catch_87
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    const/4 v11, 0x0

    goto :goto_86

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8d
    const/4 v11, 0x0

    goto :goto_4d

    .line 78
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_8f
    move-exception v12

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7a

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "newfos":Ljava/io/FileOutputStream;
    :catchall_92
    move-exception v12

    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7a

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "newfos":Ljava/io/FileOutputStream;
    :catchall_96
    move-exception v12

    move-object v4, v5

    .end local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7a

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .end local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v9    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v10    # "readDatacount":I
    :catchall_9b
    move-exception v12

    move-object v8, v9

    .end local v9    # "outBuffer":Ljava/io/BufferedOutputStream;
    .restart local v8    # "outBuffer":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_7a

    .line 74
    .end local v0    # "buffer":[B
    .end local v10    # "readDatacount":I
    :catch_a1
    move-exception v1

    goto :goto_58

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_a3
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_58

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "newfos":Ljava/io/FileOutputStream;
    :catch_a6
    move-exception v1

    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_58

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    .end local v6    # "newfos":Ljava/io/FileOutputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v7    # "newfos":Ljava/io/FileOutputStream;
    :catch_aa
    move-exception v1

    move-object v4, v5

    .end local v5    # "inBuffer":Ljava/io/BufferedInputStream;
    .restart local v4    # "inBuffer":Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7    # "newfos":Ljava/io/FileOutputStream;
    .restart local v6    # "newfos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_58
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    iput-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2;->funtion_name:Ljava/lang/String;

    .line 281
    iput-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2;->file_name:Ljava/lang/String;

    .line 282
    iput-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2;->target_file_name:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/pantech/app/music/PPST_appActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FUNTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2;->funtion_name:Ljava/lang/String;

    .line 284
    invoke-virtual {p0}, Lcom/pantech/app/music/PPST_appActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_FILENAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2;->file_name:Ljava/lang/String;

    .line 285
    invoke-virtual {p0}, Lcom/pantech/app/music/PPST_appActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/PPST_appActivity2;->PPST_BACKUP_RESTORE_EXTRA_VALUE_TARTGET_FILE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/PPST_appActivity2;->target_file_name:Ljava/lang/String;

    .line 286
    const-string v1, "PPST_FileCopy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get intent funtion_name= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/PPST_appActivity2;->funtion_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "// file_name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/PPST_appActivity2;->file_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Lcom/pantech/app/music/PPST_appActivity2$BackThread;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/PPST_appActivity2$BackThread;-><init>(Lcom/pantech/app/music/PPST_appActivity2;)V

    .line 290
    .local v0, "thread":Lcom/pantech/app/music/PPST_appActivity2$BackThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->setDaemon(Z)V

    .line 291
    invoke-virtual {v0}, Lcom/pantech/app/music/PPST_appActivity2$BackThread;->start()V

    .line 292
    return-void
.end method
