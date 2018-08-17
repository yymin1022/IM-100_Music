.class public LDigiCAP/LGT/DRM/DRMInterface;
.super Ljava/lang/Object;
.source "DRMInterface.java"


# static fields
.field public static final ERROR_DB:I = 0x1

.field public static final NORAL_DB:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DRMInterface"

.field private static loadlib:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 21
    sput-boolean v2, LDigiCAP/LGT/DRM/DRMInterface;->loadlib:Z

    .line 29
    :try_start_3
    const-string v1, "drminterface"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    const/4 v1, 0x1

    sput-boolean v1, LDigiCAP/LGT/DRM/DRMInterface;->loadlib:Z
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_b} :catch_c

    .line 34
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_b
    return-void

    .line 31
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_c
    move-exception v0

    .line 32
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, LDigiCAP/LGT/DRM/DRMInterface;->loadlib:Z

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native LDRMCleanupROStorage()I
.end method

.method private native LDRMDeleteROByFile(Ljava/lang/String;S)I
.end method

.method private native LDRMDestroyDRMLib()V
.end method

.method private native LDRMGetContentID(Ljava/lang/String;Ljava/lang/StringBuffer;)I
.end method

.method private native LDRMGetDeviceInfo(Ljava/lang/StringBuffer;Ljava/lang/String;)I
.end method

.method private native LDRMGetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I
.end method

.method private native LDRMGetTextualHeaderAll(Ljava/lang/String;Ljava/lang/StringBuffer;)I
.end method

.method private native LDRMHandleROAP(Ljava/lang/String;)I
.end method

.method private native LDRMInitDRMLib()I
.end method

.method private native LDRMRepairCertificateFile()I
.end method


# virtual methods
.method public CheckDBfolder(Ljava/io/File;)I
    .registers 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 102
    const-wide/16 v2, 0x0

    .line 103
    .local v2, "result":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_64

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 107
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_17

    .line 109
    const-string v5, "DRMInterface"

    const-string v6, "SizeFolder NORAL_DRM "

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v0    # "files":[Ljava/io/File;
    :goto_16
    return v4

    .line 112
    .restart local v0    # "files":[Ljava/io/File;
    :cond_17
    const-string v5, "DRMInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SizeFolder files.length ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    array-length v5, v0

    if-ge v1, v5, :cond_64

    .line 115
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 116
    const-string v5, "DRMInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SizeFolder result ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_61

    .line 119
    const-string v4, "DRMInterface"

    const-string v5, "SizeFolder ERROR_DRM "

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/4 v4, 0x1

    goto :goto_16

    .line 113
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 124
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_64
    const-string v5, "DRMInterface"

    const-string v6, "SizeFolder NORAL_DRM "

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public DeleteDirectory(Ljava/io/File;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 129
    const/4 v3, 0x0

    .line 131
    .local v3, "isDeleteSuccess":Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 135
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_e

    .line 168
    .end local v1    # "files":[Ljava/io/File;
    :cond_d
    :goto_d
    return-void

    .line 139
    .restart local v1    # "files":[Ljava/io/File;
    :cond_e
    const-string v4, "DRMInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeleteDirectory files.length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    array-length v4, v1

    if-ge v2, v4, :cond_86

    .line 142
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 144
    aget-object v4, v1, v2

    invoke-virtual {p0, v4}, LDigiCAP/LGT/DRM/DRMInterface;->DeleteDirectory(Ljava/io/File;)V

    .line 140
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 148
    :cond_3b
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "filename":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteDirectory | item delete | success ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 152
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    .line 154
    if-nez v3, :cond_38

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteDirectory | item delete | <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> Fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto :goto_38

    .line 161
    .end local v0    # "filename":Ljava/lang/String;
    :cond_86
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 163
    if-nez v3, :cond_d

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteDirectory | item delete | <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> Fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public LGU_CleanupROStorage()I
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMCleanupROStorage()I

    move-result v0

    return v0
.end method

.method public LGU_DRMCleanStroage()I
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMCleanupROStorage()I

    move-result v0

    return v0
.end method

.method public LGU_DRMDestroy()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMDestroyDRMLib()V

    .line 65
    return-void
.end method

.method public LGU_DRMInit()I
    .registers 8

    .prologue
    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/music/DRM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "mPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/music/DRM/DB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "mDB":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v1, "f":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "db":Ljava/io/File;
    const-string v4, "DRMInterface"

    const-string v5, "LGU_DRMInit()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-boolean v4, LDigiCAP/LGT/DRM/DRMInterface;->loadlib:Z

    if-eqz v4, :cond_8b

    .line 46
    const-string v4, "DRMInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f.isDirectory() ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-virtual {p0, v0}, LDigiCAP/LGT/DRM/DRMInterface;->CheckDBfolder(Ljava/io/File;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_83

    .line 49
    const-string v4, "DRMInterface"

    const-string v5, "DeleteDirectory"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, v1}, LDigiCAP/LGT/DRM/DRMInterface;->DeleteDirectory(Ljava/io/File;)V

    .line 56
    :goto_7e
    invoke-direct {p0}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMInitDRMLib()I

    move-result v4

    .line 59
    :goto_82
    return v4

    .line 54
    :cond_83
    const-string v4, "DRMInterface"

    const-string v5, "DeleteDirectory else "

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7e

    .line 59
    :cond_8b
    const/4 v4, -0x1

    goto :goto_82
.end method

.method public LGU_DeleteROByFile(Ljava/lang/String;S)I
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "type"    # S

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMDeleteROByFile(Ljava/lang/String;S)I

    move-result v0

    return v0
.end method

.method public LGU_GetContentID(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/StringBuffer;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMGetContentID(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public LGU_GetDeviceInfo(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .registers 4
    .param p1, "outMsg"    # Ljava/lang/StringBuffer;
    .param p2, "cid"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMGetDeviceInfo(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LGU_GetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "expireDate"    # Ljava/lang/StringBuffer;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMGetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public LGU_GetTextualHeaderAll(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "metaInfo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMGetTextualHeaderAll(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method public LGU_HandleROAP(Ljava/lang/String;)I
    .registers 3
    .param p1, "roapMsg"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMHandleROAP(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LGU_RepairCertificateFile()I
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, LDigiCAP/LGT/DRM/DRMInterface;->LDRMRepairCertificateFile()I

    move-result v0

    return v0
.end method
