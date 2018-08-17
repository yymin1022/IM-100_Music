.class final Lorg/jdom2/ContentList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/ContentList$1;,
        Lorg/jdom2/ContentList$FilterListIterator;,
        Lorg/jdom2/ContentList$FilterList;,
        Lorg/jdom2/ContentList$CLListIterator;,
        Lorg/jdom2/ContentList$CLIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lorg/jdom2/Content;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final INITIAL_ARRAY_SIZE:I = 0x4


# instance fields
.field private transient dataModCount:I

.field private elementData:[Lorg/jdom2/Content;

.field private final parent:Lorg/jdom2/Parent;

.field private size:I

.field private transient sizeModCount:I


# direct methods
.method constructor <init>(Lorg/jdom2/Parent;)V
    .registers 4
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    const/high16 v1, -0x80000000

    .line 115
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 98
    iput v1, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    .line 104
    iput v1, p0, Lorg/jdom2/ContentList;->dataModCount:I

    .line 116
    iput-object p1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lorg/jdom2/ContentList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getModCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/jdom2/ContentList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .prologue
    .line 79
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    return v0
.end method

.method static synthetic access$300(Lorg/jdom2/ContentList;)[Lorg/jdom2/Content;
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .prologue
    .line 79
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jdom2/ContentList;IZ)V
    .registers 3
    .param p0, "x0"    # Lorg/jdom2/ContentList;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    return-void
.end method

.method static synthetic access$500(Lorg/jdom2/ContentList;)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/ContentList;

    .prologue
    .line 79
    iget v0, p0, Lorg/jdom2/ContentList;->dataModCount:I

    return v0
.end method

.method static synthetic access$502(Lorg/jdom2/ContentList;I)I
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/ContentList;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/jdom2/ContentList;->dataModCount:I

    return p1
.end method

.method static synthetic access$600(Lorg/jdom2/ContentList;I)V
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/ContentList;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList;->setModCount(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/jdom2/ContentList;[I)V
    .registers 2
    .param p0, "x0"    # Lorg/jdom2/ContentList;
    .param p1, "x1"    # [I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/jdom2/ContentList;->sortInPlace([I)V

    return-void
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
            "Lorg/jdom2/Content;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 593
    .local p4, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Content;>;"
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .local v3, "mid":I
    add-int/lit8 v4, p2, -0x1

    .local v4, "right":I
    const/4 v1, 0x0

    .line 594
    .local v1, "cmp":I
    iget-object v5, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v0, v5, p3

    .line 595
    .local v0, "base":Lorg/jdom2/Content;
    :goto_9
    if-gt v2, v4, :cond_32

    .line 596
    add-int v5, v2, v4

    ushr-int/lit8 v3, v5, 0x1

    .line 597
    iget-object v5, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget v6, p1, v3

    aget-object v5, v5, v6

    invoke-interface {p4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 598
    if-nez v1, :cond_33

    .line 600
    :goto_1b
    if-nez v1, :cond_30

    if-ge v3, v4, :cond_30

    iget-object v5, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v6, v3, 0x1

    aget v6, p1, v6

    aget-object v5, v5, v6

    invoke-interface {p4, v0, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_30

    .line 601
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 603
    :cond_30
    add-int/lit8 v2, v3, 0x1

    .line 610
    .end local v2    # "left":I
    :cond_32
    return v2

    .line 604
    .restart local v2    # "left":I
    :cond_33
    if-gez v1, :cond_38

    .line 605
    add-int/lit8 v4, v3, -0x1

    goto :goto_9

    .line 607
    :cond_38
    add-int/lit8 v2, v3, 0x1

    goto :goto_9
.end method

.method private final checkIndex(IZ)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "excludes"    # Z

    .prologue
    .line 170
    if-eqz p2, :cond_2f

    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v0, v1, -0x1

    .line 172
    .local v0, "max":I
    :goto_6
    if-ltz p1, :cond_a

    if-le p1, v0, :cond_32

    .line 173
    :cond_a
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

    iget v3, p0, Lorg/jdom2/ContentList;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 170
    .end local v0    # "max":I
    :cond_2f
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    goto :goto_6

    .line 177
    .restart local v0    # "max":I
    :cond_32
    return-void
.end method

.method private final checkPreConditions(Lorg/jdom2/Content;IZ)V
    .registers 8
    .param p1, "child"    # Lorg/jdom2/Content;
    .param p2, "index"    # I
    .param p3, "replace"    # Z

    .prologue
    .line 181
    if-nez p1, :cond_a

    .line 182
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot add null object"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_a
    invoke-direct {p0, p2, p3}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 187
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 189
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    .line 190
    .local v0, "p":Lorg/jdom2/Parent;
    instance-of v1, v0, Lorg/jdom2/Document;

    if-eqz v1, :cond_25

    .line 191
    new-instance v1, Lorg/jdom2/IllegalAddException;

    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "child":Lorg/jdom2/Content;
    const-string v2, "The Content already has an existing parent document"

    invoke-direct {v1, p1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Ljava/lang/String;)V

    throw v1

    .line 194
    .restart local p1    # "child":Lorg/jdom2/Content;
    :cond_25
    new-instance v1, Lorg/jdom2/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Content already has an existing parent \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "p":Lorg/jdom2/Parent;
    invoke-virtual {v0}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_4a
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    if-ne p1, v1, :cond_56

    .line 200
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "The Element cannot be added to itself"

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_56
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    instance-of v1, v1, Lorg/jdom2/Element;

    if-eqz v1, :cond_74

    instance-of v1, p1, Lorg/jdom2/Element;

    if-eqz v1, :cond_74

    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "child":Lorg/jdom2/Content;
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    check-cast v1, Lorg/jdom2/Element;

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->isAncestor(Lorg/jdom2/Element;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 207
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "The Element cannot be added as a descendent of itself"

    invoke-direct {v1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_74
    return-void
.end method

.method private final getModCount()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    return v0
.end method

.method private final incModCount()V
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    .line 167
    return-void
.end method

.method private static removeParent(Lorg/jdom2/Content;)V
    .registers 2
    .param p0, "c"    # Lorg/jdom2/Content;

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    .line 494
    return-void
.end method

.method private final setModCount(I)V
    .registers 2
    .param p1, "mod"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/jdom2/ContentList;->sizeModCount:I

    .line 145
    return-void
.end method

.method private sortInPlace([I)V
    .registers 8
    .param p1, "indexes"    # [I

    .prologue
    .line 569
    array-length v3, p1

    invoke-static {p1, v3}, Lorg/jdom2/internal/ArrayCopy;->copyOf([II)[I

    move-result-object v1

    .line 570
    .local v1, "unsorted":[I
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 571
    array-length v3, v1

    new-array v2, v3, [Lorg/jdom2/Content;

    .line 572
    .local v2, "usc":[Lorg/jdom2/Content;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_1a

    .line 573
    iget-object v3, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget v4, p1, v0

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 572
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 576
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    array-length v3, p1

    if-ge v0, v3, :cond_29

    .line 577
    iget-object v3, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget v4, v1, v0

    aget-object v5, v2, v0

    aput-object v5, v3, v4

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 579
    :cond_29
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p2, Lorg/jdom2/Content;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    return-void
.end method

.method public add(ILorg/jdom2/Content;)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, p2, p1, v1}, Lorg/jdom2/ContentList;->checkPreConditions(Lorg/jdom2/Content;IZ)V

    .line 229
    iget-object v0, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, p2, p1, v1}, Lorg/jdom2/Parent;->canContainContent(Lorg/jdom2/Content;IZ)V

    .line 231
    iget-object v0, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {p2, v0}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    .line 233
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 234
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    if-ne p1, v0, :cond_2d

    .line 235
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/ContentList;->size:I

    aput-object p2, v0, v1

    .line 242
    :goto_23
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 243
    iget v0, p0, Lorg/jdom2/ContentList;->dataModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->dataModCount:I

    .line 244
    return-void

    .line 237
    :cond_2d
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/jdom2/ContentList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aput-object p2, v0, p1

    .line 239
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->size:I

    goto :goto_23
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 13
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 275
    if-nez p2, :cond_c

    .line 276
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Can not add a null collection to the ContentList"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 280
    :cond_c
    invoke-direct {p0, p1, v7}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 282
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 320
    :goto_15
    return v7

    .line 287
    :cond_16
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 288
    .local v0, "addcnt":I
    if-ne v0, v8, :cond_2b

    .line 290
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Content;

    invoke-virtual {p0, p1, v7}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    move v7, v8

    .line 291
    goto :goto_15

    .line 294
    :cond_2b
    invoke-virtual {p0}, Lorg/jdom2/ContentList;->size()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0, v7}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 296
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getModCount()I

    move-result v6

    .line 297
    .local v6, "tmpmodcount":I
    iget v5, p0, Lorg/jdom2/ContentList;->dataModCount:I

    .line 298
    .local v5, "tmpdmc":I
    const/4 v4, 0x0

    .line 300
    .local v4, "ok":Z
    const/4 v2, 0x0

    .line 303
    .local v2, "count":I
    :try_start_3b
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    .line 304
    .local v1, "c":Lorg/jdom2/Content;
    add-int v7, p1, v2

    invoke-virtual {p0, v7, v1}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V
    :try_end_50
    .catchall {:try_start_3b .. :try_end_50} :catchall_67

    .line 305
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 307
    .end local v1    # "c":Lorg/jdom2/Content;
    :cond_53
    const/4 v4, 0x1

    .line 309
    if-nez v4, :cond_65

    .line 311
    :goto_56
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_60

    .line 312
    add-int v7, p1, v2

    invoke-virtual {p0, v7}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_56

    .line 315
    :cond_60
    invoke-direct {p0, v6}, Lorg/jdom2/ContentList;->setModCount(I)V

    .line 316
    iput v5, p0, Lorg/jdom2/ContentList;->dataModCount:I

    :cond_65
    move v7, v8

    .line 320
    goto :goto_15

    .line 309
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_67
    move-exception v7

    if-nez v4, :cond_79

    .line 311
    :goto_6a
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_74

    .line 312
    add-int v8, p1, v2

    invoke-virtual {p0, v8}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    goto :goto_6a

    .line 315
    :cond_74
    invoke-direct {p0, v6}, Lorg/jdom2/ContentList;->setModCount(I)V

    .line 316
    iput v5, p0, Lorg/jdom2/ContentList;->dataModCount:I

    :cond_79
    throw v7
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 4

    .prologue
    .line 328
    iget-object v2, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-eqz v2, :cond_19

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v2, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v0, v2, :cond_13

    .line 330
    iget-object v2, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v1, v2, v0

    .line 331
    .local v1, "obj":Lorg/jdom2/Content;
    invoke-static {v1}, Lorg/jdom2/ContentList;->removeParent(Lorg/jdom2/Content;)V

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 333
    .end local v1    # "obj":Lorg/jdom2/Content;
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 334
    const/4 v2, 0x0

    iput v2, p0, Lorg/jdom2/ContentList;->size:I

    .line 336
    .end local v0    # "i":I
    :cond_19
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 337
    iget v2, p0, Lorg/jdom2/ContentList;->dataModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jdom2/ContentList;->dataModCount:I

    .line 338
    return-void
.end method

.method clearAndSet(Ljava/util/Collection;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 348
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 349
    :cond_a
    invoke-virtual {p0}, Lorg/jdom2/ContentList;->clear()V

    .line 387
    :cond_d
    :goto_d
    return-void

    .line 354
    :cond_e
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 355
    .local v1, "old":[Lorg/jdom2/Content;
    iget v3, p0, Lorg/jdom2/ContentList;->size:I

    .line 356
    .local v3, "oldSize":I
    invoke-direct {p0}, Lorg/jdom2/ContentList;->getModCount()I

    move-result v2

    .line 362
    .local v2, "oldModCount":I
    :goto_16
    iget v4, p0, Lorg/jdom2/ContentList;->size:I

    if-lez v4, :cond_26

    .line 363
    iget v4, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jdom2/ContentList;->size:I

    aget-object v4, v1, v4

    invoke-virtual {v4, v6}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    goto :goto_16

    .line 365
    :cond_26
    iput v5, p0, Lorg/jdom2/ContentList;->size:I

    .line 366
    iput-object v6, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "ok":Z
    const/4 v4, 0x0

    :try_start_2c
    invoke-virtual {p0, v4, p1}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4c

    .line 371
    const/4 v0, 0x1

    .line 373
    if-nez v0, :cond_d

    .line 379
    iput-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 380
    :goto_34
    iget v4, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v4, v3, :cond_48

    .line 381
    iget-object v4, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v5, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/jdom2/ContentList;->size:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {v4, v5}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    goto :goto_34

    .line 383
    :cond_48
    invoke-direct {p0, v2}, Lorg/jdom2/ContentList;->setModCount(I)V

    goto :goto_d

    .line 373
    :catchall_4c
    move-exception v4

    if-nez v0, :cond_68

    .line 379
    iput-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 380
    :goto_51
    iget v5, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v5, v3, :cond_65

    .line 381
    iget-object v5, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v6, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/jdom2/ContentList;->size:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {v5, v6}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    goto :goto_51

    .line 383
    :cond_65
    invoke-direct {p0, v2}, Lorg/jdom2/ContentList;->setModCount(I)V

    :cond_68
    throw v4
.end method

.method ensureCapacity(I)V
    .registers 4
    .param p1, "minCapacity"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-nez v0, :cond_e

    .line 399
    const/4 v0, 0x4

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lorg/jdom2/Content;

    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    .line 409
    :cond_d
    :goto_d
    return-void

    .line 401
    :cond_e
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 407
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v1, p1, 0x4

    ushr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Content;

    iput-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    goto :goto_d
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/jdom2/Content;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 420
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 421
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter",
            "<TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TE;>;"
    new-instance v0, Lorg/jdom2/ContentList$FilterList;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/ContentList$FilterList;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method indexOfDocType()I
    .registers 3

    .prologue
    .line 462
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-eqz v1, :cond_15

    .line 463
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v0, v1, :cond_15

    .line 464
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom2/DocType;

    if-eqz v1, :cond_12

    .line 469
    .end local v0    # "i":I
    :goto_11
    return v0

    .line 463
    .restart local v0    # "i":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 469
    .end local v0    # "i":I
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method indexOfFirstElement()I
    .registers 3

    .prologue
    .line 445
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    if-eqz v1, :cond_15

    .line 446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    if-ge v0, v1, :cond_15

    .line 447
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jdom2/Element;

    if-eqz v1, :cond_12

    .line 452
    .end local v0    # "i":I
    :goto_11
    return v0

    .line 446
    .restart local v0    # "i":I
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 452
    .end local v0    # "i":I
    :cond_15
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lorg/jdom2/ContentList$CLIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jdom2/ContentList$CLIterator;-><init>(Lorg/jdom2/ContentList;Lorg/jdom2/ContentList$1;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lorg/jdom2/ContentList$CLListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/jdom2/ContentList$CLListIterator;-><init>(Lorg/jdom2/ContentList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    new-instance v0, Lorg/jdom2/ContentList$CLListIterator;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/ContentList$CLListIterator;-><init>(Lorg/jdom2/ContentList;I)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lorg/jdom2/Content;
    .registers 7
    .param p1, "index"    # I

    .prologue
    .line 481
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lorg/jdom2/ContentList;->checkIndex(IZ)V

    .line 483
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v0, v1, p1

    .line 484
    .local v0, "old":Lorg/jdom2/Content;
    invoke-static {v0}, Lorg/jdom2/ContentList;->removeParent(Lorg/jdom2/Content;)V

    .line 485
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v4, p0, Lorg/jdom2/ContentList;->size:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v2, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jdom2/ContentList;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 487
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 488
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p2, Lorg/jdom2/Content;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public set(ILorg/jdom2/Content;)Lorg/jdom2/Content;
    .registers 6
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    const/4 v2, 0x1

    .line 509
    invoke-direct {p0, p2, p1, v2}, Lorg/jdom2/ContentList;->checkPreConditions(Lorg/jdom2/Content;IZ)V

    .line 512
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-interface {v1, p2, p1, v2}, Lorg/jdom2/Parent;->canContainContent(Lorg/jdom2/Content;IZ)V

    .line 520
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aget-object v0, v1, p1

    .line 521
    .local v0, "old":Lorg/jdom2/Content;
    invoke-static {v0}, Lorg/jdom2/ContentList;->removeParent(Lorg/jdom2/Content;)V

    .line 522
    iget-object v1, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    invoke-virtual {p2, v1}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    .line 523
    iget-object v1, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    aput-object p2, v1, p1

    .line 526
    iget v1, p0, Lorg/jdom2/ContentList;->dataModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom2/ContentList;->dataModCount:I

    .line 527
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 537
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    return v0
.end method

.method final sort(Ljava/util/Comparator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 614
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Content;>;"
    iget v3, p0, Lorg/jdom2/ContentList;->size:I

    .line 615
    .local v3, "sz":I
    new-array v1, v3, [I

    .line 616
    .local v1, "indexes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v3, :cond_19

    .line 617
    invoke-direct {p0, v1, v0, v0, p1}, Lorg/jdom2/ContentList;->binarySearch([IIILjava/util/Comparator;)I

    move-result v2

    .line 618
    .local v2, "ip":I
    if-ge v2, v0, :cond_14

    .line 619
    add-int/lit8 v4, v2, 0x1

    sub-int v5, v0, v2

    invoke-static {v1, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 621
    :cond_14
    aput v0, v1, v2

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 623
    .end local v2    # "ip":I
    :cond_19
    invoke-direct {p0, v1}, Lorg/jdom2/ContentList;->sortInPlace([I)V

    .line 624
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 562
    invoke-super {p0}, Ljava/util/AbstractList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final uncheckedAddContent(Lorg/jdom2/Content;)V
    .registers 5
    .param p1, "c"    # Lorg/jdom2/Content;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jdom2/ContentList;->parent:Lorg/jdom2/Parent;

    iput-object v0, p1, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    .line 128
    iget v0, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jdom2/ContentList;->ensureCapacity(I)V

    .line 129
    iget-object v0, p0, Lorg/jdom2/ContentList;->elementData:[Lorg/jdom2/Content;

    iget v1, p0, Lorg/jdom2/ContentList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jdom2/ContentList;->size:I

    aput-object p1, v0, v1

    .line 130
    invoke-direct {p0}, Lorg/jdom2/ContentList;->incModCount()V

    .line 131
    iget v0, p0, Lorg/jdom2/ContentList;->dataModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/ContentList;->dataModCount:I

    .line 132
    return-void
.end method
