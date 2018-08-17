.class public Lorg/jdom2/output/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/Format$TextMode;,
        Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;,
        Lorg/jdom2/output/Format$EscapeStrategy7Bits;,
        Lorg/jdom2/output/Format$EscapeStrategy8Bits;,
        Lorg/jdom2/output/Format$EscapeStrategyUTF;
    }
.end annotation


# static fields
.field private static final Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final STANDARD_INDENT:Ljava/lang/String; = "  "

.field private static final STANDARD_LINE_SEPARATOR:Ljava/lang/String;

.field private static final UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;


# instance fields
.field encoding:Ljava/lang/String;

.field escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

.field expandEmptyElements:Z

.field ignoreTrAXEscapingPIs:Z

.field indent:Ljava/lang/String;

.field lineSeparator:Ljava/lang/String;

.field mode:Lorg/jdom2/output/Format$TextMode;

.field omitDeclaration:Z

.field omitEncoding:Z

.field specifiedAttributesOnly:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 109
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategyUTF;

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategyUTF;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 125
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategy8Bits;

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategy8Bits;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 141
    new-instance v0, Lorg/jdom2/output/Format$EscapeStrategy7Bits;

    invoke-direct {v0, v1}, Lorg/jdom2/output/Format$EscapeStrategy7Bits;-><init>(Lorg/jdom2/output/Format$1;)V

    sput-object v0, Lorg/jdom2/output/Format;->Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 147
    new-instance v0, Lorg/jdom2/output/Format$1;

    invoke-direct {v0}, Lorg/jdom2/output/Format$1;-><init>()V

    sput-object v0, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 569
    sget-object v0, Lorg/jdom2/output/LineSeparator;->DEFAULT:Lorg/jdom2/output/LineSeparator;

    invoke-virtual {v0}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    .line 579
    sget-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    .line 582
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    .line 586
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    .line 590
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    .line 594
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    .line 598
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    .line 602
    iput-boolean v1, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 605
    sget-object v0, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    iput-object v0, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    .line 608
    sget-object v0, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    iput-object v0, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 614
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Lorg/jdom2/output/Format;->setEncoding(Ljava/lang/String;)Lorg/jdom2/output/Format;

    .line 615
    return-void
.end method

