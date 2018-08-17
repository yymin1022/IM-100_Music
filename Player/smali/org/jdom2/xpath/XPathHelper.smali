.class public final Lorg/jdom2/xpath/XPathHelper;
.super Ljava/lang/Object;
.source "XPathHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method

.method public static getAbsolutePath(Lorg/jdom2/Attribute;)Ljava/lang/String;
    .registers 6
    .param p0, "to"    # Lorg/jdom2/Attribute;

    .prologue
    .line 541
    if-nez p0, :cond_a

    .line 542
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Cannot create a path to a null target"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    :cond_a
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v2

    .line 547
    .local v2, "t":Lorg/jdom2/Element;
    if-nez v2, :cond_18

    .line 548
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot create a path to detached target"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 551
    :cond_18
    move-object v0, v2

    .line 552
    .local v0, "r":Lorg/jdom2/Element;
    :goto_19
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 553
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_19

    .line 555
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-static {v0, v1}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 559
    if-eq v2, v0, :cond_3b

    .line 560
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-static {v0, v2, v1}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 563
    :cond_3b
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {p0, v1}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAbsolutePath(Lorg/jdom2/Content;)Ljava/lang/String;
    .registers 6
    .param p0, "to"    # Lorg/jdom2/Content;

    .prologue
    .line 501
    if-nez p0, :cond_a

    .line 502
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Cannot create a path to a null target"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 506
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v1, "sb":Ljava/lang/StringBuilder;
    instance-of v3, p0, Lorg/jdom2/Element;

    if-eqz v3, :cond_21

    move-object v3, p0

    check-cast v3, Lorg/jdom2/Element;

    move-object v2, v3

    .line 510
    .local v2, "t":Lorg/jdom2/Element;
    :goto_17
    if-nez v2, :cond_26

    .line 511
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot create a path to detached target"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 508
    .end local v2    # "t":Lorg/jdom2/Element;
    :cond_21
    invoke-virtual {p0}, Lorg/jdom2/Content;->getParentElement()Lorg/jdom2/Element;

    move-result-object v2

    goto :goto_17

    .line 514
    .restart local v2    # "t":Lorg/jdom2/Element;
    :cond_26
    move-object v0, v2

    .line 515
    .local v0, "r":Lorg/jdom2/Element;
    :goto_27
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 516
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_27

    .line 518
    :cond_32
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-static {v0, v1}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 520
    if-eq v0, v2, :cond_44

    .line 521
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {v0, v2, v1}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 524
    :cond_44
    if-eq v2, p0, :cond_4e

    .line 525
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-static {p0, v1}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 528
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8
    .param p0, "node"    # Ljava/lang/Object;
    .param p2, "pathToken"    # Ljava/lang/String;
    .param p3, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "siblings":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-eqz p1, :cond_30

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "position":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 154
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_a

    .line 159
    :cond_18
    const/4 v2, 0x1

    if-gt v1, v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 162
    :cond_21
    const/16 v2, 0x5b

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v1    # "position":I
    :cond_30
    return-object p3
.end method

.method private static getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 10
    .param p0, "from"    # Lorg/jdom2/Element;
    .param p1, "to"    # Lorg/jdom2/Element;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 270
    if-ne p0, p1, :cond_8

    .line 271
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :goto_7
    return-object p2

    .line 278
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, "tostack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Element;>;"
    move-object v0, p1

    .line 280
    .local v0, "e":Lorg/jdom2/Element;
    :goto_e
    if-eqz v0, :cond_1a

    if-eq v0, p0, :cond_1a

    .line 281
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_e

    .line 286
    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 288
    .local v3, "pos":I
    if-eq v0, p0, :cond_45

    .line 293
    move-object v1, p0

    .line 294
    .local v1, "f":Lorg/jdom2/Element;
    const/4 v2, 0x0

    .line 296
    .local v2, "fcnt":I
    :goto_22
    if-eqz v1, :cond_31

    invoke-static {v1, v4}, Lorg/jdom2/xpath/XPathHelper;->locate(Lorg/jdom2/Element;Ljava/util/List;)I

    move-result v3

    if-gez v3, :cond_31

    .line 299
    add-int/lit8 v2, v2, 0x1

    .line 300
    invoke-virtual {v1}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v1

    goto :goto_22

    .line 302
    :cond_31
    if-nez v1, :cond_3b

    .line 303
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The \'from\' and \'to\' Element have no common ancestor."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_45

    .line 309
    const-string v5, "../"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 314
    .end local v1    # "f":Lorg/jdom2/Element;
    .end local v2    # "fcnt":I
    :cond_45
    :goto_45
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_58

    .line 315
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jdom2/NamespaceAware;

    invoke-static {v5, p2}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 316
    const-string v5, "/"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 319
    :cond_58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_7
.end method

