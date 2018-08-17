.class public Lorg/jdom2/output/support/WalkerTRIM;
.super Lorg/jdom2/output/support/AbstractFormattedWalker;
.source "WalkerTRIM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/WalkerTRIM$1;
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
    .line 79
    .local p1, "content":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/jdom2/output/support/AbstractFormattedWalker;-><init>(Ljava/util/List;Lorg/jdom2/output/support/FormatStack;Z)V

    .line 80
    return-void
.end method


# virtual methods
.method protected analyzeMultiText(Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;II)V
    .registers 9
    .param p1, "mtext"    # Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 86
    :goto_0
    if-lez p3, :cond_14

    .line 87
    invoke-virtual {p0, p2}, Lorg/jdom2/output/support/WalkerTRIM;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 88
    .local v0, "c":Lorg/jdom2/Content;
    instance-of v3, v0, Lorg/jdom2/Text;

    if-eqz v3, :cond_14

    .line 90
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 100
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_14
    :goto_14
    if-lez p3, :cond_2c

    .line 101
    add-int v3, p2, p3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lorg/jdom2/output/support/WalkerTRIM;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 102
    .restart local v0    # "c":Lorg/jdom2/Content;
    instance-of v3, v0, Lorg/jdom2/Text;

    if-eqz v3, :cond_2c

    .line 104
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 113
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_2c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2d
    if-ge v1, p3, :cond_73

    .line 114
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 115
    .local v2, "trim":Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    add-int/lit8 v3, v1, 0x1

    if-ne v3, p3, :cond_37

    .line 116
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->RIGHT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 118
    :cond_37
    if-nez v1, :cond_3b

    .line 119
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->LEFT:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 121
    :cond_3b
    const/4 v3, 0x1

    if-ne p3, v3, :cond_40

    .line 122
    sget-object v2, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->BOTH:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    .line 124
    :cond_40
    add-int v3, p2, v1

    invoke-virtual {p0, v3}, Lorg/jdom2/output/support/WalkerTRIM;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 125
    .restart local v0    # "c":Lorg/jdom2/Content;
    sget-object v3, Lorg/jdom2/output/support/WalkerTRIM$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_74

    .line 136
    invoke-virtual {p1, v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendRaw(Lorg/jdom2/Content;)V

    .line 113
    :goto_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 96
    .end local v1    # "i":I
    .end local v2    # "trim":Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    :cond_5b
    add-int/lit8 p2, p2, 0x1

    .line 97
    add-int/lit8 p3, p3, -0x1

    .line 98
    goto :goto_0

    .line 110
    :cond_60
    add-int/lit8 p3, p3, -0x1

    .line 111
    goto :goto_14

    .line 127
    .restart local v1    # "i":I
    .restart local v2    # "trim":Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    :pswitch_63
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    goto :goto_58

    .line 130
    :pswitch_6b
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendCDATA(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    goto :goto_58

    .line 141
    .end local v0    # "c":Lorg/jdom2/Content;
    .end local v2    # "trim":Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;
    :cond_73
    return-void

    .line 125
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_63
        :pswitch_6b
    .end packed-switch
.end method
