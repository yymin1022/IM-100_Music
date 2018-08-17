.class public Lorg/jdom2/UncheckedJDOMFactory;
.super Lorg/jdom2/DefaultJDOMFactory;
.source "UncheckedJDOMFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V
    .registers 6
    .param p1, "parent"    # Lorg/jdom2/Parent;
    .param p2, "child"    # Lorg/jdom2/Content;

    .prologue
    .line 311
    instance-of v2, p1, Lorg/jdom2/Element;

    if-eqz v2, :cond_d

    move-object v1, p1

    .line 312
    check-cast v1, Lorg/jdom2/Element;

    .line 313
    .local v1, "elt":Lorg/jdom2/Element;
    iget-object v2, v1, Lorg/jdom2/Element;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v2, p2}, Lorg/jdom2/ContentList;->uncheckedAddContent(Lorg/jdom2/Content;)V

    .line 319
    .end local v1    # "elt":Lorg/jdom2/Element;
    :goto_c
    return-void

    :cond_d
    move-object v0, p1

    .line 316
    check-cast v0, Lorg/jdom2/Document;

    .line 317
    .local v0, "doc":Lorg/jdom2/Document;
    iget-object v2, v0, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v2, p2}, Lorg/jdom2/ContentList;->uncheckedAddContent(Lorg/jdom2/Content;)V

    goto :goto_c
.end method

.method public addNamespaceDeclaration(Lorg/jdom2/Element;Lorg/jdom2/Namespace;)V
    .registers 5
    .param p1, "parent"    # Lorg/jdom2/Element;
    .param p2, "additional"    # Lorg/jdom2/Namespace;

    .prologue
    .line 328
    iget-object v0, p1, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    if-nez v0, :cond_c

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p1, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    .line 331
    :cond_c
    iget-object v0, p1, Lorg/jdom2/Element;->additionalNamespaces:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0}, Lorg/jdom2/Attribute;-><init>()V

    .line 141
    .local v0, "a":Lorg/jdom2/Attribute;
    iput-object p1, v0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    .line 142
    iput-object p2, v0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    .line 143
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    iput-object v1, v0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    .line 144
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
    .line 151
    invoke-static {p3}, Lorg/jdom2/AttributeType;->byIndex(I)Lorg/jdom2/AttributeType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/UncheckedJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;ILorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom2/Namespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 122
    invoke-static {p3}, Lorg/jdom2/AttributeType;->byIndex(I)Lorg/jdom2/AttributeType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/jdom2/UncheckedJDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;

    .prologue
    .line 156
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0}, Lorg/jdom2/Attribute;-><init>()V

    .line 157
    .local v0, "a":Lorg/jdom2/Attribute;
    iput-object p1, v0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    .line 158
    iput-object p3, v0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    .line 159
    iput-object p2, v0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    .line 160
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    iput-object v1, v0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    .line 161
    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 127
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0}, Lorg/jdom2/Attribute;-><init>()V

    .line 128
    .local v0, "a":Lorg/jdom2/Attribute;
    iput-object p1, v0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    .line 129
    iput-object p3, v0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    .line 130
    iput-object p2, v0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    .line 131
    if-nez p4, :cond_f

    .line 132
    sget-object p4, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 134
    :cond_f
    iput-object p4, v0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    .line 135
    return-object v0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 109
    new-instance v0, Lorg/jdom2/Attribute;

    invoke-direct {v0}, Lorg/jdom2/Attribute;-><init>()V

    .line 110
    .local v0, "a":Lorg/jdom2/Attribute;
    iput-object p1, v0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    .line 111
    iput-object p2, v0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    .line 112
    if-nez p3, :cond_d

    .line 113
    sget-object p3, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 115
    :cond_d
    iput-object p3, v0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    .line 116
    return-object v0
.end method

.method public cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Lorg/jdom2/CDATA;

    invoke-direct {v0}, Lorg/jdom2/CDATA;-><init>()V

    .line 182
    .local v0, "c":Lorg/jdom2/CDATA;
    iput-object p3, v0, Lorg/jdom2/CDATA;->value:Ljava/lang/String;

    .line 183
    return-object v0
