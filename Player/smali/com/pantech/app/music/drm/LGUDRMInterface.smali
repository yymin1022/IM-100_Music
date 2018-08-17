.class public final Lcom/pantech/app/music/drm/LGUDRMInterface;
.super Ljava/lang/Object;
.source "LGUDRMInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ERROR_CID_FAIL:I = -0x1

.field public static ERROR_CLEANUP_RO:Z = false

.field public static final ERROR_CONTENTS_FAIL:I = -0xc

.field public static final ERROR_CONTENTS_HISTORY:I = -0x9

.field public static final ERROR_EXPIRED_CONSTRAINT:I = -0x8

.field public static final ERROR_HANDLE:I = -0xa

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_CRO:I = -0x3

.field public static final ERROR_NO_PRO_EXPIRED:I = -0x5

.field public static final ERROR_NO_PRO_INITIATE:I = -0x4

.field public static final ERROR_ROAP_FAIL:I = -0x6

.field public static final ERROR_RO_FAIL:I = -0x2

.field public static final ERROR_SERVER_FAIL:I = -0x7

.field public static final ERROR_VENDER:I = -0xb

.field public static final LGU_DT_CRO:S = 0x1s

.field public static final LGU_DT_CnDRO:S = 0x2s

.field public static final LGU_DT_DRO:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "LGU+DRMInterface"

.field private static e_err:Ljava/lang/String;

.field private static e_str:Ljava/lang/String;

.field private static mDrm:LDigiCAP/LGT/DRM/DRMInterface;

.field public static mInterfaceCnt:I

