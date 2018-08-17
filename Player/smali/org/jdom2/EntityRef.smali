.class public Lorg/jdom2/EntityRef;
.super Lorg/jdom2/Content;
.source "EntityRef.java"


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected name:Ljava/lang/String;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lorg/jdom2/Content$CType;->EntityRef:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/jdom2/EntityRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, Lorg/jdom2/Content$CType;->EntityRef:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 130
    invoke-virtual {p0, p1}, Lorg/jdom2/EntityRef;->setName(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    .line 131
    invoke-virtual {p0, p2}, Lorg/jdom2/EntityRef;->setPublicID(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    .line 132
    invoke-virtual {p0, p3}, Lorg/jdom2/EntityRef;->setSystemID(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    .line 133
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
    .line 66
    invoke-virtual {p0}, Lorg/jdom2/EntityRef;->clone()Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/jdom2/EntityRef;->clone()Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/jdom2/EntityRef;->clone()Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/EntityRef;
    .registers 2

    .prologue
    .line 263
    invoke-super {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/EntityRef;

    return-object v0
.end method

.method public bridge synthetic detach()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/jdom2/EntityRef;->detach()Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/EntityRef;
    .registers 2

    .prologue
    .line 247
    invoke-super {p0}, Lorg/jdom2/Content;->detach()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/EntityRef;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/jdom2/EntityRef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/jdom2/Element;
    .registers 2

    .prologue
    .line 258
    invoke-super {p0}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/jdom2/Parent;
    .registers 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/jdom2/EntityRef;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jdom2/EntityRef;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jdom2/EntityRef;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, ""

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkXMLName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 187
    new-instance v1, Lorg/jdom2/IllegalNameException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_e
    iput-object p1, p0, Lorg/jdom2/EntityRef;->name:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method protected bridge synthetic setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Parent;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lorg/jdom2/EntityRef;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/EntityRef;

    move-result-object v0

    return-object v0
.end method

.method protected setParent(Lorg/jdom2/Parent;)Lorg/jdom2/EntityRef;
    .registers 3
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    .line 252
    invoke-super {p0, p1}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/EntityRef;

    return-object v0
.end method

.method public setPublicID(Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 5
    .param p1, "publicID"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkPublicID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 204
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_e
    iput-object p1, p0, Lorg/jdom2/EntityRef;->publicID:Ljava/lang/String;

    .line 207
    return-object p0
.end method

.method public setSystemID(Ljava/lang/String;)Lorg/jdom2/EntityRef;
    .registers 5
    .param p1, "systemID"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkSystemLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 221
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "EntityRef"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_e
    iput-object p1, p0, Lorg/jdom2/EntityRef;->systemID:Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EntityRef: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/EntityRef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
