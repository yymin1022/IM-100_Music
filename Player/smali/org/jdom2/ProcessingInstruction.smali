.class public Lorg/jdom2/ProcessingInstruction;
.super Lorg/jdom2/Content;
.source "ProcessingInstruction.java"


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected transient mapData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected rawData:Ljava/lang/String;

.field protected target:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 91
    sget-object v0, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 132
    sget-object v0, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 133
    invoke-virtual {p0, p1}, Lorg/jdom2/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    .line 134
    invoke-virtual {p0, p2}, Lorg/jdom2/ProcessingInstruction;->setData(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 118
    invoke-virtual {p0, p1}, Lorg/jdom2/ProcessingInstruction;->setTarget(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    .line 119
    invoke-virtual {p0, p2}, Lorg/jdom2/ProcessingInstruction;->setData(Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;

    .line 120
    return-void
.end method

.method private static extractQuotedString(Ljava/lang/String;)[I
    .registers 8
    .param p0, "rawData"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 414
    .local v1, "inQuotes":Z
    const/16 v3, 0x22

    .line 418
    .local v3, "quoteChar":C
    const/4 v4, 0x0

    .line 422
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2d

    .line 423
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 424
    .local v0, "currentChar":C
    const/16 v5, 0x22

    if-eq v0, v5, :cond_17

    const/16 v5, 0x27

    if-ne v0, v5, :cond_1d

    .line 425
    :cond_17
    if-nez v1, :cond_20

    .line 427
    move v3, v0

    .line 428
    const/4 v1, 0x1

    .line 429
    add-int/lit8 v4, v2, 0x1

    .line 422
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 431
    :cond_20
    if-ne v3, v0, :cond_1d

    .line 433
    const/4 v1, 0x0

    .line 434
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    aput v2, v5, v6

    .line 441
    .end local v0    # "currentChar":C
    :goto_2c
    return-object v5

    :cond_2d
    const/4 v5, 0x0

    goto :goto_2c
.end method

.method private parseData(Ljava/lang/String;)Ljava/util/Map;
    .registers 14
    .param p1, "prawData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 329
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 334
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "inputData":Ljava/lang/String;
    :cond_a
    :goto_a
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_46

    .line 341
    const-string v4, ""

    .line 342
    .local v4, "name":Ljava/lang/String;
    const-string v8, ""

    .line 343
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 344
    .local v7, "startName":I
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 345
    .local v6, "previousChar":C
    const/4 v5, 0x1

    .line 346
    .local v5, "pos":I
    :goto_20
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_5b

    .line 347
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 348
    .local v1, "currentChar":C
    const/16 v9, 0x3d

    if-ne v1, v9, :cond_69

    .line 349
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 352
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jdom2/ProcessingInstruction;->extractQuotedString(Ljava/lang/String;)[I

    move-result-object v0

    .line 355
    .local v0, "bounds":[I
    if-nez v0, :cond_47

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 391
    .end local v0    # "bounds":[I
    .end local v1    # "currentChar":C
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v6    # "previousChar":C
    .end local v7    # "startName":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_46
    return-object v2

    .line 358
    .restart local v0    # "bounds":[I
    .restart local v1    # "currentChar":C
    .restart local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "pos":I
    .restart local v6    # "previousChar":C
    .restart local v7    # "startName":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_47
    const/4 v9, 0x0

    aget v9, v0, v9

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x1

    aget v10, v0, v11

    add-int/2addr v10, v5

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 360
    aget v9, v0, v11

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    .line 372
    .end local v0    # "bounds":[I
    .end local v1    # "currentChar":C
    :cond_5b
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_a

    .line 386
    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 363
    .restart local v1    # "currentChar":C
    :cond_69
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_76

    .line 365
    move v7, v5

    .line 368
    :cond_76
    move v6, v1

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_20
.end method

.method private static final toString(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 297
    .local p0, "pmapData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .local v2, "stringData":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    .local v1, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 306
    .end local v1    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 310
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/ProcessingInstruction;
    .registers 3

    .prologue
    .line 465
    invoke-super {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .line 471
    .local v0, "pi":Lorg/jdom2/ProcessingInstruction;
    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/jdom2/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 472
    return-object v0
.end method

.method public bridge synthetic detach()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/jdom2/ProcessingInstruction;->detach()Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/ProcessingInstruction;
    .registers 2

    .prologue
    .line 477
    invoke-super {p0}, Lorg/jdom2/Content;->detach()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public getPseudoAttributeNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getPseudoAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    return-object v0
.end method

.method public removePseudoAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 283
    iget-object v0, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-static {v0}, Lorg/jdom2/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 284
    const/4 v0, 0x1

    .line 287
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setData(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 204
    new-instance v1, Lorg/jdom2/IllegalDataException;

    invoke-direct {v1, p1, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_c
    iput-object p1, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 208
    invoke-direct {p0, p1}, Lorg/jdom2/ProcessingInstruction;->parseData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 209
    return-object p0
.end method

.method public setData(Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jdom2/ProcessingInstruction;"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/jdom2/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "temp":Ljava/lang/String;
    invoke-static {v1}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 226
    new-instance v2, Lorg/jdom2/IllegalDataException;

    invoke-direct {v2, v1, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_10
    iput-object v1, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 230
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    .line 231
    return-object p0
.end method

.method protected bridge synthetic setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Parent;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/jdom2/ProcessingInstruction;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method protected setParent(Lorg/jdom2/Parent;)Lorg/jdom2/ProcessingInstruction;
    .registers 3
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    .line 482
    invoke-super {p0, p1}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    return-object v0
.end method

.method public setPseudoAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 258
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 260
    new-instance v1, Lorg/jdom2/IllegalDataException;

    invoke-direct {v1, p1, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 263
    :cond_c
    invoke-static {p2}, Lorg/jdom2/Verifier;->checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_18

    .line 265
    new-instance v1, Lorg/jdom2/IllegalDataException;

    invoke-direct {v1, p2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_18
    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lorg/jdom2/ProcessingInstruction;->mapData:Ljava/util/Map;

    invoke-static {v1}, Lorg/jdom2/ProcessingInstruction;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 270
    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 4
    .param p1, "newTarget"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 147
    new-instance v1, Lorg/jdom2/IllegalTargetException;

    invoke-direct {v1, p1, v0}, Lorg/jdom2/IllegalTargetException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_c
    iput-object p1, p0, Lorg/jdom2/ProcessingInstruction;->target:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ProcessingInstruction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/ProcessingInstruction;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
