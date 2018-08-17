.class public abstract Lcom/pantech/audiotag/data/AbsDataMap;
.super Ljava/lang/Object;
.source "AbsDataMap.java"


# instance fields
.field protected mTextMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/audiotag/data/Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    .line 8
    return-void
.end method


# virtual methods
.method public deleteDataInMap(I)V
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public getDataInMap(I)Lcom/pantech/audiotag/data/Data;
    .registers 4
    .param p1, "type"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/audiotag/data/Data;

    return-object v0
.end method

.method public getKeyIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 73
    iget-object v1, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/audiotag/data/Data;

    .line 75
    .local v0, "data":Lcom/pantech/audiotag/data/Data;
    if-eqz v0, :cond_13

    .line 76
    invoke-virtual {v0}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getTextMap()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/pantech/audiotag/data/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getValueIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/pantech/audiotag/data/Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public insertOrReplaceDataInMap(Lcom/pantech/audiotag/data/Data;)V
    .registers 4
    .param p1, "data"    # Lcom/pantech/audiotag/data/Data;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    return-void
.end method

.method protected isContainsKey(I)Z
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public putDataInMap(Lcom/pantech/audiotag/data/Data;)V
    .registers 4
    .param p1, "data"    # Lcom/pantech/audiotag/data/Data;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 20
    iget-object v0, p0, Lcom/pantech/audiotag/data/AbsDataMap;->mTextMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_1d
    return-void

    .line 22
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Previous data is exist. do not put data in map>> type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    goto :goto_1d
.end method
