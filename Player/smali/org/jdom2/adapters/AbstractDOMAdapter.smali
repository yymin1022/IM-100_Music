.class public abstract Lorg/jdom2/adapters/AbstractDOMAdapter;
.super Ljava/lang/Object;
.source "AbstractDOMAdapter.java"

# interfaces
.implements Lorg/jdom2/adapters/DOMAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocument(Lorg/jdom2/DocType;)Lorg/w3c/dom/Document;
    .registers 9
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_7

    .line 93
    invoke-virtual {p0}, Lorg/jdom2/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 114
    :cond_6
    :goto_6
    return-object v2

    .line 96
    :cond_7
    invoke-virtual {p0}, Lorg/jdom2/adapters/AbstractDOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    .line 97
    .local v1, "domImpl":Lorg/w3c/dom/DOMImplementation;
    invoke-virtual {p1}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lorg/w3c/dom/DOMImplementation;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 103
    .local v0, "domDocType":Lorg/w3c/dom/DocumentType;
    invoke-virtual {p1}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lorg/jdom2/adapters/AbstractDOMAdapter;->setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V

    .line 105
    const-string v4, "http://temporary"

    invoke-virtual {p1}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5, v0}, Lorg/w3c/dom/DOMImplementation;->createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 109
    .local v2, "ret":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 110
    .local v3, "root":Lorg/w3c/dom/Element;
    if-eqz v3, :cond_6

    .line 111
    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_6
.end method

.method protected setInternalSubset(Lorg/w3c/dom/DocumentType;Ljava/lang/String;)V
    .registers 9
    .param p1, "dt"    # Lorg/w3c/dom/DocumentType;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 146
    :cond_4
    :goto_4
    return-void

    .line 133
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, "dtclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/w3c/dom/DocumentType;>;"
    const-string v2, "setInternalSubset"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    .local v1, "setInternalSubset":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_20} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_20} :catch_27
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_20} :catch_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_20} :catch_23

    goto :goto_4

    .line 137
    .end local v0    # "dtclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/w3c/dom/DocumentType;>;"
    .end local v1    # "setInternalSubset":Ljava/lang/reflect/Method;
    :catch_21
    move-exception v2

    goto :goto_4

    .line 143
    :catch_23
    move-exception v2

    goto :goto_4

    .line 141
    :catch_25
    move-exception v2

    goto :goto_4

    .line 139
    :catch_27
    move-exception v2

    goto :goto_4
.end method
