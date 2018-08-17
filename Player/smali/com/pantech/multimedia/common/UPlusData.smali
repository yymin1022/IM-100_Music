.class public Lcom/pantech/multimedia/common/UPlusData;
.super Ljava/lang/Object;
.source "UPlusData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/common/UPlusData$ErrorCode;,
        Lcom/pantech/multimedia/common/UPlusData$Post;,
        Lcom/pantech/multimedia/common/UPlusData$Url;
    }
.end annotation


# static fields
.field public static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final KEY_CURRENT_DT:Ljava/lang/String; = "key_uplus_current_dt"

.field public static final KEY_SESSIONID:Ljava/lang/String; = "key_uplus_sessionid"

.field public static final KEY_SESSIONID_CURRENT_TIME:Ljava/lang/String; = "key_uplus_sessionid_current_time"

.field public static final KEY_SESSIONID_HOLD_TIME:Ljava/lang/String; = "key_extra_session_hold_time"

.field public static final KEY_SESSIONID_TIME:Ljava/lang/String; = "key_uplus_sessionid_time"

.field public static final REQUEST_MUSICSTORE_ACTION:Ljava/lang/String; = "lg.uplusbox.intent.action.MUSIC_STORE"

.field public static final REQUEST_MUSICSTORE_CATEGORY_SEQUENCE:Ljava/lang/String; = "extra_category_sequence"

.field public static final REQUEST_SESSION_ACTION:Ljava/lang/String; = "lg.uplusbox.intent.action.REQUEST_COMMON_SESSION_ID"

.field public static final REQUEST_SESSION_DATA_EXTRA_NECESSARY:Ljava/lang/String; = "extra_necessary_login"

.field public static final REQUSET_SESSION_EXTRA:Ljava/lang/String; = "extra_necessary_login"

.field public static final RESPONSE_SESSION_ACTION:Ljava/lang/String; = "lg.uplusbox.intent.action.RESPONSE_COMMON_SESSION_ID"

.field public static final RESPONSE_SESSION_CHANGED:Ljava/lang/String; = "lg.uplusbox.intent.action.COMMON_SESSION_ID_CHANGED"

.field public static final RESPONSE_SESSION_DATA_EXTRA_IMORY_CHANGED:Ljava/lang/String; = "extra_imory_changed"

.field public static final RESPONSE_SESSION_DATA_EXTRA_RESULT:Ljava/lang/String; = "extra_result"

.field public static final RESPONSE_SESSION_DATA_EXTRA_SESSION_HOLD_TIME:Ljava/lang/String; = "extra_session_hold_time"

.field public static final RESPONSE_SESSION_DATA_EXTRA_SESSION_ID:Ljava/lang/String; = "extra_session_id"

.field public static final RESPONSE_SESSION_DATA_EXTRA_STATUS:Ljava/lang/String; = "extra_status"

.field public static final UBOX_ACCOUNT_CHANGE_SESSION:I = 0x2

.field public static final UBOX_ACCOUNT_LOGIN:I = -0x1

.field public static final UBOX_ACCOUNT_LOGOUT:I = 0x1

.field public static UBOX_BROADCAST_RECEIVED:Z = false

.field public static final UBOX_REQ_RAPID_QUERY:I = -0x64

.field public static final UBOX_REQ_REFRESH_QUERY:I = 0x65

.field public static final UBOX_REQ_SESSION_ID_FAIL:I = -0x65

.field public static final UBOX_REQ_SESSION_ID_GET:I = 0x64

.field public static final UPLUS_SESSIONID_PREF:Ljava/lang/String; = "uplus_sessionid_pref"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/multimedia/common/UPlusData;->UBOX_BROADCAST_RECEIVED:Z

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
