.class public Lorg/jdom2/located/LocatedDocType;
.super Lorg/jdom2/DocType;
.source "LocatedDocType.java"

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
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom2/DocType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lorg/jdom2/located/LocatedDocType;->col:I

    return v0
.end method

.method public getLine()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lorg/jdom2/located/LocatedDocType;->line:I

    return v0
.end method

.method public setColumn(I)V
    .registers 2
    .param p1, "col"    # I

    .prologue
    .line 144
    iput p1, p0, Lorg/jdom2/located/LocatedDocType;->col:I

    .line 145
    return-void
.end method

.method public setLine(I)V
    .registers 2
    .param p1, "line"    # I

    .prologue
    .line 139
    iput p1, p0, Lorg/jdom2/located/LocatedDocType;->line:I

    .line 140
    return-void
.end method
