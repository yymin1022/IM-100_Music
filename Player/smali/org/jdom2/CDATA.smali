.class public Lorg/jdom2/CDATA;
.super Lorg/jdom2/Text;
.source "CDATA.java"


# static fields
.field private static final serialVersionUID:J = 0xc8L


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Text;-><init>(Lorg/jdom2/Content$CType;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v0, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Text;-><init>(Lorg/jdom2/Content$CType;)V

    .line 99
    invoke-virtual {p0, p1}, Lorg/jdom2/CDATA;->setText(Ljava/lang/String;)Lorg/jdom2/CDATA;

    .line 100
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 149
    if-eqz p1, :cond_a

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 174
    :cond_a
    :goto_a
    return-void

    .line 156
    :cond_b
    iget-object v2, p0, Lorg/jdom2/CDATA;->value:Ljava/lang/String;

    const-string v3, ""

    if-ne v2, v3, :cond_20

    .line 157
    move-object v1, p1

    .line 168
    .local v1, "tmpValue":Ljava/lang/String;
    :goto_12
    invoke-static {v1}, Lorg/jdom2/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 170
    new-instance v2, Lorg/jdom2/IllegalDataException;

    const-string v3, "CDATA section"

    invoke-direct {v2, p1, v3, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 159
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "tmpValue":Ljava/lang/String;
    :cond_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jdom2/CDATA;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tmpValue":Ljava/lang/String;
    goto :goto_12

    .line 173
    .restart local v0    # "reason":Ljava/lang/String;
    :cond_34
    iput-object v1, p0, Lorg/jdom2/CDATA;->value:Ljava/lang/String;

    goto :goto_a
.end method

.method public append(Lorg/jdom2/Text;)V
    .registers 3
    .param p1, "text"    # Lorg/jdom2/Text;

    .prologue
    .line 188
    if-nez p1, :cond_3

    .line 192
    :goto_2
    return-void

    .line 191
    :cond_3
    invoke-virtual {p1}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/CDATA;->append(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jdom2/CDATA;->clone()Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/CDATA;
    .registers 2

    .prologue
    .line 215
    invoke-super {p0}, Lorg/jdom2/Text;->clone()Lorg/jdom2/Text;

    move-result-object v0

    check-cast v0, Lorg/jdom2/CDATA;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jdom2/CDATA;->clone()Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jdom2/CDATA;->clone()Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Text;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jdom2/CDATA;->clone()Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/CDATA;
    .registers 2

    .prologue
    .line 220
    invoke-super {p0}, Lorg/jdom2/Text;->detach()Lorg/jdom2/Text;

    move-result-object v0

    check-cast v0, Lorg/jdom2/CDATA;

    return-object v0
.end method

.method public bridge synthetic detach()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jdom2/CDATA;->detach()Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic detach()Lorg/jdom2/Text;
    .registers 2

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/jdom2/CDATA;->detach()Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method protected setParent(Lorg/jdom2/Parent;)Lorg/jdom2/CDATA;
    .registers 3
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lorg/jdom2/Text;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Text;

    move-result-object v0

    check-cast v0, Lorg/jdom2/CDATA;

    return-object v0
.end method

.method protected bridge synthetic setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Parent;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/jdom2/CDATA;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Text;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Parent;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/jdom2/CDATA;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom2/CDATA;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 118
    if-eqz p1, :cond_a

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 119
    :cond_a
    const-string v1, ""

    iput-object v1, p0, Lorg/jdom2/CDATA;->value:Ljava/lang/String;

    .line 130
    :goto_e
    return-object p0

    .line 123
    :cond_f
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkCDATASection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 125
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "CDATA section"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_1d
    iput-object p1, p0, Lorg/jdom2/CDATA;->value:Ljava/lang/String;

    goto :goto_e
.end method

.method public bridge synthetic setText(Ljava/lang/String;)Lorg/jdom2/Text;
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/jdom2/CDATA;->setText(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[CDATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

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
