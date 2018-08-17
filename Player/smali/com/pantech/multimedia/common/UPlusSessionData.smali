.class public Lcom/pantech/multimedia/common/UPlusSessionData;
.super Ljava/lang/Object;
.source "UPlusSessionData.java"


# static fields
.field private static mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;


# instance fields
.field private mCurrentTime:J

.field private mHoldtime:J

.field private mSession:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/multimedia/common/UPlusSessionData;->mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "holdTime"    # J
    .param p4, "currentTime"    # J

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mSession:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mHoldtime:J

    .line 18
    iput-wide p4, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mCurrentTime:J

    .line 19
    return-void
.end method

.method public static getSessionInstance(Ljava/lang/String;JJ)Lcom/pantech/multimedia/common/UPlusSessionData;
    .registers 12
    .param p0, "session"    # Ljava/lang/String;
    .param p1, "holdTime"    # J
    .param p3, "currentTime"    # J

    .prologue
    .line 46
    sget-object v0, Lcom/pantech/multimedia/common/UPlusSessionData;->mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;

    if-nez v0, :cond_11

    .line 47
    new-instance v0, Lcom/pantech/multimedia/common/UPlusSessionData;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/multimedia/common/UPlusSessionData;-><init>(Ljava/lang/String;JJ)V

    sput-object v0, Lcom/pantech/multimedia/common/UPlusSessionData;->mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;

    .line 53
    :goto_e
    sget-object v0, Lcom/pantech/multimedia/common/UPlusSessionData;->mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;

    return-object v0

    .line 49
    :cond_11
    sget-object v0, Lcom/pantech/multimedia/common/UPlusSessionData;->mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;

    invoke-virtual {v0, p0}, Lcom/pantech/multimedia/common/UPlusSessionData;->setSession(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/pantech/multimedia/common/UPlusSessionData;->mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/multimedia/common/UPlusSessionData;->setHoldTime(J)V

    .line 51
    sget-object v0, Lcom/pantech/multimedia/common/UPlusSessionData;->mUPlusSession:Lcom/pantech/multimedia/common/UPlusSessionData;

    invoke-virtual {v0, p3, p4}, Lcom/pantech/multimedia/common/UPlusSessionData;->setCurrentTime(J)V

    goto :goto_e
.end method


# virtual methods
.method public getCurrentTime()J
    .registers 3

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mCurrentTime:J

    return-wide v0
.end method

.method public getHoldTime()J
    .registers 3

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mHoldtime:J

    return-wide v0
.end method

.method public getSession()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mSession:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentTime(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mCurrentTime:J

    .line 43
    return-void
.end method

.method public setHoldTime(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mHoldtime:J

    .line 39
    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .registers 2
    .param p1, "session"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pantech/multimedia/common/UPlusSessionData;->mSession:Ljava/lang/String;

    .line 35
    return-void
.end method