.method public static getRelativePath(Lorg/jdom2/Attribute;Lorg/jdom2/Attribute;)Ljava/lang/String;
    .registers 5
    .param p0, "from"    # Lorg/jdom2/Attribute;
    .param p1, "to"    # Lorg/jdom2/Attribute;

    .prologue
    .line 437
    if-nez p0, :cond_a

    .line 438
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot create a path from a null \'from\'"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 441
    :cond_a
    if-nez p1, :cond_14

    .line 442
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot create a path to a null target"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    :cond_14
    if-ne p0, p1, :cond_19

    .line 446
    const-string v1, "."

    .line 455
    :goto_18
    return-object v1

    .line 449
    :cond_19
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    .line 450
    .local v0, "f":Lorg/jdom2/Element;
    if-nez v0, :cond_27

    .line 451
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a path from a detached attrbibute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p1}, Lorg/jdom2/xpath/XPathHelper;->getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Attribute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method

.method public static getRelativePath(Lorg/jdom2/Attribute;Lorg/jdom2/Content;)Ljava/lang/String;
    .registers 5
    .param p0, "from"    # Lorg/jdom2/Attribute;
    .param p1, "to"    # Lorg/jdom2/Content;

    .prologue
    .line 472
    if-nez p0, :cond_a

    .line 473
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot create a path from a null \'from\'"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :cond_a
    if-nez p1, :cond_14

    .line 477
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot create a path to a null target"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 480
    :cond_14
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    .line 481
    .local v0, "f":Lorg/jdom2/Element;
    if-nez v0, :cond_22

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot create a path from a detached attrbibute"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_22
    if-ne v0, p1, :cond_27

    .line 486
    const-string v1, ".."

    .line 488
    :goto_26
    return-object v1

    :cond_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "../"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, p1}, Lorg/jdom2/xpath/XPathHelper;->getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Content;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26
.end method

