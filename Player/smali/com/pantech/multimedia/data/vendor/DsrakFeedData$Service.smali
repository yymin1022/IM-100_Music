.class public Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "DsrakFeedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Service"
.end annotation


# static fields
.field public static final KEY_END_TIME:Ljava/lang/String; = "END_TIME"

.field public static final KEY_NOTICE_MSG:Ljava/lang/String; = "NOTICE_MSG"

.field public static final KEY_SERVICE_STATUS_CODE:Ljava/lang/String; = "SERVICE_STATUS"

.field public static final KEY_SERVICE_STOP_YN:Ljava/lang/String; = "SERVICE_STOP_YN"

.field public static final KEY_START_TIME:Ljava/lang/String; = "START_TIME"


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;->this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceEndTime()Ljava/lang/String;
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "END_TIME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceNoticeMsg()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "NOTICE_MSG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceStartTime()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "START_TIME"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceStatus()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SERVICE_STOP_YN"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServiceStatusCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SERVICE_STATUS"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
