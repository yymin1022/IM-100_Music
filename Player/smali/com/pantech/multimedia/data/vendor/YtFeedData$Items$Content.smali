.class public Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "YtFeedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Content"
.end annotation


# static fields
.field public static final KEY_CONTENT_RTSP1:Ljava/lang/String; = "1"

.field public static final KEY_CONTENT_RTSP2:Ljava/lang/String; = "6"

.field public static final KEY_CONTENT_SWF:Ljava/lang/String; = "5"


# instance fields
.field final synthetic this$1:Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 187
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->this$1:Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    .line 183
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getRtsp1()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRtsp2()Ljava/lang/String;
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSwf()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
