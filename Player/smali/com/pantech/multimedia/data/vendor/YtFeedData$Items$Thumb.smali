.class public Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "YtFeedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Thumb"
.end annotation


# static fields
.field public static final KEY_THUMB_DEFAULT:Ljava/lang/String; = "sqDefault"

.field public static final KEY_THUMB_HQDEFAULT:Ljava/lang/String; = "hqDefault"


# instance fields
.field final synthetic this$1:Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 146
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;->this$1:Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    .line 143
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 144
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "sqDefault"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "hqDefault"

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getDefault()Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "sqDefault"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHqDefault()Ljava/lang/String;
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "hqDefault"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
