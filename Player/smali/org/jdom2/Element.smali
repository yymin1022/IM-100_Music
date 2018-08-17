.class public Lorg/jdom2/Element;
.super Lorg/jdom2/Content;
.source "Element.java"

# interfaces
.implements Lorg/jdom2/Parent;


# static fields
.field private static final INITIAL_ARRAY_SIZE:I = 0x5

.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field transient additionalNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field transient attributes:Lorg/jdom2/AttributeList;

.field transient content:Lorg/jdom2/ContentList;

.field protected name:Ljava/lang/String;

.field protected namespace:Lorg/jdom2/Namespace;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 147
    sget-object v0, Lorg/jdom2/Content$CType;->Element:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 117
    iput-object v1, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    .line 123
    iput-object v1, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    .line 129
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v0, 0x0

    check-cast v0, Lorg/jdom2/Namespace;

    invoke-direct {p0, p1, v0}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, ""

    invoke-static {v0, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 204
    invoke-static {p2, p3}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    const/4 v1, 0x0

    .line 160
    sget-object v0, Lorg/jdom2/Content$CType;->Element:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 117
    iput-object v1, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    .line 123
    iput-object v1, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    .line 129
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    .line 161
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->setName(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 162
    invoke-virtual {p0, p2}, Lorg/jdom2/Element;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 163
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2066
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2068
    new-instance v3, Lorg/jdom2/ContentList;

    invoke-direct {v3, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v3, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    .line 2070
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 2072
    .local v2, "nss":I
    :goto_e
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_1c

    .line 2073
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    invoke-virtual {p0, v3}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    goto :goto_e

    .line 2076
    :cond_1c
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 2077
    .local v0, "ats":I
    :goto_20
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2e

    .line 2078
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Attribute;

    invoke-virtual {p0, v3}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    goto :goto_20

    .line 2081
    :cond_2e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 2082
    .local v1, "cs":I
    :goto_32
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_40

    .line 2083
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Content;

    invoke-virtual {p0, v3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_32

    .line 2086
    :cond_40
    return-void
.end method

.method private final resolve(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "relative"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1950
    if-nez p1, :cond_3

    .line 1957
    .end local p2    # "relative":Ljava/net/URI;
    :goto_2
    return-object p2

    .line 1953
    .restart local p2    # "relative":Ljava/net/URI;
    :cond_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1954
    .local v0, "n":Ljava/net/URI;
    if-nez p2, :cond_c

    move-object p2, v0

    .line 1955
    goto :goto_2

    .line 1957
    :cond_c
    invoke-virtual {v0, p2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p2

    goto :goto_2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 7
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2027
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2028
    invoke-virtual {p0}, Lorg/jdom2/Element;->hasAdditionalNamespaces()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2029
    iget-object v3, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 2030
    .local v0, "ans":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2031
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_25

    .line 2032
    iget-object v3, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2031
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2035
    .end local v0    # "ans":I
    .end local v2    # "i":I
    :cond_22
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2037
    :cond_25
    invoke-virtual {p0}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 2038
    iget-object v3, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v3}, Lorg/jdom2/AttributeList;->size()I

    move-result v0

    .line 2039
    .restart local v0    # "ans":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2040
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_35
    if-ge v2, v0, :cond_46

    .line 2041
    iget-object v3, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v3, v2}, Lorg/jdom2/AttributeList;->get(I)Lorg/jdom2/Attribute;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2040
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 2044
    .end local v0    # "ans":I
    .end local v2    # "i":I
    :cond_43
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2047
    :cond_46
    iget-object v3, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3}, Lorg/jdom2/ContentList;->size()I

    move-result v1

    .line 2048
    .local v1, "cs":I
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2049
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_50
    if-ge v2, v1, :cond_5e

    .line 2050
    iget-object v3, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, v2}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2049
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 2053
    :cond_5e
    return-void
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom2/Element;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Element;"
        }
    .end annotation

    .prologue
    .line 970
    .local p2, "newContent":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 971
    return-object p0
.end method

.method public addContent(ILorg/jdom2/Content;)Lorg/jdom2/Element;
    .registers 4
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 950
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 951
    return-object p0
.end method

.method public addContent(Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 906
    new-instance v0, Lorg/jdom2/Text;

    invoke-direct {v0, p1}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom2/Element;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Element;"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, "newContent":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->addAll(Ljava/util/Collection;)Z

    .line 935
    return-object p0
.end method

.method public addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 917
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 918
    return-object p0
.end method

.method public bridge synthetic addContent(ILjava/util/Collection;)Lorg/jdom2/Parent;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/Collection;

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Element;->addContent(ILjava/util/Collection;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(ILorg/jdom2/Content;)Lorg/jdom2/Parent;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/jdom2/Content;

    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Element;->addContent(ILorg/jdom2/Content;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(Ljava/util/Collection;)Lorg/jdom2/Parent;
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(Lorg/jdom2/Content;)Lorg/jdom2/Parent;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Content;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z
    .registers 7
    .param p1, "additionalNamespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 385
    iget-object v3, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v3, :cond_c

    .line 386
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    .line 389
    :cond_c
    iget-object v3, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 390
    .local v1, "ns":Lorg/jdom2/Namespace;
    if-ne v1, p1, :cond_12

    .line 391
    const/4 v3, 0x0

    .line 402
    .end local v1    # "ns":Lorg/jdom2/Namespace;
    :goto_21
    return v3

    .line 397
    :cond_22
    invoke-static {p1, p0}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_2e

    .line 399
    new-instance v3, Lorg/jdom2/IllegalAddException;

    invoke-direct {v3, p0, p1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Namespace;Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_2e
    iget-object v3, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_21
.end method

.method public canContainContent(Lorg/jdom2/Content;IZ)V
    .registers 6
    .param p1, "child"    # Lorg/jdom2/Content;
    .param p2, "index"    # I
    .param p3, "replace"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/IllegalAddException;
        }
    .end annotation

    .prologue
    .line 1835
    instance-of v0, p1, Lorg/jdom2/DocType;

    if-eqz v0, :cond_c

    .line 1836
    new-instance v0, Lorg/jdom2/IllegalAddException;

    const-string v1, "A DocType is not allowed except at the document level"

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :cond_c
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Element;
    .registers 7

    .prologue
    .line 1428
    invoke-super {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 1441
    .local v2, "element":Lorg/jdom2/Element;
    new-instance v4, Lorg/jdom2/ContentList;

    invoke-direct {v4, v2}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v4, v2, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    .line 1442
    iget-object v4, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v4, :cond_33

    const/4 v4, 0x0

    :goto_12
    iput-object v4, v2, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    .line 1445
    iget-object v4, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-eqz v4, :cond_39

    .line 1446
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    iget-object v4, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v4}, Lorg/jdom2/AttributeList;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 1447
    iget-object v4, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v4, v3}, Lorg/jdom2/AttributeList;->get(I)Lorg/jdom2/Attribute;

    move-result-object v0

    .line 1448
    .local v0, "attribute":Lorg/jdom2/Attribute;
    iget-object v4, v2, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->clone()Lorg/jdom2/Attribute;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jdom2/AttributeList;->add(Lorg/jdom2/Attribute;)Z

    .line 1446
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1442
    .end local v0    # "attribute":Lorg/jdom2/Attribute;
    .end local v3    # "i":I
    :cond_33
    new-instance v4, Lorg/jdom2/AttributeList;

    invoke-direct {v4, v2}, Lorg/jdom2/AttributeList;-><init>(Lorg/jdom2/Element;)V

    goto :goto_12

    .line 1453
    :cond_39
    iget-object v4, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v4, :cond_46

    .line 1454
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v2, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    .line 1458
    :cond_46
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_47
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4}, Lorg/jdom2/ContentList;->size()I

    move-result v4

    if-ge v3, v4, :cond_61

    .line 1459
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v3}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    .line 1460
    .local v1, "c":Lorg/jdom2/Content;
    iget-object v4, v2, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 1458
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 1463
    .end local v1    # "c":Lorg/jdom2/Content;
    :cond_61
    return-object v2
.end method

.method public cloneContent()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 976
    invoke-virtual {p0}, Lorg/jdom2/Element;->getContentSize()I

    move-result v3

    .line 977
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 978
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v3, :cond_1a

    .line 979
    invoke-virtual {p0, v1}, Lorg/jdom2/Element;->getContent(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 980
    .local v0, "child":Lorg/jdom2/Content;
    invoke-virtual {v0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 982
    .end local v0    # "child":Lorg/jdom2/Content;
    :cond_1a
    return-object v2
.end method

.method public coalesceText(Z)Z
    .registers 9
    .param p1, "recursively"    # Z

    .prologue
    .line 707
    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lorg/jdom2/Element;->getDescendants()Lorg/jdom2/util/IteratorIterable;

    move-result-object v2

    .line 709
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Content;>;"
    :goto_6
    const/4 v4, 0x0

    .line 710
    .local v4, "tfirst":Lorg/jdom2/Text;
    const/4 v1, 0x0

    .line 711
    .local v1, "changed":Z
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 712
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 713
    .local v0, "c":Lorg/jdom2/Content;
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v5

    sget-object v6, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v5, v6, :cond_51

    move-object v3, v0

    .line 715
    check-cast v3, Lorg/jdom2/Text;

    .line 716
    .local v3, "text":Lorg/jdom2/Text;
    const-string v5, ""

    invoke-virtual {v3}, Lorg/jdom2/Text;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 717
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 718
    const/4 v1, 0x1

    goto :goto_8

    .line 707
    .end local v0    # "c":Lorg/jdom2/Content;
    .end local v1    # "changed":Z
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Content;>;"
    .end local v3    # "text":Lorg/jdom2/Text;
    .end local v4    # "tfirst":Lorg/jdom2/Text;
    :cond_30
    iget-object v5, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v5}, Lorg/jdom2/ContentList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_6

    .line 719
    .restart local v0    # "c":Lorg/jdom2/Content;
    .restart local v1    # "changed":Z
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Content;>;"
    .restart local v3    # "text":Lorg/jdom2/Text;
    .restart local v4    # "tfirst":Lorg/jdom2/Text;
    :cond_37
    if-eqz v4, :cond_43

    invoke-virtual {v4}, Lorg/jdom2/Text;->getParent()Lorg/jdom2/Element;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jdom2/Text;->getParent()Lorg/jdom2/Element;

    move-result-object v6

    if-eq v5, v6, :cond_45

    .line 723
    :cond_43
    move-object v4, v3

    goto :goto_8

    .line 726
    :cond_45
    invoke-virtual {v3}, Lorg/jdom2/Text;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/jdom2/Text;->append(Ljava/lang/String;)V

    .line 728
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 729
    const/4 v1, 0x1

    goto :goto_8

    .line 733
    .end local v3    # "text":Lorg/jdom2/Text;
    :cond_51
    const/4 v4, 0x0

    goto :goto_8

    .line 736
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_53
    return v1
.end method

.method public bridge synthetic detach()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/jdom2/Element;->detach()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/Element;
    .registers 2

    .prologue
    .line 1830
    invoke-super {p0}, Lorg/jdom2/Content;->detach()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    return-object v0
.end method

.method public getAdditionalNamespaces()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_9

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 439
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_8
.end method

.method public getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;
    .registers 3
    .param p1, "attname"    # Ljava/lang/String;

    .prologue
    .line 1118
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 4
    .param p1, "attname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 1132
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v0, :cond_6

    .line 1133
    const/4 v0, 0x0

    .line 1135
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/AttributeList;->get(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    goto :goto_5
.end method

.method getAttributeList()Lorg/jdom2/AttributeList;
    .registers 2

    .prologue
    .line 1087
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v0, :cond_b

    .line 1088
    new-instance v0, Lorg/jdom2/AttributeList;

    invoke-direct {v0, p0}, Lorg/jdom2/AttributeList;-><init>(Lorg/jdom2/Element;)V

    iput-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    .line 1090
    :cond_b
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "attname"    # Ljava/lang/String;

    .prologue
    .line 1149
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v0, :cond_6

    .line 1150
    const/4 v0, 0x0

    .line 1152
    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "attname"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 1167
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v0, :cond_5

    .line 1170
    .end local p2    # "def":Ljava/lang/String;
    :goto_4
    return-object p2

    .restart local p2    # "def":Ljava/lang/String;
    :cond_5
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0, p2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;
    .registers 5
    .param p1, "attname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    const/4 v0, 0x0

    .line 1185
    iget-object v1, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v1, :cond_6

    .line 1188
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "attname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 1204
    iget-object v1, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v1, :cond_5

    .line 1212
    .end local p3    # "def":Ljava/lang/String;
    :cond_4
    :goto_4
    return-object p3

    .line 1207
    .restart local p3    # "def":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/jdom2/AttributeList;->get(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    .line 1208
    .local v0, "attribute":Lorg/jdom2/Attribute;
    if-eqz v0, :cond_4

    .line 1212
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p3

    goto :goto_4
.end method

.method public getAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1105
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 3
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 1598
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .registers 7
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 1580
    iget-object v2, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    new-instance v3, Lorg/jdom2/filter/ElementFilter;

    invoke-direct {v3, p1, p2}, Lorg/jdom2/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    invoke-virtual {v2, v3}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v0

    .line 1581
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1582
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Element;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1583
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 1585
    :goto_1b
    return-object v2

    :cond_1c
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method public getChildText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 577
    .local v0, "child":Lorg/jdom2/Element;
    if-nez v0, :cond_8

    .line 578
    const/4 v1, 0x0

    .line 580
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getChildText(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;
    .registers 5
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 628
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    .line 629
    .local v0, "child":Lorg/jdom2/Element;
    if-nez v0, :cond_8

    .line 630
    const/4 v1, 0x0

    .line 632
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getChildTextNormalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 611
    .local v0, "child":Lorg/jdom2/Element;
    if-nez v0, :cond_8

    .line 612
    const/4 v1, 0x0

    .line 614
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lorg/jdom2/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getChildTextNormalize(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;
    .registers 5
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 666
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    .line 667
    .local v0, "child":Lorg/jdom2/Element;
    if-nez v0, :cond_8

    .line 668
    const/4 v1, 0x0

    .line 670
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lorg/jdom2/Element;->getTextNormalize()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getChildTextTrim(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 594
    .local v0, "child":Lorg/jdom2/Element;
    if-nez v0, :cond_8

    .line 595
    const/4 v1, 0x0

    .line 597
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getChildTextTrim(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;
    .registers 5
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 647
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    .line 648
    .local v0, "child":Lorg/jdom2/Element;
    if-nez v0, :cond_8

    .line 649
    const/4 v1, 0x0

    .line 651
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getChildren()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1525
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    new-instance v1, Lorg/jdom2/filter/ElementFilter;

    invoke-direct {v1}, Lorg/jdom2/filter/ElementFilter;-><init>()V

    invoke-virtual {v0, v1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "cname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1545
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;
    .registers 5
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jdom2/Namespace;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1566
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    new-instance v1, Lorg/jdom2/filter/ElementFilter;

    invoke-direct {v1, p1, p2}, Lorg/jdom2/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    invoke-virtual {v0, v1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 763
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    return-object v0
.end method

.method public getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;
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
    .line 780
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TE;>;"
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lorg/jdom2/Content;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 987
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public getContentSize()I
    .registers 2

    .prologue
    .line 479
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->size()I

    move-result v0

    return v0
.end method

.method public getDescendants()Lorg/jdom2/util/IteratorIterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/util/IteratorIterable",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1474
    new-instance v0, Lorg/jdom2/DescendantIterator;

    invoke-direct {v0, p0}, Lorg/jdom2/DescendantIterator;-><init>(Lorg/jdom2/Parent;)V

    return-object v0
.end method

.method public getDescendants(Lorg/jdom2/filter/Filter;)Lorg/jdom2/util/IteratorIterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter",
            "<TF;>;)",
            "Lorg/jdom2/util/IteratorIterable",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 1488
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    new-instance v0, Lorg/jdom2/FilterIterator;

    new-instance v1, Lorg/jdom2/DescendantIterator;

    invoke-direct {v1, p0}, Lorg/jdom2/DescendantIterator;-><init>(Lorg/jdom2/Parent;)V

    invoke-direct {v0, v1, p1}, Lorg/jdom2/FilterIterator;-><init>(Lorg/jdom2/DescendantIterator;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lorg/jdom2/Element;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom2/Namespace;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;
    .registers 8
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 309
    if-nez p1, :cond_5

    move-object v3, v4

    .line 346
    :cond_4
    :goto_4
    return-object v3

    .line 313
    :cond_5
    const-string v5, "xml"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 315
    sget-object v3, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    goto :goto_4

    .line 319
    :cond_10
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 320
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    goto :goto_4

    .line 324
    :cond_1f
    iget-object v5, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v5, :cond_41

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_24
    iget-object v5, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_41

    .line 326
    iget-object v5, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 327
    .local v3, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 333
    .end local v1    # "i":I
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_41
    iget-object v5, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-eqz v5, :cond_66

    .line 334
    iget-object v5, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v5}, Lorg/jdom2/AttributeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 335
    .local v0, "a":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 336
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    goto :goto_4

    .line 342
    .end local v0    # "a":Lorg/jdom2/Attribute;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_66
    iget-object v5, p0, Lorg/jdom2/Element;->parent:Lorg/jdom2/Parent;

    instance-of v5, v5, Lorg/jdom2/Element;

    if-eqz v5, :cond_75

    .line 343
    iget-object v4, p0, Lorg/jdom2/Element;->parent:Lorg/jdom2/Parent;

    check-cast v4, Lorg/jdom2/Element;

    invoke-virtual {v4, p1}, Lorg/jdom2/Element;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    goto :goto_4

    :cond_75
    move-object v3, v4

    .line 346
    goto :goto_4
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesInScope()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 1723
    .local v3, "namespaces":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    sget-object v6, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1725
    iget-object v6, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v6, :cond_45

    .line 1726
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Namespace;

    .line 1727
    .local v4, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    .line 1728
    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 1732
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    :cond_45
    iget-object v6, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-eqz v6, :cond_73

    .line 1733
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Attribute;

    .line 1734
    .local v1, "att":Lorg/jdom2/Attribute;
    invoke-virtual {v1}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    .line 1735
    .restart local v4    # "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 1736
    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 1742
    .end local v1    # "att":Lorg/jdom2/Attribute;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    :cond_73
    invoke-virtual {p0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v5

    .line 1743
    .local v5, "pnt":Lorg/jdom2/Element;
    if-eqz v5, :cond_9f

    .line 1744
    invoke-virtual {v5}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_81
    :goto_81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Namespace;

    .line 1745
    .restart local v4    # "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_81

    .line 1746
    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 1751
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    :cond_9f
    if-nez v5, :cond_b4

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b4

    .line 1753
    sget-object v6, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    :cond_b4
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1757
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1761
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public getNamespacesInherited()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1766
    invoke-virtual {p0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v6

    if-nez v6, :cond_30

    .line 1767
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1768
    .local v5, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Namespace;>;"
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1769
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 1770
    .local v3, "ns":Lorg/jdom2/Namespace;
    sget-object v6, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq v3, v6, :cond_13

    sget-object v6, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq v3, v6, :cond_13

    .line 1773
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 1775
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_2b
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1793
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Namespace;>;"
    .end local v5    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    :goto_2f
    return-object v6

    .line 1780
    :cond_30
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1781
    .local v4, "parents":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual {p0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 1782
    .restart local v3    # "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 1785
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1786
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 1787
    .restart local v3    # "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v3, v6, :cond_62

    .line 1789
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 1793
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_7c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    goto :goto_2f
.end method

.method public getNamespacesIntroduced()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1798
    invoke-virtual {p0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v6

    if-nez v6, :cond_30

    .line 1800
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1801
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Namespace;>;"
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 1802
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 1803
    .local v3, "ns":Lorg/jdom2/Namespace;
    sget-object v6, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq v3, v6, :cond_27

    sget-object v6, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v3, v6, :cond_13

    .line 1804
    :cond_27
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_13

    .line 1807
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_2b
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1825
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Namespace;>;"
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    :goto_2f
    return-object v6

    .line 1812
    :cond_30
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1813
    .local v4, "parents":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual {p0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 1814
    .restart local v3    # "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 1817
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1818
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_62
    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 1819
    .restart local v3    # "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v3, v6, :cond_62

    .line 1821
    :cond_82
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 1825
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    goto :goto_2f
.end method

.method public getQualifiedName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 360
    const-string v0, ""

    iget-object v1, p0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 361
    invoke-virtual {p0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/Element;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getText()Ljava/lang/String;
    .registers 7

    .prologue
    .line 510
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4}, Lorg/jdom2/ContentList;->size()I

    move-result v4

    if-nez v4, :cond_b

    .line 511
    const-string v4, ""

    .line 538
    :goto_a
    return-object v4

    .line 515
    :cond_b
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4}, Lorg/jdom2/ContentList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    .line 516
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v2

    .line 517
    .local v2, "obj":Lorg/jdom2/Content;
    instance-of v4, v2, Lorg/jdom2/Text;

    if-eqz v4, :cond_26

    .line 518
    check-cast v2, Lorg/jdom2/Text;

    .end local v2    # "obj":Lorg/jdom2/Content;
    invoke-virtual {v2}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 520
    .restart local v2    # "obj":Lorg/jdom2/Content;
    :cond_26
    const-string v4, ""

    goto :goto_a

    .line 524
    .end local v2    # "obj":Lorg/jdom2/Content;
    :cond_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 525
    .local v3, "textContent":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 527
    .local v0, "hasText":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4}, Lorg/jdom2/ContentList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4f

    .line 528
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v2

    .line 529
    .restart local v2    # "obj":Lorg/jdom2/Content;
    instance-of v4, v2, Lorg/jdom2/Text;

    if-eqz v4, :cond_4c

    .line 530
    check-cast v2, Lorg/jdom2/Text;

    .end local v2    # "obj":Lorg/jdom2/Content;
    invoke-virtual {v2}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const/4 v0, 0x1

    .line 527
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 535
    :cond_4f
    if-nez v0, :cond_54

    .line 536
    const-string v4, ""

    goto :goto_a

    .line 538
    :cond_54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method

.method public getTextNormalize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom2/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .registers 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 5

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    .line 455
    .local v1, "child":Lorg/jdom2/Content;
    instance-of v3, v1, Lorg/jdom2/Element;

    if-nez v3, :cond_21

    instance-of v3, v1, Lorg/jdom2/Text;

    if-eqz v3, :cond_d

    .line 456
    :cond_21
    invoke-virtual {v1}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 459
    .end local v1    # "child":Lorg/jdom2/Content;
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getXMLBaseURI()Ljava/net/URI;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1983
    move-object v0, p0

    .line 1984
    .local v0, "p":Lorg/jdom2/Parent;
    const/4 v1, 0x0

    .line 1985
    .local v1, "ret":Ljava/net/URI;
    :goto_2
    if-eqz v0, :cond_32

    .line 1986
    instance-of v3, v0, Lorg/jdom2/Element;

    if-eqz v3, :cond_21

    move-object v3, v0

    .line 1987
    check-cast v3, Lorg/jdom2/Element;

    const-string v4, "base"

    sget-object v5, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v3, v4, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/jdom2/Element;->resolve(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    .line 1992
    :goto_17
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_2d

    move-object v2, v1

    .line 1997
    .end local v1    # "ret":Ljava/net/URI;
    .local v2, "ret":Ljava/net/URI;
    :goto_20
    return-object v2

    .end local v2    # "ret":Ljava/net/URI;
    .restart local v1    # "ret":Ljava/net/URI;
    :cond_21
    move-object v3, v0

    .line 1990
    check-cast v3, Lorg/jdom2/Document;

    invoke-virtual {v3}, Lorg/jdom2/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/jdom2/Element;->resolve(Ljava/lang/String;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    goto :goto_17

    .line 1995
    :cond_2d
    invoke-interface {v0}, Lorg/jdom2/Parent;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    goto :goto_2

    :cond_32
    move-object v2, v1

    .line 1997
    .end local v1    # "ret":Ljava/net/URI;
    .restart local v2    # "ret":Ljava/net/URI;
    goto :goto_20
.end method

.method public hasAdditionalNamespaces()Z
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasAttributes()Z
    .registers 2

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v0}, Lorg/jdom2/AttributeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public indexOf(Lorg/jdom2/Content;)I
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 484
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAncestor(Lorg/jdom2/Element;)Z
    .registers 4
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 1047
    invoke-virtual {p1}, Lorg/jdom2/Element;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    .line 1048
    .local v0, "p":Lorg/jdom2/Parent;
    :goto_4
    instance-of v1, v0, Lorg/jdom2/Element;

    if-eqz v1, :cond_11

    .line 1049
    if-ne v0, p0, :cond_c

    .line 1050
    const/4 v1, 0x1

    .line 1054
    :goto_b
    return v1

    .line 1052
    :cond_c
    invoke-interface {v0}, Lorg/jdom2/Parent;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    goto :goto_4

    .line 1054
    :cond_11
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public isRootElement()Z
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lorg/jdom2/Element;->parent:Lorg/jdom2/Parent;

    instance-of v0, v0, Lorg/jdom2/Document;

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p1, "attname"    # Ljava/lang/String;

    .prologue
    .line 1348
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/Element;->removeAttribute(Ljava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeAttribute(Ljava/lang/String;Lorg/jdom2/Namespace;)Z
    .registers 4
    .param p1, "attname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 1363
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v0, :cond_6

    .line 1364
    const/4 v0, 0x0

    .line 1366
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/AttributeList;->remove(Ljava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v0

    goto :goto_5
.end method

.method public removeAttribute(Lorg/jdom2/Attribute;)Z
    .registers 3
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 1378
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-nez v0, :cond_6

    .line 1379
    const/4 v0, 0x0

    .line 1381
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/AttributeList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public removeChild(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 1612
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/Element;->removeChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Z
    .registers 7
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 1627
    new-instance v0, Lorg/jdom2/filter/ElementFilter;

    invoke-direct {v0, p1, p2}, Lorg/jdom2/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 1628
    .local v0, "filter":Lorg/jdom2/filter/ElementFilter;
    iget-object v3, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, v0}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v2

    .line 1629
    .local v2, "old":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Element;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1630
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Element;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1631
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1632
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1633
    const/4 v3, 0x1

    .line 1636
    :goto_1c
    return v3

    :cond_1d
    const/4 v3, 0x0

    goto :goto_1c
.end method

.method public removeChildren(Ljava/lang/String;)Z
    .registers 3
    .param p1, "cname"    # Ljava/lang/String;

    .prologue
    .line 1650
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/Element;->removeChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v0

    return v0
.end method

.method public removeChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Z
    .registers 8
    .param p1, "cname"    # Ljava/lang/String;
    .param p2, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 1665
    const/4 v0, 0x0

    .line 1667
    .local v0, "deletedSome":Z
    new-instance v1, Lorg/jdom2/filter/ElementFilter;

    invoke-direct {v1, p1, p2}, Lorg/jdom2/filter/ElementFilter;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 1668
    .local v1, "filter":Lorg/jdom2/filter/ElementFilter;
    iget-object v4, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v4, v1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v3

    .line 1669
    .local v3, "old":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Element;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1670
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Element;>;"
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1671
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1672
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 1673
    const/4 v0, 0x1

    goto :goto_10

    .line 1676
    :cond_1e
    return v0
.end method

.method public removeContent()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 791
    .local v0, "old":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    iget-object v1, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->clear()V

    .line 792
    return-object v0
.end method

.method public removeContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter",
            "<TF;>;)",
            "Ljava/util/List",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v2, "old":Ljava/util/List;, "Ljava/util/List<TF;>;"
    iget-object v3, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, p1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 805
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 806
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 807
    .local v0, "child":Lorg/jdom2/Content;, "TF;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 810
    .end local v0    # "child":Lorg/jdom2/Content;, "TF;"
    :cond_22
    return-object v2
.end method

.method public removeContent(I)Lorg/jdom2/Content;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 1002
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public removeContent(Lorg/jdom2/Content;)Z
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 997
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeNamespaceDeclaration(Lorg/jdom2/Namespace;)V
    .registers 3
    .param p1, "additionalNamespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 416
    iget-object v0, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_5

    .line 420
    :goto_4
    return-void

    .line 419
    :cond_5
    iget-object v0, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1279
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    .line 1280
    .local v0, "attribute":Lorg/jdom2/Attribute;
    if-nez v0, :cond_f

    .line 1281
    new-instance v1, Lorg/jdom2/Attribute;

    invoke-direct {v1, p1, p2}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    .local v1, "newAttribute":Lorg/jdom2/Attribute;
    invoke-virtual {p0, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 1287
    .end local v1    # "newAttribute":Lorg/jdom2/Attribute;
    :goto_e
    return-object p0

    .line 1284
    :cond_f
    invoke-virtual {v0, p2}, Lorg/jdom2/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom2/Attribute;

    goto :goto_e
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 1310
    invoke-virtual {p0, p1, p3}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    .line 1311
    .local v0, "attribute":Lorg/jdom2/Attribute;
    if-nez v0, :cond_f

    .line 1312
    new-instance v1, Lorg/jdom2/Attribute;

    invoke-direct {v1, p1, p2, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 1313
    .local v1, "newAttribute":Lorg/jdom2/Attribute;
    invoke-virtual {p0, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 1318
    .end local v1    # "newAttribute":Lorg/jdom2/Attribute;
    :goto_e
    return-object p0

    .line 1315
    :cond_f
    invoke-virtual {v0, p2}, Lorg/jdom2/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom2/Attribute;

    goto :goto_e
.end method

.method public setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;
    .registers 3
    .param p1, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 1334
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/AttributeList;->add(Lorg/jdom2/Attribute;)Z

    .line 1335
    return-object p0
.end method

.method public setAttributes(Ljava/util/Collection;)Lorg/jdom2/Element;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Attribute;",
            ">;)",
            "Lorg/jdom2/Element;"
        }
    .end annotation

    .prologue
    .line 1259
    .local p1, "newAttributes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Attribute;>;"
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jdom2/AttributeList;->clearAndSet(Ljava/util/Collection;)V

    .line 1260
    return-object p0
.end method

.method public setContent(ILorg/jdom2/Content;)Lorg/jdom2/Element;
    .registers 4
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 869
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    .line 870
    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom2/Element;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Element;"
        }
    .end annotation

    .prologue
    .line 849
    .local p1, "newContent":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->clearAndSet(Ljava/util/Collection;)V

    .line 850
    return-object p0
.end method

.method public setContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 1033
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->clear()V

    .line 1034
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 1035
    return-object p0
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom2/Parent;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Parent;"
        }
    .end annotation

    .prologue
    .line 890
    .local p2, "newContent":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    .line 891
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 892
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkElementName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 227
    new-instance v1, Lorg/jdom2/IllegalNameException;

    const-string v2, "element"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_e
    iput-object p1, p0, Lorg/jdom2/Element;->name:Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 251
    if-nez p1, :cond_4

    .line 252
    sget-object p1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 255
    :cond_4
    iget-object v3, p0, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-eqz v3, :cond_18

    .line 256
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "reason":Ljava/lang/String;
    if-eqz v2, :cond_18

    .line 259
    new-instance v3, Lorg/jdom2/IllegalAddException;

    invoke-direct {v3, p0, p1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Namespace;Ljava/lang/String;)V

    throw v3

    .line 262
    .end local v2    # "reason":Ljava/lang/String;
    :cond_18
    invoke-virtual {p0}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 263
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 264
    .local v0, "a":Lorg/jdom2/Attribute;
    invoke-static {p1, v0}, Lorg/jdom2/Verifier;->checkNamespaceCollision(Lorg/jdom2/Namespace;Lorg/jdom2/Attribute;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .restart local v2    # "reason":Ljava/lang/String;
    if-eqz v2, :cond_26

    .line 267
    new-instance v3, Lorg/jdom2/IllegalAddException;

    invoke-direct {v3, p0, p1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/Element;Lorg/jdom2/Namespace;Ljava/lang/String;)V

    throw v3

    .line 272
    .end local v0    # "a":Lorg/jdom2/Attribute;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "reason":Ljava/lang/String;
    :cond_3e
    iput-object p1, p0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    .line 273
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 688
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->clear()V

    .line 690
    if-eqz p1, :cond_f

    .line 691
    new-instance v0, Lorg/jdom2/Text;

    invoke-direct {v0, p1}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 694
    :cond_f
    return-object p0
.end method

.method public sortAttributes(Ljava/util/Comparator;)V
    .registers 3
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
    .line 1898
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Attribute;>;"
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    if-eqz v0, :cond_9

    .line 1899
    iget-object v0, p0, Lorg/jdom2/Element;->attributes:Lorg/jdom2/AttributeList;

    invoke-virtual {v0, p1}, Lorg/jdom2/AttributeList;->sort(Ljava/util/Comparator;)V

    .line 1901
    :cond_9
    return-void
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lorg/jdom2/Element;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1878
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Element;>;"
    invoke-virtual {p0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ContentList$FilterList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList$FilterList;->sort(Ljava/util/Comparator;)V

    .line 1879
    return-void
.end method

.method public sortContent(Ljava/util/Comparator;)V
    .registers 3
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
    .line 1858
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->sort(Ljava/util/Comparator;)V

    .line 1859
    return-void
.end method

.method public sortContent(Lorg/jdom2/filter/Filter;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/jdom2/Content;",
            ">(",
            "Lorg/jdom2/filter/Filter",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1935
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TE;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/Element;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lorg/jdom2/ContentList$FilterList;

    .line 1936
    .local v0, "list":Lorg/jdom2/ContentList$FilterList;, "Lorg/jdom2/ContentList$FilterList<TE;>;"
    invoke-virtual {v0, p2}, Lorg/jdom2/ContentList$FilterList;->sort(Ljava/util/Comparator;)V

    .line 1938
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1398
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "[Element: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1402
    .local v1, "stringForm":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "nsuri":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 1404
    const-string v2, " [Namespace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    :cond_30
    const-string v2, "/>]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
