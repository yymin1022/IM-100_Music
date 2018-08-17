.class final Lorg/jdom2/filter/TextOnlyFilter;
.super Lorg/jdom2/filter/AbstractFilter;
.source "TextOnlyFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdom2/filter/AbstractFilter",
        "<",
        "Lorg/jdom2/Text;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc8L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/jdom2/filter/AbstractFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 92
    instance-of v0, p1, Lorg/jdom2/filter/TextOnlyFilter;

    return v0
.end method

.method public bridge synthetic filter(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lorg/jdom2/filter/TextOnlyFilter;->filter(Ljava/lang/Object;)Lorg/jdom2/Text;

    move-result-object v0

    return-object v0
.end method

.method public filter(Ljava/lang/Object;)Lorg/jdom2/Text;
    .registers 5
    .param p1, "content"    # Ljava/lang/Object;

    .prologue
    .line 76
    instance-of v1, p1, Lorg/jdom2/Text;

    if-eqz v1, :cond_10

    move-object v0, p1

    .line 77
    check-cast v0, Lorg/jdom2/Text;

    .line 78
    .local v0, "txt":Lorg/jdom2/Text;
    invoke-virtual {v0}, Lorg/jdom2/Text;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v1

    sget-object v2, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v1, v2, :cond_10

    .line 82
    .end local v0    # "txt":Lorg/jdom2/Text;
    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
