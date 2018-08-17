.class Lorg/jdom2/xpath/jaxen/JaxenCompiled;
.super Lorg/jdom2/xpath/util/AbstractXPathCompiled;
.source "JaxenCompiled.java"

# interfaces
.implements Lorg/jaxen/NamespaceContext;
.implements Lorg/jaxen/VariableContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdom2/xpath/util/AbstractXPathCompiled",
        "<TT;>;",
        "Lorg/jaxen/NamespaceContext;",
        "Lorg/jaxen/VariableContext;"
    }
.end annotation


# instance fields
.field private final navigator:Lorg/jdom2/xpath/jaxen/JDOM2Navigator;

.field private final xPath:Lorg/jaxen/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V
    .registers 9
    .param p1, "expression"    # Ljava/lang/String;
    .param p4, "namespaces"    # [Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lorg/jdom2/Namespace;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jdom2/xpath/util/AbstractXPathCompiled;-><init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V

    .line 138
    new-instance v1, Lorg/jdom2/xpath/jaxen/JDOM2Navigator;

    invoke-direct {v1}, Lorg/jdom2/xpath/jaxen/JDOM2Navigator;-><init>()V

    iput-object v1, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->navigator:Lorg/jdom2/xpath/jaxen/JDOM2Navigator;

    .line 150
    :try_start_a
    new-instance v1, Lorg/jaxen/BaseXPath;

    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->navigator:Lorg/jdom2/xpath/jaxen/JDOM2Navigator;

    invoke-direct {v1, p1, v2}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    iput-object v1, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;
    :try_end_13
    .catch Lorg/jaxen/JaxenException; {:try_start_a .. :try_end_13} :catch_1e

    .line 155
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p0}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 156
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p0}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 157
    return-void

    .line 151
    :catch_1e
    move-exception v0

    .line 152
    .local v0, "e":Lorg/jaxen/JaxenException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to compile \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'. See Cause."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static final unWrap(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 113
    :cond_1f
    return-object v1
.end method

.method private static final unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 93
    instance-of v0, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v0, :cond_a

    .line 94
    check-cast p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object p0

    .line 96
    :cond_a
    return-object p0
.end method


# virtual methods
.method protected evaluateRawAll(Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->unWrap(Ljava/util/List;)Ljava/util/List;
    :try_end_9
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 189
    :catch_b
    move-exception v0

    .line 190
    .local v0, "e":Lorg/jaxen/JaxenException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to evaluate expression. See cause"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected evaluateRawFirst(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "context"    # Ljava/lang/Object;

    .prologue
    .line 198
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 199
    :catch_b
    move-exception v0

    .line 200
    .local v0, "e":Lorg/jaxen/JaxenException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to evaluate expression. See cause"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaxen/UnresolvableException;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    if-nez p1, :cond_4

    .line 168
    const-string p1, ""

    .line 170
    :cond_4
    if-nez p2, :cond_8

    .line 171
    const-string p2, ""

    .line 174
    :cond_8
    :try_start_8
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 175
    invoke-virtual {p0, p2}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p1

    .line 177
    :cond_18
    invoke-static {p1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getVariable(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_1f} :catch_21

    move-result-object v1

    return-object v1

    .line 178
    :catch_21
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/jaxen/UnresolvableException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to resolve variable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in namespace \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to a vaulue."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jaxen/UnresolvableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 161
    .local p0, "this":Lorg/jdom2/xpath/jaxen/JaxenCompiled;, "Lorg/jdom2/xpath/jaxen/JaxenCompiled<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
