.class public abstract Lorg/jdom2/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "XPathFactory.java"


# static fields
.field private static final DEFAULTFACTORY:Ljava/lang/String;

.field private static final EMPTYNS:[Lorg/jdom2/Namespace;

.field private static final defaultreference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/jdom2/xpath/XPathFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jdom2/Namespace;

    sput-object v0, Lorg/jdom2/xpath/XPathFactory;->EMPTYNS:[Lorg/jdom2/Namespace;

    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/jdom2/xpath/XPathFactory;->defaultreference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 101
    const-string v0, "org.jdom2.xpath.XPathFactory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jdom2/xpath/XPathFactory;->DEFAULTFACTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final instance()Lorg/jdom2/xpath/XPathFactory;
    .registers 4

    .prologue
    .line 118
    sget-object v2, Lorg/jdom2/xpath/XPathFactory;->defaultreference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/xpath/XPathFactory;

    .line 119
    .local v1, "ret":Lorg/jdom2/xpath/XPathFactory;
    if-eqz v1, :cond_b

    .line 129
    .end local v1    # "ret":Lorg/jdom2/xpath/XPathFactory;
    .local v0, "fac":Lorg/jdom2/xpath/XPathFactory;
    :goto_a
    return-object v1

    .line 122
    .end local v0    # "fac":Lorg/jdom2/xpath/XPathFactory;
    .restart local v1    # "ret":Lorg/jdom2/xpath/XPathFactory;
    :cond_b
    sget-object v2, Lorg/jdom2/xpath/XPathFactory;->DEFAULTFACTORY:Ljava/lang/String;

    if-nez v2, :cond_1f

    new-instance v0, Lorg/jdom2/xpath/jaxen/JaxenXPathFactory;

    invoke-direct {v0}, Lorg/jdom2/xpath/jaxen/JaxenXPathFactory;-><init>()V

    .line 124
    .restart local v0    # "fac":Lorg/jdom2/xpath/XPathFactory;
    :goto_14
    sget-object v2, Lorg/jdom2/xpath/XPathFactory;->defaultreference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    move-object v1, v0

    .line 125
    goto :goto_a

    .line 122
    .end local v0    # "fac":Lorg/jdom2/xpath/XPathFactory;
    :cond_1f
    sget-object v2, Lorg/jdom2/xpath/XPathFactory;->DEFAULTFACTORY:Ljava/lang/String;

    invoke-static {v2}, Lorg/jdom2/xpath/XPathFactory;->newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPathFactory;

    move-result-object v0

    goto :goto_14

    .line 129
    .restart local v0    # "fac":Lorg/jdom2/xpath/XPathFactory;
    :cond_26
    sget-object v2, Lorg/jdom2/xpath/XPathFactory;->defaultreference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/xpath/XPathFactory;

    move-object v1, v2

    goto :goto_a
.end method

.method public static final newInstance(Ljava/lang/String;)Lorg/jdom2/xpath/XPathFactory;
    .registers 2
    .param p0, "factoryclass"    # Ljava/lang/String;

    .prologue
    .line 146
    const-class v0, Lorg/jdom2/xpath/XPathFactory;

    invoke-static {p0, v0}, Lorg/jdom2/internal/ReflectionConstructor;->construct(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/xpath/XPathFactory;

    return-object v0
.end method


# virtual methods
.method public compile(Ljava/lang/String;)Lorg/jdom2/xpath/XPathExpression;
    .registers 5
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/jdom2/xpath/XPathExpression",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Lorg/jdom2/filter/Filters;->fpassthrough()Lorg/jdom2/filter/Filter;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/jdom2/xpath/XPathFactory;->EMPTYNS:[Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/jdom2/xpath/XPathFactory;->compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)Lorg/jdom2/xpath/XPathExpression;

    move-result-object v0

    return-object v0
.end method

.method public compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;)Lorg/jdom2/xpath/XPathExpression;
    .registers 5
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;)",
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lorg/jdom2/xpath/XPathFactory;->EMPTYNS:[Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/jdom2/xpath/XPathFactory;->compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)Lorg/jdom2/xpath/XPathExpression;

    move-result-object v0

    return-object v0
.end method

.method public compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;Ljava/util/Collection;)Lorg/jdom2/xpath/XPathExpression;
    .registers 6
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;)",
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 260
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/jdom2/Namespace;>;"
    sget-object v0, Lorg/jdom2/xpath/XPathFactory;->EMPTYNS:[Lorg/jdom2/Namespace;

    invoke-interface {p4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Namespace;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/xpath/XPathFactory;->compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)Lorg/jdom2/xpath/XPathExpression;

    move-result-object v0

    return-object v0
.end method

.method public varargs abstract compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)Lorg/jdom2/xpath/XPathExpression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lorg/jdom2/Namespace;",
            ")",
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;"
        }
    .end annotation
.end method
