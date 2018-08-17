.class public final Lcom/pantech/app/music/drm/LGUDRMClient;
.super Ljava/lang/Object;
.source "LGUDRMClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_STR:Ljava/lang/String; = "Accept-Language"

.field private static final ACCEPT_STR:Ljava/lang/String; = "Accept"

.field private static final CMD_STR:Ljava/lang/String; = "CMD"

.field private static final CONNECTION_STR:Ljava/lang/String; = "Connection"

.field private static final CONNECTION_TYPE_STR:Ljava/lang/String; = "Content-Type"

.field private static final DCID_STR:Ljava/lang/String; = "dcid"

.field private static final DEFAULT_PORT:Ljava/lang/String; = ":80"

.field private static final DEF_PORT:I = 0x50

.field private static final DEVICEID_STR:Ljava/lang/String; = "deviceID"

.field private static final DEVICEURI_STR:Ljava/lang/String; = "deviceURI"

.field private static final DRM_SERVER:[Ljava/lang/String;

.field private static final DRM_SERVER_PORT:[Ljava/lang/String;

.field private static final HOST_STR:Ljava/lang/String; = "Host"

.field private static final HTTP_STR:Ljava/lang/String; = "http://"

.field private static final MUSICON_SERVER:Ljava/lang/String; = "121.254.138.81"

.field private static final NEXTURL_STR:Ljava/lang/String; = "nextURL"

.field private static final NGB_BROWSER:Ljava/lang/String; = "/musicon/ngb.NgbRo.web"

.field private static final OFFERID_STR:Ljava/lang/String; = "offerId"

.field private static final PHONENUMBER_STR:Ljava/lang/String; = "phoneNumber"

.field private static final PROXY_STR:Ljava/lang/String; = "proxy"

.field private static final REGISTER_STR:Ljava/lang/String; = "isRegistered"

.field private static final TAG:Ljava/lang/String; = "LGU+DRMClient"

.field private static final TALLY_SERVER:Ljava/lang/String; = "203.248.248.176"

.field private static final TEST_PORT:I = 0x1a34

.field private static final TEST_SERVER:Ljava/lang/String; = "211.115.75.161"

.field private static final TEST_SERVER_IDX:I = 0x1

.field private static final TEST_SERVER_PORT:Ljava/lang/String; = ":6708"

.field private static final USER_AGENT:Ljava/lang/String; = "PATECH-IM-A690L V1.0"

.field private static final USER_AGENT_STR:Ljava/lang/String; = "User-Agent"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "121.254.138.81"

    aput-object v1, v0, v2

    const-string v1, "211.115.75.161"

    aput-object v1, v0, v3

    const-string v1, "203.248.248.176"

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMClient;->DRM_SERVER:[Ljava/lang/String;

    .line 40
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ":6708"

    aput-object v1, v0, v3

    const-string v1, ":80"

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/drm/LGUDRMClient;->DRM_SERVER_PORT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "LGU+DRMClient"

    const-string v1, "[LGT_DRM] start.....LGTDRMClient"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public GetHTML(ILcom/pantech/app/music/drm/LGUDRMClient$Operation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "DrmServer"    # I
    .param p2, "operation"    # Lcom/pantech/app/music/drm/LGUDRMClient$Operation;
    .param p3, "min"    # Ljava/lang/String;
    .param p4, "cid"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "roId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public SetDRMInfo(I)I
    .registers 3
    .param p1, "DrmServer"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public disconnectHTML()V
    .registers 1

    .prologue
    .line 209
    return-void
.end method
