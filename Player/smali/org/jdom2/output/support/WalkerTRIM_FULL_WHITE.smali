.class public Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE;
.super Lorg/jdom2/output/support/AbstractFormattedWalker;
.source "WalkerTRIM_FULL_WHITE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE$1;
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
    .line 85
    move v2, p3

    .line 86
    .local v2, "ln":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_19

    .line 87
    add-int v3, p2, v2

    invoke-virtual {p0, v3}, Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 88
    .local v0, "c":Lorg/jdom2/Content;
    instance-of v3, v0, Lorg/jdom2/Text;

    if-eqz v3, :cond_19

    .line 90
    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_19
    if-gez v2, :cond_1c

    .line 121
    :cond_1b
    return-void

    .line 103
    :cond_1c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, p3, :cond_1b

    .line 104
    add-int v3, p2, v1

    invoke-virtual {p0, v3}, Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE;->get(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 105
    .restart local v0    # "c":Lorg/jdom2/Content;
    sget-object v3, Lorg/jdom2/output/support/WalkerTRIM_FULL_WHITE$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4e

    .line 116
    invoke-virtual {p1, v0}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendRaw(Lorg/jdom2/Content;)V

    .line 103
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 107
    :pswitch_3a
    sget-object v3, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendText(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    goto :goto_37

    .line 110
    :pswitch_44
    sget-object v3, Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;->NONE:Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;

    invoke-virtual {v0}, Lorg/jdom2/Content;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/jdom2/output/support/AbstractFormattedWalker$MultiText;->appendCDATA(Lorg/jdom2/output/support/AbstractFormattedWalker$Trim;Ljava/lang/String;)V

    goto :goto_37

    .line 105
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_44
    .end packed-switch
.end method