.end method

.method public comment(IILjava/lang/String;)Lorg/jdom2/Comment;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 192
    new-instance v0, Lorg/jdom2/Comment;

    invoke-direct {v0}, Lorg/jdom2/Comment;-><init>()V

    .line 193
    .local v0, "c":Lorg/jdom2/Comment;
    iput-object p3, v0, Lorg/jdom2/Comment;->text:Ljava/lang/String;

    .line 194
    return-object v0
.end method

.method public docType(IILjava/lang/String;)Lorg/jdom2/DocType;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "elementName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, p3, v0, v0}, Lorg/jdom2/UncheckedJDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

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
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p4}, Lorg/jdom2/UncheckedJDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v0

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
    .line 259
    new-instance v0, Lorg/jdom2/DocType;

    invoke-direct {v0}, Lorg/jdom2/DocType;-><init>()V

    .line 260
    .local v0, "d":Lorg/jdom2/DocType;
    iput-object p3, v0, Lorg/jdom2/DocType;->elementName:Ljava/lang/String;

    .line 261
    iput-object p4, v0, Lorg/jdom2/DocType;->publicID:Ljava/lang/String;

    .line 262
    iput-object p5, v0, Lorg/jdom2/DocType;->systemID:Ljava/lang/String;

    .line 263
    return-object v0
.end method

