.class public Lorg/jdom2/xpath/util/XPathDiagnosticImpl;
.super Ljava/lang/Object;
.source "XPathDiagnosticImpl.java"

# interfaces
.implements Lorg/jdom2/xpath/XPathDiagnostic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdom2/xpath/XPathDiagnostic",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final dcontext:Ljava/lang/Object;

.field private final dfiltered:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final dfirstonly:Z

.field private final draw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final dresult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final dxpath:Lorg/jdom2/xpath/XPathExpression;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/jdom2/xpath/XPathExpression;Ljava/util/List;Z)V
    .registers 14
    .param p1, "dcontext"    # Ljava/lang/Object;
    .param p4, "dfirstonly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;",
            "Ljava/util/List",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    .local p2, "dxpath":Lorg/jdom2/xpath/XPathExpression;, "Lorg/jdom2/xpath/XPathExpression<TT;>;"
    .local p3, "inraw":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 100
    .local v6, "sz":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    .local v4, "raw":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p2}, Lorg/jdom2/xpath/XPathExpression;->getFilter()Lorg/jdom2/filter/Filter;

    move-result-object v0

    .line 105
    .local v0, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 106
    .local v3, "o":Ljava/lang/Object;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-interface {v0, v3}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 108
    .local v7, "t":Ljava/lang/Object;, "TT;"
    if-nez v7, :cond_35

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 111
    :cond_35
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 115
    .end local v3    # "o":Ljava/lang/Object;
    .end local v7    # "t":Ljava/lang/Object;, "TT;"
    :cond_39
    iput-object p1, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dcontext:Ljava/lang/Object;

    .line 116
    iput-object p2, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dxpath:Lorg/jdom2/xpath/XPathExpression;

    .line 117
    iput-boolean p4, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dfirstonly:Z

    .line 119
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dfiltered:Ljava/util/List;

    .line 120
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->draw:Ljava/util/List;

    .line 121
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dresult:Ljava/util/List;

    .line 123
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 127
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dcontext:Ljava/lang/Object;

    return-object v0
.end method

.method public getFilteredResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dfiltered:Ljava/util/List;

    return-object v0
.end method

.method public getRawResults()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->draw:Ljava/util/List;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dresult:Ljava/util/List;

    return-object v0
.end method

.method public getXPathExpression()Lorg/jdom2/xpath/XPathExpression;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/xpath/XPathExpression",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    iget-object v0, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dxpath:Lorg/jdom2/xpath/XPathExpression;

    return-object v0
.end method

.method public isFirstOnly()Z
    .registers 2

    .prologue
    .line 152
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    iget-boolean v0, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dfirstonly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 157
    .local p0, "this":Lorg/jdom2/xpath/util/XPathDiagnosticImpl;, "Lorg/jdom2/xpath/util/XPathDiagnosticImpl<TT;>;"
    const-string v1, "[XPathDiagnostic: \'%s\' evaluated (%s) against %s produced  raw=%d discarded=%d returned=%d]"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dxpath:Lorg/jdom2/xpath/XPathExpression;

    invoke-interface {v3}, Lorg/jdom2/xpath/XPathExpression;->getExpression()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dfirstonly:Z

    if-eqz v0, :cond_50

    const-string v0, "first"

    :goto_15
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dcontext:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->draw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dfiltered:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lorg/jdom2/xpath/util/XPathDiagnosticImpl;->dresult:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_50
    const-string v0, "all"

    goto :goto_15
.end method
