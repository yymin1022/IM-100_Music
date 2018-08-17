.class public Lorg/jdom2/Document;
.super Lorg/jdom2/CloneBase;
.source "Document.java"

# interfaces
.implements Lorg/jdom2/Parent;


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected baseURI:Ljava/lang/String;

.field transient content:Lorg/jdom2/ContentList;

.field private transient propertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 88
    iput-object v1, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 88
    iput-object v1, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 169
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->setContent(Ljava/util/Collection;)Lorg/jdom2/Document;

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .registers 3
    .param p1, "rootElement"    # Lorg/jdom2/Element;

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;)V
    .registers 4
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V
    .registers 6
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 83
    new-instance v0, Lorg/jdom2/ContentList;

    invoke-direct {v0, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 88
    iput-object v1, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 91
    iput-object v1, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 116
    if-eqz p1, :cond_14

    .line 117
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 119
    :cond_14
    if-eqz p2, :cond_19

    .line 120
    invoke-virtual {p0, p2}, Lorg/jdom2/Document;->setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;

    .line 122
    :cond_19
    if-eqz p3, :cond_1e

    .line 123
    invoke-virtual {p0, p3}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    .line 125
    :cond_1e
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 912
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 914
    new-instance v1, Lorg/jdom2/ContentList;

    invoke-direct {v1, p0}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 916
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 917
    .local v0, "cs":I
    :goto_e
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1c

    .line 918
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Content;

    invoke-virtual {p0, v1}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    goto :goto_e

    .line 921
    :cond_1c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 894
    iget-object v2, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v2}, Lorg/jdom2/ContentList;->size()I

    move-result v0

    .line 895
    .local v0, "cs":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 896
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_19

    .line 897
    invoke-virtual {p0, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 899
    :cond_19
    return-void
.end method


# virtual methods
.method public addContent(ILjava/util/Collection;)Lorg/jdom2/Document;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .prologue
    .line 373
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 374
    return-object p0
.end method

.method public addContent(ILorg/jdom2/Content;)Lorg/jdom2/Document;
    .registers 4
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 353
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    .line 354
    return-object p0
.end method

.method public addContent(Ljava/util/Collection;)Lorg/jdom2/Document;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->addAll(Ljava/util/Collection;)Z

    .line 338
    return-object p0
.end method

.method public addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 320
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 321
    return-object p0
.end method

.method public bridge synthetic addContent(ILjava/util/Collection;)Lorg/jdom2/Parent;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/util/Collection;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Document;->addContent(ILjava/util/Collection;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(ILorg/jdom2/Content;)Lorg/jdom2/Parent;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Lorg/jdom2/Content;

    .prologue
    .line 75
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/Document;->addContent(ILorg/jdom2/Content;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(Ljava/util/Collection;)Lorg/jdom2/Parent;
    .registers 3
    .param p1, "x0"    # Ljava/util/Collection;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->addContent(Ljava/util/Collection;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addContent(Lorg/jdom2/Content;)Lorg/jdom2/Parent;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Content;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public canContainContent(Lorg/jdom2/Content;IZ)V
    .registers 9
    .param p1, "child"    # Lorg/jdom2/Content;
    .param p2, "index"    # I
    .param p3, "replace"    # Z

    .prologue
    .line 793
    instance-of v3, p1, Lorg/jdom2/Element;

    if-eqz v3, :cond_29

    .line 794
    iget-object v3, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v1

    .line 795
    .local v1, "cre":I
    if-eqz p3, :cond_f

    if-ne v1, p2, :cond_f

    .line 836
    .end local v1    # "cre":I
    :cond_e
    return-void

    .line 798
    .restart local v1    # "cre":I
    :cond_f
    if-ltz v1, :cond_19

    .line 799
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "Cannot add a second root element, only one is allowed"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 802
    :cond_19
    iget-object v3, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v3

    if-lt v3, p2, :cond_29

    .line 803
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "A root element cannot be added before the DocType"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 807
    .end local v1    # "cre":I
    :cond_29
    instance-of v3, p1, Lorg/jdom2/DocType;

    if-eqz v3, :cond_54

    .line 808
    iget-object v3, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 809
    .local v0, "cdt":I
    if-eqz p3, :cond_37

    if-eq v0, p2, :cond_e

    .line 813
    :cond_37
    if-ltz v0, :cond_41

    .line 814
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "Cannot add a second doctype, only one is allowed"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 817
    :cond_41
    iget-object v3, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v2

    .line 818
    .local v2, "firstElt":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    if-ge v2, p2, :cond_54

    .line 819
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "A DocType cannot be added after the root element"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 824
    .end local v0    # "cdt":I
    .end local v2    # "firstElt":I
    :cond_54
    instance-of v3, p1, Lorg/jdom2/CDATA;

    if-eqz v3, :cond_60

    .line 825
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "A CDATA is not allowed at the document root"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 828
    :cond_60
    instance-of v3, p1, Lorg/jdom2/Text;

    if-eqz v3, :cond_6c

    .line 829
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "A Text is not allowed at the document root"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 832
    :cond_6c
    instance-of v3, p1, Lorg/jdom2/EntityRef;

    if-eqz v3, :cond_e

    .line 833
    new-instance v3, Lorg/jdom2/IllegalAddException;

    const-string v4, "An EntityRef is not allowed at the document root"

    invoke-direct {v3, v4}, Lorg/jdom2/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/jdom2/Document;->clone()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/jdom2/Document;->clone()Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Document;
    .registers 9

    .prologue
    .line 684
    invoke-super {p0}, Lorg/jdom2/CloneBase;->clone()Lorg/jdom2/CloneBase;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Document;

    .line 688
    .local v1, "doc":Lorg/jdom2/Document;
    new-instance v7, Lorg/jdom2/ContentList;

    invoke-direct {v7, v1}, Lorg/jdom2/ContentList;-><init>(Lorg/jdom2/Parent;)V

    iput-object v7, v1, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    .line 692
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    iget-object v7, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v7}, Lorg/jdom2/ContentList;->size()I

    move-result v7

    if-ge v4, v7, :cond_5e

    .line 693
    iget-object v7, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v7, v4}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v5

    .line 694
    .local v5, "obj":Lorg/jdom2/Content;
    instance-of v7, v5, Lorg/jdom2/Element;

    if-eqz v7, :cond_2e

    .line 695
    check-cast v5, Lorg/jdom2/Element;

    .end local v5    # "obj":Lorg/jdom2/Content;
    invoke-virtual {v5}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object v3

    .line 696
    .local v3, "element":Lorg/jdom2/Element;
    iget-object v7, v1, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v7, v3}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 692
    .end local v3    # "element":Lorg/jdom2/Element;
    :cond_2b
    :goto_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 698
    .restart local v5    # "obj":Lorg/jdom2/Content;
    :cond_2e
    instance-of v7, v5, Lorg/jdom2/Comment;

    if-eqz v7, :cond_3e

    .line 699
    check-cast v5, Lorg/jdom2/Comment;

    .end local v5    # "obj":Lorg/jdom2/Content;
    invoke-virtual {v5}, Lorg/jdom2/Comment;->clone()Lorg/jdom2/Comment;

    move-result-object v0

    .line 700
    .local v0, "comment":Lorg/jdom2/Comment;
    iget-object v7, v1, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v7, v0}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 702
    .end local v0    # "comment":Lorg/jdom2/Comment;
    .restart local v5    # "obj":Lorg/jdom2/Content;
    :cond_3e
    instance-of v7, v5, Lorg/jdom2/ProcessingInstruction;

    if-eqz v7, :cond_4e

    .line 703
    check-cast v5, Lorg/jdom2/ProcessingInstruction;

    .end local v5    # "obj":Lorg/jdom2/Content;
    invoke-virtual {v5}, Lorg/jdom2/ProcessingInstruction;->clone()Lorg/jdom2/ProcessingInstruction;

    move-result-object v6

    .line 704
    .local v6, "pi":Lorg/jdom2/ProcessingInstruction;
    iget-object v7, v1, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v7, v6}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 706
    .end local v6    # "pi":Lorg/jdom2/ProcessingInstruction;
    .restart local v5    # "obj":Lorg/jdom2/Content;
    :cond_4e
    instance-of v7, v5, Lorg/jdom2/DocType;

    if-eqz v7, :cond_2b

    .line 707
    check-cast v5, Lorg/jdom2/DocType;

    .end local v5    # "obj":Lorg/jdom2/Content;
    invoke-virtual {v5}, Lorg/jdom2/DocType;->clone()Lorg/jdom2/DocType;

    move-result-object v2

    .line 708
    .local v2, "dt":Lorg/jdom2/DocType;
    iget-object v7, v1, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v7, v2}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 712
    .end local v2    # "dt":Lorg/jdom2/DocType;
    :cond_5e
    return-object v1
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
    .line 379
    invoke-virtual {p0}, Lorg/jdom2/Document;->getContentSize()I

    move-result v3

    .line 380
    .local v3, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 381
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v3, :cond_1a

    .line 382
    invoke-virtual {p0, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 383
    .local v0, "child":Lorg/jdom2/Content;
    invoke-virtual {v0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 385
    .end local v0    # "child":Lorg/jdom2/Content;
    :cond_1a
    return-object v2
.end method

.method public detachRootElement()Lorg/jdom2/Element;
    .registers 3

    .prologue
    .line 252
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 253
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 254
    const/4 v1, 0x0

    .line 255
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {p0, v0}, Lorg/jdom2/Document;->removeContent(I)Lorg/jdom2/Content;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    goto :goto_9
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 664
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final getBaseURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/util/List;
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
    .line 414
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-nez v0, :cond_e

    .line 415
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_e
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    return-object v0
.end method

.method public getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;
    .registers 4
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
    .line 434
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-nez v0, :cond_e

    .line 435
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root element not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_e
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContent(I)Lorg/jdom2/Content;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public getContentSize()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

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
    .line 722
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
    .line 736
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    new-instance v0, Lorg/jdom2/FilterIterator;

    new-instance v1, Lorg/jdom2/DescendantIterator;

    invoke-direct {v1, p0}, Lorg/jdom2/DescendantIterator;-><init>(Lorg/jdom2/Parent;)V

    invoke-direct {v0, v1, p1}, Lorg/jdom2/FilterIterator;-><init>(Lorg/jdom2/DescendantIterator;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public getDocType()Lorg/jdom2/DocType;
    .registers 3

    .prologue
    .line 266
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 267
    .local v0, "index":I
    if-gez v0, :cond_a

    .line 268
    const/4 v1, 0x0

    .line 270
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    check-cast v1, Lorg/jdom2/DocType;

    goto :goto_9
.end method

.method public getDocument()Lorg/jdom2/Document;
    .registers 1

    .prologue
    .line 756
    return-object p0
.end method

.method public getNamespacesInScope()Ljava/util/List;
    .registers 4
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
    .line 855
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jdom2/Namespace;

    const/4 v1, 0x0

    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesInherited()Ljava/util/List;
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
    .line 867
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesIntroduced()Ljava/util/List;
    .registers 4
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
    .line 861
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/jdom2/Namespace;

    const/4 v1, 0x0

    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom2/Parent;
    .registers 2

    .prologue
    .line 745
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 785
    iget-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 786
    const/4 v0, 0x0

    .line 788
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getRootElement()Lorg/jdom2/Element;
    .registers 4

    .prologue
    .line 218
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 219
    .local v0, "index":I
    if-gez v0, :cond_10

    .line 220
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Root element not set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_10
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    return-object v1
.end method

.method public hasRootElement()Z
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    if-gez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 674
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Lorg/jdom2/Content;)I
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 179
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->indexOf(Ljava/lang/Object;)I

    move-result v0

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
    .line 446
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 447
    .local v0, "old":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->clear()V

    .line 448
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
    .line 459
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TF;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v2, "old":Ljava/util/List;, "Ljava/util/List<TF;>;"
    iget-object v3, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v3, p1}, Lorg/jdom2/ContentList;->getView(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 461
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TF;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 462
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 463
    .local v0, "child":Lorg/jdom2/Content;, "TF;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 466
    .end local v0    # "child":Lorg/jdom2/Content;, "TF;"
    :cond_22
    return-object v2
.end method

.method public removeContent(I)Lorg/jdom2/Content;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public removeContent(Lorg/jdom2/Content;)Z
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 577
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setBaseURI(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setContent(ILjava/util/Collection;)Lorg/jdom2/Document;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .prologue
    .line 570
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    .line 571
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->addAll(ILjava/util/Collection;)Z

    .line 572
    return-object p0
.end method

.method public setContent(ILorg/jdom2/Content;)Lorg/jdom2/Document;
    .registers 4
    .param p1, "index"    # I
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 549
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    .line 550
    return-object p0
.end method

.method public setContent(Ljava/util/Collection;)Lorg/jdom2/Document;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Lorg/jdom2/Document;"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "newContent":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->clearAndSet(Ljava/util/Collection;)V

    .line 505
    return-object p0
.end method

.method public setContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;
    .registers 3
    .param p1, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 613
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0}, Lorg/jdom2/ContentList;->clear()V

    .line 614
    iget-object v0, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 615
    return-object p0
.end method

.method public setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "docType"    # Lorg/jdom2/DocType;

    .prologue
    .line 287
    if-nez p1, :cond_10

    .line 289
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 290
    .local v0, "docTypeIndex":I
    if-ltz v0, :cond_f

    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom2/ContentList;->remove(I)Lorg/jdom2/Content;

    .line 308
    :cond_f
    :goto_f
    return-object p0

    .line 294
    .end local v0    # "docTypeIndex":I
    :cond_10
    invoke-virtual {p1}, Lorg/jdom2/DocType;->getParent()Lorg/jdom2/Document;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 295
    new-instance v1, Lorg/jdom2/IllegalAddException;

    const-string v2, "The DocType already is attached to a document"

    invoke-direct {v1, p1, v2}, Lorg/jdom2/IllegalAddException;-><init>(Lorg/jdom2/DocType;Ljava/lang/String;)V

    throw v1

    .line 300
    :cond_1e
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfDocType()I

    move-result v0

    .line 301
    .restart local v0    # "docTypeIndex":I
    if-gez v0, :cond_2d

    .line 302
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lorg/jdom2/ContentList;->add(ILorg/jdom2/Content;)V

    goto :goto_f

    .line 305
    :cond_2d
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    goto :goto_f
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 770
    iget-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 771
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    .line 773
    :cond_b
    iget-object v0, p0, Lorg/jdom2/Document;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    return-void
.end method

.method public setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .registers 4
    .param p1, "rootElement"    # Lorg/jdom2/Element;

    .prologue
    .line 236
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1}, Lorg/jdom2/ContentList;->indexOfFirstElement()I

    move-result v0

    .line 237
    .local v0, "index":I
    if-gez v0, :cond_e

    .line 238
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, p1}, Lorg/jdom2/ContentList;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_d
    return-object p0

    .line 241
    :cond_e
    iget-object v1, p0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v1, v0, p1}, Lorg/jdom2/ContentList;->set(ILorg/jdom2/Content;)Lorg/jdom2/Content;

    goto :goto_d
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Document: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 633
    .local v2, "stringForm":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v0

    .line 634
    .local v0, "docType":Lorg/jdom2/DocType;
    if-eqz v0, :cond_41

    .line 635
    invoke-virtual {v0}, Lorg/jdom2/DocType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :goto_1e
    invoke-virtual {p0}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-virtual {p0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v1

    .line 642
    .local v1, "rootElement":Lorg/jdom2/Element;
    :goto_28
    if-eqz v1, :cond_49

    .line 643
    const-string v3, "Root is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jdom2/Element;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :goto_37
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 638
    .end local v1    # "rootElement":Lorg/jdom2/Element;
    :cond_41
    const-string v3, " No DOCTYPE declaration, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 641
    :cond_47
    const/4 v1, 0x0

    goto :goto_28

    .line 646
    .restart local v1    # "rootElement":Lorg/jdom2/Element;
    :cond_49
    const-string v3, " No root element"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37
.end method
