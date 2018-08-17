.class public Lorg/jdom2/SlimJDOMFactory;
.super Lorg/jdom2/DefaultJDOMFactory;
.source "SlimJDOMFactory.java"


# instance fields
.field private cache:Lorg/jdom2/StringBin;

.field private final cachetext:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jdom2/SlimJDOMFactory;-><init>(Z)V

    .line 79
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "cachetext"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    .line 71
    new-instance v0, Lorg/jdom2/StringBin;

    invoke-direct {v0}, Lorg/jdom2/StringBin;-><init>()V

    iput-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    .line 90
    iput-boolean p1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    .line 91
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    :cond_10
    invoke-super {p0, v0, p2}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    :cond_10
    invoke-super {p0, v0, p2, p3}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom2/Namespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    :cond_10
    invoke-super {p0, v0, p2, p3, p4}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    :cond_10
    invoke-super {p0, v0, p2, p3}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 120
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    :cond_10
    invoke-super {p0, v0, p2, p3, p4}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 103
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p1}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v1, p2}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    :cond_10
    invoke-super {p0, v0, p2, p3}, Lorg/jdom2/DefaultJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "str":Ljava/lang/String;
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lorg/jdom2/DefaultJDOMFactory;->cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public clearCache()V
    .registers 2

    .prologue
    .line 98
    new-instance v0, Lorg/jdom2/StringBin;

    invoke-direct {v0}, Lorg/jdom2/StringBin;-><init>()V

    iput-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    .line 99
    return-void
.end method

.method public comment(IILjava/lang/String;)Lorg/jdom2/Comment;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "text":Ljava/lang/String;
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lorg/jdom2/DefaultJDOMFactory;->comment(IILjava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;)Lorg/jdom2/DocType;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 168
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 12
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;)Lorg/jdom2/Element;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 12
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 178
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 12
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/jdom2/ProcessingInstruction;"
        }
    .end annotation

    .prologue
    .line 199
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1, p2, v0, p4}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public text(IILjava/lang/String;)Lorg/jdom2/Text;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-boolean v0, p0, Lorg/jdom2/SlimJDOMFactory;->cachetext:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/jdom2/SlimJDOMFactory;->cache:Lorg/jdom2/StringBin;

    invoke-virtual {v0, p3}, Lorg/jdom2/StringBin;->reuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "str":Ljava/lang/String;
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lorg/jdom2/DefaultJDOMFactory;->text(IILjava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method
