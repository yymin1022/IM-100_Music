.class public final Lorg/jdom2/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAttributeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 110
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_a
    return-object v0

    .line 114
    :cond_b
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 115
    const-string v0, "Attribute names cannot contain colons"

    goto :goto_a

    .line 119
    :cond_17
    const-string v0, "xmlns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 120
    const-string v0, "An Attribute name may not be \"xmlns\"; use the Namespace class to manage namespaces"

    goto :goto_a

    .line 125
    :cond_22
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static checkCDATASection(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 223
    .end local v0    # "reason":Ljava/lang/String;
    :goto_7
    return-object v0

    .line 217
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_8
    const-string v1, "]]>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 218
    const-string v0, "CDATA cannot internally contain a CDATA ending delimiter (]]>)"

    goto :goto_7

    .line 223
    :cond_14
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static checkCharacterData(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 147
    if-nez p0, :cond_7

    .line 148
    const-string v4, "A null is not a legal XML value"

    .line 200
    :goto_6
    return-object v4

    .line 152
    :cond_7
    const/4 v3, 0x0

    .line 153
    .local v3, "lowx":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 154
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v2, :cond_90

    .line 156
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom2/Verifier;->isXMLCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 157
    if-eqz v3, :cond_48

    .line 159
    const-string v4, "Illegal Surrogate Pair 0x%04x%04x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 167
    :cond_3b
    if-nez v3, :cond_4b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 171
    const/4 v3, 0x1

    .line 154
    :cond_48
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 172
    :cond_4b
    if-eqz v3, :cond_7c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 174
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v0

    .line 176
    .local v0, "chi":I
    invoke-static {v0}, Lorg/jdom2/Verifier;->isXMLCharacter(I)Z

    move-result v4

    if-nez v4, :cond_7a

    .line 180
    const-string v4, "0x%06x is not a legal XML character"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 183
    :cond_7a
    const/4 v3, 0x0

    .line 184
    goto :goto_48

    .line 188
    .end local v0    # "chi":I
    :cond_7c
    const-string v4, "0x%04x is not a legal XML character"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 194
    :cond_90
    if-eqz v3, :cond_ac

    .line 195
    const-string v4, "Truncated Surrogate Pair 0x%04x????"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 200
    :cond_ac
    const/4 v4, 0x0

    goto/16 :goto_6
.end method

.method public static checkCommentData(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "reason":Ljava/lang/String;
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 538
    .end local v0    # "reason":Ljava/lang/String;
    :goto_7
    return-object v0

    .line 530
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_8
    const-string v1, "--"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 531
    const-string v0, "Comments cannot contain double hyphens (--)"

    goto :goto_7

    .line 533
    :cond_14
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 534
    const-string v0, "Comment data cannot end with a hyphen."

    goto :goto_7

    .line 538
    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static checkElementName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 87
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_a
    return-object v0

    .line 91
    :cond_b
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    .line 92
    const-string v0, "Element names cannot contain colons"

    goto :goto_a

    .line 96
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;)Ljava/lang/String;
    .registers 5
    .param p0, "attribute"    # Lorg/jdom2/Attribute;
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 356
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 357
    .local v0, "namespace":Lorg/jdom2/Namespace;
    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "prefix":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 359
    const/4 v2, 0x0

    .line 362
    :goto_11
    return-object v2

    :cond_12
    invoke-static {v0, p1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Namespace;",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_4

    .line 434
    const/4 v2, 0x0

    .line 455
    :cond_3
    return-object v2

    .line 437
    :cond_4
    const/4 v2, 0x0

    .line 438
    .local v2, "reason":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 439
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_9
    :goto_9
    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 440
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 441
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lorg/jdom2/Attribute;

    if-eqz v3, :cond_20

    .line 442
    check-cast v1, Lorg/jdom2/Attribute;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Attribute;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 444
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_20
    instance-of v3, v1, Lorg/jdom2/Element;

    if-eqz v3, :cond_2b

    .line 445
    check-cast v1, Lorg/jdom2/Element;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 447
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_2b
    instance-of v3, v1, Lorg/jdom2/Namespace;

    if-eqz v3, :cond_9

    .line 448
    check-cast v1, Lorg/jdom2/Namespace;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v2

    .line 449
    if-eqz v2, :cond_9

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with an additional namespace declared by the element"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Attribute;)Ljava/lang/String;
    .registers 5
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v1, v2}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 413
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-eqz v0, :cond_2a

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with an attribute namespace prefix on the element"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    :cond_2a
    return-object v0
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)Ljava/lang/String;
    .registers 5
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 376
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with the element namespace prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    :goto_1d
    return-object v1

    .line 382
    :cond_1e
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAdditionalNamespaces()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 383
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_30

    move-object v1, v0

    .line 386
    goto :goto_1d

    .line 390
    :cond_30
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 391
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_42

    move-object v1, v0

    .line 393
    goto :goto_1d

    .line 397
    :cond_42
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public static checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)Ljava/lang/String;
    .registers 9
    .param p0, "namespace"    # Lorg/jdom2/Namespace;
    .param p1, "other"    # Lorg/jdom2/Namespace;

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "p1":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, "u1":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "p2":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "u2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 340
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The namespace prefix \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" collides"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    :cond_36
    return-object v2
.end method

.method public static checkNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 236
    if-eqz p0, :cond_b

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 278
    :cond_b
    :goto_b
    return-object v4

    .line 241
    :cond_c
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 242
    .local v1, "first":C
    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 243
    const-string v4, "Namespace prefixes cannot begin with a number"

    goto :goto_b

    .line 246
    :cond_1a
    const/16 v5, 0x24

    if-ne v1, v5, :cond_21

    .line 247
    const-string v4, "Namespace prefixes cannot begin with a dollar sign ($)"

    goto :goto_b

    .line 250
    :cond_21
    const/16 v5, 0x2d

    if-ne v1, v5, :cond_28

    .line 251
    const-string v4, "Namespace prefixes cannot begin with a hyphen (-)"

    goto :goto_b

    .line 254
    :cond_28
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_2f

    .line 255
    const-string v4, "Namespace prefixes cannot begin with a period (.)"

    goto :goto_b

    .line 258
    :cond_2f
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 259
    const-string v4, "Namespace prefixes cannot begin with \"xml\" in any combination of case"

    goto :goto_b

    .line 264
    :cond_3e
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_43
    if-ge v2, v3, :cond_6c

    .line 265
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 266
    .local v0, "c":C
    invoke-static {v0}, Lorg/jdom2/Verifier;->isXMLNameCharacter(C)Z

    move-result v5

    if-nez v5, :cond_69

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Namespace prefixes cannot contain the character \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 264
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 273
    .end local v0    # "c":C
    :cond_6c
    const-string v5, ":"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    .line 274
    const-string v4, "Namespace prefixes cannot contain colons"

    goto :goto_b
.end method

.method public static checkNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 295
    if-eqz p0, :cond_b

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 319
    :cond_b
    :goto_b
    return-object v1

    .line 300
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 301
    .local v0, "first":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 302
    const-string v1, "Namespace URIs cannot begin with a number"

    goto :goto_b

    .line 305
    :cond_1a
    const/16 v2, 0x24

    if-ne v0, v2, :cond_21

    .line 306
    const-string v1, "Namespace URIs cannot begin with a dollar sign ($)"

    goto :goto_b

    .line 309
    :cond_21
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_28

    .line 310
    const-string v1, "Namespace URIs cannot begin with a hyphen (-)"

    goto :goto_b

    .line 314
    :cond_28
    invoke-static {v0}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 315
    const-string v1, "Namespace URIs cannot begin with white-space"

    goto :goto_b
.end method

