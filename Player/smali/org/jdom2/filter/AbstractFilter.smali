.class public abstract Lorg/jdom2/filter/AbstractFilter;
.super Ljava/lang/Object;
.source "AbstractFilter.java"

# interfaces
.implements Lorg/jdom2/filter/Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdom2/filter/Filter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final and(Lorg/jdom2/filter/Filter;)Lorg/jdom2/filter/Filter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter",
            "<*>;)",
            "Lorg/jdom2/filter/Filter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    new-instance v0, Lorg/jdom2/filter/AndFilter;

    invoke-direct {v0, p1, p0}, Lorg/jdom2/filter/AndFilter;-><init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public filter(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_7

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 113
    :goto_6
    return-object v5

    .line 89
    :cond_7
    instance-of v5, p1, Ljava/util/RandomAccess;

    if-eqz v5, :cond_37

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 91
    .local v4, "sz":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .local v3, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v4, :cond_27

    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jdom2/filter/AbstractFilter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "c":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_24

    .line 95
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 98
    .end local v0    # "c":Ljava/lang/Object;, "TT;"
    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_6

    .line 101
    :cond_32
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_6

    .line 103
    .end local v1    # "i":I
    .end local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .end local v4    # "sz":I
    :cond_37
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .restart local v3    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/jdom2/filter/AbstractFilter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    .restart local v0    # "c":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_42

    .line 107
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 110
    .end local v0    # "c":Ljava/lang/Object;, "TT;"
    :cond_56
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_6

    .line 113
    :cond_61
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    goto :goto_6
.end method

.method public final matches(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "content"    # Ljava/lang/Object;

    .prologue
    .line 81
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/AbstractFilter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final negate()Lorg/jdom2/filter/Filter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdom2/filter/Filter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    instance-of v0, p0, Lorg/jdom2/filter/NegateFilter;

    if-eqz v0, :cond_b

    .line 119
    check-cast p0, Lorg/jdom2/filter/NegateFilter;

    .end local p0    # "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    invoke-virtual {p0}, Lorg/jdom2/filter/NegateFilter;->getBaseFilter()Lorg/jdom2/filter/Filter;

    move-result-object v0

    .line 121
    .restart local p0    # "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lorg/jdom2/filter/NegateFilter;

    invoke-direct {v0, p0}, Lorg/jdom2/filter/NegateFilter;-><init>(Lorg/jdom2/filter/Filter;)V

    goto :goto_a
.end method

.method public final or(Lorg/jdom2/filter/Filter;)Lorg/jdom2/filter/Filter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter",
            "<*>;)",
            "Lorg/jdom2/filter/Filter",
            "<+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    new-instance v0, Lorg/jdom2/filter/OrFilter;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/filter/OrFilter;-><init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public refine(Lorg/jdom2/filter/Filter;)Lorg/jdom2/filter/Filter;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdom2/filter/Filter",
            "<TR;>;)",
            "Lorg/jdom2/filter/Filter",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/jdom2/filter/AbstractFilter;, "Lorg/jdom2/filter/AbstractFilter<TT;>;"
    .local p1, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TR;>;"
    new-instance v0, Lorg/jdom2/filter/AndFilter;

    invoke-direct {v0, p0, p1}, Lorg/jdom2/filter/AndFilter;-><init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method
