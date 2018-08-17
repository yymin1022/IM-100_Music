.class public Lorg/jdom2/DefaultJDOMFactory;
.super Ljava/lang/Object;
.source "DefaultJDOMFactory.java"

# interfaces
.implements Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V
    .registers 4
    .param p1, "parent"    # Lorg/jdom2/Parent;
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 309
    instance-of v0, p1, Lorg/jdom2/Document;

    if-eqz v0, :cond_a

    .line 310
    check-cast p1, Lorg/jdom2/Document;

    .end local p1    # "parent":Lorg/jdom2/Parent;
    invoke-virtual {p1, p2}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    .line 314
    :goto_9
    return-void

    .line 312
    .restart local p1    # "parent":Lorg/jdom2/Parent;
    :cond_a
    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "parent":Lorg/jdom2/Parent;
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_9
.end method

.method public addNamespaceDeclaration(Lorg/jdom2/Element;Lorg/jdom2/Namespace;)V
    .registers 3
    .param p1, "parent"    # Lorg/jdom2/Element;
    .param p2, "additional"    # Lorg/jdom2/Namespace;

    .prologue
    .line 323
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 324
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;I)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

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
    .line 88
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-static {p3}, Lorg/jdom2/AttributeType;->byIndex(I)Lorg/jdom2/AttributeType;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p4}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;

    .prologue
    .line 111
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 95
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 81
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Lorg/jdom2/CDATA;

    invoke-direct {v0, p3}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 116
    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public comment(IILjava/lang/String;)Lorg/jdom2/Comment;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 141
    new-instance v0, Lorg/jdom2/Comment;

    invoke-direct {v0, p3}, Lorg/jdom2/Comment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final comment(Ljava/lang/String;)Lorg/jdom2/Comment;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 136
    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->comment(IILjava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    return-object v0
.end method

.method public docType(IILjava/lang/String;)Lorg/jdom2/DocType;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lorg/jdom2/DocType;

    invoke-direct {v0, p3}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Lorg/jdom2/DocType;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lorg/jdom2/DocType;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final docType(Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 3
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 168
    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public final docType(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 157
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public final docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;
    .registers 10
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 146
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .registers 3
    .param p1, "rootElement"    # Lorg/jdom2/Element;

    .prologue
    .line 190
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;)V

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;Lorg/jdom2/DocType;)Lorg/jdom2/Document;
    .registers 4
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;

    .prologue
    .line 179
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1, p2}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;)V

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1, p2, p3}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;)Lorg/jdom2/Element;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 201
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-object v0
.end method

.method public final element(Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 206
    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public final element(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 216
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public final element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 227
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public final element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    const/4 v0, -0x1

    .line 195
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0, p3}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 300
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 7
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "publicID"    # Ljava/lang/String;
    .param p5, "systemID"    # Ljava/lang/String;

    .prologue
    .line 289
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0, p3, p4, p5}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 273
    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public final entityRef(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 294
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public final entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 283
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/DefaultJDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0, p3}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 256
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0, p3, p4}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public final processingInstruction(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 238
    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 4
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 262
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;
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
            ">;)",
            "Lorg/jdom2/ProcessingInstruction;"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, -0x1

    .line 250
    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/jdom2/DefaultJDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V
    .registers 3
    .param p1, "parent"    # Lorg/jdom2/Element;
    .param p2, "a"    # Lorg/jdom2/Attribute;

    .prologue
    .line 318
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 319
    return-void
.end method

.method public setRoot(Lorg/jdom2/Document;Lorg/jdom2/Element;)V
    .registers 3
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "root"    # Lorg/jdom2/Element;

    .prologue
    .line 328
    invoke-virtual {p1, p2}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 329
    return-void
.end method

.method public text(IILjava/lang/String;)Lorg/jdom2/Text;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Lorg/jdom2/Text;

    invoke-direct {v0, p3}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final text(Ljava/lang/String;)Lorg/jdom2/Text;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 126
    invoke-virtual {p0, v0, v0, p1}, Lorg/jdom2/DefaultJDOMFactory;->text(IILjava/lang/String;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method