.method public static checkProcessingInstructionData(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "reason":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 507
    const-string v1, "?>"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_10

    .line 508
    const-string v0, "Processing instructions cannot contain the string \"?>\""

    .line 513
    .end local v0    # "reason":Ljava/lang/String;
    :cond_10
    return-object v0
.end method

.method public static checkProcessingInstructionTarget(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "target"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 489
    .end local v0    # "reason":Ljava/lang/String;
    :goto_6
    return-object v0

    .line 474
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_7
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 475
    const-string v0, "Processing instruction targets cannot contain colons"

    goto :goto_6

    .line 479
    :cond_13
    const-string v1, "xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 480
    const-string v0, "Processing instructions cannot have a target of \"xml\" in any combination of case. (Note that the \"<?xml ... ?>\" declaration at the beginning of a document is not a processing instruction and should not be added as one; it is written automatically during output, e.g. by XMLOutputter.)"

    goto :goto_6

    .line 489
    :cond_1e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static checkPublicID(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "publicID"    # Ljava/lang/String;

    .prologue
    .line 590
    const/4 v2, 0x0

    .line 592
    .local v2, "reason":Ljava/lang/String;
    if-nez p0, :cond_5

    const/4 v3, 0x0

    .line 603
    :goto_4
    return-object v3

    .line 595
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_29

    .line 596
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 597
    .local v0, "c":C
    invoke-static {v0}, Lorg/jdom2/Verifier;->isXMLPublicIDCharacter(C)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a legal character in public IDs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "c":C
    :cond_29
    move-object v3, v2

    .line 603
    goto :goto_4

    .line 595
    .restart local v0    # "c":C
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "systemLiteral"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 616
    const/4 v0, 0x0

    .line 618
    .local v0, "reason":Ljava/lang/String;
    if-nez p0, :cond_6

    const/4 v1, 0x0

    .line 630
    :goto_5
    return-object v1

    .line 621
    :cond_6
    const/16 v1, 0x27

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1a

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 623
    const-string v0, "System literals cannot simultaneously contain both single and double quotes."

    :goto_18
    move-object v1, v0

    .line 630
    goto :goto_5

    .line 627
    :cond_1a
    invoke-static {p0}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method public static checkURI(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 681
    if-eqz p0, :cond_b

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 711
    :cond_b
    :goto_b
    return-object v6

    .line 685
    :cond_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_b

    .line 686
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 687
    .local v5, "test":C
    invoke-static {v5}, Lorg/jdom2/Verifier;->isURICharacter(C)Z

    move-result v7

    if-nez v7, :cond_63

    .line 688
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .local v3, "msgNumber":Ljava/lang/String;
    const/16 v6, 0x9

    if-gt v5, v6, :cond_4f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 690
    :cond_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URIs cannot contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    .line 692
    .end local v3    # "msgNumber":Ljava/lang/String;
    :cond_63
    const/16 v7, 0x25

    if-ne v5, v7, :cond_86

    .line 694
    add-int/lit8 v7, v2, 0x1

    :try_start_69
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 695
    .local v1, "firstDigit":C
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 696
    .local v4, "secondDigit":C
    invoke-static {v1}, Lorg/jdom2/Verifier;->isHexDigit(C)Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-static {v4}, Lorg/jdom2/Verifier;->isHexDigit(C)Z

    move-result v7

    if-nez v7, :cond_86

    .line 698
    :cond_7f
    const-string v6, "Percent signs in URIs must be followed by exactly two hexadecimal digits."
    :try_end_81
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_69 .. :try_end_81} :catch_82

    goto :goto_b

    .line 703
    .end local v1    # "firstDigit":C
    .end local v4    # "secondDigit":C
    :catch_82
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v6, "Percent signs in URIs must be followed by exactly two hexadecimal digits."

    goto :goto_b

    .line 685
    .end local v0    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method public static checkXMLName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 643
    if-nez p0, :cond_6

    .line 644
    const-string v2, "XML names cannot be null"

    .line 666
    :goto_5
    return-object v2

    .line 647
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 648
    .local v1, "len":I
    if-nez v1, :cond_f

    .line 649
    const-string v2, "XML names cannot be empty"

    goto :goto_5

    .line 654
    :cond_f
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLNameStartCharacter(C)Z

    move-result v2

    if-nez v2, :cond_37

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML names cannot begin with the character \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 659
    :cond_37
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_38
    if-ge v0, v1, :cond_65

    .line 660
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLNameCharacter(C)Z

    move-result v2

    if-nez v2, :cond_62

    .line 661
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XML names cannot contain the character \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 659
    :cond_62
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 666
    :cond_65
    const/4 v2, 0x0

    goto :goto_5
.end method

.method public static decodeSurrogatePair(CC)I
    .registers 4
    .param p0, "high"    # C
    .param p1, "low"    # C

    .prologue
    .line 548
    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p0, v1

    mul-int/lit16 v1, v1, 0x400

    add-int/2addr v0, v1

    const v1, 0xdc00

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static final isAllXMLWhitespace(Ljava/lang/String;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1333
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1334
    .local v0, "i":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_14

    .line 1335
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1336
    const/4 v1, 0x0

    .line 1339
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method public static isHexDigit(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 731
    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    .line 735
    :cond_9
    :goto_9
    return v0

    .line 732
    :cond_a
    const/16 v1, 0x41

    if-lt p0, v1, :cond_12

    const/16 v1, 0x46

    if-le p0, v1, :cond_9

    .line 733
    :cond_12
    const/16 v1, 0x61

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x66

    if-le p0, v1, :cond_9

    .line 735
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isHighSurrogate(C)Z
    .registers 3
    .param p0, "ch"    # C

    .prologue
    .line 753
    const/16 v0, 0x36

    ushr-int/lit8 v1, p0, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isLowSurrogate(C)Z
    .registers 3
    .param p0, "ch"    # C

    .prologue
    .line 766
    const/16 v0, 0x37

    ushr-int/lit8 v1, p0, 0xa

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isURICharacter(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 780
    const/16 v1, 0x61

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_a

    .line 803
    :cond_9
    :goto_9
    return v0

    .line 781
    :cond_a
    const/16 v1, 0x41

    if-lt p0, v1, :cond_12

    const/16 v1, 0x5a

    if-le p0, v1, :cond_9

    .line 782
    :cond_12
    const/16 v1, 0x30

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x39

    if-le p0, v1, :cond_9

    .line 783
    :cond_1a
    const/16 v1, 0x2f

    if-eq p0, v1, :cond_9

    .line 784
    const/16 v1, 0x2d

    if-eq p0, v1, :cond_9

    .line 785
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_9

    .line 786
    const/16 v1, 0x3f

    if-eq p0, v1, :cond_9

    .line 787
    const/16 v1, 0x3a

    if-eq p0, v1, :cond_9

    .line 788
    const/16 v1, 0x40

    if-eq p0, v1, :cond_9

    .line 789
    const/16 v1, 0x26

    if-eq p0, v1, :cond_9

    .line 790
    const/16 v1, 0x3d

    if-eq p0, v1, :cond_9

    .line 791
    const/16 v1, 0x2b

    if-eq p0, v1, :cond_9

    .line 792
    const/16 v1, 0x24

    if-eq p0, v1, :cond_9

    .line 793
    const/16 v1, 0x2c

    if-eq p0, v1, :cond_9

    .line 794
    const/16 v1, 0x25

    if-eq p0, v1, :cond_9

    .line 796
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_9

    .line 797
    const/16 v1, 0x21

    if-eq p0, v1, :cond_9

    .line 798
    const/16 v1, 0x7e

    if-eq p0, v1, :cond_9

    .line 799
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_9

    .line 800
    const/16 v1, 0x27

    if-eq p0, v1, :cond_9

    .line 801
    const/16 v1, 0x28

    if-eq p0, v1, :cond_9

    .line 802
    const/16 v1, 0x29

    if-eq p0, v1, :cond_9

    .line 803
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isXMLCharacter(I)Z
    .registers 4
    .param p0, "c"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 817
    const/16 v2, 0xa

    if-ne p0, v2, :cond_7

    .line 825
    :cond_6
    :goto_6
    return v0

    .line 818
    :cond_7
    const/16 v2, 0xd

    if-eq p0, v2, :cond_6

    .line 819
    const/16 v2, 0x9

    if-eq p0, v2, :cond_6

    .line 821
    const/16 v2, 0x20

    if-ge p0, v2, :cond_15

    move v0, v1

    goto :goto_6

    :cond_15
    const v2, 0xd7ff

    if-le p0, v2, :cond_6

    .line 822
    const v2, 0xe000

    if-ge p0, v2, :cond_21

    move v0, v1

    goto :goto_6

    :cond_21
    const v2, 0xfffd

    if-le p0, v2, :cond_6

    .line 823
    const/high16 v2, 0x10000

    if-ge p0, v2, :cond_2c

    move v0, v1

    goto :goto_6

    :cond_2c
    const v2, 0x10ffff

    if-le p0, v2, :cond_6

    move v0, v1

    .line 825
    goto :goto_6
.end method

.method public static isXMLCombiningChar(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1111
    const/16 v2, 0x300

    if-ge p0, v2, :cond_7

    .line 1231
    :cond_6
    :goto_6
    return v0

    .line 1111
    :cond_7
    const/16 v2, 0x345

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_6

    .line 1112
    :cond_d
    const/16 v2, 0x360

    if-lt p0, v2, :cond_6

    const/16 v2, 0x361

    if-gt p0, v2, :cond_17

    move v0, v1

    goto :goto_6

    .line 1113
    :cond_17
    const/16 v2, 0x483

    if-lt p0, v2, :cond_6

    const/16 v2, 0x486

    if-gt p0, v2, :cond_21

    move v0, v1

    goto :goto_6

    .line 1114
    :cond_21
    const/16 v2, 0x591

    if-lt p0, v2, :cond_6

    const/16 v2, 0x5a1

    if-gt p0, v2, :cond_2b

    move v0, v1

    goto :goto_6

    .line 1116
    :cond_2b
    const/16 v2, 0x5a3

    if-lt p0, v2, :cond_6

    const/16 v2, 0x5b9

    if-gt p0, v2, :cond_35

    move v0, v1

    goto :goto_6

    .line 1117
    :cond_35
    const/16 v2, 0x5bb

    if-lt p0, v2, :cond_6

    const/16 v2, 0x5bd

    if-gt p0, v2, :cond_3f

    move v0, v1

    goto :goto_6

    .line 1118
    :cond_3f
    const/16 v2, 0x5bf

    if-ne p0, v2, :cond_45

    move v0, v1

    goto :goto_6

    .line 1119
    :cond_45
    const/16 v2, 0x5c1

    if-lt p0, v2, :cond_6

    const/16 v2, 0x5c2

    if-gt p0, v2, :cond_4f

    move v0, v1

    goto :goto_6

    .line 1121
    :cond_4f
    const/16 v2, 0x5c4

    if-ne p0, v2, :cond_55

    move v0, v1

    goto :goto_6

    .line 1122
    :cond_55
    const/16 v2, 0x64b

    if-lt p0, v2, :cond_6

    const/16 v2, 0x652

    if-gt p0, v2, :cond_5f

    move v0, v1

    goto :goto_6

    .line 1123
    :cond_5f
    const/16 v2, 0x670

    if-ne p0, v2, :cond_65

    move v0, v1

    goto :goto_6

    .line 1124
    :cond_65
    const/16 v2, 0x6d6

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6dc

    if-gt p0, v2, :cond_6f

    move v0, v1

    goto :goto_6

    .line 1126
    :cond_6f
    const/16 v2, 0x6dd

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6df

    if-gt p0, v2, :cond_79

    move v0, v1

    goto :goto_6

    .line 1127
    :cond_79
    const/16 v2, 0x6e0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6e4

    if-gt p0, v2, :cond_83

    move v0, v1

    goto :goto_6

    .line 1128
    :cond_83
    const/16 v2, 0x6e7

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6e8

    if-gt p0, v2, :cond_8e

    move v0, v1

    goto/16 :goto_6

    .line 1130
    :cond_8e
    const/16 v2, 0x6ea

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6ed

    if-gt p0, v2, :cond_99

    move v0, v1

    goto/16 :goto_6

    .line 1131
    :cond_99
    const/16 v2, 0x901

    if-lt p0, v2, :cond_6

    const/16 v2, 0x903

    if-gt p0, v2, :cond_a4

    move v0, v1

    goto/16 :goto_6

    .line 1132
    :cond_a4
    const/16 v2, 0x93c

    if-ne p0, v2, :cond_ab

    move v0, v1

    goto/16 :goto_6

    .line 1133
    :cond_ab
    const/16 v2, 0x93e

    if-lt p0, v2, :cond_6

    const/16 v2, 0x94c

    if-gt p0, v2, :cond_b6

    move v0, v1

    goto/16 :goto_6

    .line 1135
    :cond_b6
    const/16 v2, 0x94d

    if-ne p0, v2, :cond_bd

    move v0, v1

    goto/16 :goto_6

    .line 1136
    :cond_bd
    const/16 v2, 0x951

    if-lt p0, v2, :cond_6

    const/16 v2, 0x954

    if-gt p0, v2, :cond_c8

    move v0, v1

    goto/16 :goto_6

    .line 1137
    :cond_c8
    const/16 v2, 0x962

    if-lt p0, v2, :cond_6

    const/16 v2, 0x963

    if-gt p0, v2, :cond_d3

    move v0, v1

    goto/16 :goto_6

    .line 1138
    :cond_d3
    const/16 v2, 0x981

    if-lt p0, v2, :cond_6

    const/16 v2, 0x983

    if-gt p0, v2, :cond_de

    move v0, v1

    goto/16 :goto_6

    .line 1140
    :cond_de
    const/16 v2, 0x9bc

    if-ne p0, v2, :cond_e5

    move v0, v1

    goto/16 :goto_6

    .line 1141
    :cond_e5
    const/16 v2, 0x9be

    if-ne p0, v2, :cond_ec

    move v0, v1

    goto/16 :goto_6

    .line 1142
    :cond_ec
    const/16 v2, 0x9bf

    if-ne p0, v2, :cond_f3

    move v0, v1

    goto/16 :goto_6

    .line 1143
    :cond_f3
    const/16 v2, 0x9c0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9c4

    if-gt p0, v2, :cond_fe

    move v0, v1

    goto/16 :goto_6

    .line 1144
    :cond_fe
    const/16 v2, 0x9c7

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9c8

    if-gt p0, v2, :cond_109

    move v0, v1

    goto/16 :goto_6

    .line 1146
    :cond_109
    const/16 v2, 0x9cb

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9cd

    if-gt p0, v2, :cond_114

    move v0, v1

    goto/16 :goto_6

    .line 1147
    :cond_114
    const/16 v2, 0x9d7

    if-ne p0, v2, :cond_11b

    move v0, v1

    goto/16 :goto_6

    .line 1148
    :cond_11b
    const/16 v2, 0x9e2

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9e3

    if-gt p0, v2, :cond_126

    move v0, v1

    goto/16 :goto_6

    .line 1149
    :cond_126
    const/16 v2, 0xa02

    if-ne p0, v2, :cond_12d

    move v0, v1

    goto/16 :goto_6

    .line 1150
    :cond_12d
    const/16 v2, 0xa3c

    if-ne p0, v2, :cond_134

    move v0, v1

    goto/16 :goto_6

    .line 1152
    :cond_134
    const/16 v2, 0xa3e

    if-ne p0, v2, :cond_13b

    move v0, v1

    goto/16 :goto_6

    .line 1153
    :cond_13b
    const/16 v2, 0xa3f

    if-ne p0, v2, :cond_142

    move v0, v1

    goto/16 :goto_6

    .line 1154
    :cond_142
    const/16 v2, 0xa40

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa42

    if-gt p0, v2, :cond_14d

    move v0, v1

    goto/16 :goto_6

    .line 1155
    :cond_14d
    const/16 v2, 0xa47

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa48

    if-gt p0, v2, :cond_158

    move v0, v1

    goto/16 :goto_6

    .line 1157
    :cond_158
    const/16 v2, 0xa4b

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa4d

    if-gt p0, v2, :cond_163

    move v0, v1

    goto/16 :goto_6

    .line 1158
    :cond_163
    const/16 v2, 0xa70

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa71

    if-gt p0, v2, :cond_16e

    move v0, v1

    goto/16 :goto_6

    .line 1159
    :cond_16e
    const/16 v2, 0xa81

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa83

    if-gt p0, v2, :cond_179

    move v0, v1

    goto/16 :goto_6

    .line 1160
    :cond_179
    const/16 v2, 0xabc

    if-ne p0, v2, :cond_180

    move v0, v1

    goto/16 :goto_6

    .line 1162
    :cond_180
    const/16 v2, 0xabe

    if-lt p0, v2, :cond_6

    const/16 v2, 0xac5

    if-gt p0, v2, :cond_18b

    move v0, v1

    goto/16 :goto_6

    .line 1163
    :cond_18b
    const/16 v2, 0xac7

    if-lt p0, v2, :cond_6

    const/16 v2, 0xac9

    if-gt p0, v2, :cond_196

    move v0, v1

    goto/16 :goto_6

    .line 1164
    :cond_196
    const/16 v2, 0xacb

    if-lt p0, v2, :cond_6

    const/16 v2, 0xacd

    if-gt p0, v2, :cond_1a1

    move v0, v1

    goto/16 :goto_6

    .line 1166
    :cond_1a1
    const/16 v2, 0xb01

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb03

    if-gt p0, v2, :cond_1ac

    move v0, v1

    goto/16 :goto_6

    .line 1167
    :cond_1ac
    const/16 v2, 0xb3c

    if-ne p0, v2, :cond_1b3

    move v0, v1

    goto/16 :goto_6

    .line 1168
    :cond_1b3
    const/16 v2, 0xb3e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb43

    if-gt p0, v2, :cond_1be

    move v0, v1

    goto/16 :goto_6

    .line 1169
    :cond_1be
    const/16 v2, 0xb47

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb48

    if-gt p0, v2, :cond_1c9

    move v0, v1

    goto/16 :goto_6

    .line 1171
    :cond_1c9
    const/16 v2, 0xb4b

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb4d

    if-gt p0, v2, :cond_1d4

    move v0, v1

    goto/16 :goto_6

    .line 1172
    :cond_1d4
    const/16 v2, 0xb56

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb57

    if-gt p0, v2, :cond_1df

    move v0, v1

    goto/16 :goto_6

    .line 1173
    :cond_1df
    const/16 v2, 0xb82

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb83

    if-gt p0, v2, :cond_1ea

    move v0, v1

    goto/16 :goto_6

    .line 1175
    :cond_1ea
    const/16 v2, 0xbbe

    if-lt p0, v2, :cond_6

    const/16 v2, 0xbc2

    if-gt p0, v2, :cond_1f5

    move v0, v1

    goto/16 :goto_6

    .line 1176
    :cond_1f5
    const/16 v2, 0xbc6

    if-lt p0, v2, :cond_6

    const/16 v2, 0xbc8

    if-gt p0, v2, :cond_200

    move v0, v1

    goto/16 :goto_6

    .line 1177
    :cond_200
    const/16 v2, 0xbca

    if-lt p0, v2, :cond_6

    const/16 v2, 0xbcd

    if-gt p0, v2, :cond_20b

    move v0, v1

    goto/16 :goto_6

    .line 1178
    :cond_20b
    const/16 v2, 0xbd7

    if-ne p0, v2, :cond_212

    move v0, v1

    goto/16 :goto_6

    .line 1180
    :cond_212
    const/16 v2, 0xc01

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc03

    if-gt p0, v2, :cond_21d

    move v0, v1

    goto/16 :goto_6

    .line 1181
    :cond_21d
    const/16 v2, 0xc3e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc44

    if-gt p0, v2, :cond_228

    move v0, v1

    goto/16 :goto_6

    .line 1182
    :cond_228
    const/16 v2, 0xc46

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc48

    if-gt p0, v2, :cond_233

    move v0, v1

    goto/16 :goto_6

    .line 1184
    :cond_233
    const/16 v2, 0xc4a

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc4d

    if-gt p0, v2, :cond_23e

    move v0, v1

    goto/16 :goto_6

    .line 1185
    :cond_23e
    const/16 v2, 0xc55

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc56

    if-gt p0, v2, :cond_249

    move v0, v1

    goto/16 :goto_6

    .line 1186
    :cond_249
    const/16 v2, 0xc82

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc83

    if-gt p0, v2, :cond_254

    move v0, v1

    goto/16 :goto_6

    .line 1188
    :cond_254
    const/16 v2, 0xcbe

    if-lt p0, v2, :cond_6

    const/16 v2, 0xcc4

    if-gt p0, v2, :cond_25f

    move v0, v1

    goto/16 :goto_6

    .line 1189
    :cond_25f
    const/16 v2, 0xcc6

    if-lt p0, v2, :cond_6

    const/16 v2, 0xcc8

    if-gt p0, v2, :cond_26a

    move v0, v1

    goto/16 :goto_6

    .line 1190
    :cond_26a
    const/16 v2, 0xcca

    if-lt p0, v2, :cond_6

    const/16 v2, 0xccd

    if-gt p0, v2, :cond_275

    move v0, v1

    goto/16 :goto_6

    .line 1192
    :cond_275
    const/16 v2, 0xcd5

    if-lt p0, v2, :cond_6

    const/16 v2, 0xcd6

    if-gt p0, v2, :cond_280

    move v0, v1

    goto/16 :goto_6

    .line 1193
    :cond_280
    const/16 v2, 0xd02

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd03

    if-gt p0, v2, :cond_28b

    move v0, v1

    goto/16 :goto_6

    .line 1194
    :cond_28b
    const/16 v2, 0xd3e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd43

    if-gt p0, v2, :cond_296

    move v0, v1

    goto/16 :goto_6

    .line 1196
    :cond_296
    const/16 v2, 0xd46

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd48

    if-gt p0, v2, :cond_2a1

    move v0, v1

    goto/16 :goto_6

    .line 1197
    :cond_2a1
    const/16 v2, 0xd4a

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd4d

    if-gt p0, v2, :cond_2ac

    move v0, v1

    goto/16 :goto_6

    .line 1198
    :cond_2ac
    const/16 v2, 0xd57

    if-ne p0, v2, :cond_2b3

    move v0, v1

    goto/16 :goto_6

    .line 1199
    :cond_2b3
    const/16 v2, 0xe31

    if-ne p0, v2, :cond_2ba

    move v0, v1

    goto/16 :goto_6

    .line 1201
    :cond_2ba
    const/16 v2, 0xe34

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe3a

    if-gt p0, v2, :cond_2c5

    move v0, v1

    goto/16 :goto_6

    .line 1202
    :cond_2c5
    const/16 v2, 0xe47

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe4e

    if-gt p0, v2, :cond_2d0

    move v0, v1

    goto/16 :goto_6

    .line 1203
    :cond_2d0
    const/16 v2, 0xeb1

    if-ne p0, v2, :cond_2d7

    move v0, v1

    goto/16 :goto_6

    .line 1204
    :cond_2d7
    const/16 v2, 0xeb4

    if-lt p0, v2, :cond_6

    const/16 v2, 0xeb9

    if-gt p0, v2, :cond_2e2

    move v0, v1

    goto/16 :goto_6

    .line 1206
    :cond_2e2
    const/16 v2, 0xebb

    if-lt p0, v2, :cond_6

    const/16 v2, 0xebc

    if-gt p0, v2, :cond_2ed

    move v0, v1

    goto/16 :goto_6

    .line 1207
    :cond_2ed
    const/16 v2, 0xec8

    if-lt p0, v2, :cond_6

    const/16 v2, 0xecd

    if-gt p0, v2, :cond_2f8

    move v0, v1

    goto/16 :goto_6

    .line 1208
    :cond_2f8
    const/16 v2, 0xf18

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf19

    if-gt p0, v2, :cond_303

    move v0, v1

    goto/16 :goto_6

    .line 1209
    :cond_303
    const/16 v2, 0xf35

    if-ne p0, v2, :cond_30a

    move v0, v1

    goto/16 :goto_6

    .line 1211
    :cond_30a
    const/16 v2, 0xf37

    if-ne p0, v2, :cond_311

    move v0, v1

    goto/16 :goto_6

    .line 1212
    :cond_311
    const/16 v2, 0xf39

    if-ne p0, v2, :cond_318

    move v0, v1

    goto/16 :goto_6

    .line 1213
    :cond_318
    const/16 v2, 0xf3e

    if-ne p0, v2, :cond_31f

    move v0, v1

    goto/16 :goto_6

    .line 1214
    :cond_31f
    const/16 v2, 0xf3f

    if-ne p0, v2, :cond_326

    move v0, v1

    goto/16 :goto_6

    .line 1215
    :cond_326
    const/16 v2, 0xf71

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf84

    if-gt p0, v2, :cond_331

    move v0, v1

    goto/16 :goto_6

    .line 1217
    :cond_331
    const/16 v2, 0xf86

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf8b

    if-gt p0, v2, :cond_33c

    move v0, v1

    goto/16 :goto_6

    .line 1218
    :cond_33c
    const/16 v2, 0xf90

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf95

    if-gt p0, v2, :cond_347

    move v0, v1

    goto/16 :goto_6

    .line 1219
    :cond_347
    const/16 v2, 0xf97

    if-ne p0, v2, :cond_34e

    move v0, v1

    goto/16 :goto_6

    .line 1220
    :cond_34e
    const/16 v2, 0xf99

    if-lt p0, v2, :cond_6

    const/16 v2, 0xfad

    if-gt p0, v2, :cond_359

    move v0, v1

    goto/16 :goto_6

    .line 1222
    :cond_359
    const/16 v2, 0xfb1

    if-lt p0, v2, :cond_6

    const/16 v2, 0xfb7

    if-gt p0, v2, :cond_364

    move v0, v1

    goto/16 :goto_6

    .line 1223
    :cond_364
    const/16 v2, 0xfb9

    if-ne p0, v2, :cond_36b

    move v0, v1

    goto/16 :goto_6

    .line 1224
    :cond_36b
    const/16 v2, 0x20d0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x20dc

    if-gt p0, v2, :cond_376

    move v0, v1

    goto/16 :goto_6

    .line 1225
    :cond_376
    const/16 v2, 0x20e1

    if-ne p0, v2, :cond_37d

    move v0, v1

    goto/16 :goto_6

    .line 1227
    :cond_37d
    const/16 v2, 0x302a

    if-lt p0, v2, :cond_6

    const/16 v2, 0x302f

    if-gt p0, v2, :cond_388

    move v0, v1

    goto/16 :goto_6

    .line 1228
    :cond_388
    const/16 v2, 0x3099

    if-ne p0, v2, :cond_38f

    move v0, v1

    goto/16 :goto_6

    .line 1229
    :cond_38f
    const/16 v2, 0x309a

    if-ne p0, v2, :cond_6

    move v0, v1

    goto/16 :goto_6
.end method

.method public static isXMLDigit(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1275
    const/16 v2, 0x30

    if-ge p0, v2, :cond_7

    .line 1295
    :cond_6
    :goto_6
    return v0

    .line 1275
    :cond_7
    const/16 v2, 0x39

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_6

    .line 1276
    :cond_d
    const/16 v2, 0x660

    if-lt p0, v2, :cond_6

    const/16 v2, 0x669

    if-gt p0, v2, :cond_17

    move v0, v1

    goto :goto_6

    .line 1277
    :cond_17
    const/16 v2, 0x6f0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6f9

    if-gt p0, v2, :cond_21

    move v0, v1

    goto :goto_6

    .line 1278
    :cond_21
    const/16 v2, 0x966

    if-lt p0, v2, :cond_6

    const/16 v2, 0x96f

    if-gt p0, v2, :cond_2b

    move v0, v1

    goto :goto_6

    .line 1280
    :cond_2b
    const/16 v2, 0x9e6

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9ef

    if-gt p0, v2, :cond_35

    move v0, v1

    goto :goto_6

    .line 1281
    :cond_35
    const/16 v2, 0xa66

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa6f

    if-gt p0, v2, :cond_3f

    move v0, v1

    goto :goto_6

    .line 1282
    :cond_3f
    const/16 v2, 0xae6

    if-lt p0, v2, :cond_6

    const/16 v2, 0xaef

    if-gt p0, v2, :cond_49

    move v0, v1

    goto :goto_6

    .line 1284
    :cond_49
    const/16 v2, 0xb66

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb6f

    if-gt p0, v2, :cond_53

    move v0, v1

    goto :goto_6

    .line 1285
    :cond_53
    const/16 v2, 0xbe7

    if-lt p0, v2, :cond_6

    const/16 v2, 0xbef

    if-gt p0, v2, :cond_5d

    move v0, v1

    goto :goto_6

    .line 1286
    :cond_5d
    const/16 v2, 0xc66

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc6f

    if-gt p0, v2, :cond_67

    move v0, v1

    goto :goto_6

    .line 1288
    :cond_67
    const/16 v2, 0xce6

    if-lt p0, v2, :cond_6

    const/16 v2, 0xcef

    if-gt p0, v2, :cond_71

    move v0, v1

    goto :goto_6

    .line 1289
    :cond_71
    const/16 v2, 0xd66

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd6f

    if-gt p0, v2, :cond_7b

    move v0, v1

    goto :goto_6

    .line 1290
    :cond_7b
    const/16 v2, 0xe50

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe59

    if-gt p0, v2, :cond_85

    move v0, v1

    goto :goto_6

    .line 1292
    :cond_85
    const/16 v2, 0xed0

    if-lt p0, v2, :cond_6

    const/16 v2, 0xed9

    if-gt p0, v2, :cond_90

    move v0, v1

    goto/16 :goto_6

    .line 1293
    :cond_90
    const/16 v2, 0xf20

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf29

    if-gt p0, v2, :cond_6

    move v0, v1

    goto/16 :goto_6
.end method

.method public static isXMLExtender(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1245
    const/16 v2, 0xb6

    if-ge p0, v2, :cond_7

    .line 1261
    :cond_6
    :goto_6
    return v0

    .line 1248
    :cond_7
    const/16 v2, 0xb7

    if-ne p0, v2, :cond_d

    move v0, v1

    goto :goto_6

    .line 1249
    :cond_d
    const/16 v2, 0x2d0

    if-ne p0, v2, :cond_13

    move v0, v1

    goto :goto_6

    .line 1250
    :cond_13
    const/16 v2, 0x2d1

    if-ne p0, v2, :cond_19

    move v0, v1

    goto :goto_6

    .line 1251
    :cond_19
    const/16 v2, 0x387

    if-ne p0, v2, :cond_1f

    move v0, v1

    goto :goto_6

    .line 1252
    :cond_1f
    const/16 v2, 0x640

    if-ne p0, v2, :cond_25

    move v0, v1

    goto :goto_6

    .line 1253
    :cond_25
    const/16 v2, 0xe46

    if-ne p0, v2, :cond_2b

    move v0, v1

    goto :goto_6

    .line 1254
    :cond_2b
    const/16 v2, 0xec6

    if-ne p0, v2, :cond_31

    move v0, v1

    goto :goto_6

    .line 1255
    :cond_31
    const/16 v2, 0x3005

    if-ne p0, v2, :cond_37

    move v0, v1

    goto :goto_6

    .line 1257
    :cond_37
    const/16 v2, 0x3031

    if-lt p0, v2, :cond_6

    const/16 v2, 0x3035

    if-gt p0, v2, :cond_41

    move v0, v1

    goto :goto_6

    .line 1258
    :cond_41
    const/16 v2, 0x309d

    if-lt p0, v2, :cond_6

    const/16 v2, 0x309e

    if-gt p0, v2, :cond_4b

    move v0, v1

    goto :goto_6

    .line 1259
    :cond_4b
    const/16 v2, 0x30fc

    if-lt p0, v2, :cond_6

    const/16 v2, 0x30fe

    if-gt p0, v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public static isXMLLetter(C)Z
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 890
    const/16 v2, 0x41

    if-ge p0, v2, :cond_7

    .line 1096
    :cond_6
    :goto_6
    return v0

    .line 890
    :cond_7
    const/16 v2, 0x5a

    if-gt p0, v2, :cond_d

    move v0, v1

    goto :goto_6

    .line 891
    :cond_d
    const/16 v2, 0x61

    if-lt p0, v2, :cond_6

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_17

    move v0, v1

    goto :goto_6

    .line 892
    :cond_17
    const/16 v2, 0xc0

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd6

    if-gt p0, v2, :cond_21

    move v0, v1

    goto :goto_6

    .line 893
    :cond_21
    const/16 v2, 0xd8

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf6

    if-gt p0, v2, :cond_2b

    move v0, v1

    goto :goto_6

    .line 894
    :cond_2b
    const/16 v2, 0xf8

    if-lt p0, v2, :cond_6

    const/16 v2, 0xff

    if-gt p0, v2, :cond_35

    move v0, v1

    goto :goto_6

    .line 895
    :cond_35
    const/16 v2, 0x100

    if-lt p0, v2, :cond_6

    const/16 v2, 0x131

    if-gt p0, v2, :cond_3f

    move v0, v1

    goto :goto_6

    .line 896
    :cond_3f
    const/16 v2, 0x134

    if-lt p0, v2, :cond_6

    const/16 v2, 0x13e

    if-gt p0, v2, :cond_49

    move v0, v1

    goto :goto_6

    .line 897
    :cond_49
    const/16 v2, 0x141

    if-lt p0, v2, :cond_6

    const/16 v2, 0x148

    if-gt p0, v2, :cond_53

    move v0, v1

    goto :goto_6

    .line 898
    :cond_53
    const/16 v2, 0x14a

    if-lt p0, v2, :cond_6

    const/16 v2, 0x17e

    if-gt p0, v2, :cond_5d

    move v0, v1

    goto :goto_6

    .line 899
    :cond_5d
    const/16 v2, 0x180

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1c3

    if-gt p0, v2, :cond_67

    move v0, v1

    goto :goto_6

    .line 900
    :cond_67
    const/16 v2, 0x1cd

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f0

    if-gt p0, v2, :cond_71

    move v0, v1

    goto :goto_6

    .line 901
    :cond_71
    const/16 v2, 0x1f4

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f5

    if-gt p0, v2, :cond_7b

    move v0, v1

    goto :goto_6

    .line 902
    :cond_7b
    const/16 v2, 0x1fa

    if-lt p0, v2, :cond_6

    const/16 v2, 0x217

    if-gt p0, v2, :cond_85

    move v0, v1

    goto :goto_6

    .line 903
    :cond_85
    const/16 v2, 0x250

    if-lt p0, v2, :cond_6

    const/16 v2, 0x2a8

    if-gt p0, v2, :cond_90

    move v0, v1

    goto/16 :goto_6

    .line 904
    :cond_90
    const/16 v2, 0x2bb

    if-lt p0, v2, :cond_6

    const/16 v2, 0x2c1

    if-gt p0, v2, :cond_9b

    move v0, v1

    goto/16 :goto_6

    .line 905
    :cond_9b
    const/16 v2, 0x386

    if-ne p0, v2, :cond_a2

    move v0, v1

    goto/16 :goto_6

    .line 906
    :cond_a2
    const/16 v2, 0x388

    if-lt p0, v2, :cond_6

    const/16 v2, 0x38a

    if-gt p0, v2, :cond_ad

    move v0, v1

    goto/16 :goto_6

    .line 907
    :cond_ad
    const/16 v2, 0x38c

    if-ne p0, v2, :cond_b4

    move v0, v1

    goto/16 :goto_6

    .line 908
    :cond_b4
    const/16 v2, 0x38e

    if-lt p0, v2, :cond_6

    const/16 v2, 0x3a1

    if-gt p0, v2, :cond_bf

    move v0, v1

    goto/16 :goto_6

    .line 909
    :cond_bf
    const/16 v2, 0x3a3

    if-lt p0, v2, :cond_6

    const/16 v2, 0x3ce

    if-gt p0, v2, :cond_ca

    move v0, v1

    goto/16 :goto_6

    .line 910
    :cond_ca
    const/16 v2, 0x3d0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x3d6

    if-gt p0, v2, :cond_d5

    move v0, v1

    goto/16 :goto_6

    .line 911
    :cond_d5
    const/16 v2, 0x3da

    if-ne p0, v2, :cond_dc

    move v0, v1

    goto/16 :goto_6

    .line 912
    :cond_dc
    const/16 v2, 0x3dc

    if-ne p0, v2, :cond_e3

    move v0, v1

    goto/16 :goto_6

    .line 913
    :cond_e3
    const/16 v2, 0x3de

    if-ne p0, v2, :cond_ea

    move v0, v1

    goto/16 :goto_6

    .line 914
    :cond_ea
    const/16 v2, 0x3e0

    if-ne p0, v2, :cond_f1

    move v0, v1

    goto/16 :goto_6

    .line 915
    :cond_f1
    const/16 v2, 0x3e2

    if-lt p0, v2, :cond_6

    const/16 v2, 0x3f3

    if-gt p0, v2, :cond_fc

    move v0, v1

    goto/16 :goto_6

    .line 916
    :cond_fc
    const/16 v2, 0x401

    if-lt p0, v2, :cond_6

    const/16 v2, 0x40c

    if-gt p0, v2, :cond_107

    move v0, v1

    goto/16 :goto_6

    .line 917
    :cond_107
    const/16 v2, 0x40e

    if-lt p0, v2, :cond_6

    const/16 v2, 0x44f

    if-gt p0, v2, :cond_112

    move v0, v1

    goto/16 :goto_6

    .line 918
    :cond_112
    const/16 v2, 0x451

    if-lt p0, v2, :cond_6

    const/16 v2, 0x45c

    if-gt p0, v2, :cond_11d

    move v0, v1

    goto/16 :goto_6

    .line 919
    :cond_11d
    const/16 v2, 0x45e

    if-lt p0, v2, :cond_6

    const/16 v2, 0x481

    if-gt p0, v2, :cond_128

    move v0, v1

    goto/16 :goto_6

    .line 920
    :cond_128
    const/16 v2, 0x490

    if-lt p0, v2, :cond_6

    const/16 v2, 0x4c4

    if-gt p0, v2, :cond_133

    move v0, v1

    goto/16 :goto_6

    .line 921
    :cond_133
    const/16 v2, 0x4c7

    if-lt p0, v2, :cond_6

    const/16 v2, 0x4c8

    if-gt p0, v2, :cond_13e

    move v0, v1

    goto/16 :goto_6

    .line 922
    :cond_13e
    const/16 v2, 0x4cb

    if-lt p0, v2, :cond_6

    const/16 v2, 0x4cc

    if-gt p0, v2, :cond_149

    move v0, v1

    goto/16 :goto_6

    .line 923
    :cond_149
    const/16 v2, 0x4d0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x4eb

    if-gt p0, v2, :cond_154

    move v0, v1

    goto/16 :goto_6

    .line 924
    :cond_154
    const/16 v2, 0x4ee

    if-lt p0, v2, :cond_6

    const/16 v2, 0x4f5

    if-gt p0, v2, :cond_15f

    move v0, v1

    goto/16 :goto_6

    .line 925
    :cond_15f
    const/16 v2, 0x4f8

    if-lt p0, v2, :cond_6

    const/16 v2, 0x4f9

    if-gt p0, v2, :cond_16a

    move v0, v1

    goto/16 :goto_6

    .line 926
    :cond_16a
    const/16 v2, 0x531

    if-lt p0, v2, :cond_6

    const/16 v2, 0x556

    if-gt p0, v2, :cond_175

    move v0, v1

    goto/16 :goto_6

    .line 927
    :cond_175
    const/16 v2, 0x559

    if-ne p0, v2, :cond_17c

    move v0, v1

    goto/16 :goto_6

    .line 928
    :cond_17c
    const/16 v2, 0x561

    if-lt p0, v2, :cond_6

    const/16 v2, 0x586

    if-gt p0, v2, :cond_187

    move v0, v1

    goto/16 :goto_6

    .line 929
    :cond_187
    const/16 v2, 0x5d0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x5ea

    if-gt p0, v2, :cond_192

    move v0, v1

    goto/16 :goto_6

    .line 930
    :cond_192
    const/16 v2, 0x5f0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x5f2

    if-gt p0, v2, :cond_19d

    move v0, v1

    goto/16 :goto_6

    .line 931
    :cond_19d
    const/16 v2, 0x621

    if-lt p0, v2, :cond_6

    const/16 v2, 0x63a

    if-gt p0, v2, :cond_1a8

    move v0, v1

    goto/16 :goto_6

    .line 932
    :cond_1a8
    const/16 v2, 0x641

    if-lt p0, v2, :cond_6

    const/16 v2, 0x64a

    if-gt p0, v2, :cond_1b3

    move v0, v1

    goto/16 :goto_6

    .line 933
    :cond_1b3
    const/16 v2, 0x671

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6b7

    if-gt p0, v2, :cond_1be

    move v0, v1

    goto/16 :goto_6

    .line 934
    :cond_1be
    const/16 v2, 0x6ba

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6be

    if-gt p0, v2, :cond_1c9

    move v0, v1

    goto/16 :goto_6

    .line 935
    :cond_1c9
    const/16 v2, 0x6c0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6ce

    if-gt p0, v2, :cond_1d4

    move v0, v1

    goto/16 :goto_6

    .line 936
    :cond_1d4
    const/16 v2, 0x6d0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6d3

    if-gt p0, v2, :cond_1df

    move v0, v1

    goto/16 :goto_6

    .line 937
    :cond_1df
    const/16 v2, 0x6d5

    if-ne p0, v2, :cond_1e6

    move v0, v1

    goto/16 :goto_6

    .line 938
    :cond_1e6
    const/16 v2, 0x6e5

    if-lt p0, v2, :cond_6

    const/16 v2, 0x6e6

    if-gt p0, v2, :cond_1f1

    move v0, v1

    goto/16 :goto_6

    .line 939
    :cond_1f1
    const/16 v2, 0x905

    if-lt p0, v2, :cond_6

    const/16 v2, 0x939

    if-gt p0, v2, :cond_1fc

    move v0, v1

    goto/16 :goto_6

    .line 940
    :cond_1fc
    const/16 v2, 0x93d

    if-ne p0, v2, :cond_203

    move v0, v1

    goto/16 :goto_6

    .line 941
    :cond_203
    const/16 v2, 0x958

    if-lt p0, v2, :cond_6

    const/16 v2, 0x961

    if-gt p0, v2, :cond_20e

    move v0, v1

    goto/16 :goto_6

    .line 942
    :cond_20e
    const/16 v2, 0x985

    if-lt p0, v2, :cond_6

    const/16 v2, 0x98c

    if-gt p0, v2, :cond_219

    move v0, v1

    goto/16 :goto_6

    .line 943
    :cond_219
    const/16 v2, 0x98f

    if-lt p0, v2, :cond_6

    const/16 v2, 0x990

    if-gt p0, v2, :cond_224

    move v0, v1

    goto/16 :goto_6

    .line 944
    :cond_224
    const/16 v2, 0x993

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9a8

    if-gt p0, v2, :cond_22f

    move v0, v1

    goto/16 :goto_6

    .line 945
    :cond_22f
    const/16 v2, 0x9aa

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9b0

    if-gt p0, v2, :cond_23a

    move v0, v1

    goto/16 :goto_6

    .line 946
    :cond_23a
    const/16 v2, 0x9b2

    if-ne p0, v2, :cond_241

    move v0, v1

    goto/16 :goto_6

    .line 947
    :cond_241
    const/16 v2, 0x9b6

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9b9

    if-gt p0, v2, :cond_24c

    move v0, v1

    goto/16 :goto_6

    .line 948
    :cond_24c
    const/16 v2, 0x9dc

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9dd

    if-gt p0, v2, :cond_257

    move v0, v1

    goto/16 :goto_6

    .line 949
    :cond_257
    const/16 v2, 0x9df

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9e1

    if-gt p0, v2, :cond_262

    move v0, v1

    goto/16 :goto_6

    .line 950
    :cond_262
    const/16 v2, 0x9f0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x9f1

    if-gt p0, v2, :cond_26d

    move v0, v1

    goto/16 :goto_6

    .line 951
    :cond_26d
    const/16 v2, 0xa05

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa0a

    if-gt p0, v2, :cond_278

    move v0, v1

    goto/16 :goto_6

    .line 952
    :cond_278
    const/16 v2, 0xa0f

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa10

    if-gt p0, v2, :cond_283

    move v0, v1

    goto/16 :goto_6

    .line 953
    :cond_283
    const/16 v2, 0xa13

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa28

    if-gt p0, v2, :cond_28e

    move v0, v1

    goto/16 :goto_6

    .line 954
    :cond_28e
    const/16 v2, 0xa2a

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa30

    if-gt p0, v2, :cond_299

    move v0, v1

    goto/16 :goto_6

    .line 955
    :cond_299
    const/16 v2, 0xa32

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa33

    if-gt p0, v2, :cond_2a4

    move v0, v1

    goto/16 :goto_6

    .line 956
    :cond_2a4
    const/16 v2, 0xa35

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa36

    if-gt p0, v2, :cond_2af

    move v0, v1

    goto/16 :goto_6

    .line 957
    :cond_2af
    const/16 v2, 0xa38

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa39

    if-gt p0, v2, :cond_2ba

    move v0, v1

    goto/16 :goto_6

    .line 958
    :cond_2ba
    const/16 v2, 0xa59

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa5c

    if-gt p0, v2, :cond_2c5

    move v0, v1

    goto/16 :goto_6

    .line 959
    :cond_2c5
    const/16 v2, 0xa5e

    if-ne p0, v2, :cond_2cc

    move v0, v1

    goto/16 :goto_6

    .line 960
    :cond_2cc
    const/16 v2, 0xa72

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa74

    if-gt p0, v2, :cond_2d7

    move v0, v1

    goto/16 :goto_6

    .line 961
    :cond_2d7
    const/16 v2, 0xa85

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa8b

    if-gt p0, v2, :cond_2e2

    move v0, v1

    goto/16 :goto_6

    .line 962
    :cond_2e2
    const/16 v2, 0xa8d

    if-ne p0, v2, :cond_2e9

    move v0, v1

    goto/16 :goto_6

    .line 963
    :cond_2e9
    const/16 v2, 0xa8f

    if-lt p0, v2, :cond_6

    const/16 v2, 0xa91

    if-gt p0, v2, :cond_2f4

    move v0, v1

    goto/16 :goto_6

    .line 964
    :cond_2f4
    const/16 v2, 0xa93

    if-lt p0, v2, :cond_6

    const/16 v2, 0xaa8

    if-gt p0, v2, :cond_2ff

    move v0, v1

    goto/16 :goto_6

    .line 965
    :cond_2ff
    const/16 v2, 0xaaa

    if-lt p0, v2, :cond_6

    const/16 v2, 0xab0

    if-gt p0, v2, :cond_30a

    move v0, v1

    goto/16 :goto_6

    .line 966
    :cond_30a
    const/16 v2, 0xab2

    if-lt p0, v2, :cond_6

    const/16 v2, 0xab3

    if-gt p0, v2, :cond_315

    move v0, v1

    goto/16 :goto_6

    .line 967
    :cond_315
    const/16 v2, 0xab5

    if-lt p0, v2, :cond_6

    const/16 v2, 0xab9

    if-gt p0, v2, :cond_320

    move v0, v1

    goto/16 :goto_6

    .line 968
    :cond_320
    const/16 v2, 0xabd

    if-ne p0, v2, :cond_327

    move v0, v1

    goto/16 :goto_6

    .line 969
    :cond_327
    const/16 v2, 0xae0

    if-ne p0, v2, :cond_32e

    move v0, v1

    goto/16 :goto_6

    .line 970
    :cond_32e
    const/16 v2, 0xb05

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb0c

    if-gt p0, v2, :cond_339

    move v0, v1

    goto/16 :goto_6

    .line 971
    :cond_339
    const/16 v2, 0xb0f

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb10

    if-gt p0, v2, :cond_344

    move v0, v1

    goto/16 :goto_6

    .line 972
    :cond_344
    const/16 v2, 0xb13

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb28

    if-gt p0, v2, :cond_34f

    move v0, v1

    goto/16 :goto_6

    .line 973
    :cond_34f
    const/16 v2, 0xb2a

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb30

    if-gt p0, v2, :cond_35a

    move v0, v1

    goto/16 :goto_6

    .line 974
    :cond_35a
    const/16 v2, 0xb32

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb33

    if-gt p0, v2, :cond_365

    move v0, v1

    goto/16 :goto_6

    .line 975
    :cond_365
    const/16 v2, 0xb36

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb39

    if-gt p0, v2, :cond_370

    move v0, v1

    goto/16 :goto_6

    .line 976
    :cond_370
    const/16 v2, 0xb3d

    if-ne p0, v2, :cond_377

    move v0, v1

    goto/16 :goto_6

    .line 977
    :cond_377
    const/16 v2, 0xb5c

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb5d

    if-gt p0, v2, :cond_382

    move v0, v1

    goto/16 :goto_6

    .line 978
    :cond_382
    const/16 v2, 0xb5f

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb61

    if-gt p0, v2, :cond_38d

    move v0, v1

    goto/16 :goto_6

    .line 979
    :cond_38d
    const/16 v2, 0xb85

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb8a

    if-gt p0, v2, :cond_398

    move v0, v1

    goto/16 :goto_6

    .line 980
    :cond_398
    const/16 v2, 0xb8e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb90

    if-gt p0, v2, :cond_3a3

    move v0, v1

    goto/16 :goto_6

    .line 981
    :cond_3a3
    const/16 v2, 0xb92

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb95

    if-gt p0, v2, :cond_3ae

    move v0, v1

    goto/16 :goto_6

    .line 982
    :cond_3ae
    const/16 v2, 0xb99

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb9a

    if-gt p0, v2, :cond_3b9

    move v0, v1

    goto/16 :goto_6

    .line 983
    :cond_3b9
    const/16 v2, 0xb9c

    if-ne p0, v2, :cond_3c0

    move v0, v1

    goto/16 :goto_6

    .line 984
    :cond_3c0
    const/16 v2, 0xb9e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xb9f

    if-gt p0, v2, :cond_3cb

    move v0, v1

    goto/16 :goto_6

    .line 985
    :cond_3cb
    const/16 v2, 0xba3

    if-lt p0, v2, :cond_6

    const/16 v2, 0xba4

    if-gt p0, v2, :cond_3d6

    move v0, v1

    goto/16 :goto_6

    .line 986
    :cond_3d6
    const/16 v2, 0xba8

    if-lt p0, v2, :cond_6

    const/16 v2, 0xbaa

    if-gt p0, v2, :cond_3e1

    move v0, v1

    goto/16 :goto_6

    .line 987
    :cond_3e1
    const/16 v2, 0xbae

    if-lt p0, v2, :cond_6

    const/16 v2, 0xbb5

    if-gt p0, v2, :cond_3ec

    move v0, v1

    goto/16 :goto_6

    .line 988
    :cond_3ec
    const/16 v2, 0xbb7

    if-lt p0, v2, :cond_6

    const/16 v2, 0xbb9

    if-gt p0, v2, :cond_3f7

    move v0, v1

    goto/16 :goto_6

    .line 989
    :cond_3f7
    const/16 v2, 0xc05

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc0c

    if-gt p0, v2, :cond_402

    move v0, v1

    goto/16 :goto_6

    .line 990
    :cond_402
    const/16 v2, 0xc0e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc10

    if-gt p0, v2, :cond_40d

    move v0, v1

    goto/16 :goto_6

    .line 991
    :cond_40d
    const/16 v2, 0xc12

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc28

    if-gt p0, v2, :cond_418

    move v0, v1

    goto/16 :goto_6

    .line 992
    :cond_418
    const/16 v2, 0xc2a

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc33

    if-gt p0, v2, :cond_423

    move v0, v1

    goto/16 :goto_6

    .line 993
    :cond_423
    const/16 v2, 0xc35

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc39

    if-gt p0, v2, :cond_42e

    move v0, v1

    goto/16 :goto_6

    .line 994
    :cond_42e
    const/16 v2, 0xc60

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc61

    if-gt p0, v2, :cond_439

    move v0, v1

    goto/16 :goto_6

    .line 995
    :cond_439
    const/16 v2, 0xc85

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc8c

    if-gt p0, v2, :cond_444

    move v0, v1

    goto/16 :goto_6

    .line 996
    :cond_444
    const/16 v2, 0xc8e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xc90

    if-gt p0, v2, :cond_44f

    move v0, v1

    goto/16 :goto_6

    .line 997
    :cond_44f
    const/16 v2, 0xc92

    if-lt p0, v2, :cond_6

    const/16 v2, 0xca8

    if-gt p0, v2, :cond_45a

    move v0, v1

    goto/16 :goto_6

    .line 998
    :cond_45a
    const/16 v2, 0xcaa

    if-lt p0, v2, :cond_6

    const/16 v2, 0xcb3

    if-gt p0, v2, :cond_465

    move v0, v1

    goto/16 :goto_6

    .line 999
    :cond_465
    const/16 v2, 0xcb5

    if-lt p0, v2, :cond_6

    const/16 v2, 0xcb9

    if-gt p0, v2, :cond_470

    move v0, v1

    goto/16 :goto_6

    .line 1000
    :cond_470
    const/16 v2, 0xcde

    if-ne p0, v2, :cond_477

    move v0, v1

    goto/16 :goto_6

    .line 1001
    :cond_477
    const/16 v2, 0xce0

    if-lt p0, v2, :cond_6

    const/16 v2, 0xce1

    if-gt p0, v2, :cond_482

    move v0, v1

    goto/16 :goto_6

    .line 1002
    :cond_482
    const/16 v2, 0xd05

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd0c

    if-gt p0, v2, :cond_48d

    move v0, v1

    goto/16 :goto_6

    .line 1003
    :cond_48d
    const/16 v2, 0xd0e

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd10

    if-gt p0, v2, :cond_498

    move v0, v1

    goto/16 :goto_6

    .line 1004
    :cond_498
    const/16 v2, 0xd12

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd28

    if-gt p0, v2, :cond_4a3

    move v0, v1

    goto/16 :goto_6

    .line 1005
    :cond_4a3
    const/16 v2, 0xd2a

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd39

    if-gt p0, v2, :cond_4ae

    move v0, v1

    goto/16 :goto_6

    .line 1006
    :cond_4ae
    const/16 v2, 0xd60

    if-lt p0, v2, :cond_6

    const/16 v2, 0xd61

    if-gt p0, v2, :cond_4b9

    move v0, v1

    goto/16 :goto_6

    .line 1007
    :cond_4b9
    const/16 v2, 0xe01

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe2e

    if-gt p0, v2, :cond_4c4

    move v0, v1

    goto/16 :goto_6

    .line 1008
    :cond_4c4
    const/16 v2, 0xe30

    if-ne p0, v2, :cond_4cb

    move v0, v1

    goto/16 :goto_6

    .line 1009
    :cond_4cb
    const/16 v2, 0xe32

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe33

    if-gt p0, v2, :cond_4d6

    move v0, v1

    goto/16 :goto_6

    .line 1010
    :cond_4d6
    const/16 v2, 0xe40

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe45

    if-gt p0, v2, :cond_4e1

    move v0, v1

    goto/16 :goto_6

    .line 1011
    :cond_4e1
    const/16 v2, 0xe81

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe82

    if-gt p0, v2, :cond_4ec

    move v0, v1

    goto/16 :goto_6

    .line 1012
    :cond_4ec
    const/16 v2, 0xe84

    if-ne p0, v2, :cond_4f3

    move v0, v1

    goto/16 :goto_6

    .line 1013
    :cond_4f3
    const/16 v2, 0xe87

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe88

    if-gt p0, v2, :cond_4fe

    move v0, v1

    goto/16 :goto_6

    .line 1014
    :cond_4fe
    const/16 v2, 0xe8a

    if-ne p0, v2, :cond_505

    move v0, v1

    goto/16 :goto_6

    .line 1015
    :cond_505
    const/16 v2, 0xe8d

    if-ne p0, v2, :cond_50c

    move v0, v1

    goto/16 :goto_6

    .line 1016
    :cond_50c
    const/16 v2, 0xe94

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe97

    if-gt p0, v2, :cond_517

    move v0, v1

    goto/16 :goto_6

    .line 1017
    :cond_517
    const/16 v2, 0xe99

    if-lt p0, v2, :cond_6

    const/16 v2, 0xe9f

    if-gt p0, v2, :cond_522

    move v0, v1

    goto/16 :goto_6

    .line 1018
    :cond_522
    const/16 v2, 0xea1

    if-lt p0, v2, :cond_6

    const/16 v2, 0xea3

    if-gt p0, v2, :cond_52d

    move v0, v1

    goto/16 :goto_6

    .line 1019
    :cond_52d
    const/16 v2, 0xea5

    if-ne p0, v2, :cond_534

    move v0, v1

    goto/16 :goto_6

    .line 1020
    :cond_534
    const/16 v2, 0xea7

    if-ne p0, v2, :cond_53b

    move v0, v1

    goto/16 :goto_6

    .line 1021
    :cond_53b
    const/16 v2, 0xeaa

    if-lt p0, v2, :cond_6

    const/16 v2, 0xeab

    if-gt p0, v2, :cond_546

    move v0, v1

    goto/16 :goto_6

    .line 1022
    :cond_546
    const/16 v2, 0xead

    if-lt p0, v2, :cond_6

    const/16 v2, 0xeae

    if-gt p0, v2, :cond_551

    move v0, v1

    goto/16 :goto_6

    .line 1023
    :cond_551
    const/16 v2, 0xeb0

    if-ne p0, v2, :cond_558

    move v0, v1

    goto/16 :goto_6

    .line 1024
    :cond_558
    const/16 v2, 0xeb2

    if-lt p0, v2, :cond_6

    const/16 v2, 0xeb3

    if-gt p0, v2, :cond_563

    move v0, v1

    goto/16 :goto_6

    .line 1025
    :cond_563
    const/16 v2, 0xebd

    if-ne p0, v2, :cond_56a

    move v0, v1

    goto/16 :goto_6

    .line 1026
    :cond_56a
    const/16 v2, 0xec0

    if-lt p0, v2, :cond_6

    const/16 v2, 0xec4

    if-gt p0, v2, :cond_575

    move v0, v1

    goto/16 :goto_6

    .line 1027
    :cond_575
    const/16 v2, 0xf40

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf47

    if-gt p0, v2, :cond_580

    move v0, v1

    goto/16 :goto_6

    .line 1028
    :cond_580
    const/16 v2, 0xf49

    if-lt p0, v2, :cond_6

    const/16 v2, 0xf69

    if-gt p0, v2, :cond_58b

    move v0, v1

    goto/16 :goto_6

    .line 1029
    :cond_58b
    const/16 v2, 0x10a0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x10c5

    if-gt p0, v2, :cond_596

    move v0, v1

    goto/16 :goto_6

    .line 1030
    :cond_596
    const/16 v2, 0x10d0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x10f6

    if-gt p0, v2, :cond_5a1

    move v0, v1

    goto/16 :goto_6

    .line 1031
    :cond_5a1
    const/16 v2, 0x1100

    if-ne p0, v2, :cond_5a8

    move v0, v1

    goto/16 :goto_6

    .line 1032
    :cond_5a8
    const/16 v2, 0x1102

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1103

    if-gt p0, v2, :cond_5b3

    move v0, v1

    goto/16 :goto_6

    .line 1033
    :cond_5b3
    const/16 v2, 0x1105

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1107

    if-gt p0, v2, :cond_5be

    move v0, v1

    goto/16 :goto_6

    .line 1034
    :cond_5be
    const/16 v2, 0x1109

    if-ne p0, v2, :cond_5c5

    move v0, v1

    goto/16 :goto_6

    .line 1035
    :cond_5c5
    const/16 v2, 0x110b

    if-lt p0, v2, :cond_6

    const/16 v2, 0x110c

    if-gt p0, v2, :cond_5d0

    move v0, v1

    goto/16 :goto_6

    .line 1036
    :cond_5d0
    const/16 v2, 0x110e

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1112

    if-gt p0, v2, :cond_5db

    move v0, v1

    goto/16 :goto_6

    .line 1037
    :cond_5db
    const/16 v2, 0x113c

    if-ne p0, v2, :cond_5e2

    move v0, v1

    goto/16 :goto_6

    .line 1038
    :cond_5e2
    const/16 v2, 0x113e

    if-ne p0, v2, :cond_5e9

    move v0, v1

    goto/16 :goto_6

    .line 1039
    :cond_5e9
    const/16 v2, 0x1140

    if-ne p0, v2, :cond_5f0

    move v0, v1

    goto/16 :goto_6

    .line 1040
    :cond_5f0
    const/16 v2, 0x114c

    if-ne p0, v2, :cond_5f7

    move v0, v1

    goto/16 :goto_6

    .line 1041
    :cond_5f7
    const/16 v2, 0x114e

    if-ne p0, v2, :cond_5fe

    move v0, v1

    goto/16 :goto_6

    .line 1042
    :cond_5fe
    const/16 v2, 0x1150

    if-ne p0, v2, :cond_605

    move v0, v1

    goto/16 :goto_6

    .line 1043
    :cond_605
    const/16 v2, 0x1154

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1155

    if-gt p0, v2, :cond_610

    move v0, v1

    goto/16 :goto_6

    .line 1044
    :cond_610
    const/16 v2, 0x1159

    if-ne p0, v2, :cond_617

    move v0, v1

    goto/16 :goto_6

    .line 1045
    :cond_617
    const/16 v2, 0x115f

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1161

    if-gt p0, v2, :cond_622

    move v0, v1

    goto/16 :goto_6

    .line 1046
    :cond_622
    const/16 v2, 0x1163

    if-ne p0, v2, :cond_629

    move v0, v1

    goto/16 :goto_6

    .line 1047
    :cond_629
    const/16 v2, 0x1165

    if-ne p0, v2, :cond_630

    move v0, v1

    goto/16 :goto_6

    .line 1048
    :cond_630
    const/16 v2, 0x1167

    if-ne p0, v2, :cond_637

    move v0, v1

    goto/16 :goto_6

    .line 1049
    :cond_637
    const/16 v2, 0x1169

    if-ne p0, v2, :cond_63e

    move v0, v1

    goto/16 :goto_6

    .line 1050
    :cond_63e
    const/16 v2, 0x116d

    if-lt p0, v2, :cond_6

    const/16 v2, 0x116e

    if-gt p0, v2, :cond_649

    move v0, v1

    goto/16 :goto_6

    .line 1051
    :cond_649
    const/16 v2, 0x1172

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1173

    if-gt p0, v2, :cond_654

    move v0, v1

    goto/16 :goto_6

    .line 1052
    :cond_654
    const/16 v2, 0x1175

    if-ne p0, v2, :cond_65b

    move v0, v1

    goto/16 :goto_6

    .line 1053
    :cond_65b
    const/16 v2, 0x119e

    if-ne p0, v2, :cond_662

    move v0, v1

    goto/16 :goto_6

    .line 1054
    :cond_662
    const/16 v2, 0x11a8

    if-ne p0, v2, :cond_669

    move v0, v1

    goto/16 :goto_6

    .line 1055
    :cond_669
    const/16 v2, 0x11ab

    if-ne p0, v2, :cond_670

    move v0, v1

    goto/16 :goto_6

    .line 1056
    :cond_670
    const/16 v2, 0x11ae

    if-lt p0, v2, :cond_6

    const/16 v2, 0x11af

    if-gt p0, v2, :cond_67b

    move v0, v1

    goto/16 :goto_6

    .line 1057
    :cond_67b
    const/16 v2, 0x11b7

    if-lt p0, v2, :cond_6

    const/16 v2, 0x11b8

    if-gt p0, v2, :cond_686

    move v0, v1

    goto/16 :goto_6

    .line 1058
    :cond_686
    const/16 v2, 0x11ba

    if-ne p0, v2, :cond_68d

    move v0, v1

    goto/16 :goto_6

    .line 1059
    :cond_68d
    const/16 v2, 0x11bc

    if-lt p0, v2, :cond_6

    const/16 v2, 0x11c2

    if-gt p0, v2, :cond_698

    move v0, v1

    goto/16 :goto_6

    .line 1060
    :cond_698
    const/16 v2, 0x11eb

    if-ne p0, v2, :cond_69f

    move v0, v1

    goto/16 :goto_6

    .line 1061
    :cond_69f
    const/16 v2, 0x11f0

    if-ne p0, v2, :cond_6a6

    move v0, v1

    goto/16 :goto_6

    .line 1062
    :cond_6a6
    const/16 v2, 0x11f9

    if-ne p0, v2, :cond_6ad

    move v0, v1

    goto/16 :goto_6

    .line 1063
    :cond_6ad
    const/16 v2, 0x1e00

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1e9b

    if-gt p0, v2, :cond_6b8

    move v0, v1

    goto/16 :goto_6

    .line 1064
    :cond_6b8
    const/16 v2, 0x1ea0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1ef9

    if-gt p0, v2, :cond_6c3

    move v0, v1

    goto/16 :goto_6

    .line 1065
    :cond_6c3
    const/16 v2, 0x1f00

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f15

    if-gt p0, v2, :cond_6ce

    move v0, v1

    goto/16 :goto_6

    .line 1066
    :cond_6ce
    const/16 v2, 0x1f18

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f1d

    if-gt p0, v2, :cond_6d9

    move v0, v1

    goto/16 :goto_6

    .line 1067
    :cond_6d9
    const/16 v2, 0x1f20

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f45

    if-gt p0, v2, :cond_6e4

    move v0, v1

    goto/16 :goto_6

    .line 1068
    :cond_6e4
    const/16 v2, 0x1f48

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f4d

    if-gt p0, v2, :cond_6ef

    move v0, v1

    goto/16 :goto_6

    .line 1069
    :cond_6ef
    const/16 v2, 0x1f50

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f57

    if-gt p0, v2, :cond_6fa

    move v0, v1

    goto/16 :goto_6

    .line 1070
    :cond_6fa
    const/16 v2, 0x1f59

    if-ne p0, v2, :cond_701

    move v0, v1

    goto/16 :goto_6

    .line 1071
    :cond_701
    const/16 v2, 0x1f5b

    if-ne p0, v2, :cond_708

    move v0, v1

    goto/16 :goto_6

    .line 1072
    :cond_708
    const/16 v2, 0x1f5d

    if-ne p0, v2, :cond_70f

    move v0, v1

    goto/16 :goto_6

    .line 1073
    :cond_70f
    const/16 v2, 0x1f5f

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1f7d

    if-gt p0, v2, :cond_71a

    move v0, v1

    goto/16 :goto_6

    .line 1074
    :cond_71a
    const/16 v2, 0x1f80

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1fb4

    if-gt p0, v2, :cond_725

    move v0, v1

    goto/16 :goto_6

    .line 1075
    :cond_725
    const/16 v2, 0x1fb6

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1fbc

    if-gt p0, v2, :cond_730

    move v0, v1

    goto/16 :goto_6

    .line 1076
    :cond_730
    const/16 v2, 0x1fbe

    if-ne p0, v2, :cond_737

    move v0, v1

    goto/16 :goto_6

    .line 1077
    :cond_737
    const/16 v2, 0x1fc2

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1fc4

    if-gt p0, v2, :cond_742

    move v0, v1

    goto/16 :goto_6

    .line 1078
    :cond_742
    const/16 v2, 0x1fc6

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1fcc

    if-gt p0, v2, :cond_74d

    move v0, v1

    goto/16 :goto_6

    .line 1079
    :cond_74d
    const/16 v2, 0x1fd0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1fd3

    if-gt p0, v2, :cond_758

    move v0, v1

    goto/16 :goto_6

    .line 1080
    :cond_758
    const/16 v2, 0x1fd6

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1fdb

    if-gt p0, v2, :cond_763

    move v0, v1

    goto/16 :goto_6

    .line 1081
    :cond_763
    const/16 v2, 0x1fe0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1fec

    if-gt p0, v2, :cond_76e

    move v0, v1

    goto/16 :goto_6

    .line 1082
    :cond_76e
    const/16 v2, 0x1ff2

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1ff4

    if-gt p0, v2, :cond_779

    move v0, v1

    goto/16 :goto_6

    .line 1083
    :cond_779
    const/16 v2, 0x1ff6

    if-lt p0, v2, :cond_6

    const/16 v2, 0x1ffc

    if-gt p0, v2, :cond_784

    move v0, v1

    goto/16 :goto_6

    .line 1084
    :cond_784
    const/16 v2, 0x2126

    if-ne p0, v2, :cond_78b

    move v0, v1

    goto/16 :goto_6

    .line 1085
    :cond_78b
    const/16 v2, 0x212a

    if-lt p0, v2, :cond_6

    const/16 v2, 0x212b

    if-gt p0, v2, :cond_796

    move v0, v1

    goto/16 :goto_6

    .line 1086
    :cond_796
    const/16 v2, 0x212e

    if-ne p0, v2, :cond_79d

    move v0, v1

    goto/16 :goto_6

    .line 1087
    :cond_79d
    const/16 v2, 0x2180

    if-lt p0, v2, :cond_6

    const/16 v2, 0x2182

    if-gt p0, v2, :cond_7a8

    move v0, v1

    goto/16 :goto_6

    .line 1088
    :cond_7a8
    const/16 v2, 0x3007

    if-ne p0, v2, :cond_7af

    move v0, v1

    goto/16 :goto_6

    .line 1089
    :cond_7af
    const/16 v2, 0x3021

    if-lt p0, v2, :cond_6

    const/16 v2, 0x3029

    if-gt p0, v2, :cond_7ba

    move v0, v1

    goto/16 :goto_6

    .line 1090
    :cond_7ba
    const/16 v2, 0x3041

    if-lt p0, v2, :cond_6

    const/16 v2, 0x3094

    if-gt p0, v2, :cond_7c5

    move v0, v1

    goto/16 :goto_6

    .line 1091
    :cond_7c5
    const/16 v2, 0x30a1

    if-lt p0, v2, :cond_6

    const/16 v2, 0x30fa

    if-gt p0, v2, :cond_7d0

    move v0, v1

    goto/16 :goto_6

    .line 1092
    :cond_7d0
    const/16 v2, 0x3105

    if-lt p0, v2, :cond_6

    const/16 v2, 0x312c

    if-gt p0, v2, :cond_7db

    move v0, v1

    goto/16 :goto_6

    .line 1093
    :cond_7db
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_6

    const v2, 0x9fa5

    if-gt p0, v2, :cond_7e7

    move v0, v1

    goto/16 :goto_6

    .line 1094
    :cond_7e7
    const v2, 0xac00

    if-lt p0, v2, :cond_6

    const v2, 0xd7a3

    if-gt p0, v2, :cond_6

    move v0, v1

    goto/16 :goto_6
.end method

.method public static isXMLLetterOrDigit(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 873
    invoke-static {p0}, Lorg/jdom2/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lorg/jdom2/Verifier;->isXMLDigit(C)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isXMLNameCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 840
    invoke-static {p0}, Lorg/jdom2/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/jdom2/Verifier;->isXMLDigit(C)Z

    move-result v0

    if-nez v0, :cond_28

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_28

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_28

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_28

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_28

    invoke-static {p0}, Lorg/jdom2/Verifier;->isXMLCombiningChar(C)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p0}, Lorg/jdom2/Verifier;->isXMLExtender(C)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_28
    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public static isXMLNameStartCharacter(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 858
    invoke-static {p0}, Lorg/jdom2/Verifier;->isXMLLetter(C)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isXMLPublicIDCharacter(C)Z
    .registers 3
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 563
    const/16 v1, 0x61

    if-lt p0, v1, :cond_a

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_a

    .line 578
    :cond_9
    :goto_9
    return v0

    .line 564
    :cond_a
    const/16 v1, 0x3f

    if-lt p0, v1, :cond_12

    const/16 v1, 0x5a

    if-le p0, v1, :cond_9

    .line 565
    :cond_12
    const/16 v1, 0x27

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x3b

    if-le p0, v1, :cond_9

    .line 567
    :cond_1a
    const/16 v1, 0x20

    if-eq p0, v1, :cond_9

    .line 568
    const/16 v1, 0x21

    if-eq p0, v1, :cond_9

    .line 569
    const/16 v1, 0x3d

    if-eq p0, v1, :cond_9

    .line 570
    const/16 v1, 0x23

    if-eq p0, v1, :cond_9

    .line 571
    const/16 v1, 0x24

    if-eq p0, v1, :cond_9

    .line 572
    const/16 v1, 0x5f

    if-eq p0, v1, :cond_9

    .line 573
    const/16 v1, 0x25

    if-eq p0, v1, :cond_9

    .line 574
    const/16 v1, 0xa

    if-eq p0, v1, :cond_9

    .line 575
    const/16 v1, 0xd

    if-eq p0, v1, :cond_9

    .line 576
    const/16 v1, 0x9

    if-eq p0, v1, :cond_9

    .line 578
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isXMLWhitespace(C)Z
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 1310
    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-ne p0, v0, :cond_12

    .line 1311
    :cond_10
    const/4 v0, 0x1

    .line 1313
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
