.class public Lcom/pantech/multimedia/query/GoogleQuery;
.super Ljava/lang/Object;
.source "GoogleQuery.java"


# instance fields
.field private mQueryMap:Ljava/util/WeakHashMap;
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
.method public constructor <init>(Ljava/util/WeakHashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "map":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    if-nez p1, :cond_6

    .line 20
    :goto_5
    return-void

    .line 17
    :cond_6
    iput-object p1, p0, Lcom/pantech/multimedia/query/GoogleQuery;->mQueryMap:Ljava/util/WeakHashMap;

    .line 18
    const-string v0, "jsonc"

    invoke-virtual {p0, v0}, Lcom/pantech/multimedia/query/GoogleQuery;->setParseType(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/pantech/multimedia/query/GoogleQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "strict"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method


# virtual methods
.method public setDevKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/multimedia/query/GoogleQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public setKeyAndValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 25
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lcom/pantech/multimedia/query/GoogleQuery;->mQueryMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setOrderBy(Ljava/lang/String;)V
    .registers 4
    .param p1, "order"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    :cond_6
    :goto_6
    return-void

    .line 53
    :cond_7
    const-string v0, "relevance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 54
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 55
    const-string v0, "published"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 56
    const-string v0, "viewCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 57
    :cond_27
    iget-object v0, p0, Lcom/pantech/multimedia/query/GoogleQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method

.method public setParseType(Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/multimedia/query/GoogleQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "alt"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    :cond_6
    :goto_6
    return-void

    .line 43
    :cond_7
    const-string v0, "today"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 44
    const-string v0, "this_month"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 45
    const-string v0, "this_week"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    :cond_1f
    iget-object v0, p0, Lcom/pantech/multimedia/query/GoogleQuery;->mQueryMap:Ljava/util/WeakHashMap;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method
