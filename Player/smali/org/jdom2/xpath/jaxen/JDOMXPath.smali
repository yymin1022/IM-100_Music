.class public Lorg/jdom2/xpath/jaxen/JDOMXPath;
.super Lorg/jdom2/xpath/XPath;
.source "JDOMXPath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

.field private transient xPath:Lorg/jaxen/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Lorg/jdom2/xpath/XPath;-><init>()V

    .line 116
    new-instance v0, Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-direct {v0}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;-><init>()V

    iput-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    .line 162
    invoke-direct {p0, p1}, Lorg/jdom2/xpath/jaxen/JDOMXPath;->setXPath(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method private setXPath(Ljava/lang/String;)V
    .registers 6
    .param p1, "expr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    new-instance v1, Lorg/jaxen/BaseXPath;

    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-direct {v1, p1, v2}, Lorg/jaxen/BaseXPath;-><init>(Ljava/lang/String;Lorg/jaxen/Navigator;)V

    iput-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    .line 339
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-interface {v1, v2}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 344
    return-void

    .line 340
    :catch_11
    move-exception v0

    .line 341
    .local v0, "ex1":Ljava/lang/Exception;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid XPath expression: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 144
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/jdom2/xpath/jaxen/JDOMXPath;->unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 148
    :cond_1f
    return-object v1
.end method

.method private static final unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 128
    instance-of v0, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    if-eqz v0, :cond_a

    .line 129
    check-cast p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object p0

    .line 131
    :cond_a
    return-object p0
.end method


# virtual methods
.method public addNamespace(Lorg/jdom2/Namespace;)V
    .registers 3
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v0, p1}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->includeNamespace(Lorg/jdom2/Namespace;)V

    .line 316
    return-void
.end method

.method public getXPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 6
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v1, p1}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->setContext(Ljava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    :try_end_a
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_a} :catch_11
    .catchall {:try_start_0 .. :try_end_a} :catchall_3f

    move-result-object v1

    .line 277
    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    return-object v1

    .line 272
    :catch_11
    move-exception v0

    .line 273
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_12
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_3f

    .line 277
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_3f
    move-exception v1

    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    throw v1
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .registers 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v1, p1}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->setContext(Ljava/lang/Object;)V

    .line 184
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/jdom2/xpath/jaxen/JDOMXPath;->unWrap(Ljava/util/List;)Ljava/util/List;
    :try_end_e
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_e} :catch_15
    .catchall {:try_start_0 .. :try_end_e} :catchall_43

    move-result-object v1

    .line 190
    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    return-object v1

    .line 185
    :catch_15
    move-exception v0

    .line 186
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_16
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_43

    .line 190
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_43
    move-exception v1

    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    throw v1
.end method

.method public selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v1, p1}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->setContext(Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/jdom2/xpath/jaxen/JDOMXPath;->unWrapNS(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_e} :catch_15
    .catchall {:try_start_0 .. :try_end_e} :catchall_43

    move-result-object v1

    .line 220
    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    return-object v1

    .line 215
    :catch_15
    move-exception v0

    .line 216
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_16
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_43

    .line 220
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_43
    move-exception v1

    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    throw v1
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 295
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1}, Lorg/jaxen/XPath;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    .line 296
    .local v0, "o":Lorg/jaxen/VariableContext;
    instance-of v1, v0, Lorg/jaxen/SimpleVariableContext;

    if-eqz v1, :cond_10

    .line 297
    check-cast v0, Lorg/jaxen/SimpleVariableContext;

    .end local v0    # "o":Lorg/jaxen/VariableContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lorg/jaxen/SimpleVariableContext;->setVariableValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 348
    const-string v0, "[XPath: %s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v1, p1}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->setContext(Ljava/lang/Object;)V

    .line 241
    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_a} :catch_11
    .catchall {:try_start_0 .. :try_end_a} :catchall_3f

    move-result-object v1

    .line 247
    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    return-object v1

    .line 242
    :catch_11
    move-exception v0

    .line 243
    .local v0, "ex1":Lorg/jaxen/JaxenException;
    :try_start_12
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XPath error while evaluating \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->xPath:Lorg/jaxen/XPath;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3f
    .catchall {:try_start_12 .. :try_end_3f} :catchall_3f

    .line 247
    .end local v0    # "ex1":Lorg/jaxen/JaxenException;
    :catchall_3f
    move-exception v1

    iget-object v2, p0, Lorg/jdom2/xpath/jaxen/JDOMXPath;->navigator:Lorg/jdom2/xpath/jaxen/JDOMNavigator;

    invoke-virtual {v2}, Lorg/jdom2/xpath/jaxen/JDOMNavigator;->reset()V

    throw v1
.end method
