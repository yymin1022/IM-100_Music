.class public abstract Lorg/jdom2/Content;
.super Lorg/jdom2/CloneBase;
.source "Content.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jdom2/NamespaceAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/Content$CType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected final ctype:Lorg/jdom2/Content$CType;

.field protected transient parent:Lorg/jdom2/Parent;


# direct methods
.method protected constructor <init>(Lorg/jdom2/Content$CType;)V
    .registers 3
    .param p1, "type"    # Lorg/jdom2/Content$CType;

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    .line 148
    iput-object p1, p0, Lorg/jdom2/Content;->ctype:Lorg/jdom2/Content$CType;

    .line 149
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Content;
    .registers 3

    .prologue
    .line 244
    invoke-super {p0}, Lorg/jdom2/CloneBase;->clone()Lorg/jdom2/CloneBase;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 245
    .local v0, "c":Lorg/jdom2/Content;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    .line 246
    return-object v0
.end method

.method public detach()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    if-eqz v0, :cond_9

    .line 173
    iget-object v0, p0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0, p0}, Lorg/jdom2/Parent;->removeContent(Lorg/jdom2/Content;)Z

    .line 175
    :cond_9
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    .line 261
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final getCType()Lorg/jdom2/Content$CType;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/jdom2/Content;->ctype:Lorg/jdom2/Content$CType;

    return-object v0
.end method

.method public getDocument()Lorg/jdom2/Document;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 231
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    invoke-interface {v0}, Lorg/jdom2/Parent;->getDocument()Lorg/jdom2/Document;

    move-result-object v0

    goto :goto_5
.end method

.method public getNamespacesInScope()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lorg/jdom2/Content;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    .line 278
    .local v0, "emt":Lorg/jdom2/Element;
    if-nez v0, :cond_d

    .line 279
    sget-object v1, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 281
    :goto_c
    return-object v1

    :cond_d
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v1

    goto :goto_c
.end method

.method public getNamespacesInherited()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lorg/jdom2/Content;->getNamespacesInScope()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesIntroduced()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/jdom2/Parent;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    return-object v0
.end method

.method public final getParentElement()Lorg/jdom2/Element;
    .registers 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    .line 204
    .local v0, "pnt":Lorg/jdom2/Parent;
    instance-of v1, v0, Lorg/jdom2/Element;

    if-eqz v1, :cond_c

    move-object v1, v0

    :goto_9
    check-cast v1, Lorg/jdom2/Element;

    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 271
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;
    .registers 2
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/jdom2/Content;->parent:Lorg/jdom2/Parent;

    .line 220
    return-object p0
.end method