.method public document(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .registers 3
    .param p1, "rootElement"    # Lorg/jdom2/Element;

    .prologue
    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, p1, v0, v0}, Lorg/jdom2/UncheckedJDOMFactory;->document(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;Lorg/jdom2/DocType;)Lorg/jdom2/Document;
    .registers 4
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/UncheckedJDOMFactory;->document(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public document(Lorg/jdom2/Element;Lorg/jdom2/DocType;Ljava/lang/String;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "rootElement"    # Lorg/jdom2/Element;
    .param p2, "docType"    # Lorg/jdom2/DocType;
    .param p3, "baseURI"    # Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0}, Lorg/jdom2/Document;-><init>()V

    .line 283
    .local v0, "d":Lorg/jdom2/Document;
    if-eqz p2, :cond_a

    .line 284
    invoke-virtual {p0, v0, p2}, Lorg/jdom2/UncheckedJDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 286
    :cond_a
    if-eqz p1, :cond_f

    .line 287
    invoke-virtual {p0, v0, p1}, Lorg/jdom2/UncheckedJDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 289
    :cond_f
    if-eqz p3, :cond_13

    .line 290
    iput-object p3, v0, Lorg/jdom2/Document;->baseURI:Ljava/lang/String;

    .line 292
    :cond_13
    return-object v0
.end method

.method public element(IILjava/lang/String;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0}, Lorg/jdom2/Element;-><init>()V

    .line 88
    .local v0, "e":Lorg/jdom2/Element;
    iput-object p3, v0, Lorg/jdom2/Element;->name:Ljava/lang/String;

    .line 89
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    iput-object v1, v0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    .line 90
    return-object v0
.end method

.method public element(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string v0, ""

    invoke-static {v0, p4}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/jdom2/UncheckedJDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

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
    .line 100
    invoke-static {p4, p5}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lorg/jdom2/UncheckedJDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

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
    .line 76
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {v0}, Lorg/jdom2/Element;-><init>()V

    .line 77
    .local v0, "e":Lorg/jdom2/Element;
    iput-object p3, v0, Lorg/jdom2/Element;->name:Ljava/lang/String;

    .line 78
    if-nez p4, :cond_b

    .line 79
    sget-object p4, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 81
    :cond_b
    iput-object p4, v0, Lorg/jdom2/Element;->namespace:Lorg/jdom2/Namespace;

    .line 82
    return-object v0
.end method

.method public entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0}, Lorg/jdom2/EntityRef;-><init>()V

    .line 232
    .local v0, "e":Lorg/jdom2/EntityRef;
    iput-object p3, v0, Lorg/jdom2/EntityRef;->name:Ljava/lang/String;

    .line 233
    return-object v0
.end method

.method public entityRef(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "systemID"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0}, Lorg/jdom2/EntityRef;-><init>()V

    .line 239
    .local v0, "e":Lorg/jdom2/EntityRef;
    iput-object p3, v0, Lorg/jdom2/EntityRef;->name:Ljava/lang/String;

    .line 240
    iput-object p4, v0, Lorg/jdom2/EntityRef;->systemID:Ljava/lang/String;

    .line 241
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
    .line 246
    new-instance v0, Lorg/jdom2/EntityRef;

    invoke-direct {v0}, Lorg/jdom2/EntityRef;-><init>()V

    .line 247
    .local v0, "e":Lorg/jdom2/EntityRef;
    iput-object p3, v0, Lorg/jdom2/EntityRef;->name:Ljava/lang/String;

    .line 248
    iput-object p4, v0, Lorg/jdom2/EntityRef;->publicID:Ljava/lang/String;

    .line 249
    iput-object p5, v0, Lorg/jdom2/EntityRef;->systemID:Ljava/lang/String;

    .line 250
    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0}, Lorg/jdom2/ProcessingInstruction;-><init>()V

    .line 220
    .local v0, "p":Lorg/jdom2/ProcessingInstruction;
    iput-object p3, v0, Lorg/jdom2/ProcessingInstruction;->target:Ljava/lang/String;

    .line 221
    const-string v1, ""

    iput-object v1, v0, Lorg/jdom2/ProcessingInstruction;->rawData:Ljava/lang/String;

    .line 222
    return-object v0
.end method

.method public processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;
    .registers 6
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0}, Lorg/jdom2/ProcessingInstruction;-><init>()V

    .line 212
    .local v0, "p":Lorg/jdom2/ProcessingInstruction;
    iput-object p3, v0, Lorg/jdom2/ProcessingInstruction;->target:Ljava/lang/String;

    .line 213
    invoke-virtual {v0, p4}, Lorg/jdom2/ProcessingInstruction;->setData(Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    .line 214
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
    .line 203
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jdom2/ProcessingInstruction;

    invoke-direct {v0}, Lorg/jdom2/ProcessingInstruction;-><init>()V

    .line 204
    .local v0, "p":Lorg/jdom2/ProcessingInstruction;
    iput-object p3, v0, Lorg/jdom2/ProcessingInstruction;->target:Ljava/lang/String;

    .line 205
    invoke-virtual {v0, p4}, Lorg/jdom2/ProcessingInstruction;->setData(Ljava/util/Map;)Lorg/jdom2/ProcessingInstruction;

    .line 206
    return-object v0
.end method

.method public setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V
    .registers 4
    .param p1, "parent"    # Lorg/jdom2/Element;
    .param p2, "a"    # Lorg/jdom2/Attribute;

    .prologue
    .line 323
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAttributeList()Lorg/jdom2/AttributeList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jdom2/AttributeList;->uncheckedAddAttribute(Lorg/jdom2/Attribute;)V

    .line 324
    return-void
.end method

.method public setRoot(Lorg/jdom2/Document;Lorg/jdom2/Element;)V
    .registers 4
    .param p1, "doc"    # Lorg/jdom2/Document;
    .param p2, "root"    # Lorg/jdom2/Element;

    .prologue
    .line 336
    iget-object v0, p1, Lorg/jdom2/Document;->content:Lorg/jdom2/ContentList;

    invoke-virtual {v0, p2}, Lorg/jdom2/ContentList;->uncheckedAddContent(Lorg/jdom2/Content;)V

    .line 337
    return-void
.end method

.method public text(IILjava/lang/String;)Lorg/jdom2/Text;
    .registers 5
    .param p1, "line"    # I
    .param p2, "col"    # I
    .param p3, "str"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lorg/jdom2/Text;

    invoke-direct {v0}, Lorg/jdom2/Text;-><init>()V

    .line 171
    .local v0, "t":Lorg/jdom2/Text;
    iput-object p3, v0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    .line 172
    return-object v0
.end method
