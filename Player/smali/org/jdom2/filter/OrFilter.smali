.class final Lorg/jdom2/filter/OrFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "OrFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdom2/filter/AbstractFilter",
        "<",
        "Lorg/jdom2/Content;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private final left:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter",
            "<*>;"
        }
    .end annotation
.end field

.field private final right:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jdom2/filter/Filter;Lorg/jdom2/filter/Filter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/filter/Filter",
            "<*>;",
            "Lorg/jdom2/filter/Filter",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "left":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    .local p2, "right":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<*>;"
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    .line 86
    if-eqz p1, :cond_7

    if-nez p2, :cond_f

    .line 87
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null filter not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_f
    iput-object p1, p0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    .line 90
    iput-object p2, p0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 103
    if-ne p0, p1, :cond_4

    .line 114
    :cond_3
    :goto_3
    return v1

    .line 107
    :cond_4
    instance-of v2, p1, Lorg/jdom2/filter/OrFilter;

    if-eqz v2, :cond_33

    move-object v0, p1

    .line 108
    check-cast v0, Lorg/jdom2/filter/OrFilter;

    .line 109
    .local v0, "filter":Lorg/jdom2/filter/OrFilter;
    iget-object v2, p0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    iget-object v3, v0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    iget-object v3, v0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1f
    iget-object v2, p0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    iget-object v3, v0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    iget-object v3, v0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    .end local v0    # "filter":Lorg/jdom2/filter/OrFilter;
    :cond_33
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/OrFilter;->filter(Ljava/lang/Object;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/Object;)Lorg/jdom2/Content;
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom2/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    invoke-interface {v0, p1}, Lorg/jdom2/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 96
    :cond_10
    check-cast p1, Lorg/jdom2/Content;

    .line 98
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_12
    return-object p1

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_13
    const/4 p1, 0x0

    goto :goto_12
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 119
    iget-object v0, p0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[OrFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/OrFilter;->left:Lorg/jdom2/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "           "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/filter/OrFilter;->right:Lorg/jdom2/filter/Filter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
