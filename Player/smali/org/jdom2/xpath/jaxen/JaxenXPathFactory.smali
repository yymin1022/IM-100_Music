.class public Lorg/jdom2/xpath/jaxen/JaxenXPathFactory;
.super Lorg/jdom2/xpath/XPathFactory;
.source "JaxenXPathFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/jdom2/xpath/XPathFactory;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public varargs compile(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)Lorg/jdom2/xpath/XPathExpression;
    .registers 6
    .param p1, "expression"    # Ljava/lang/String;
    .param p4, "namespaces"    # [Lorg/jdom2/Namespace;
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

    .prologue
    .line 82
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    .local p3, "variables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lorg/jdom2/xpath/jaxen/JaxenCompiled;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/jdom2/xpath/jaxen/JaxenCompiled;-><init>(Ljava/lang/String;Lorg/jdom2/filter/Filter;Ljava/util/Map;[Lorg/jdom2/Namespace;)V

    return-object v0
.end method