.field private static ori_str:[Ljava/lang/String;

.field private static re_char:[C

.field private static s_err:Ljava/lang/String;

.field private static s_str:Ljava/lang/String;


# instance fields
.field private final ERROR_CONTENT_CHARGE_HISTORY_FAIL:I

.field private final ERROR_DCF_FAIL_INIT_DCF:I

.field private final ERROR_DCF_UNSUPPORTED_CONTENT:I

.field private final ERROR_DRM_INVALID_PARAMETER:I

.field private final ERROR_FILE_FAIL_OPEN_CERIFICATE:I

.field private final ERROR_FILE_FAIL_READ_CERIFICATE:I

.field private final ERROR_PKI_FAIL_GET_CERTIFICATE_PUBLIC_KEY_FROM_FILE:I

.field private final ERROR_PKI_FAIL_GET_DEVICE_PRIVATE_KEY:I

.field private final ERROR_RIGHTS_EXPIRED_CONSTRAINT:I

.field private final ERROR_RIGHT_NOT_EXISTED_RO:I

.field private final ERROR_RIGHT_NOT_EXISTED_USEFUL_PARENT_RIGHT:I

.field private final ERROR_RIGHT_NOT_EXISTED_USEFUL_RIGHTS:I

.field private final MAX_OUT_MSG:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 30
    sput-boolean v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_CLEANUP_RO:Z

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "&amp;"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ori_str:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [C

    fill-array-data v0, :array_36

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->re_char:[C

    .line 55
    const-string v0, "<roap:roResponse"

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->s_str:Ljava/lang/String;

    .line 56
    const-string v0, "</roap:roResponse>"

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->e_str:Ljava/lang/String;

    .line 57
    const-string v0, "<ErrorCode>"

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->s_err:Ljava/lang/String;

    .line 58
    const-string v0, "</ErrorCode>"

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->e_err:Ljava/lang/String;

    .line 66
    sput v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    return-void

    .line 54
    nop

    :array_36
    .array-data 2
        0x26s
        0x3es
        0x3cs
        0x22s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x2

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_DRM_INVALID_PARAMETER:I

    .line 38
    const v0, -0x150030

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_PKI_FAIL_GET_DEVICE_PRIVATE_KEY:I

    .line 39
    const v0, -0x150011

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_PKI_FAIL_GET_CERTIFICATE_PUBLIC_KEY_FROM_FILE:I

    .line 40
    const v0, -0x40023

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_FILE_FAIL_OPEN_CERIFICATE:I

    .line 41
    const v0, -0x40024

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_FILE_FAIL_READ_CERIFICATE:I

    .line 42
    const v0, -0x70001

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_DCF_FAIL_INIT_DCF:I

    .line 43
    const v0, -0x70090

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_DCF_UNSUPPORTED_CONTENT:I

    .line 44
    const v0, -0x90096

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_RIGHT_NOT_EXISTED_USEFUL_RIGHTS:I

    .line 45
    const v0, -0x90097

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_RIGHT_NOT_EXISTED_RO:I

    .line 46
    const v0, -0x90098

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_RIGHT_NOT_EXISTED_USEFUL_PARENT_RIGHT:I

    .line 49
    const/16 v0, 0x459

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_RIGHTS_EXPIRED_CONSTRAINT:I

    .line 50
    const/16 v0, 0x464

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->ERROR_CONTENT_CHARGE_HISTORY_FAIL:I

    .line 61
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/music/drm/LGUDRMInterface;->MAX_OUT_MSG:I

    .line 74
    sget v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    if-nez v0, :cond_49

    .line 75
    new-instance v0, LDigiCAP/LGT/DRM/DRMInterface;

    invoke-direct {v0}, LDigiCAP/LGT/DRM/DRMInterface;-><init>()V

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    .line 77
    :cond_49
    sget v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    .line 78
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v0, :cond_56

    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    .line 81
    :cond_56
    return-void
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;
    .registers 8
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "repl"    # Ljava/lang/String;
    .param p2, "ch"    # C

    .prologue
    const/4 v2, 0x0

    .line 331
    if-eqz p0, :cond_15

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    if-eqz p1, :cond_15

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_15
    move-object p0, v2

    .line 344
    .end local p0    # "s":Ljava/lang/String;
    :cond_16
    :goto_16
    return-object p0

    .line 334
    .restart local p0    # "s":Ljava/lang/String;
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 336
    .local v1, "len":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v1, :cond_47

    move-object p0, v2

    .line 337
    goto :goto_16

    .line 342
    .local v0, "idx":I
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 340
    .end local v0    # "idx":I
    :cond_47
    if-eqz p0, :cond_16

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 341
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "idx":I
    if-gez v0, :cond_23

    goto :goto_16
.end method


# virtual methods
.method public CheckDRMFile(Ljava/lang/String;)I
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x66

    const/4 v4, 0x0

    .line 394
    const/16 v5, 0x14

    new-array v0, v5, [C

    .line 397
    .local v0, "buffer":[C
    :try_start_7
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_c} :catch_5b

    .line 400
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0xc

    :try_start_f
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_56
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_12} :catch_5b

    .line 406
    :goto_12
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_60
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_15} :catch_5b

    .line 407
    const/4 v3, 0x0

    .line 417
    .end local v3    # "file":Ljava/io/FileReader;
    :goto_16
    const/4 v5, 0x4

    aget-char v5, v0, v5

    if-ne v5, v7, :cond_65

    const/4 v5, 0x5

    aget-char v5, v0, v5

    const/16 v6, 0x74

    if-ne v5, v6, :cond_65

    const/4 v5, 0x6

    aget-char v5, v0, v5

    const/16 v6, 0x79

    if-ne v5, v6, :cond_65

    const/4 v5, 0x7

    aget-char v5, v0, v5

    const/16 v6, 0x70

    if-ne v5, v6, :cond_65

    const/16 v5, 0x8

    aget-char v5, v0, v5

    const/16 v6, 0x6f

    if-ne v5, v6, :cond_65

    const/16 v5, 0x9

    aget-char v5, v0, v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_65

    const/16 v5, 0xa

    aget-char v5, v0, v5

    const/16 v6, 0x63

    if-ne v5, v6, :cond_65

    const/16 v5, 0xb

    aget-char v5, v0, v5

    if-ne v5, v7, :cond_65

    .line 420
    const-string v5, "LGU+DRMInterface"

    const-string v6, " DRMCheckRO CheckdrmFile input odf file "

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_55
    return v4

    .line 402
    .restart local v3    # "file":Ljava/io/FileReader;
    :catch_56
    move-exception v2

    .line 403
    .local v2, "e1":Ljava/io/IOException;
    :try_start_57
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_12

    .line 413
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    :catch_5b
    move-exception v1

    .line 415
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_16

    .line 409
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "file":Ljava/io/FileReader;
    :catch_60
    move-exception v1

    .line 410
    .local v1, "e":Ljava/io/IOException;
    :try_start_61
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_64} :catch_5b

    goto :goto_16

    .line 425
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/FileReader;
    :cond_65
    const-string v4, "LGU+DRMInterface"

    const-string v5, " DRMCheckRO CheckdrmFile input mp3 file "

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/16 v4, -0xc

    goto :goto_55
.end method

.method public DRMCheckRO(Ljava/lang/String;)I
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v4, -0xa

    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, "ret":I
    sget-object v5, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v5, :cond_8

    .line 195
    :cond_7
    :goto_7
    return v4

    .line 173
    :cond_8
    if-eqz p1, :cond_7

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 177
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "cid_str":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "out_msg":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/drm/LGUDRMInterface;->CheckDRMFile(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_29

    .line 183
    const/16 v4, -0xc

    goto :goto_7

    .line 185
    :cond_29
    sget-object v4, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v4, p1, v0}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_GetContentID(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 186
    const-string v4, "LGU+DRMInterface"

    const-string v5, "[LGU+_DRM] LDRMGetContentID Fail !!!"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v4, -0x1

    goto :goto_7

    .line 189
    :cond_3a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 191
    .local v3, "s_cid":Ljava/lang/String;
    sget-object v4, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v4, v1, v3}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_GetDeviceInfo(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_49

    .line 192
    const/4 v4, -0x2

    goto :goto_7

    :cond_49
    move v4, v2

    .line 195
    goto :goto_7
.end method

.method public DRMCheckROnGetInfo(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .registers 14
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "CId"    # Ljava/lang/StringBuffer;
    .param p3, "DeviceId"    # Ljava/lang/StringBuffer;
    .param p4, "RoId"    # Ljava/lang/StringBuffer;

    .prologue
    .line 202
    const/4 v5, 0x0

    .line 204
    .local v5, "ret":I
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, "out_msg":Ljava/lang/StringBuffer;
    sget-object v7, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v7, :cond_f

    .line 207
    const/16 v7, -0xa

    .line 269
    :goto_e
    return v7

    .line 209
    :cond_f
    sget-object v7, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v7, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_GetContentID(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v7

    if-eqz v7, :cond_20

    .line 210
    const-string v7, "LGU+DRMInterface"

    const-string v8, "[LGU+_DRM] DRMCheckROnGetInfo::LGU_GetContentID Fail !!!"

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v7, -0x1

    goto :goto_e

    .line 213
    :cond_20
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 215
    .local v6, "s_cid":Ljava/lang/String;
    sget-object v7, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v7, v4, v6}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_GetDeviceInfo(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_c7

    .line 217
    const v7, -0x150030

    if-eq v5, v7, :cond_41

    const v7, -0x150011

    if-eq v5, v7, :cond_41

    const v7, -0x40023

    if-eq v5, v7, :cond_41

    const v7, -0x40024

    if-ne v5, v7, :cond_53

    .line 219
    :cond_41
    sget-object v7, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v7}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_RepairCertificateFile()I

    move-result v7

    if-nez v7, :cond_6f

    .line 220
    sget-object v7, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v7, v4, v6}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_GetDeviceInfo(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_6f

    .line 221
    const/4 v7, 0x0

    goto :goto_e

    .line 225
    :cond_53
    const/4 v7, -0x2

    if-eq v5, v7, :cond_6f

    const v7, -0x90096

    if-eq v5, v7, :cond_6f

    const v7, -0x90097

    if-eq v5, v7, :cond_6f

    const v7, -0x90098

    if-eq v5, v7, :cond_6f

    const v7, -0x70001

    if-gt v5, v7, :cond_ca

    const v7, -0x70090

    if-lt v5, v7, :cond_ca

    .line 234
    :cond_6f
    const/4 v1, 0x0

    .line 236
    .local v1, "idx":I
    const/4 v7, 0x4

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, ""

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, ""

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, ""

    aput-object v8, v2, v7

    .line 238
    .local v2, "info_str":[Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8c
    const/4 v7, 0x4

    if-ge v0, v7, :cond_a2

    .line 240
    const-string v7, "|"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_d2

    .line 241
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    .line 250
    :cond_a2
    const/4 v7, 0x0

    aget-object v7, v2, v7

    const-string v8, "Y"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 251
    const/4 v7, 0x1

    aget-object v7, v2, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 252
    const/4 v7, 0x2

    aget-object v7, v2, v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c4

    .line 253
    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-virtual {p4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_c4
    packed-switch v5, :pswitch_data_f8

    .end local v0    # "i":I
    .end local v1    # "idx":I
    .end local v2    # "info_str":[Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    :cond_c7
    :goto_c7
    move v7, v5

    .line 269
    goto/16 :goto_e

    .line 230
    :cond_ca
    sget-object v7, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v7}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_CleanupROStorage()I

    move v7, v5

    .line 231
    goto/16 :goto_e

    .line 245
    .restart local v0    # "i":I
    .restart local v1    # "idx":I
    .restart local v2    # "info_str":[Ljava/lang/String;
    .restart local v3    # "msg":Ljava/lang/String;
    :cond_d2
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v0

    .line 246
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 261
    :pswitch_e6
    const/4 v5, -0x3

    .line 262
    goto :goto_c7

    .line 265
    :pswitch_e8
    const/4 v7, 0x3

    aget-object v7, v2, v7

    const-string v8, "I"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f5

    const/4 v5, -0x4

    :goto_f4
    goto :goto_c7

    :cond_f5
    const/4 v5, -0x5

    goto :goto_f4

    .line 257
    nop

    :pswitch_data_f8
    .packed-switch -0x90098
        :pswitch_e8
        :pswitch_e6
        :pswitch_e6
    .end packed-switch
.end method

.method public DRMCleanStroage()I
    .registers 2

    .prologue
    .line 120
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v0, :cond_7

    .line 121
    const/16 v0, -0xa

    .line 122
    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v0}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_DRMCleanStroage()I

    move-result v0

    goto :goto_6
.end method

.method public DRMDeleteROByFile(Ljava/lang/String;S)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "ContentType"    # S

    .prologue
    .line 138
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v0, :cond_7

    .line 139
    const/16 v0, -0xa

    .line 141
    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_DeleteROByFile(Ljava/lang/String;S)I

    move-result v0

    goto :goto_6
.end method

.method public DRMDestroy()V
    .registers 2

    .prologue
    .line 106
    sget v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    .line 107
    sget v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    if-lez v0, :cond_b

    .line 114
    :cond_a
    :goto_a
    return-void

    .line 110
    :cond_b
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-eqz v0, :cond_a

    .line 111
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v0}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_DRMDestroy()V

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    goto :goto_a
.end method

.method public DRMGetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "expireDate"    # Ljava/lang/StringBuffer;

    .prologue
    .line 148
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v0, :cond_7

    .line 149
    const/16 v0, -0xa

    .line 150
    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_GetExpireDate(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_6
.end method

.method public DRMGetTextualHeaderAll(Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 4
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "metaInfo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 157
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v0, :cond_7

    .line 158
    const/16 v0, -0xa

    .line 159
    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v0, p1, p2}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_GetTextualHeaderAll(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    goto :goto_6
.end method

.method public DRMInit()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 87
    sget-object v2, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v2, :cond_7

    .line 99
    :goto_6
    return v0

    .line 90
    :cond_7
    sget v2, Lcom/pantech/app/music/drm/LGUDRMInterface;->mInterfaceCnt:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    move v0, v1

    .line 91
    goto :goto_6

    .line 94
    :cond_e
    sget-object v2, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v2}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_DRMInit()I

    move-result v2

    if-eqz v2, :cond_21

    .line 95
    const/4 v1, 0x0

    sput-object v1, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    .line 96
    const-string v1, "LGU+DRMInterface"

    const-string v2, "[LGU+_DRM] LGU_DRMInit Fail !!! (in LGU+ Drm Interface)"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_21
    move v0, v1

    .line 99
    goto :goto_6
.end method

.method public DRMInstallRO(Ljava/lang/String;)I
    .registers 13
    .param p1, "Xml"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x8

    const/16 v7, -0x9

    const/16 v5, -0xa

    const/4 v8, -0x7

    .line 276
    sget-object v9, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v9, :cond_b

    .line 327
    :goto_a
    return v5

    .line 279
    :cond_b
    if-eqz p1, :cond_15

    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 280
    :cond_15
    const-string v6, "LGU+DRMInterface"

    const-string v7, "[LGU+_DRM] DRMInstallRO::Xml is null"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 288
    :cond_1d
    const-string v5, "LGU+DRMInterface"

    const-string v9, "LGUDRMInterface::DRMInstallRO() - Test Error Code"

    invoke-static {v5, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "drm_test":Z
    if-eqz v0, :cond_43

    .line 294
    const/4 v3, 0x1

    .line 296
    .local v3, "return_value":I
    const-string v5, "LGU+DRMInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LGUDRMInterface::DRMInstallRO() - return_value : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    packed-switch v3, :pswitch_data_ae

    .line 305
    .end local v3    # "return_value":I
    :cond_43
    const/4 v1, 0x0

    .line 306
    .local v1, "error_code":I
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DRMServerError(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_71

    .line 307
    const-string v5, "LGU+DRMInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LGU+_DRM] DRMInstallRO::drm server fail!! ErrorCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sparse-switch v1, :sswitch_data_b8

    move v5, v8

    .line 311
    goto :goto_a

    .end local v1    # "error_code":I
    .restart local v3    # "return_value":I
    :pswitch_67
    move v5, v6

    .line 299
    goto :goto_a

    :pswitch_69
    move v5, v7

    .line 300
    goto :goto_a

    :pswitch_6b
    move v5, v8

    .line 301
    goto :goto_a

    .end local v3    # "return_value":I
    .restart local v1    # "error_code":I
    :sswitch_6d
    move v5, v6

    .line 309
    goto :goto_a

    :sswitch_6f
    move v5, v7

    .line 310
    goto :goto_a

    .line 315
    :cond_71
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/drm/LGUDRMInterface;->DecodeHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "roap_msg":Ljava/lang/String;
    if-eqz v4, :cond_7f

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 317
    :cond_7f
    const-string v5, "LGU+DRMInterface"

    const-string v6, "[LGU+_DRM] DRMInstallRO::roap_msg is null"

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v8

    .line 318
    goto :goto_a

    .line 322
    :cond_88
    sget-object v5, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v5, v4}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_HandleROAP(Ljava/lang/String;)I

    move-result v2

    .local v2, "ret":I
    if-eqz v2, :cond_ab

    .line 323
    const-string v5, "LGU+DRMInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LGU+_DRM] DRMInstallRO::LGU_HandleROAP() Fail!! Ret : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v5, -0x6

    goto/16 :goto_a

    .line 327
    :cond_ab
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 298
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_67
        :pswitch_69
        :pswitch_6b
    .end packed-switch

    .line 308
    :sswitch_data_b8
    .sparse-switch
        0x459 -> :sswitch_6d
        0x464 -> :sswitch_6f
    .end sparse-switch
.end method

.method public DRMRepairCertificateFile()I
    .registers 2

    .prologue
    .line 129
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    if-nez v0, :cond_7

    .line 130
    const/16 v0, -0xa

    .line 131
    :goto_6
    return v0

    :cond_7
    sget-object v0, Lcom/pantech/app/music/drm/LGUDRMInterface;->mDrm:LDigiCAP/LGT/DRM/DRMInterface;

    invoke-virtual {v0}, LDigiCAP/LGT/DRM/DRMInterface;->LGU_RepairCertificateFile()I

    move-result v0

    goto :goto_6
.end method

.method public DRMServerError(Ljava/lang/String;)I
    .registers 8
    .param p1, "xmlMsg"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 366
    sget-object v4, Lcom/pantech/app/music/drm/LGUDRMInterface;->s_err:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 367
    .local v2, "s_idx":I
    sget-object v4, Lcom/pantech/app/music/drm/LGUDRMInterface;->e_err:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 369
    .local v0, "e_idx":I
    if-ltz v2, :cond_11

    if-gez v0, :cond_12

    .line 379
    :cond_11
    :goto_11
    return v3

    .line 373
    :cond_12
    sget-object v4, Lcom/pantech/app/music/drm/LGUDRMInterface;->s_err:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, "error":Ljava/lang/String;
    if-eqz v1, :cond_11

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 378
    const-string v3, "LGU+DRMInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGU+_DRM] Server Error Code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_11
.end method

.method public DecodeHTML(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "xmlMsg"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_13

    .line 351
    sget-object v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->ori_str:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/pantech/app/music/drm/LGUDRMInterface;->re_char:[C

    aget-char v4, v4, v1

    invoke-static {p1, v3, v4}, Lcom/pantech/app/music/drm/LGUDRMInterface;->replace(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 354
    :cond_13
    if-eqz p1, :cond_1d

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 355
    :cond_1d
    const/4 v3, 0x0

    .line 361
    :goto_1e
    return-object v3

    .line 358
    :cond_1f
    sget-object v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->s_str:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 359
    .local v2, "s_idx":I
    sget-object v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->e_str:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 361
    .local v0, "e_idx":I
    if-ltz v2, :cond_2f

    if-gez v0, :cond_32

    :cond_2f
    const-string v3, ""

    goto :goto_1e

    :cond_32
    sget-object v3, Lcom/pantech/app/music/drm/LGUDRMInterface;->e_str:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1e
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 390
    return-void
.end method
