.class public final Lorg/jdom2/output/support/FormatStack;
.super Ljava/lang/Object;
.source "FormatStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/FormatStack$1;
    }
.end annotation


# instance fields
.field private capacity:I

.field private final defaultMode:Lorg/jdom2/output/Format$TextMode;

.field private depth:I

.field private final encoding:Ljava/lang/String;

.field private escapeOutput:[Z

.field private final escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private final expandEmptyElements:Z

.field private ignoreTrAXEscapingPIs:[Z

.field private final indent:Ljava/lang/String;

.field private levelEOL:[Ljava/lang/String;

.field private levelEOLIndent:[Ljava/lang/String;

.field private levelIndent:[Ljava/lang/String;

.field private final lineSeparator:Ljava/lang/String;

.field private mode:[Lorg/jdom2/output/Format$TextMode;

.field private final omitDeclaration:Z

.field private final omitEncoding:Z

.field private final specifiedAttributesOnly:Z

.field private termEOLIndent:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jdom2/output/Format;)V
    .registers 7
    .param p1, "format"    # Lorg/jdom2/output/Format;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/16 v0, 0x10

    iput v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    .line 135
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    .line 138
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    .line 141
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    .line 144
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    .line 150
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    .line 153
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    new-array v0, v0, [Lorg/jdom2/output/Format$TextMode;

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    .line 156
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    .line 165
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getIndent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->indent:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->lineSeparator:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->encoding:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getOmitDeclaration()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->omitDeclaration:Z

    .line 170
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getOmitEncoding()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->omitEncoding:Z

    .line 171
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getExpandEmptyElements()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->expandEmptyElements:Z

    .line 172
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 173
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/support/FormatStack;->defaultMode:Lorg/jdom2/output/Format$TextMode;

    .line 174
    invoke-virtual {p1}, Lorg/jdom2/output/Format;->isSpecifiedAttributesOnly()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->specifiedAttributesOnly:Z

    .line 176
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getIndent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b8

    move-object v0, v1

    :goto_76
    aput-object v0, v2, v3

    .line 178
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getLineSeparator()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 179
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v3, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v4, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v3, v3, v4

    if-nez v3, :cond_bb

    :goto_8e
    aput-object v1, v0, v2

    .line 181
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 183
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getIgnoreTrAXEscapingPIs()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 184
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    invoke-virtual {p1}, Lorg/jdom2/output/Format;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v2

    aput-object v2, v0, v1

    .line 185
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 186
    return-void

    .line 176
    :cond_b8
    const-string v0, ""

    goto :goto_76

    .line 179
    :cond_bb
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v1, v1, v3

    goto :goto_8e
.end method

.method private final resetReusableIndents()V
    .registers 4

    .prologue
    .line 193
    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    add-int/lit8 v0, v1, 0x1

    .line 194
    .local v0, "d":I
    :goto_4
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    .line 196
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 199
    :cond_17
    return-void
.end method


# virtual methods
.method public getDefaultMode()Lorg/jdom2/output/Format$TextMode;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->defaultMode:Lorg/jdom2/output/Format$TextMode;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEscapeOutput()Z
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0
.end method

.method public getIndent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelEOL()Ljava/lang/String;
    .registers 3

    .prologue
    .line 353
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLevelIndent()Ljava/lang/String;
    .registers 3

    .prologue
    .line 313
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getPadBetween()Ljava/lang/String;
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPadLast()Ljava/lang/String;
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextMode()Lorg/jdom2/output/Format$TextMode;
    .registers 3

    .prologue
    .line 371
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isExpandEmptyElements()Z
    .registers 2

    .prologue
    .line 251
    iget-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->expandEmptyElements:Z

    return v0
.end method

.method public isIgnoreTrAXEscapingPIs()Z
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isOmitDeclaration()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->omitDeclaration:Z

    return v0
.end method

.method public isOmitEncoding()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->omitEncoding:Z

    return v0
.end method

.method public isSpecifiedAttributesOnly()Z
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lorg/jdom2/output/support/FormatStack;->specifiedAttributesOnly:Z

    return v0
.end method

.method public pop()V
    .registers 2

    .prologue
    .line 464
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    .line 465
    return-void
.end method

.method public push()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 425
    iget v0, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    .line 426
    .local v0, "prev":I
    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    if-lt v1, v2, :cond_63

    .line 427
    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    .line 428
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    .line 433
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jdom2/output/Format$TextMode;

    iput-object v1, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    .line 434
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->capacity:I

    invoke-static {v1, v2}, Lorg/jdom2/internal/ArrayCopy;->copyOf([ZI)[Z

    move-result-object v1

    iput-object v1, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    .line 437
    :cond_63
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v3, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    aget-boolean v3, v3, v0

    aput-boolean v3, v1, v2

    .line 438
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v3, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 439
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v3, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    aget-boolean v3, v3, v0

    aput-boolean v3, v1, v2

    .line 441
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_a6

    .line 442
    :cond_8d
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v4, v1, v2

    .line 443
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v4, v1, v2

    .line 444
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v4, v1, v2

    .line 445
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v4, v1, v2

    .line 454
    :cond_a5
    :goto_a5
    return-void

    .line 446
    :cond_a6
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v1, v1, v2

    if-nez v1, :cond_a5

    .line 449
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v3, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 450
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v5, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 451
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->indent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 452
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v5, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v5, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_a5
.end method

.method public setEscapeOutput(Z)V
    .registers 4
    .param p1, "escape"    # Z

    .prologue
    .line 298
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->escapeOutput:[Z

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-boolean p1, v0, v1

    .line 299
    return-void
.end method

.method public setIgnoreTrAXEscapingPIs(Z)V
    .registers 4
    .param p1, "ignoreTrAXEscapingPIs"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->ignoreTrAXEscapingPIs:[Z

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-boolean p1, v0, v1

    .line 276
    return-void
.end method

.method public setLevelEOL(Ljava/lang/String;)V
    .registers 4
    .param p1, "newline"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object p1, v0, v1

    .line 364
    invoke-direct {p0}, Lorg/jdom2/output/support/FormatStack;->resetReusableIndents()V

    .line 365
    return-void
.end method

.method public setLevelIndent(Ljava/lang/String;)V
    .registers 7
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 343
    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v1, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object p1, v0, v1

    .line 344
    iget-object v1, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    if-eqz p1, :cond_14

    iget-object v0, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v0, v0, v3

    if-nez v0, :cond_1b

    :cond_14
    const/4 v0, 0x0

    :goto_15
    aput-object v0, v1, v2

    .line 346
    invoke-direct {p0}, Lorg/jdom2/output/support/FormatStack;->resetReusableIndents()V

    .line 347
    return-void

    .line 344
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v4, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public setTextMode(Lorg/jdom2/output/Format$TextMode;)V
    .registers 9
    .param p1, "mode"    # Lorg/jdom2/output/Format$TextMode;

    .prologue
    const/4 v5, 0x0

    .line 381
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v2, v2, v3

    if-ne v2, p1, :cond_a

    .line 417
    :goto_9
    return-void

    .line 384
    :cond_a
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->mode:[Lorg/jdom2/output/Format$TextMode;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object p1, v2, v3

    .line 385
    sget-object v2, Lorg/jdom2/output/support/FormatStack$1;->$SwitchMap$org$jdom2$output$Format$TextMode:[I

    invoke-virtual {p1}, Lorg/jdom2/output/Format$TextMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d2

    .line 393
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->lineSeparator:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 394
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->indent:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->lineSeparator:Ljava/lang/String;

    if-nez v2, :cond_54

    .line 395
    :cond_2b
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v5, v2, v3

    .line 396
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v5, v2, v3

    .line 416
    :goto_37
    invoke-direct {p0}, Lorg/jdom2/output/support/FormatStack;->resetReusableIndents()V

    goto :goto_9

    .line 387
    :pswitch_3b
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelEOL:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v5, v2, v3

    .line 388
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v5, v2, v3

    .line 389
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v5, v2, v3

    .line 390
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aput-object v5, v2, v3

    goto :goto_37

    .line 398
    :cond_54
    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    if-lez v2, :cond_c0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->indent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 400
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_67
    iget v2, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    if-ge v0, v2, :cond_73

    .line 401
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 405
    :cond_73
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jdom2/output/support/FormatStack;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 407
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 413
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_9f
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jdom2/output/support/FormatStack;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v6, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_37

    .line 410
    :cond_c0
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->termEOLIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    iget-object v4, p0, Lorg/jdom2/output/support/FormatStack;->lineSeparator:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 411
    iget-object v2, p0, Lorg/jdom2/output/support/FormatStack;->levelIndent:[Ljava/lang/String;

    iget v3, p0, Lorg/jdom2/output/support/FormatStack;->depth:I

    const-string v4, ""

    aput-object v4, v2, v3

    goto :goto_9f

    .line 385
    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_3b
    .end packed-switch
.end method
