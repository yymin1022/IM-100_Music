.class public Lcom/pantech/multimedia/common/CloudLiveSessionData;
.super Ljava/lang/Object;
.source "CloudLiveSessionData.java"


# static fields
.field private static mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mDeviceID:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mUserID:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mAuthToken:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mDeviceID:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "userID"    # Ljava/lang/String;
    .param p2, "authToken"    # Ljava/lang/String;
    .param p3, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mUserID:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mAuthToken:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mDeviceID:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static getSessionInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pantech/multimedia/common/CloudLiveSessionData;
    .registers 4
    .param p0, "userID"    # Ljava/lang/String;
    .param p1, "authToken"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 58
    sget-object v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;

    if-nez v0, :cond_e

    .line 59
    new-instance v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;

    invoke-direct {v0, p0, p1, p2}, Lcom/pantech/multimedia/common/CloudLiveSessionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;

    .line 66
    :goto_b
    sget-object v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;

    return-object v0

    .line 61
    :cond_e
    sget-object v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;

    invoke-direct {v0, p0}, Lcom/pantech/multimedia/common/CloudLiveSessionData;->setUserID(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;

    invoke-direct {v0, p1}, Lcom/pantech/multimedia/common/CloudLiveSessionData;->setAuthToken(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mSessionData:Lcom/pantech/multimedia/common/CloudLiveSessionData;

    invoke-direct {v0, p2}, Lcom/pantech/multimedia/common/CloudLiveSessionData;->setDeviceID(Ljava/lang/String;)V

    goto :goto_b
.end method

.method private setAuthToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "authToken"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mAuthToken:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private setDeviceID(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mDeviceID:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private setUserID(Ljava/lang/String;)V
    .registers 2
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mUserID:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mDeviceID:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDT()Ljava/lang/String;
    .registers 7

    .prologue
    .line 50
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssSSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "tmp":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 52
    .local v0, "dd":Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "timeStamp":Ljava/lang/String;
    return-object v1
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/multimedia/common/CloudLiveSessionData;->mUserID:Ljava/lang/String;

    return-object v0
.end method