.method private static final chooseStrategy(Ljava/lang/String;)Lorg/jdom2/output/EscapeStrategy;
    .registers 4
    .param p0, "encoding"    # Ljava/lang/String;

    .prologue
    .line 540
    const-string v1, "UTF-8"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "UTF-16"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 542
    :cond_10
    sget-object v1, Lorg/jdom2/output/Format;->UTFEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 561
    :goto_12
    return-object v1

    .line 545
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ISO-8859-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "Latin1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 547
    :cond_27
    sget-object v1, Lorg/jdom2/output/Format;->Bits8EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    goto :goto_12

    .line 550
    :cond_2a
    const-string v1, "US-ASCII"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "ASCII"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 552
    :cond_3a
    sget-object v1, Lorg/jdom2/output/Format;->Bits7EscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    goto :goto_12

    .line 556
    :cond_3d
    :try_start_3d
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 557
    .local v0, "cse":Ljava/nio/charset/CharsetEncoder;
    new-instance v1, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;

    invoke-direct {v1, v0}, Lorg/jdom2/output/Format$DefaultCharsetEscapeStrategy;-><init>(Ljava/nio/charset/CharsetEncoder;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_12

    .line 558
    .end local v0    # "cse":Ljava/nio/charset/CharsetEncoder;
    :catch_4b
    move-exception v1

    .line 561
    sget-object v1, Lorg/jdom2/output/Format;->DefaultEscapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    goto :goto_12
.end method

.method public static final compact(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .line 236
    .local v3, "right":I
    const/4 v2, 0x0

    .line 237
    .local v2, "left":I
    :goto_7
    if-gt v2, v3, :cond_16

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 241
    :cond_16
    :goto_16
    if-le v3, v2, :cond_25

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 243
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 246
    :cond_25
    if-le v2, v3, :cond_2a

    .line 247
    const-string v5, ""

    .line 265
    :goto_29
    return-object v5

    .line 250
    :cond_2a
    const/4 v4, 0x1

    .line 251
    .local v4, "space":Z
    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v5, v3, v2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 252
    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_34
    if-gt v2, v3, :cond_50

    .line 253
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 254
    .local v1, "c":C
    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 255
    if-eqz v4, :cond_48

    .line 256
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    const/4 v4, 0x0

    .line 263
    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    .line 264
    goto :goto_34

    .line 260
    :cond_4b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const/4 v4, 0x1

    goto :goto_48

    .line 265
    .end local v1    # "c":C
    :cond_50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_29
.end method

.method public static final escapeAttribute(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "strategy"    # Lorg/jdom2/output/EscapeStrategy;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x3b

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 349
    .local v5, "len":I
    const/4 v3, 0x0

    .line 351
    .local v3, "idx":I
    :goto_7
    if-ge v3, v5, :cond_2f

    .line 352
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 353
    .local v0, "ch":C
    const/16 v7, 0x3c

    if-eq v0, v7, :cond_2f

    const/16 v7, 0x3e

    if-eq v0, v7, :cond_2f

    const/16 v7, 0x26

    if-eq v0, v7, :cond_2f

    const/16 v7, 0xd

    if-eq v0, v7, :cond_2f

    const/16 v7, 0xa

    if-eq v0, v7, :cond_2f

    const/16 v7, 0x22

    if-eq v0, v7, :cond_2f

    const/16 v7, 0x9

    if-eq v0, v7, :cond_2f

    invoke-interface {p0, v0}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v7

    if-eqz v7, :cond_32

    .line 360
    .end local v0    # "ch":C
    :cond_2f
    if-ne v3, v5, :cond_35

    .line 429
    .end local p1    # "value":Ljava/lang/String;
    :goto_31
    return-object p1

    .line 357
    .restart local v0    # "ch":C
    .restart local p1    # "value":Ljava/lang/String;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    .line 358
    goto :goto_7

    .line 364
    .end local v0    # "ch":C
    :cond_35
    const/4 v2, 0x0

    .line 365
    .local v2, "highsurrogate":C
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x5

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 366
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v4, v3

    .line 367
    .end local v3    # "idx":I
    .local v4, "idx":I
    :goto_42
    if-ge v4, v5, :cond_e3

    .line 368
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 369
    .restart local v0    # "ch":C
    if-lez v2, :cond_93

    .line 370
    invoke-static {v0}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_7d

    .line 371
    new-instance v7, Lorg/jdom2/IllegalDataException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not decode surrogate pair 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 376
    :cond_7d
    invoke-static {v2, v0}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v1

    .line 377
    .local v1, "chp":I
    const-string v7, "&#x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 380
    const/4 v2, 0x0

    move v4, v3

    .line 381
    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_42

    .line 383
    .end local v1    # "chp":I
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_93
    sparse-switch v0, :sswitch_data_110

    .line 407
    invoke-interface {p0, v0}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v7

    if-eqz v7, :cond_df

    .line 410
    invoke-static {v0}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 412
    move v2, v0

    :goto_a3
    move v4, v3

    .line 423
    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_42

    .line 385
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :sswitch_a5
    const-string v7, "&lt;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 388
    :sswitch_ab
    const-string v7, "&gt;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 391
    :sswitch_b1
    const-string v7, "&amp;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 394
    :sswitch_b7
    const-string v7, "&#xD;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 397
    :sswitch_bd
    const-string v7, "&quot;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 400
    :sswitch_c3
    const-string v7, "&#x9;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 403
    :sswitch_c9
    const-string v7, "&#xA;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 414
    :cond_cf
    const-string v7, "&#x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 419
    :cond_df
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_a3

    .line 424
    .end local v0    # "ch":C
    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    :cond_e3
    if-lez v2, :cond_108

    .line 425
    new-instance v7, Lorg/jdom2/IllegalDataException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Surrogate pair 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "truncated"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 429
    :cond_108
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/String;
    move v3, v4

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_31

    .line 383
    nop

    :sswitch_data_110
    .sparse-switch
        0x9 -> :sswitch_c3
        0xa -> :sswitch_c9
        0xd -> :sswitch_b7
        0x22 -> :sswitch_bd
        0x26 -> :sswitch_b1
        0x3c -> :sswitch_a5
        0x3e -> :sswitch_ab
    .end sparse-switch
.end method

.method public static final escapeText(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "strategy"    # Lorg/jdom2/output/EscapeStrategy;
    .param p1, "eol"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    .line 457
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 458
    .local v5, "right":I
    const/4 v3, 0x0

    .line 459
    .local v3, "idx":I
    :goto_7
    if-ge v3, v5, :cond_25

    .line 460
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 461
    .local v0, "ch":C
    const/16 v7, 0x3c

    if-eq v0, v7, :cond_25

    const/16 v7, 0x3e

    if-eq v0, v7, :cond_25

    const/16 v7, 0x26

    if-eq v0, v7, :cond_25

    const/16 v7, 0xd

    if-eq v0, v7, :cond_25

    if-eq v0, v9, :cond_25

    invoke-interface {p0, v0}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 468
    .end local v0    # "ch":C
    :cond_25
    if-ne v3, v5, :cond_2b

    .line 534
    .end local p2    # "value":Ljava/lang/String;
    :goto_27
    return-object p2

    .line 465
    .restart local v0    # "ch":C
    .restart local p2    # "value":Ljava/lang/String;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    .line 466
    goto :goto_7

    .line 473
    .end local v0    # "ch":C
    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-lez v3, :cond_36

    .line 475
    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 477
    :cond_36
    const/4 v2, 0x0

    .local v2, "highsurrogate":C
    move v4, v3

    .line 478
    .end local v3    # "idx":I
    .local v4, "idx":I
    :goto_38
    if-ge v4, v5, :cond_f3

    .line 479
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 480
    .restart local v0    # "ch":C
    if-lez v2, :cond_9a

    .line 481
    invoke-static {v0}, Lorg/jdom2/Verifier;->isLowSurrogate(C)Z

    move-result v7

    if-nez v7, :cond_73

    .line 482
    new-instance v7, Lorg/jdom2/IllegalDataException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not decode surrogate pair 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 487
    :cond_73
    invoke-static {v2, v0}, Lorg/jdom2/Verifier;->decodeSurrogatePair(CC)I

    move-result v1

    .line 488
    .local v1, "chp":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&#x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    const/4 v2, 0x0

    move v4, v3

    .line 490
    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_38

    .line 492
    .end local v1    # "chp":I
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :cond_9a
    sparse-switch v0, :sswitch_data_120

    .line 514
    invoke-interface {p0, v0}, Lorg/jdom2/output/EscapeStrategy;->shouldEscape(C)Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 517
    invoke-static {v0}, Lorg/jdom2/Verifier;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 519
    move v2, v0

    :goto_aa
    move v4, v3

    .line 528
    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    goto :goto_38

    .line 494
    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    :sswitch_ac
    const-string v7, "&lt;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 497
    :sswitch_b2
    const-string v7, "&gt;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 500
    :sswitch_b8
    const-string v7, "&amp;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 503
    :sswitch_be
    const-string v7, "&#xD;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 506
    :sswitch_c4
    if-eqz p1, :cond_ca

    .line 507
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 509
    :cond_ca
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 521
    :cond_ce
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "&#x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 524
    :cond_ef
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_aa

    .line 529
    .end local v0    # "ch":C
    .end local v3    # "idx":I
    .restart local v4    # "idx":I
    :cond_f3
    if-lez v2, :cond_118

    .line 530
    new-instance v7, Lorg/jdom2/IllegalDataException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Surrogate pair 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "truncated"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 534
    :cond_118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "value":Ljava/lang/String;
    move v3, v4

    .end local v4    # "idx":I
    .restart local v3    # "idx":I
    goto/16 :goto_27

    .line 492
    nop

    :sswitch_data_120
    .sparse-switch
        0xa -> :sswitch_c4
        0xd -> :sswitch_be
        0x26 -> :sswitch_b8
        0x3c -> :sswitch_ac
        0x3e -> :sswitch_b2
    .end sparse-switch
.end method

.method public static getCompactFormat()Lorg/jdom2/output/Format;
    .registers 2

    .prologue
    .line 221
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    .line 222
    .local v0, "f":Lorg/jdom2/output/Format;
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->NORMALIZE:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;

    .line 223
    return-object v0
.end method

.method public static getPrettyFormat()Lorg/jdom2/output/Format;
    .registers 2

    .prologue
    .line 205
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    .line 206
    .local v0, "f":Lorg/jdom2/output/Format;
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setIndent(Ljava/lang/String;)Lorg/jdom2/output/Format;

    .line 207
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->TRIM:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {v0, v1}, Lorg/jdom2/output/Format;->setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;

    .line 208
    return-object v0
.end method

.method public static getRawFormat()Lorg/jdom2/output/Format;
    .registers 1

    .prologue
    .line 191
    new-instance v0, Lorg/jdom2/output/Format;

    invoke-direct {v0}, Lorg/jdom2/output/Format;-><init>()V

    return-object v0
.end method

.method public static final trimBoth(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 315
    .local v1, "right":I
    :goto_6
    if-lez v1, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 316
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 318
    :cond_15
    const/4 v0, 0x0

    .line 319
    .local v0, "left":I
    :goto_16
    if-gt v0, v1, :cond_25

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 322
    :cond_25
    if-le v0, v1, :cond_2a

    .line 323
    const-string v2, ""

    .line 325
    :goto_29
    return-object v2

    :cond_2a
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_29
.end method

.method public static final trimLeft(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 295
    .local v1, "right":I
    const/4 v0, 0x0

    .line 296
    .local v0, "left":I
    :goto_5
    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 299
    :cond_14
    if-lt v0, v1, :cond_19

    .line 300
    const-string v2, ""

    .line 303
    :goto_18
    return-object v2

    :cond_19
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_18
.end method

.method public static final trimRight(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 277
    .local v0, "right":I
    :goto_6
    if-ltz v0, :cond_15

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 278
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 280
    :cond_15
    if-gez v0, :cond_1a

    .line 281
    const-string v1, ""

    .line 283
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_19
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/jdom2/output/Format;->clone()Lorg/jdom2/output/Format;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/output/Format;
    .registers 4

    .prologue
    .line 928
    const/4 v1, 0x0

    .line 931
    .local v1, "format":Lorg/jdom2/output/Format;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jdom2/output/Format;

    move-object v1, v0
    :try_end_9
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_9} :catch_a

    .line 937
    :goto_9
    return-object v1

    .line 933
    :catch_a
    move-exception v2

    goto :goto_9
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 902
    iget-object v0, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;
    .registers 2

    .prologue
    .line 634
    iget-object v0, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    return-object v0
.end method

.method public getExpandEmptyElements()Z
    .registers 2

    .prologue
    .line 793
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    return v0
.end method

.method public getIgnoreTrAXEscapingPIs()Z
    .registers 2

    .prologue
    .line 834
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    return v0
.end method

.method public getIndent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 879
    iget-object v0, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public getLineSeparator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 721
    iget-object v0, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getOmitDeclaration()Z
    .registers 2

    .prologue
    .line 770
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    return v0
.end method

.method public getOmitEncoding()Z
    .registers 2

    .prologue
    .line 746
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    return v0
.end method

.method public getTextMode()Lorg/jdom2/output/Format$TextMode;
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    return-object v0
.end method

.method public isSpecifiedAttributesOnly()Z
    .registers 2

    .prologue
    .line 912
    iget-boolean v0, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    return v0
.end method

.method public setEncoding(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .registers 3
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 891
    iput-object p1, p0, Lorg/jdom2/output/Format;->encoding:Ljava/lang/String;

    .line 892
    invoke-static {p1}, Lorg/jdom2/output/Format;->chooseStrategy(Ljava/lang/String;)Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 893
    return-object p0
.end method

.method public setEscapeStrategy(Lorg/jdom2/output/EscapeStrategy;)Lorg/jdom2/output/Format;
    .registers 2
    .param p1, "strategy"    # Lorg/jdom2/output/EscapeStrategy;

    .prologue
    .line 624
    iput-object p1, p0, Lorg/jdom2/output/Format;->escapeStrategy:Lorg/jdom2/output/EscapeStrategy;

    .line 625
    return-object p0
.end method

.method public setExpandEmptyElements(Z)Lorg/jdom2/output/Format;
    .registers 2
    .param p1, "expandEmptyElements"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->expandEmptyElements:Z

    .line 784
    return-object p0
.end method

.method public setIgnoreTrAXEscapingPIs(Z)V
    .registers 2
    .param p1, "ignoreTrAXEscapingPIs"    # Z

    .prologue
    .line 824
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->ignoreTrAXEscapingPIs:Z

    .line 825
    return-void
.end method

.method public setIndent(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .registers 2
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 869
    iput-object p1, p0, Lorg/jdom2/output/Format;->indent:Ljava/lang/String;

    .line 870
    return-object p0
.end method

.method public setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;
    .registers 3
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 690
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    .end local p1    # "separator":Ljava/lang/String;
    :cond_9
    iput-object p1, p0, Lorg/jdom2/output/Format;->lineSeparator:Ljava/lang/String;

    .line 691
    return-object p0
.end method

.method public setLineSeparator(Lorg/jdom2/output/LineSeparator;)Lorg/jdom2/output/Format;
    .registers 3
    .param p1, "separator"    # Lorg/jdom2/output/LineSeparator;

    .prologue
    .line 710
    if-nez p1, :cond_9

    sget-object v0, Lorg/jdom2/output/Format;->STANDARD_LINE_SEPARATOR:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0, v0}, Lorg/jdom2/output/Format;->setLineSeparator(Ljava/lang/String;)Lorg/jdom2/output/Format;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {p1}, Lorg/jdom2/output/LineSeparator;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public setOmitDeclaration(Z)Lorg/jdom2/output/Format;
    .registers 2
    .param p1, "omitDeclaration"    # Z

    .prologue
    .line 760
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->omitDeclaration:Z

    .line 761
    return-object p0
.end method

.method public setOmitEncoding(Z)Lorg/jdom2/output/Format;
    .registers 2
    .param p1, "omitEncoding"    # Z

    .prologue
    .line 736
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->omitEncoding:Z

    .line 737
    return-object p0
.end method

.method public setSpecifiedAttributesOnly(Z)V
    .registers 2
    .param p1, "specifiedAttributesOnly"    # Z

    .prologue
    .line 923
    iput-boolean p1, p0, Lorg/jdom2/output/Format;->specifiedAttributesOnly:Z

    .line 924
    return-void
.end method

.method public setTextMode(Lorg/jdom2/output/Format$TextMode;)Lorg/jdom2/output/Format;
    .registers 2
    .param p1, "mode"    # Lorg/jdom2/output/Format$TextMode;

    .prologue
    .line 845
    iput-object p1, p0, Lorg/jdom2/output/Format;->mode:Lorg/jdom2/output/Format$TextMode;

    .line 846
    return-object p0
.end method
