.class public Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "DsrakFeedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageInfo"
.end annotation


# static fields
.field public static final KEY_CUR_PAGE_NO:Ljava/lang/String; = "CUR_PAGE_NO"

.field public static final KEY_SONG_CNT_IN_PAGE:Ljava/lang/String; = "SONG_CNT_IN_PAGE"

.field public static final KEY_TOTAL_SONG_CNT:Ljava/lang/String; = "TOTAL_SONG_CNT"


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 85
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->this$0:Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    .line 81
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 82
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CUR_PAGE_NO"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "TOTAL_SONG_CNT"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_CNT_IN_PAGE"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "CUR_PAGE_NO"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSongCoutInPage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "SONG_CNT_IN_PAGE"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTotal()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "TOTAL_SONG_CNT"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
