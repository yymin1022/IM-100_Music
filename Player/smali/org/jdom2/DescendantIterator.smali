.class final Lorg/jdom2/DescendantIterator;
.super Ljava/lang/Object;
.source "DescendantIterator.java"

# interfaces
.implements Lorg/jdom2/util/IteratorIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jdom2/util/IteratorIterable",
        "<",
        "Lorg/jdom2/Content;",
        ">;"
    }
.end annotation


# instance fields
.field private ascending:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field

.field private current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field

.field private descending:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field

.field private hasnext:Z

.field private final parent:Lorg/jdom2/Parent;

.field private ssize:I

.field private stack:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jdom2/Parent;)V
    .registers 4
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    .line 87
    iput-object v1, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    .line 89
    iput-object v1, p0, Lorg/jdom2/DescendantIterator;->descending:Ljava/util/Iterator;

    .line 91
    iput-object v1, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/DescendantIterator;->hasnext:Z

    .line 101
    iput-object p1, p0, Lorg/jdom2/DescendantIterator;->parent:Lorg/jdom2/Parent;

    .line 103
    invoke-interface {p1}, Lorg/jdom2/Parent;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    .line 104
    iget-object v0, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jdom2/DescendantIterator;->hasnext:Z

    .line 105
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lorg/jdom2/DescendantIterator;->hasnext:Z

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/jdom2/DescendantIterator;->iterator()Lorg/jdom2/DescendantIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/jdom2/DescendantIterator;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Lorg/jdom2/DescendantIterator;

    iget-object v1, p0, Lorg/jdom2/DescendantIterator;->parent:Lorg/jdom2/Parent;

    invoke-direct {v0, v1}, Lorg/jdom2/DescendantIterator;-><init>(Lorg/jdom2/Parent;)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/jdom2/DescendantIterator;->next()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jdom2/Content;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 131
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->descending:Ljava/util/Iterator;

    if-eqz v2, :cond_4d

    .line 132
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->descending:Ljava/util/Iterator;

    iput-object v2, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    .line 133
    iput-object v4, p0, Lorg/jdom2/DescendantIterator;->descending:Ljava/util/Iterator;

    .line 139
    :cond_b
    :goto_b
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 143
    .local v0, "ret":Lorg/jdom2/Content;
    instance-of v2, v0, Lorg/jdom2/Element;

    if-eqz v2, :cond_58

    move-object v2, v0

    check-cast v2, Lorg/jdom2/Element;

    invoke-virtual {v2}, Lorg/jdom2/Element;->getContentSize()I

    move-result v2

    if-lez v2, :cond_58

    move-object v2, v0

    .line 146
    check-cast v2, Lorg/jdom2/Element;

    invoke-virtual {v2}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/jdom2/DescendantIterator;->descending:Ljava/util/Iterator;

    .line 147
    iget v2, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    iget-object v3, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_40

    .line 148
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    add-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    .line 150
    :cond_40
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    iget-object v4, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    aput-object v4, v2, v3

    .line 175
    :cond_4c
    :goto_4c
    return-object v0

    .line 134
    .end local v0    # "ret":Lorg/jdom2/Content;
    :cond_4d
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    if-eqz v2, :cond_b

    .line 135
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    iput-object v2, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    .line 136
    iput-object v4, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    goto :goto_b

    .line 154
    .restart local v0    # "ret":Lorg/jdom2/Content;
    :cond_58
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 160
    :cond_60
    iget v2, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    if-lez v2, :cond_81

    .line 165
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    aget-object v1, v2, v3

    check-cast v1, Ljava/util/Iterator;

    .line 166
    .local v1, "subit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Content;>;"
    iput-object v1, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    .line 167
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    aput-object v4, v2, v3

    .line 168
    iget-object v2, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    goto :goto_4c

    .line 173
    .end local v1    # "subit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Content;>;"
    :cond_81
    iput-object v4, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    .line 174
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jdom2/DescendantIterator;->hasnext:Z

    goto :goto_4c
.end method

.method public remove()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v1, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 189
    iput-object v3, p0, Lorg/jdom2/DescendantIterator;->descending:Ljava/util/Iterator;

    .line 190
    iget-object v1, p0, Lorg/jdom2/DescendantIterator;->current:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    if-eqz v1, :cond_15

    .line 208
    :cond_14
    :goto_14
    return-void

    .line 197
    :cond_15
    iget v1, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    if-lez v1, :cond_36

    .line 199
    iget-object v1, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    iget v2, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    aget-object v0, v1, v2

    check-cast v0, Ljava/util/Iterator;

    .line 200
    .local v0, "subit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Content;>;"
    iget-object v1, p0, Lorg/jdom2/DescendantIterator;->stack:[Ljava/lang/Object;

    iget v2, p0, Lorg/jdom2/DescendantIterator;->ssize:I

    aput-object v3, v1, v2

    .line 201
    iput-object v0, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    .line 202
    iget-object v1, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_14

    .line 206
    .end local v0    # "subit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Content;>;"
    :cond_36
    iput-object v3, p0, Lorg/jdom2/DescendantIterator;->ascending:Ljava/util/Iterator;

    .line 207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/DescendantIterator;->hasnext:Z

    goto :goto_14
.end method