.method public static getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Attribute;)Ljava/lang/String;
    .registers 6
    .param p0, "from"    # Lorg/jdom2/Content;
    .param p1, "to"    # Lorg/jdom2/Attribute;

    .prologue
    .line 403
    if-nez p0, :cond_a

    .line 404
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot create a path from a null Content"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 407
    :cond_a
    if-nez p1, :cond_14

    .line 408
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot create a path to a null Attribute"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_14
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v1

    .line 412
    .local v1, "t":Lorg/jdom2/Element;
    if-nez v1, :cond_22

    .line 413
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot create a path to detached Attribute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, v1}, Lorg/jdom2/xpath/XPathHelper;->getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Content;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {p1, v0}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getRelativePath(Lorg/jdom2/Content;Lorg/jdom2/Content;)Ljava/lang/String;
    .registers 7
    .param p0, "from"    # Lorg/jdom2/Content;
    .param p1, "to"    # Lorg/jdom2/Content;

    .prologue
    .line 357
    if-nez p0, :cond_a

    .line 358
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Cannot create a path from a null target"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_a
    if-nez p1, :cond_14

    .line 362
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Cannot create a path to a null target"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-ne p0, p1, :cond_1e

    .line 367
    const-string v3, "."

    .line 386
    .end local p1    # "to":Lorg/jdom2/Content;
    :goto_1d
    return-object v3

    .line 369
    .restart local p1    # "to":Lorg/jdom2/Content;
    :cond_1e
    instance-of v3, p0, Lorg/jdom2/Element;

    if-eqz v3, :cond_3b

    move-object v3, p0

    check-cast v3, Lorg/jdom2/Element;

    move-object v0, v3

    .line 371
    .local v0, "efrom":Lorg/jdom2/Element;
    :goto_26
    if-eq p0, v0, :cond_2d

    .line 372
    const-string v3, "../"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_2d
    instance-of v3, p1, Lorg/jdom2/Element;

    if-eqz v3, :cond_40

    .line 375
    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "to":Lorg/jdom2/Content;
    invoke-static {v0, p1, v1}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 386
    :goto_36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 369
    .end local v0    # "efrom":Lorg/jdom2/Element;
    .restart local p1    # "to":Lorg/jdom2/Content;
    :cond_3b
    invoke-virtual {p0}, Lorg/jdom2/Content;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_26

    .line 377
    .restart local v0    # "efrom":Lorg/jdom2/Element;
    :cond_40
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParentElement()Lorg/jdom2/Element;

    move-result-object v2

    .line 378
    .local v2, "telement":Lorg/jdom2/Element;
    if-nez v2, :cond_4e

    .line 379
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot get a relative XPath to detached content."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 382
    :cond_4e
    invoke-static {v0, v2, v1}, Lorg/jdom2/xpath/XPathHelper;->getRelativeElementPath(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 383
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {p1, v1}, Lorg/jdom2/xpath/XPathHelper;->getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_36
.end method

.method private static final getSingleStep(Lorg/jdom2/NamespaceAware;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 11
    .param p0, "nsa"    # Lorg/jdom2/NamespaceAware;
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 179
    instance-of v7, p0, Lorg/jdom2/Content;

    if-eqz v7, :cond_ca

    move-object v1, p0

    .line 181
    check-cast v1, Lorg/jdom2/Content;

    .line 183
    .local v1, "content":Lorg/jdom2/Content;
    invoke-virtual {v1}, Lorg/jdom2/Content;->getParentElement()Lorg/jdom2/Element;

    move-result-object v4

    .line 185
    .local v4, "pnt":Lorg/jdom2/Element;
    instance-of v7, v1, Lorg/jdom2/Text;

    if-eqz v7, :cond_22

    .line 187
    if-nez v4, :cond_19

    .line 189
    .local v5, "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_12
    const-string v7, "text()"

    invoke-static {v1, v5, v7, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 249
    .end local v1    # "content":Lorg/jdom2/Content;
    .end local v4    # "pnt":Lorg/jdom2/Element;
    .end local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local p1    # "buffer":Ljava/lang/StringBuilder;
    :cond_18
    :goto_18
    return-object p1

    .line 187
    .restart local v1    # "content":Lorg/jdom2/Content;
    .restart local v4    # "pnt":Lorg/jdom2/Element;
    .restart local p1    # "buffer":Ljava/lang/StringBuilder;
    :cond_19
    invoke-static {}, Lorg/jdom2/filter/Filters;->text()Lorg/jdom2/filter/Filter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jdom2/Element;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v5

    goto :goto_12

    .line 191
    :cond_22
    instance-of v7, v1, Lorg/jdom2/Comment;

    if-eqz v7, :cond_38

    .line 193
    if-nez v4, :cond_2f

    .line 195
    .restart local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_28
    const-string v7, "comment()"

    invoke-static {v1, v5, v7, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_18

    .line 193
    .end local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_2f
    invoke-static {}, Lorg/jdom2/filter/Filters;->comment()Lorg/jdom2/filter/Filter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jdom2/Element;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v5

    goto :goto_28

    .line 197
    :cond_38
    instance-of v7, v1, Lorg/jdom2/ProcessingInstruction;

    if-eqz v7, :cond_4e

    .line 199
    if-nez v4, :cond_45

    .line 201
    .restart local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_3e
    const-string v7, "processing-instruction()"

    invoke-static {v1, v5, v7, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_18

    .line 199
    .end local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_45
    invoke-static {}, Lorg/jdom2/filter/Filters;->processinginstruction()Lorg/jdom2/filter/Filter;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/jdom2/Element;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v5

    goto :goto_3e

    .line 204
    :cond_4e
    instance-of v7, v1, Lorg/jdom2/Element;

    if-eqz v7, :cond_70

    move-object v7, v1

    check-cast v7, Lorg/jdom2/Element;

    invoke-virtual {v7}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v7

    sget-object v8, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v7, v8, :cond_70

    move-object v7, v1

    .line 209
    check-cast v7, Lorg/jdom2/Element;

    invoke-virtual {v7}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "ename":Ljava/lang/String;
    if-nez v4, :cond_6b

    .line 212
    .restart local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_66
    invoke-static {v1, v5, v3, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_18

    .line 210
    .end local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_6b
    invoke-virtual {v4, v3}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    goto :goto_66

    .line 214
    .end local v3    # "ename":Ljava/lang/String;
    :cond_70
    instance-of v7, v1, Lorg/jdom2/Element;

    if-eqz v7, :cond_b7

    move-object v2, v1

    .line 219
    check-cast v2, Lorg/jdom2/Element;

    .line 223
    .local v2, "emt":Lorg/jdom2/Element;
    if-nez v4, :cond_aa

    .line 225
    .restart local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_79
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "*[local-name() = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' and namespace-uri() = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\']"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "xps":Ljava/lang/String;
    invoke-static {v1, v5, v6, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto/16 :goto_18

    .line 223
    .end local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "xps":Ljava/lang/String;
    :cond_aa
    invoke-virtual {v2}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v5

    goto :goto_79

    .line 232
    .end local v2    # "emt":Lorg/jdom2/Element;
    :cond_b7
    if-nez v4, :cond_c5

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 234
    .restart local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :goto_bd
    const-string v7, "node()"

    invoke-static {v1, v5, v7, p1}, Lorg/jdom2/xpath/XPathHelper;->getPositionPath(Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto/16 :goto_18

    .line 232
    .end local v5    # "sibs":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_c5
    invoke-virtual {v4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v5

    goto :goto_bd

    .line 237
    .end local v1    # "content":Lorg/jdom2/Content;
    .end local v4    # "pnt":Lorg/jdom2/Element;
    :cond_ca
    instance-of v7, p0, Lorg/jdom2/Attribute;

    if-eqz v7, :cond_18

    move-object v0, p0

    .line 238
    check-cast v0, Lorg/jdom2/Attribute;

    .line 239
    .local v0, "att":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v7

    sget-object v8, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v7, v8, :cond_e8

    .line 240
    const-string v7, "@"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18

    .line 242
    :cond_e8
    const-string v7, "@*[local-name() = \'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v7, "\' and namespace-uri() = \'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\']"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18
.end method

.method private static locate(Lorg/jdom2/Element;Ljava/util/List;)I
    .registers 4
    .param p0, "f"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Element;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "tostack":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Element;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 335
    .local v0, "ret":I
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    .line 336
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p0, v1, :cond_4

    .line 340
    .end local v0    # "ret":I
    :goto_e
    return v0

    .restart local v0    # "ret":I
    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method
