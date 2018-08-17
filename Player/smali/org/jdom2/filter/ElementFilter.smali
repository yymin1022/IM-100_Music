.class public Lorg/jdom2/filter/ElementFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "ElementFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdom2/filter/AbstractFilter",
        "<",
        "Lorg/jdom2/Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private name:Ljava/lang/String;

.field private namespace:Lorg/jdom2/Namespace;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 90
    iput-object p1, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 109
    iput-object p1, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Namespace;)V
    .registers 2
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    if-ne p0, p1, :cond_5

    .line 159
    :cond_4
    :goto_4
    return v1

    .line 152
    :cond_5
    instance-of v3, p1, Lorg/jdom2/filter/ElementFilter;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 154
    check-cast v0, Lorg/jdom2/filter/ElementFilter;

    .line 156
    .local v0, "filter":Lorg/jdom2/filter/ElementFilter;
    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    iget-object v4, v0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    :cond_1c
    move v1, v2

    goto :goto_4

    :cond_1e
    iget-object v3, v0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-nez v3, :cond_1c

    .line 157
    :cond_22
    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    iget-object v4, v0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v3, v4}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_30
    move v1, v2

    goto :goto_4

    :cond_32
    iget-object v3, v0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-eqz v3, :cond_4

    goto :goto_30
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/ElementFilter;->filter(Ljava/lang/Object;)Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/Object;)Lorg/jdom2/Element;
    .registers 6
    .param p1, "content"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 122
    instance-of v2, p1, Lorg/jdom2/Element;

    if-eqz v2, :cond_3f

    move-object v0, p1

    .line 123
    check-cast v0, Lorg/jdom2/Element;

    .line 124
    .local v0, "el":Lorg/jdom2/Element;
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 125
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-nez v2, :cond_11

    .line 138
    .end local v0    # "el":Lorg/jdom2/Element;
    :cond_10
    :goto_10
    return-object v0

    .line 128
    .restart local v0    # "el":Lorg/jdom2/Element;
    :cond_11
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object v0, v1

    goto :goto_10

    .line 130
    :cond_1f
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move-object v0, v1

    .line 131
    goto :goto_10

    .line 133
    :cond_2d
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-eqz v2, :cond_10

    .line 136
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object v0, v1

    goto :goto_10

    .end local v0    # "el":Lorg/jdom2/Element;
    :cond_3f
    move-object v0, v1

    .line 138
    goto :goto_10
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 167
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1d

    iget-object v3, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 168
    return v0

    .end local v0    # "result":I
    :cond_1a
    move v0, v1

    .line 166
    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ElementFilter: Name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    if-nez v0, :cond_2c

    const-string v0, "*any*"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with Namespace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/ElementFilter;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    iget-object v0, p0, Lorg/jdom2/filter/ElementFilter;->name:Ljava/lang/String;

    goto :goto_11
.end method
