.class public Lorg/jdom2/input/stax/DefaultStAXFilter;
.super Ljava/lang/Object;
.source "DefaultStAXFilter.java"

# interfaces
.implements Lorg/jdom2/input/stax/StAXFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public includeCDATA(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "depth"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 92
    return-object p2
.end method

.method public includeComment(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "depth"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 82
    return-object p2
.end method

.method public includeDocType()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public includeElement(ILjava/lang/String;Lorg/jdom2/Namespace;)Z
    .registers 5
    .param p1, "depth"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public includeEntityRef(ILjava/lang/String;)Z
    .registers 4
    .param p1, "depth"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public includeProcessingInstruction(ILjava/lang/String;)Z
    .registers 4
    .param p1, "depth"    # I
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public includeText(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "depth"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 97
    return-object p2
.end method

.method public pruneCDATA(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "depth"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 122
    return-object p2
.end method

.method public pruneComment(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "depth"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 112
    return-object p2
.end method

.method public pruneElement(ILjava/lang/String;Lorg/jdom2/Namespace;)Z
    .registers 5
    .param p1, "depth"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public pruneEntityRef(ILjava/lang/String;)Z
    .registers 4
    .param p1, "depth"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public pruneProcessingInstruction(ILjava/lang/String;)Z
    .registers 4
    .param p1, "depth"    # I
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public pruneText(ILjava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "depth"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 127
    return-object p2
.end method
