.class final Lorg/jdom2/input/sax/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# instance fields
.field private array:[C

.field private arraySize:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 89
    return-void
.end method


# virtual methods
.method append([CII)V
    .registers 6
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 102
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    array-length v1, v1

    if-le v0, v1, :cond_13

    .line 103
    iget-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    iget v1, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lorg/jdom2/internal/ArrayCopy;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    .line 105
    :cond_13
    iget-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    iget v1, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 107
    return-void
.end method

.method clear()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 114
    return-void
.end method

.method isAllWhitespace()Z
    .registers 3

    .prologue
    .line 122
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 123
    .local v0, "i":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_12

    .line 124
    iget-object v1, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    .line 125
    const/4 v1, 0x0

    .line 128
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 134
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    if-nez v0, :cond_7

    .line 135
    const-string v0, ""

    .line 137
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    const/4 v1, 0x0

    iget v2, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
