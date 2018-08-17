.class public Lorg/jdom2/output/support/WalkerNORMALIZE;
.super Lorg/jdom2/output/support/AbstractFormattedWalker;
.source "WalkerNORMALIZE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/WalkerNORMALIZE$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V
    .registers 4
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "escape"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;",
            "Lorg/jdom2/output/support/FormatStack;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom2/output/support/AbstractFormattedWalker;-><init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V

    .line 79
    return-void
.end method

.method private isSpaceFirst(Ljava/lang/String;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v0

    .line 85
    :cond_f
    return v0
.end method

.method private isSpaceLast(Ljava/lang/String;)Z
    .registers 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    .local v0, "tlen":I
    if-lez v0, :cond_14

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 91
    const/4 v1, 0x1

    .line 93
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method


# virtual methods
.method protected analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V
    .registers 11
    .param p1, "mtext"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 99
    const/4 v3, 0x0

    .line 100
    .local v3, "needspace":Z
    const/4 v0, 0x0

    .line 102
    .local v0, "between":Z
    const/4 v4, 0x0

    .line 103
    .local v4, "ttext":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, p3, :cond_8f

    .line 104
    add-int v5, p2, v2

    invoke-virtual {p0, v5}, Lorg/jdom2/output/support/WalkerNORMALIZE;->get(I)Lorg/jdom2/Content;

    move-result-object v1

    .line 105
    .local v1, "c":Lorg/jdom2/Content;
    sget-object v5, Lorg/jdom2/output/support/WalkerNORMALIZE$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v1}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_90

    .line 140
    const/4 v4, 0x0

    .line 141
    if-eqz v0, :cond_27

    if-eqz v3, :cond_27

    .line 142
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 144
    :cond_27
    invoke-virtual {p1, v1}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendRaw(Lorg/jdom2/Content;)V

    .line 145
    const/4 v0, 0x1

    .line 146
    const/4 v3, 0x0

    .line 103
    :cond_2c
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 107
    :pswitch_2f
    invoke-virtual {v1}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {v4}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 109
    if-eqz v0, :cond_2c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2c

    .line 110
    const/4 v3, 0x1

    goto :goto_2c

    .line 113
    :cond_43
    if-eqz v0, :cond_54

    if-nez v3, :cond_4d

    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceFirst(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 114
    :cond_4d
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 116
    :cond_54
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v5, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    .line 118
    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceLast(Ljava/lang/String;)Z

    move-result v3

    .line 120
    goto :goto_2c

    .line 122
    :pswitch_5f
    invoke-virtual {v1}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-static {v4}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 124
    if-eqz v0, :cond_2c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2c

    .line 125
    const/4 v3, 0x1

    goto :goto_2c

    .line 128
    :cond_73
    if-eqz v0, :cond_84

    if-nez v3, :cond_7d

    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceFirst(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 129
    :cond_7d
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    const-string v6, " "

    invoke-virtual {p1, v5, v6}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 131
    :cond_84
    sget-object v5, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->COMPACT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {p1, v5, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendCDATA(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, v4}, Lorg/jdom2/output/support/WalkerNORMALIZE;->isSpaceLast(Ljava/lang/String;)Z

    move-result v3

    .line 135
    goto :goto_2c

    .line 150
    .end local v1    # "c":Lorg/jdom2/Content;
    :cond_8f
    return-void

    .line 105
    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_5f
    .end packed-switch
.end method
