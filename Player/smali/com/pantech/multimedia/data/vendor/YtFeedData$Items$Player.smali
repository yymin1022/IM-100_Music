.class public Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;
.super Lcom/pantech/multimedia/parser/BaseParser;
.source "YtFeedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Player"
.end annotation


# static fields
.field public static final KEY_PLAYER_DEFAULT:Ljava/lang/String; = "default"


# instance fields
.field final synthetic this$1:Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;


# direct methods
.method public constructor <init>(Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V
    .registers 5

    .prologue
    .line 165
    iput-object p1, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;->this$1:Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    .line 163
    invoke-direct {p0}, Lcom/pantech/multimedia/parser/BaseParser;-><init>()V

    .line 164
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "default"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public chkClassItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getDefault()Ljava/lang/String;
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;->mParserMap:Ljava/util/WeakHashMap;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
