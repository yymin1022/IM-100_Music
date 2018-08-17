.class public abstract Lcom/pantech/multimedia/parser/BaseParser;
.super Ljava/lang/Object;
.source "BaseParser.java"


# instance fields
.field protected mParserMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/pantech/multimedia/parser/BaseParser;->mParserMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_a

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/multimedia/parser/BaseParser;->mParserMap:Ljava/util/WeakHashMap;

    .line 12
    :cond_a
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/multimedia/parser/BaseParser;->mParserMap:Ljava/util/WeakHashMap;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract chkClassItem(Ljava/lang/String;)Z
.end method

.method public chkSkipItem(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public getParserMap()Ljava/util/WeakHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/pantech/multimedia/parser/BaseParser;->mParserMap:Ljava/util/WeakHashMap;

    return-object v0
.end method
