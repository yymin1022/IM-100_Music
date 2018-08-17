.class final Lorg/jdom2/xpath/jaxen/JDOMNavigator;
.super Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;
.source "JDOMNavigator.java"

# interfaces
.implements Lorg/jaxen/NamespaceContext;


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final nsFromContext:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nsFromUser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromUser:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method includeNamespace(Lorg/jdom2/Namespace;)V
    .registers 5
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromUser:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method reset()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Lorg/jdom2/xpath/jaxen/JDOMCoreNavigator;->reset()V

    .line 78
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 79
    return-void
.end method

.method setContext(Ljava/lang/Object;)V
    .registers 8
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 82
    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    instance-of v3, p1, Lorg/jdom2/NamespaceAware;

    if-eqz v3, :cond_30

    .line 86
    check-cast p1, Lorg/jdom2/NamespaceAware;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-interface {p1}, Lorg/jdom2/NamespaceAware;->getNamespacesInScope()Ljava/util/List;

    move-result-object v2

    .line 90
    :cond_10
    :goto_10
    if-eqz v2, :cond_3f

    .line 91
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 92
    .local v1, "ns":Lorg/jdom2/Namespace;
    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 87
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ns":Lorg/jdom2/Namespace;
    .restart local p1    # "node":Ljava/lang/Object;
    :cond_30
    instance-of v3, p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v3, :cond_10

    .line 88
    check-cast p1, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p1    # "node":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getParentElement()Lorg/jdom2/Element;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v2

    goto :goto_10

    .line 95
    :cond_3f
    return-void
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 103
    if-nez p1, :cond_4

    .line 104
    const/4 v0, 0x0

    .line 110
    :cond_3
    :goto_3
    return-object v0

    .line 106
    :cond_4
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromUser:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "uri":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 110
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->nsFromContext:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_3
.end method
