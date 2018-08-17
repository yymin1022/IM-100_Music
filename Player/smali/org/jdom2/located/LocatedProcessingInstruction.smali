.class public Lorg/jdom2/located/LocatedProcessingInstruction;
.super Lorg/jdom2/ProcessingInstruction;
.source "LocatedProcessingInstruction.java"

# interfaces
.implements Lorg/jdom2/located/Located;


# static fields
.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field private col:I

.field private line:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/jdom2/ProcessingInstruction;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lorg/jdom2/located/LocatedProcessingInstruction;->col:I

    return v0
.end method

.method public getLine()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lorg/jdom2/located/LocatedProcessingInstruction;->line:I

    return v0
.end method

.method public setColumn(I)V
    .registers 2
    .param p1, "col"    # I

    .prologue
    .line 137
    iput p1, p0, Lorg/jdom2/located/LocatedProcessingInstruction;->col:I

    .line 138
    return-void
.end method

.method public setLine(I)V
    .registers 2
    .param p1, "line"    # I

    .prologue
    .line 132
    iput p1, p0, Lorg/jdom2/located/LocatedProcessingInstruction;->line:I

    .line 133
    return-void
.end method
