.class public Lorg/jdom2/xpath/XPathBuilder;
.super Ljava/lang/Object;
.source "XPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final expression:Ljava/lang/String;

.field private final filter:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private namespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;)V
    .registers 5
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_d

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null expression"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_d
    if-nez p2, :cond_17

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null filter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_17
    iput-object p2, p0, Lorg/jdom2/xpath/XPathBuilder;->filter:Lorg/jdom2/filter/Filter;

    .line 95
    iput-object p1, p0, Lorg/jdom2/xpath/XPathBuilder;->expression:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public compileWith(Lorg/jdom2/xpath/XPathFactory;)Lorg/jdom2/xpath/XPathExpression;
    .registers 7
    .param p1, "factory"    # Lorg/jdom2/xpath/XPathFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/xpath/XPathFactory;",
            ")",
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 294
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->expression:Ljava/lang/String;

    iget-object v1, p0, Lorg/jdom2/xpath/XPathBuilder;->filter:Lorg/jdom2/filter/Filter;

    iget-object v2, p0, Lorg/jdom2/xpath/XPathBuilder;->variables:Ljava/util/Map;

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/jdom2/Namespace;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/jdom2/xpath/XPathFactory;->compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)Lorg/jdom2/xpath/XPathExpression;

    move-result-object v0

    .line 296
    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p0, Lorg/jdom2/xpath/XPathBuilder;->expression:Ljava/lang/String;

    iget-object v2, p0, Lorg/jdom2/xpath/XPathBuilder;->filter:Lorg/jdom2/filter/Filter;

    iget-object v3, p0, Lorg/jdom2/xpath/XPathBuilder;->variables:Ljava/util/Map;

    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lorg/jdom2/Namespace;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Namespace;

    invoke-virtual {p1, v1, v2, v3, v0}, Lorg/jdom2/xpath/XPathFactory;->compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)Lorg/jdom2/xpath/XPathExpression;

    move-result-object v0

    goto :goto_11
.end method

.method public getExpression()Ljava/lang/String;
    .registers 2

    .prologue
    .line 279
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Lorg/jdom2/filter/Filter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->filter:Lorg/jdom2/filter/Filter;

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 252
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    if-nez p1, :cond_a

    .line 253
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null prefix"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_a
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 256
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 261
    :goto_14
    return-object v0

    .line 258
    :cond_15
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    if-nez v0, :cond_1b

    .line 259
    const/4 v0, 0x0

    goto :goto_14

    .line 261
    :cond_1b
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Namespace;

    goto :goto_14
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "qname"    # Ljava/lang/String;

    .prologue
    .line 234
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    if-nez p1, :cond_a

    .line 235
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null qname"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_a
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->variables:Ljava/util/Map;

    if-nez v0, :cond_10

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_f
.end method

.method public setNamespace(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 160
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    if-nez p1, :cond_a

    .line 161
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null prefix"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a
    if-nez p2, :cond_14

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_14
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/xpath/XPathBuilder;->setNamespace(Lorg/jdom2/Namespace;)Z

    move-result v0

    return v0
.end method

.method public setNamespace(Lorg/jdom2/Namespace;)Z
    .registers 5
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    const/4 v0, 0x0

    .line 180
    if-nez p1, :cond_b

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null Namespace"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_b
    const-string v1, ""

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 184
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq v1, p1, :cond_3b

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a Namespace URI in XPath for the \"\" prefix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_23
    iget-object v1, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    if-nez v1, :cond_2e

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    .line 195
    :cond_2e
    iget-object v1, p0, Lorg/jdom2/xpath/XPathBuilder;->namespaces:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3b

    const/4 v0, 0x1

    :cond_3b
    return v0
.end method

.method public setNamespaces(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    .local p1, "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jdom2/Namespace;>;"
    if-nez p1, :cond_a

    .line 209
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Null namespaces Collection"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_a
    const/4 v2, 0x0

    .line 212
    .local v2, "ret":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 213
    .local v1, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {p0, v1}, Lorg/jdom2/xpath/XPathBuilder;->setNamespace(Lorg/jdom2/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 214
    const/4 v2, 0x1

    goto :goto_f

    .line 217
    .end local v1    # "ns":Lorg/jdom2/Namespace;
    :cond_23
    return v2
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "qname"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 138
    .local p0, "this":Lorg/jdom2/xpath/XPathBuilder;, "Lorg/jdom2/xpath/XPathBuilder<TT;>;"
    if-nez p1, :cond_a

    .line 139
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null variable name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_a
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->variables:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->variables:Ljava/util/Map;

    .line 144
    :cond_15
    iget-object v0, p0, Lorg/jdom2/xpath/XPathBuilder;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method
