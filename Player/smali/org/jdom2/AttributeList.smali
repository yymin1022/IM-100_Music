.class final Lorg/jdom2/AttributeList;
.super Ljava/util/AbstractList;
.source "AttributeList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/AttributeList$1;,
        Lorg/jdom2/AttributeList$ALIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/jdom2/Attribute;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final INITIAL_ARRAY_SIZE:I = 0x4


# instance fields
.field private attributeData:[Lorg/jdom2/Attribute;

.field private final parent:Lorg/jdom2/Element;

.field private size:I


# direct methods
.method constructor <init>(Lorg/jdom2/Element;)V
    .registers 2
    .param p1, "parent"    # Lorg/jdom2/Element;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lorg/jdom2/AttributeList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .prologue
    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
.end method

.method static synthetic access$200(Lorg/jdom2/AttributeList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .prologue
    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    return v0
.end method

.method static synthetic access$300(Lorg/jdom2/AttributeList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .prologue
    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
.end method

.method static synthetic access$400(Lorg/jdom2/AttributeList;)[Lorg/jdom2/Attribute;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jdom2/AttributeList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .prologue
    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/jdom2/AttributeList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/AttributeList;

    .prologue
    .line 75
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    return v0
.end method

.method private final binarySearch([IIILjava/util/Comparator;)I
    .registers 12
    .param p1, "indexes"    # [I
    .param p2, "len"    # I
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Ljava/util/Comparator",
            "<-",
            "Lorg/jdom2/Attribute;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 546
    .local p4, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Attribute;>;"
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .local v3, "mid":I
    add-int/lit8 v4, p2, -0x1

    .local v4, "right":I
    const/4 v1, 0x0

    .line 547
    .local v1, "cmp":I
    iget-object v5, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v0, v5, p3

    .line 548
    .local v0, "base":Lorg/jdom2/Attribute;
    :goto_9
    if-gt v2, v4, :cond_32

    .line 549
    add-int v5, v2, v4

    ushr-int/lit8 v3, v5, 0x1

    .line 550
    iget-object v5, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget v6, p1, v3

    aget-object v5, v5, v6

    invoke-interface {p4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 551
    if-nez v1, :cond_33

    .line 553
    :goto_1b
    if-nez v1, :cond_30

    if-ge v3, v4, :cond_30

    iget-object v5, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    aget-object v5, v5, v6

    invoke-interface {p4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_30

    .line 554
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 556
    :cond_30
    add-int/lit8 v2, v3, 0x1

    .line 563
    .end local v2    # "left":I
    :cond_32
    return v2

    .line 557
    .restart local v2    # "left":I
    :cond_33
    if-gez v1, :cond_38

    .line 558
    add-int/lit8 v4, v3, -0x1

    goto :goto_9

    .line 560
    :cond_38
    add-int/lit8 v2, v3, 0x1

    goto :goto_9
.end method

.method private ensureCapacity(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    if-nez v0, :cond_e

    .line 333
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lorg/jdom2/Attribute;

    iput-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 344
    :cond_d
    :goto_d
    return-void

    .line 336
    :cond_e
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 342
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v1, p1, 0x4

    ushr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Attribute;

    iput-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    goto :goto_d
.end method

.method private indexOfDuplicate(Lorg/jdom2/Attribute;)I
    .registers 4
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 497
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v0

    return v0
.end method

.method private sortInPlace([I)V
    .registers 8
    .param p1, "indexes"    # [I

    .prologue
    .line 570
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v1

    .line 571
    .local v1, "unsorted":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 572
    array-length v3, v1

    new-array v2, v3, [Lorg/jdom2/Attribute;

    .line 573
    .local v2, "usc":[Lorg/jdom2/Attribute;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 574
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget v4, p1, v0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 577
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    array-length v3, p1

    if-ge v0, v3, :cond_29

    .line 578
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget v4, v1, v0

    aget-object v5, v2, v0

    aput-object v5, v3, v4

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 580
    :cond_29
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p2, Lorg/jdom2/Attribute;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/AttributeList;->add(ILorg/jdom2/Attribute;)V

    return-void
.end method

.method public add(ILorg/jdom2/Attribute;)V
    .registers 9
    .param p1, "index"    # I
    .param p2, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 150
    if-ltz p1, :cond_6

    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    if-le p1, v2, :cond_2d

    .line 151
    :cond_6
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_2d
    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 156
    new-instance v2, Lorg/jdom2/IllegalAddException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The attribute already has an existing parent \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_5a
    invoke-direct {p0, p2}, Lorg/jdom2/AttributeList;->indexOfDuplicate(Lorg/jdom2/Attribute;)I

    move-result v0

    .line 161
    .local v0, "duplicate":I
    if-ltz v0, :cond_68

    .line 162
    new-instance v2, Lorg/jdom2/IllegalAddException;

    const-string v3, "Cannot add duplicate attribute"

    invoke-direct {v2, v3}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_68
    iget-object v2, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-static {p2, v2}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_78

    .line 167
    new-instance v2, Lorg/jdom2/IllegalAddException;

    iget-object v3, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-direct {v2, v3, p2, v1}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Attribute;Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_78
    iget-object v2, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {p2, v2}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 172
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/jdom2/AttributeList;->ensureCapacity(I)V

    .line 173
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    if-ne p1, v2, :cond_99

    .line 174
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object p2, v2, v3

    .line 181
    :goto_92
    iget v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 182
    return-void

    .line 176
    :cond_99
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lorg/jdom2/AttributeList;->size:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v2, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aput-object p2, v2, p1

    .line 179
    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom2/AttributeList;->size:I

    goto :goto_92
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lorg/jdom2/Attribute;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/jdom2/AttributeList;->add(Lorg/jdom2/Attribute;)Z

    move-result v0

    return v0
.end method

.method public add(Lorg/jdom2/Attribute;)Z
    .registers 4
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lorg/jdom2/AttributeList;->indexOfDuplicate(Lorg/jdom2/Attribute;)I

    move-result v0

    .line 129
    .local v0, "duplicate":I
    if-gez v0, :cond_f

    .line 130
    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/jdom2/AttributeList;->add(ILorg/jdom2/Attribute;)V

    .line 135
    :goto_d
    const/4 v1, 0x1

    return v1

    .line 133
    :cond_f
    invoke-virtual {p0, v0, p1}, Lorg/jdom2/AttributeList;->set(ILorg/jdom2/Attribute;)Lorg/jdom2/Attribute;

    goto :goto_d
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Attribute;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Attribute;>;"
    const/4 v7, 0x1

    .line 216
    if-ltz p1, :cond_7

    iget v6, p0, Lorg/jdom2/AttributeList;->size:I

    if-le p1, v6, :cond_2e

    .line 217
    :cond_7
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 221
    :cond_2e
    if-nez p2, :cond_38

    .line 222
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "Can not add a null Collection to AttributeList"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 225
    :cond_38
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 226
    .local v0, "addcnt":I
    if-nez v0, :cond_40

    .line 227
    const/4 v6, 0x0

    .line 257
    :goto_3f
    return v6

    .line 229
    :cond_40
    if-ne v0, v7, :cond_51

    .line 231
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom2/Attribute;

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/AttributeList;->add(ILorg/jdom2/Attribute;)V

    move v6, v7

    .line 232
    goto :goto_3f

    .line 235
    :cond_51
    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v6

    add-int/2addr v6, v0

    invoke-direct {p0, v6}, Lorg/jdom2/AttributeList;->ensureCapacity(I)V

    .line 237
    iget v5, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 238
    .local v5, "tmpmodcount":I
    const/4 v4, 0x0

    .line 240
    .local v4, "ok":Z
    const/4 v2, 0x0

    .line 243
    .local v2, "count":I
    :try_start_5d
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Attribute;

    .line 244
    .local v1, "att":Lorg/jdom2/Attribute;
    add-int v6, p1, v2

    invoke-virtual {p0, v6, v1}, Lorg/jdom2/AttributeList;->add(ILorg/jdom2/Attribute;)V
    :try_end_72
    .catchall {:try_start_5d .. :try_end_72} :catchall_86

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 247
    .end local v1    # "att":Lorg/jdom2/Attribute;
    :cond_75
    const/4 v4, 0x1

    .line 249
    if-nez v4, :cond_84

    .line 250
    :goto_78
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_82

    .line 251
    add-int v6, p1, v2

    invoke-virtual {p0, v6}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    goto :goto_78

    .line 253
    :cond_82
    iput v5, p0, Lorg/jdom2/AttributeList;->modCount:I

    :cond_84
    move v6, v7

    .line 257
    goto :goto_3f

    .line 249
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_86
    move-exception v6

    if-nez v4, :cond_95

    .line 250
    :goto_89
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_93

    .line 251
    add-int v7, p1, v2

    invoke-virtual {p0, v7}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    goto :goto_89

    .line 253
    :cond_93
    iput v5, p0, Lorg/jdom2/AttributeList;->modCount:I

    :cond_95
    throw v6
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Attribute;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Attribute;>;"
    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/jdom2/AttributeList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    if-eqz v0, :cond_1f

    .line 266
    :goto_5
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-lez v0, :cond_1f

    .line 267
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom2/AttributeList;->size:I

    .line 268
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v1, p0, Lorg/jdom2/AttributeList;->size:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 269
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v1, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object v2, v0, v1

    goto :goto_5

    .line 272
    :cond_1f
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 273
    return-void
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Attribute;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 284
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 285
    :cond_a
    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->clear()V

    .line 321
    :cond_d
    :goto_d
    return-void

    .line 290
    :cond_e
    iget-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 291
    .local v1, "old":[Lorg/jdom2/Attribute;
    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    .line 292
    .local v3, "oldSize":I
    iget v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 298
    .local v2, "oldModCount":I
    :goto_14
    iget v4, p0, Lorg/jdom2/AttributeList;->size:I

    if-lez v4, :cond_24

    .line 299
    iget v4, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jdom2/AttributeList;->size:I

    aget-object v4, v1, v4

    invoke-virtual {v4, v6}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    goto :goto_14

    .line 301
    :cond_24
    iput v5, p0, Lorg/jdom2/AttributeList;->size:I

    .line 302
    iput-object v6, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "ok":Z
    const/4 v4, 0x0

    :try_start_2a
    invoke-virtual {p0, v4, p1}, Lorg/jdom2/AttributeList;->addAll(ILjava/util/Collection;)Z
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_49

    .line 307
    const/4 v0, 0x1

    .line 309
    if-nez v0, :cond_d

    .line 313
    iput-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 314
    :goto_32
    iget v4, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge v4, v3, :cond_46

    .line 315
    iget-object v4, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v5, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/jdom2/AttributeList;->size:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {v4, v5}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    goto :goto_32

    .line 317
    :cond_46
    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    goto :goto_d

    .line 309
    :catchall_49
    move-exception v4

    if-nez v0, :cond_64

    .line 313
    iput-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    .line 314
    :goto_4e
    iget v5, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge v5, v3, :cond_62

    .line 315
    iget-object v5, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v6, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/jdom2/AttributeList;->size:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {v5, v6}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    goto :goto_4e

    .line 317
    :cond_62
    iput v2, p0, Lorg/jdom2/AttributeList;->modCount:I

    :cond_64
    throw v4
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/AttributeList;->get(I)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 355
    if-ltz p1, :cond_6

    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-lt p1, v0, :cond_2d

    .line 356
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_2d
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v0, v0, p1

    return-object v0
.end method

.method get(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v0

    .line 375
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 376
    const/4 v1, 0x0

    .line 378
    :goto_7
    return-object v1

    :cond_8
    iget-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v1, v1, v0

    goto :goto_7
.end method

.method indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 393
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    if-eqz v3, :cond_31

    .line 394
    if-nez p2, :cond_d

    .line 395
    sget-object v3, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v3}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v1

    .line 406
    :cond_c
    :goto_c
    return v1

    .line 397
    :cond_d
    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "uri":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    if-ge v1, v3, :cond_31

    .line 399
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v0, v3, v1

    .line 400
    .local v0, "att":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 398
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 406
    .end local v0    # "att":Lorg/jdom2/Attribute;
    .end local v1    # "i":I
    .end local v2    # "uri":Ljava/lang/String;
    :cond_31
    const/4 v1, -0x1

    goto :goto_c
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 523
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    new-instance v0, Lorg/jdom2/AttributeList$ALIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jdom2/AttributeList$ALIterator;-><init>(Lorg/jdom2/AttributeList;Lorg/jdom2/AttributeList$1;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/jdom2/Attribute;
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 418
    if-ltz p1, :cond_7

    iget v1, p0, Lorg/jdom2/AttributeList;->size:I

    if-lt p1, v1, :cond_2e

    .line 419
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_2e
    iget-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v0, v1, p1

    .line 423
    .local v0, "old":Lorg/jdom2/Attribute;
    invoke-virtual {v0, v5}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 424
    iget-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v4, p0, Lorg/jdom2/AttributeList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 426
    iget-object v1, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v2, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object v5, v1, v2

    .line 427
    iget v1, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 428
    return-object v0
.end method

.method remove(Ljava/lang/String;Lorg/jdom2/Namespace;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 443
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/AttributeList;->indexOf(Ljava/lang/String;Lorg/jdom2/Namespace;)I

    move-result v0

    .line 444
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 445
    const/4 v1, 0x0

    .line 448
    :goto_7
    return v1

    .line 447
    :cond_8
    invoke-virtual {p0, v0}, Lorg/jdom2/AttributeList;->remove(I)Lorg/jdom2/Attribute;

    .line 448
    const/4 v1, 0x1

    goto :goto_7
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p2, Lorg/jdom2/Attribute;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/AttributeList;->set(ILorg/jdom2/Attribute;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/jdom2/Attribute;)Lorg/jdom2/Attribute;
    .registers 9
    .param p1, "index"    # I
    .param p2, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 464
    if-ltz p1, :cond_6

    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    if-lt p1, v3, :cond_2d

    .line 465
    :cond_6
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jdom2/AttributeList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    :cond_2d
    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 469
    new-instance v3, Lorg/jdom2/IllegalAddException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The attribute already has an existing parent \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 474
    :cond_5a
    invoke-direct {p0, p2}, Lorg/jdom2/AttributeList;->indexOfDuplicate(Lorg/jdom2/Attribute;)I

    move-result v0

    .line 475
    .local v0, "duplicate":I
    if-ltz v0, :cond_6a

    if-eq v0, p1, :cond_6a

    .line 476
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "Cannot set duplicate attribute"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 479
    :cond_6a
    iget-object v3, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-static {p2, v3}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Attribute;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_7a

    .line 481
    new-instance v3, Lorg/jdom2/IllegalAddException;

    iget-object v4, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-direct {v3, v4, p2, v2}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Attribute;Ljava/lang/String;)V

    throw v3

    .line 484
    :cond_7a
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aget-object v1, v3, p1

    .line 485
    .local v1, "old":Lorg/jdom2/Attribute;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 487
    iget-object v3, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    aput-object p2, v3, p1

    .line 488
    iget-object v3, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    invoke-virtual {p2, v3}, Lorg/jdom2/Attribute;->setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;

    .line 489
    return-object v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 518
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    return v0
.end method

.method sort(Ljava/util/Comparator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lorg/jdom2/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Attribute;>;"
    iget v3, p0, Lorg/jdom2/AttributeList;->size:I

    .line 594
    .local v3, "sz":I
    new-array v1, v3, [I

    .line 595
    .local v1, "indexes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v3, :cond_19

    .line 596
    invoke-direct {p0, v1, v0, v0, p1}, Lorg/jdom2/AttributeList;->binarySearch([IIILjava/util/Comparator;)I

    move-result v2

    .line 597
    .local v2, "ip":I
    if-ge v2, v0, :cond_14

    .line 598
    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    :cond_14
    aput v0, v1, v2

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 602
    .end local v2    # "ip":I
    :cond_19
    invoke-direct {p0, v1}, Lorg/jdom2/AttributeList;->sortInPlace([I)V

    .line 603
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddAttribute(Lorg/jdom2/Attribute;)V
    .registers 5
    .param p1, "a"    # Lorg/jdom2/Attribute;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jdom2/AttributeList;->parent:Lorg/jdom2/Element;

    iput-object v0, p1, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    .line 110
    iget v0, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom2/AttributeList;->ensureCapacity(I)V

    .line 111
    iget-object v0, p0, Lorg/jdom2/AttributeList;->attributeData:[Lorg/jdom2/Attribute;

    iget v1, p0, Lorg/jdom2/AttributeList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/AttributeList;->size:I

    aput-object p1, v0, v1

    .line 112
    iget v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/AttributeList;->modCount:I

    .line 113
    return-void
.end method
