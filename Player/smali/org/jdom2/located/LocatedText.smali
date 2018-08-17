.class public Lorg/jdom2/located/LocatedText;
.super Lorg/jdom2/Text;
.source "LocatedText.java"

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
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lorg/jdom2/located/LocatedText;->col:I

    return v0
.end method

.method public getLine()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lorg/jdom2/located/LocatedText;->line:I

    return v0
.end method

.method public setColumn(I)V
    .registers 2
    .param p1, "col"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/jdom2/located/LocatedText;->col:I

    .line 107
    return-void
.end method

.method public setLine(I)V
    .registers 2
    .param p1, "line"    # I

    .prologue
    .line 101
    iput p1, p0, Lorg/jdom2/located/LocatedText;->line:I

    .line 102
    return-void
.end method
