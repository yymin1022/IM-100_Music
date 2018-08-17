.class public Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "DsrakFeedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# static fields
.field public static final KEY_RESULT_CAT:Ljava/lang/String; = "CATEGORY"

.field public static final KEY_RESULT_CD:Ljava/lang/String; = "RESULT_CD"

.field public static final KEY_RESULT_MSG:Ljava/lang/String; = "RESULT_MSG"


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;->this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    .line 47
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v0, "CATEGORY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 61
    const/4 v0, 0x1

    .line 62
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public chkSkipItem(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p1, :cond_4

    .line 71
    :cond_3
    :goto_3
    return v0

    .line 69
    :cond_4
    const-string v1, "CATEGORY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public getResultCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RESULT_CD"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResultMsg()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "RESULT_MSG"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
