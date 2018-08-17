.class public Lorg/jdom2/Text;
.super Lorg/jdom2/Content;
.source "Text.java"


# static fields
.field static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 98
    sget-object v0, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Text;-><init>(Lorg/jdom2/Content$CType;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    invoke-direct {p0, v0}, Lorg/jdom2/Text;-><init>(Lorg/jdom2/Content$CType;)V

    .line 112
    invoke-virtual {p0, p1}, Lorg/jdom2/Text;->setText(Ljava/lang/String;)Lorg/jdom2/Text;

    .line 113
    return-void
.end method

.method protected constructor <init>(Lorg/jdom2/Content$CType;)V
    .registers 2
    .param p1, "ctype"    # Lorg/jdom2/Content$CType;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/jdom2/Content;-><init>(Lorg/jdom2/Content$CType;)V

    .line 90
    return-void
.end method

.method public static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 158
    if-nez p0, :cond_5

    .line 159
    const-string v0, ""

    .line 161
    :goto_4
    return-object v0

    :cond_5
    invoke-static {p0}, Lorg/jdom2/output/Format;->compact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 200
    if-nez p1, :cond_3

    .line 210
    :cond_2
    :goto_2
    return-void

    .line 203
    :cond_3
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 204
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    goto :goto_2
.end method

.method public append(Lorg/jdom2/Text;)V
    .registers 4
    .param p1, "text"    # Lorg/jdom2/Text;

    .prologue
    .line 219
    if-nez p1, :cond_3

    .line 223
    :goto_2
    return-void

    .line 222
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

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
    .line 68
    invoke-virtual {p0}, Lorg/jdom2/Text;->clone()Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/jdom2/Text;->clone()Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/jdom2/Text;->clone()Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Text;
    .registers 3

    .prologue
    .line 257
    invoke-super {p0}, Lorg/jdom2/Content;->clone()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Text;

    .line 258
    .local v0, "text":Lorg/jdom2/Text;
    iget-object v1, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    iput-object v1, v0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    .line 259
    return-object v0
.end method

.method public bridge synthetic detach()Lorg/jdom2/Content;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/jdom2/Text;->detach()Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/Text;
    .registers 2

    .prologue
    .line 264
    invoke-super {p0}, Lorg/jdom2/Content;->detach()Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Text;

    return-object v0
.end method

.method public getParent()Lorg/jdom2/Element;
    .registers 2

    .prologue
    .line 275
    invoke-super {p0}, Lorg/jdom2/Content;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/jdom2/Parent;
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/jdom2/Text;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTextNormalize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom2/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom2/output/Format;->trimBoth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;
    .registers 3
    .param p1, "x0"    # Lorg/jdom2/Parent;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lorg/jdom2/Text;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method protected setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Text;
    .registers 3
    .param p1, "parent"    # Lorg/jdom2/Parent;

    .prologue
    .line 269
    invoke-super {p0, p1}, Lorg/jdom2/Content;->setParent(Lorg/jdom2/Parent;)Lorg/jdom2/Content;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Text;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom2/Text;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 176
    if-nez p1, :cond_7

    .line 177
    const-string v1, ""

    iput-object v1, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    .line 185
    :goto_6
    return-object p0

    .line 181
    :cond_7
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_15

    .line 182
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 184
    :cond_15
    iput-object p1, p0, Lorg/jdom2/Text;->value:Ljava/lang/String;

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

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
