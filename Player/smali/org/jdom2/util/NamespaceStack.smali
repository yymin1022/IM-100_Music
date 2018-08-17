.class public final Lorg/jdom2/util/NamespaceStack;
.super Ljava/lang/Object;
.source "NamespaceStack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/util/NamespaceStack$EmptyIterable;,
        Lorg/jdom2/util/NamespaceStack$NamespaceIterable;,
        Lorg/jdom2/util/NamespaceStack$BackwardWalker;,
        Lorg/jdom2/util/NamespaceStack$ForwardWalker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/jdom2/Namespace;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULTSEED:[Lorg/jdom2/Namespace;

.field private static final EMPTY:[Lorg/jdom2/Namespace;

.field private static final EMPTYITER:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private static final NSCOMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private added:[[Lorg/jdom2/Namespace;

.field private depth:I

.field private scope:[[Lorg/jdom2/Namespace;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 229
    new-array v0, v2, [Lorg/jdom2/Namespace;

    sput-object v0, Lorg/jdom2/util/NamespaceStack;->EMPTY:[Lorg/jdom2/Namespace;

    .line 231
    new-instance v0, Lorg/jdom2/util/NamespaceStack$EmptyIterable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/util/NamespaceStack$EmptyIterable;-><init>(Lorg/jdom2/util/NamespaceStack$1;)V

    sput-object v0, Lorg/jdom2/util/NamespaceStack;->EMPTYITER:Ljava/lang/Iterable;

    .line 234
    new-instance v0, Lorg/jdom2/util/NamespaceStack$1;

    invoke-direct {v0}, Lorg/jdom2/util/NamespaceStack$1;-><init>()V

    sput-object v0, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jdom2/Namespace;

    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jdom2/util/NamespaceStack;->DEFAULTSEED:[Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 328
    sget-object v0, Lorg/jdom2/util/NamespaceStack;->DEFAULTSEED:[Lorg/jdom2/Namespace;

    invoke-direct {p0, v0}, Lorg/jdom2/util/NamespaceStack;-><init>([Lorg/jdom2/Namespace;)V

    .line 329
    return-void
.end method

.method public constructor <init>([Lorg/jdom2/Namespace;)V
    .registers 6
    .param p1, "seed"    # [Lorg/jdom2/Namespace;

    .prologue
    const/16 v1, 0xa

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    new-array v0, v1, [[Lorg/jdom2/Namespace;

    iput-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    .line 318
    new-array v0, v1, [[Lorg/jdom2/Namespace;

    iput-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    .line 320
    const/4 v0, -0x1

    iput v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 338
    iget v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 339
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aput-object p1, v0, v1

    .line 341
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 342
    return-void
.end method

.method private static final binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I
    .registers 8
    .param p0, "data"    # [Lorg/jdom2/Namespace;
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "key"    # Lorg/jdom2/Namespace;

    .prologue
    .line 290
    add-int/lit8 p2, p2, -0x1

    .line 292
    :goto_2
    if-gt p1, p2, :cond_1f

    .line 296
    add-int v2, p1, p2

    ushr-int/lit8 v1, v2, 0x1

    .line 297
    .local v1, "mid":I
    aget-object v2, p0, v1

    if-ne v2, p3, :cond_d

    .line 312
    .end local v1    # "mid":I
    :cond_c
    :goto_c
    return v1

    .line 301
    .restart local v1    # "mid":I
    :cond_d
    sget-object v2, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    aget-object v3, p0, v1

    invoke-interface {v2, v3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 303
    .local v0, "cmp":I
    if-gez v0, :cond_1a

    .line 304
    add-int/lit8 p1, v1, 0x1

    goto :goto_2

    .line 305
    :cond_1a
    if-lez v0, :cond_c

    .line 306
    add-int/lit8 p2, v1, -0x1

    goto :goto_2

    .line 312
    .end local v0    # "cmp":I
    .end local v1    # "mid":I
    :cond_1f
    neg-int v2, p1

    add-int/lit8 v1, v2, -0x1

    goto :goto_c
.end method

.method private static final checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;
    .registers 8
    .param p1, "namespace"    # Lorg/jdom2/Namespace;
    .param p2, "scope"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;",
            "Lorg/jdom2/Namespace;",
            "[",
            "Lorg/jdom2/Namespace;",
            ")[",
            "Lorg/jdom2/Namespace;"
        }
    .end annotation

    .prologue
    .local p0, "store":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    const/4 v4, 0x0

    .line 362
    aget-object v2, p2, v4

    if-ne p1, v2, :cond_7

    move-object v1, p2

    .line 393
    :goto_6
    return-object v1

    .line 366
    :cond_7
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v4

    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 369
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    array-length v2, p2

    invoke-static {p2, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/Namespace;

    .line 371
    .local v1, "nscope":[Lorg/jdom2/Namespace;
    aput-object p1, v1, v4

    goto :goto_6

    .line 375
    .end local v1    # "nscope":[Lorg/jdom2/Namespace;
    :cond_24
    const/4 v2, 0x1

    array-length v3, p2

    invoke-static {p2, v2, v3, p1}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v0

    .line 376
    .local v0, "ip":I
    if-ltz v0, :cond_32

    aget-object v2, p2, v0

    if-ne p1, v2, :cond_32

    move-object v1, p2

    .line 378
    goto :goto_6

    .line 380
    :cond_32
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    if-ltz v0, :cond_41

    .line 384
    array-length v2, p2

    invoke-static {p2, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/Namespace;

    .line 385
    .restart local v1    # "nscope":[Lorg/jdom2/Namespace;
    aput-object p1, v1, v0

    goto :goto_6

    .line 389
    .end local v1    # "nscope":[Lorg/jdom2/Namespace;
    :cond_41
    array-length v2, p2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/Namespace;

    .line 390
    .restart local v1    # "nscope":[Lorg/jdom2/Namespace;
    neg-int v2, v0

    add-int/lit8 v0, v2, -0x1

    .line 391
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    aput-object p1, v1, v0

    goto :goto_6
.end method

.method private final pushStack(Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;Ljava/util/List;)V
    .registers 11
    .param p1, "mns"    # Lorg/jdom2/Namespace;
    .param p2, "newscope"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Namespace;",
            "[",
            "Lorg/jdom2/Namespace;",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "toadd":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 481
    iget v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 483
    iget v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    array-length v3, v3

    if-lt v2, v3, :cond_2b

    .line 485
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/jdom2/Namespace;

    iput-object v2, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    .line 486
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/jdom2/Namespace;

    iput-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    .line 490
    :cond_2b
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 492
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    sget-object v4, Lorg/jdom2/util/NamespaceStack;->EMPTY:[Lorg/jdom2/Namespace;

    aput-object v4, v2, v3

    .line 502
    :goto_39
    aget-object v2, p2, v5

    if-eq p1, v2, :cond_65

    .line 503
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 506
    array-length v2, p2

    invoke-static {p2, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "newscope":[Lorg/jdom2/Namespace;
    check-cast p2, [Lorg/jdom2/Namespace;

    .line 512
    .restart local p2    # "newscope":[Lorg/jdom2/Namespace;
    :cond_4a
    aget-object v1, p2, v5

    .line 513
    .local v1, "tmp":Lorg/jdom2/Namespace;
    array-length v2, p2

    invoke-static {p2, v6, v2, v1}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v0, v2, -0x1

    .line 517
    .local v0, "ip":I
    add-int/lit8 v0, v0, -0x1

    .line 518
    invoke-static {p2, v6, p2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    aput-object v1, p2, v0

    .line 521
    array-length v2, p2

    invoke-static {p2, v5, v2, p1}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v0

    .line 523
    invoke-static {p2, v5, p2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    aput-object p1, p2, v5

    .line 527
    .end local v0    # "ip":I
    .end local v1    # "tmp":Lorg/jdom2/Namespace;
    :cond_65
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aput-object p2, v2, v3

    .line 528
    return-void

    .line 494
    :cond_6c
    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v4, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jdom2/Namespace;

    invoke-interface {p3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jdom2/Namespace;

    aput-object v2, v3, v4

    .line 495
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v2, v2, v3

    aget-object v2, v2, v5

    if-ne v2, p1, :cond_9b

    .line 496
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v4, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v3, v3, v4

    array-length v3, v3

    sget-object v4, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    invoke-static {v2, v6, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_39

    .line 498
    :cond_9b
    iget-object v2, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v3, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v2, v2, v3

    sget-object v3, Lorg/jdom2/util/NamespaceStack;->NSCOMP:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_39
.end method


# virtual methods
.method public addedForward()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v1

    array-length v0, v0

    if-nez v0, :cond_c

    .line 551
    sget-object v0, Lorg/jdom2/util/NamespaceStack;->EMPTYITER:Ljava/lang/Iterable;

    .line 553
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;

    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;-><init>([Lorg/jdom2/Namespace;Z)V

    goto :goto_b
.end method

.method public addedReverse()Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v1

    array-length v0, v0

    if-nez v0, :cond_c

    .line 564
    sget-object v0, Lorg/jdom2/util/NamespaceStack;->EMPTYITER:Ljava/lang/Iterable;

    .line 566
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;

    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jdom2/util/NamespaceStack$NamespaceIterable;-><init>([Lorg/jdom2/Namespace;Z)V

    goto :goto_b
.end method

.method public getScope()[Lorg/jdom2/Namespace;
    .registers 4

    .prologue
    .line 585
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v1, v1, v2

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public isInScope(Lorg/jdom2/Namespace;)Z
    .registers 8
    .param p1, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 595
    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v4, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v3, v3, v4

    aget-object v3, v3, v2

    if-ne p1, v3, :cond_d

    .line 603
    :cond_c
    :goto_c
    return v1

    .line 598
    :cond_d
    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v4, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v5, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v4, v4, v5

    array-length v4, v4

    invoke-static {v3, v1, v4, p1}, Lorg/jdom2/util/NamespaceStack;->binarySearch([Lorg/jdom2/Namespace;IILorg/jdom2/Namespace;)I

    move-result v0

    .line 599
    .local v0, "ip":I
    if-ltz v0, :cond_2c

    .line 601
    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v4, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    if-eq p1, v3, :cond_c

    move v1, v2

    goto :goto_c

    :cond_2c
    move v1, v2

    .line 603
    goto :goto_c
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Lorg/jdom2/util/NamespaceStack$ForwardWalker;

    iget-object v1, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v2, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lorg/jdom2/util/NamespaceStack$ForwardWalker;-><init>([Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public pop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 535
    iget v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    if-gtz v0, :cond_d

    .line 536
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot over-pop the stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_d
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aput-object v2, v0, v1

    .line 539
    iget-object v0, p0, Lorg/jdom2/util/NamespaceStack;->added:[[Lorg/jdom2/Namespace;

    iget v1, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aput-object v2, v0, v1

    .line 540
    iget v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    .line 541
    return-void
.end method

.method public push(Lorg/jdom2/Attribute;)V
    .registers 7
    .param p1, "att"    # Lorg/jdom2/Attribute;

    .prologue
    .line 469
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 470
    .local v2, "toadd":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 472
    .local v0, "mns":Lorg/jdom2/Namespace;
    iget-object v3, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v4, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v3, v3, v4

    invoke-static {v2, v0, v3}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v1

    .line 474
    .local v1, "newscope":[Lorg/jdom2/Namespace;
    invoke-direct {p0, v0, v1, v2}, Lorg/jdom2/util/NamespaceStack;->pushStack(Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;Ljava/util/List;)V

    .line 475
    return-void
.end method

.method public push(Lorg/jdom2/Element;)V
    .registers 10
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 430
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 431
    .local v5, "toadd":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    .line 433
    .local v2, "mns":Lorg/jdom2/Namespace;
    iget-object v6, p0, Lorg/jdom2/util/NamespaceStack;->scope:[[Lorg/jdom2/Namespace;

    iget v7, p0, Lorg/jdom2/util/NamespaceStack;->depth:I

    aget-object v6, v6, v7

    invoke-static {v5, v2, v6}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v3

    .line 434
    .local v3, "newscope":[Lorg/jdom2/Namespace;
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAdditionalNamespaces()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 435
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Namespace;

    .line 436
    .local v4, "ns":Lorg/jdom2/Namespace;
    if-eq v4, v2, :cond_23

    .line 440
    invoke-static {v5, v4, v3}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v3

    goto :goto_23

    .line 443
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    :cond_36
    invoke-virtual {p1}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 444
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_44
    :goto_44
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 445
    .local v0, "a":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    .line 446
    .restart local v4    # "ns":Lorg/jdom2/Namespace;
    sget-object v6, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq v4, v6, :cond_44

    .line 451
    if-eq v4, v2, :cond_44

    .line 455
    invoke-static {v5, v4, v3}, Lorg/jdom2/util/NamespaceStack;->checkNamespace(Ljava/util/List;Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;)[Lorg/jdom2/Namespace;

    move-result-object v3

    .line 456
    goto :goto_44

    .line 459
    .end local v0    # "a":Lorg/jdom2/Attribute;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    :cond_5f
    invoke-direct {p0, v2, v3, v5}, Lorg/jdom2/util/NamespaceStack;->pushStack(Lorg/jdom2/Namespace;[Lorg/jdom2/Namespace;Ljava/util/List;)V

    .line 461
    return-void
.end method
