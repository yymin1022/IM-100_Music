.class public Lorg/jdom2/located/LocatedElement;
.super Lorg/jdom2/Element;
.source "LocatedElement.java"

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
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getColumn()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lorg/jdom2/located/LocatedElement;->col:I

    return v0
.end method

.method public getLine()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lorg/jdom2/located/LocatedElement;->line:I

    return v0
.end method

.method public setColumn(I)V
    .registers 2
    .param p1, "col"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/jdom2/located/LocatedElement;->col:I

    .line 149
    return-void
.end method

.method public setLine(I)V
    .registers 2
    .param p1, "line"    # I

    .prologue
    .line 143
    iput p1, p0, Lorg/jdom2/located/LocatedElement;->line:I

    .line 144
    return-void
.end method
