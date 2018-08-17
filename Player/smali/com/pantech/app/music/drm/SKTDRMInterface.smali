.class public Lcom/pantech/app/music/drm/SKTDRMInterface;
.super Ljava/lang/Object;
.source "SKTDRMInterface.java"


# static fields
.field static final DEFAULT_MIN_LEN:I = 0xb

.field static final DH_FILE_OPEN_RDWR:I = 0x2

.field static final DH_FILE_OPEN_RONLY:I = 0x3

.field static final DH_FILE_OPEN_WRONLY:I = 0x4

.field static final DH_FILE_OPEN_WRTRUNC:I = 0x1

.field public static final DRM_ERROR_BAD_DCF_INFORM:I = -0x7db

.field public static final DRM_ERROR_BASE:I = -0x7d0

.field public static final DRM_ERROR_DATE_EXPIRED:I = -0x7dd

.field public static final DRM_ERROR_DEVICE_NOT_REGISTERED:I = -0x7dc

.field public static final DRM_ERROR_INVALID_ALLOWABLESERVICE:I = -0x7e0

.field public static final DRM_ERROR_INVALID_OWNERSHIP:I = -0x7de

.field public static final DRM_ERROR_INVALID_SERVICE_TIME:I = -0x7e2

.field public static final DRM_ERROR_NOT_VALID_AUTH_TIME:I = -0x7e1

.field public static final DRM_ERROR_NOT_VALID_TIME:I = -0x7df

.field public static final DRM_ERROR_UNKNOWN:I = -0x7e3

.field public static final ERROR_DATE_EXPIRED:I = -0x65

.field public static final ERROR_DEVICE_NOT_REGISTERED:I = -0x64

.field public static final ERROR_FAIL:I = -0x1

.field public static final ERROR_INVALID_ALLOWABLESERVICE:I = -0x68

.field public static final ERROR_INVALID_OWNERSHIP:I = -0x66

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_VALID_TIME:I = -0x67

.field private static final TAG:Ljava/lang/String; = "SKTDRMInterface"

.field public static final VALID_CONTENT:I = 0x1

.field private static mDrm:LDigiCAP/SKT/DRM/DRMInterface;

.field public static mInterfaceCnt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    if-nez v0, :cond_e

    .line 49
    new-instance v0, LDigiCAP/SKT/DRM/DRMInterface;

    invoke-direct {v0}, LDigiCAP/SKT/DRM/DRMInterface;-><init>()V

    sput-object v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    .line 51
    :cond_e
    sget v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    .line 52
    sget-object v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    if-nez v0, :cond_1b

    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    .line 55
    :cond_1b
    return-void
.end method

.method private getMin(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xb

    .line 108
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 109
    .local v2, "telephoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "min":Ljava/lang/String;
    move-object v1, v0

    .line 111
    .local v1, "min_sub":Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_1c

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_1c
    const-string v3, "SKTDRMInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SKT_DRM] min : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-object v1
.end method


# virtual methods
.method public SKTDRMDestroy()V
    .registers 2

    .prologue
    .line 73
    sget v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    .line 74
    sget v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    if-lez v0, :cond_b

    .line 81
    :cond_a
    :goto_a
    return-void

    .line 77
    :cond_b
    sget-object v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    if-eqz v0, :cond_a

    .line 78
    sget-object v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    invoke-virtual {v0}, LDigiCAP/SKT/DRM/DRMInterface;->SKT_DRMDestroy()V

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    goto :goto_a
.end method

.method public SKTDRMInit()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 58
    sget-object v2, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    if-nez v2, :cond_7

    .line 69
    :goto_6
    return v0

    .line 61
    :cond_7
    sget v2, Lcom/pantech/app/music/drm/SKTDRMInterface;->mInterfaceCnt:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_e

    move v0, v1

    .line 62
    goto :goto_6

    .line 65
    :cond_e
    sget-object v2, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    invoke-virtual {v2}, LDigiCAP/SKT/DRM/DRMInterface;->SKT_DRMInit()S

    move-result v2

    if-eqz v2, :cond_1a

    .line 66
    const/4 v1, 0x0

    sput-object v1, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    goto :goto_6

    :cond_1a
    move v0, v1

    .line 69
    goto :goto_6
.end method

.method public getSKTDRMVaild(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;)I
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "validDate"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v4, -0x1

    .line 85
    sget-object v5, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    if-nez v5, :cond_6

    .line 103
    :cond_5
    :goto_5
    return v4

    .line 89
    :cond_6
    const-wide/16 v2, -0x1

    .line 90
    .local v2, "ret":J
    sget-object v5, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    invoke-direct {p0, p1}, Lcom/pantech/app/music/drm/SKTDRMInterface;->getMin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, LDigiCAP/SKT/DRM/DRMInterface;->SKT_DRMSetClientID(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    .line 93
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 94
    .local v0, "fd":Ljava/lang/Short;
    const/4 v1, 0x0

    .line 95
    .local v1, "valid_date":Ljava/lang/String;
    sget-object v4, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    const/4 v5, 0x3

    invoke-virtual {v4, p2, v5}, LDigiCAP/SKT/DRM/DRMInterface;->SKT_DRMOpen(Ljava/lang/String;I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-ltz v4, :cond_70

    .line 96
    sget-object v4, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-virtual {v4, v5}, LDigiCAP/SKT/DRM/DRMInterface;->SKT_DRMGetErrorCode(S)J

    move-result-wide v2

    .line 98
    sget-object v4, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-virtual {v4, v5}, LDigiCAP/SKT/DRM/DRMInterface;->SKT_DRMGetValidPeriod(S)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v4, "SKTDRMInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SKT_DRM] error_code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", valid_date : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v4, Lcom/pantech/app/music/drm/SKTDRMInterface;->mDrm:LDigiCAP/SKT/DRM/DRMInterface;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v5

    invoke-virtual {v4, v5}, LDigiCAP/SKT/DRM/DRMInterface;->SKT_DRMClose(S)S

    .line 103
    :cond_70
    long-to-int v4, v2

    goto :goto_5
.end method
