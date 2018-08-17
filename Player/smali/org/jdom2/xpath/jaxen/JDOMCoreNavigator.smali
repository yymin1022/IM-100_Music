.class Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;
.super Lorg/jaxen/DefaultNavigator;
.source "JDOMCoreNavigator.java"


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private transient emtnsmap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lorg/jdom2/Element;",
            "[",
            "Lorg/jdom2/xpath/jaxen/NamespaceContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/jaxen/DefaultNavigator;-><init>()V

    .line 91
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 331
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    .line 332
    return-void
.end method

.method private final recurseElementText(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "element"    # Lorg/jdom2/Element;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 168
    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 170
    .local v0, "c":Lorg/jdom2/Content;
    instance-of v2, v0, Lorg/jdom2/Element;

    if-eqz v2, :cond_1e

    .line 171
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-direct {p0, v0, p2}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->recurseElementText(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V

    goto :goto_8

    .line 172
    .restart local v0    # "c":Lorg/jdom2/Content;
    :cond_1e
    instance-of v2, v0, Lorg/jdom2/Text;

    if-eqz v2, :cond_8

    .line 173
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {v0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 176
    :cond_2c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 337
    return-void
.end method


# virtual methods
.method public final getAttributeAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 277
    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    :goto_19
    return-object v0

    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_1a
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_19
.end method

.method public final getAttributeName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 230
    check-cast p1, Lorg/jdom2/Attribute;

    .end local p1    # "attribute":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 225
    check-cast p1, Lorg/jdom2/Attribute;

    .end local p1    # "attribute":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getAttributeQName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "att"    # Ljava/lang/Object;

    .prologue
    .line 216
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Attribute;

    .line 217
    .local v0, "attribute":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_12

    .line 218
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 220
    :goto_11
    return-object v1

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public final getAttributeStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "attribute"    # Ljava/lang/Object;

    .prologue
    .line 211
    check-cast p1, Lorg/jdom2/Attribute;

    .end local p1    # "attribute":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getChildAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 3
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 284
    instance-of v0, p1, Lorg/jdom2/Parent;

    if-eqz v0, :cond_f

    .line 285
    check-cast p1, Lorg/jdom2/Parent;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/jdom2/Parent;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :goto_e
    return-object v0

    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_f
    sget-object v0, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_e
.end method

.method public final getCommentStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "comment"    # Ljava/lang/Object;

    .prologue
    .line 206
    check-cast p1, Lorg/jdom2/Comment;

    .end local p1    # "comment":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Comment;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDocument(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/FunctionCallException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v1}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 108
    .local v1, "sb":Lorg/jdom2/input/SAXBuilder;
    :try_start_5
    invoke-virtual {v1, p1}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/lang/String;)Lorg/jdom2/Document;
    :try_end_8
    .catch Lorg/jdom2/JDOMException; {:try_start_5 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_24

    move-result-object v2

    return-object v2

    .line 109
    :catch_a
    move-exception v0

    .line 110
    .local v0, "e":Lorg/jdom2/JDOMException;
    new-instance v2, Lorg/jaxen/FunctionCallException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 111
    .end local v0    # "e":Lorg/jdom2/JDOMException;
    :catch_24
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jaxen/FunctionCallException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jaxen/FunctionCallException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public final getDocumentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "contextNode"    # Ljava/lang/Object;

    .prologue
    .line 245
    instance-of v0, p1, Lorg/jdom2/Document;

    if-eqz v0, :cond_5

    .line 254
    .end local p1    # "contextNode":Ljava/lang/Object;
    :goto_4
    return-object p1

    .line 248
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v0, :cond_14

    .line 249
    check-cast p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Element;->getDocument()Lorg/jdom2/Document;

    move-result-object p1

    goto :goto_4

    .line 251
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_14
    instance-of v0, p1, Lorg/jdom2/Attribute;

    if-eqz v0, :cond_1f

    .line 252
    check-cast p1, Lorg/jdom2/Attribute;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getDocument()Lorg/jdom2/Document;

    move-result-object p1

    goto :goto_4

    .line 254
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_1f
    check-cast p1, Lorg/jdom2/Content;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Content;->getDocument()Lorg/jdom2/Document;

    move-result-object p1

    goto :goto_4
.end method

.method public final getElementName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 201
    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementNamespaceUri(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 196
    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getElementQName(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 187
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    .line 188
    .local v0, "e":Lorg/jdom2/Element;
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 189
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    .line 191
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15
.end method

.method public final getElementStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "element":Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->recurseElementText(Lorg/jdom2/Element;Ljava/lang/StringBuilder;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getNamespaceAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 10
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->isElement(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 294
    sget-object v6, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 307
    .end local p1    # "contextNode":Ljava/lang/Object;
    :goto_8
    return-object v6

    .line 296
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_9
    iget-object v6, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .line 297
    .local v5, "ret":[Lorg/jdom2/xpath/jaxen/NamespaceContainer;
    if-nez v5, :cond_46

    move-object v6, p1

    .line 298
    check-cast v6, Lorg/jdom2/Element;

    invoke-virtual {v6}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v4

    .line 299
    .local v4, "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 302
    .local v3, "ns":Lorg/jdom2/Namespace;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    new-instance v7, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    move-object v6, p1

    check-cast v6, Lorg/jdom2/Element;

    invoke-direct {v7, v3, v6}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;-><init>(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)V

    aput-object v7, v5, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_25

    .line 304
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :cond_3f
    iget-object v6, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {v6, p1, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v0    # "i":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    :cond_46
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    goto :goto_8
.end method

.method public final getNamespacePrefix(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "namespace"    # Ljava/lang/Object;

    .prologue
    .line 164
    check-cast p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p1    # "namespace":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNamespaceStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "namespace"    # Ljava/lang/Object;

    .prologue
    .line 159
    check-cast p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p1    # "namespace":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getParentAxisIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .registers 4
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Iterator",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "p":Lorg/jdom2/Parent;
    instance-of v1, p1, Lorg/jdom2/Content;

    if-eqz v1, :cond_13

    .line 316
    check-cast p1, Lorg/jdom2/Content;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    .line 322
    :cond_b
    :goto_b
    if-eqz v0, :cond_29

    .line 323
    new-instance v1, Lorg/jaxen/util/SingleObjectIterator;

    invoke-direct {v1, v0}, Lorg/jaxen/util/SingleObjectIterator;-><init>(Ljava/lang/Object;)V

    .line 325
    :goto_12
    return-object v1

    .line 317
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_13
    instance-of v1, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v1, :cond_1e

    .line 318
    check-cast p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_b

    .line 319
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_1e
    instance-of v1, p1, Lorg/jdom2/Attribute;

    if-eqz v1, :cond_b

    .line 320
    check-cast p1, Lorg/jdom2/Attribute;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_b

    .line 325
    :cond_29
    sget-object v1, Lorg/jaxen/JaxenConstants;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_12
.end method

.method public final getParentNode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "contextNode"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnsupportedAxisException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 259
    instance-of v1, p1, Lorg/jdom2/Document;

    if-eqz v1, :cond_6

    .line 271
    .end local p1    # "contextNode":Ljava/lang/Object;
    :cond_5
    :goto_5
    return-object v0

    .line 262
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_6
    instance-of v1, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v1, :cond_11

    .line 263
    check-cast p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_5

    .line 265
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_11
    instance-of v1, p1, Lorg/jdom2/Content;

    if-eqz v1, :cond_1c

    .line 266
    check-cast p1, Lorg/jdom2/Content;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    goto :goto_5

    .line 268
    .restart local p1    # "contextNode":Ljava/lang/Object;
    :cond_1c
    instance-of v1, p1, Lorg/jdom2/Attribute;

    if-eqz v1, :cond_5

    .line 269
    check-cast p1, Lorg/jdom2/Attribute;

    .end local p1    # "contextNode":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    goto :goto_5
.end method

.method public final getProcessingInstructionData(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "pi"    # Ljava/lang/Object;

    .prologue
    .line 240
    check-cast p1, Lorg/jdom2/ProcessingInstruction;

    .end local p1    # "pi":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessingInstructionTarget(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "pi"    # Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p1, Lorg/jdom2/ProcessingInstruction;

    .end local p1    # "pi":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextStringValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "text"    # Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, Lorg/jdom2/Text;

    .end local p1    # "text":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAttribute(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "isit"    # Ljava/lang/Object;

    .prologue
    .line 148
    instance-of v0, p1, Lorg/jdom2/Attribute;

    return v0
.end method

.method public final isComment(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "isit"    # Ljava/lang/Object;

    .prologue
    .line 143
    instance-of v0, p1, Lorg/jdom2/Comment;

    return v0
.end method

.method public final isDocument(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "isit"    # Ljava/lang/Object;

    .prologue
    .line 138
    instance-of v0, p1, Lorg/jdom2/Document;

    return v0
.end method

.method public final isElement(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "isit"    # Ljava/lang/Object;

    .prologue
    .line 133
    instance-of v0, p1, Lorg/jdom2/Element;

    return v0
.end method

.method public final isNamespace(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "isit"    # Ljava/lang/Object;

    .prologue
    .line 128
    instance-of v0, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    return v0
.end method

.method public final isProcessingInstruction(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "isit"    # Ljava/lang/Object;

    .prologue
    .line 123
    instance-of v0, p1, Lorg/jdom2/ProcessingInstruction;

    return v0
.end method

.method public final isText(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "isit"    # Ljava/lang/Object;

    .prologue
    .line 118
    instance-of v0, p1, Lorg/jdom2/Text;

    return v0
.end method

.method public final parseXPath(Ljava/lang/String;)Lorg/jaxen/XPath;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/saxpath/SAXPathException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lorg/jaxen/BaseXPath;

    invoke-direct {v0, p1, p0}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    return-object v0
.end method

.method reset()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->emtnsmap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 96
    return-void
.end method
