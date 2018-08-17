.class public abstract Lorg/jdom2/output/support/AbstractXMLOutputProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractXMLOutputProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/XMLOutputProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractXMLOutputProcessor$1;
    }
.end annotation


# static fields
.field protected static final CDATAPOST:Ljava/lang/String; = "]]>"

.field protected static final CDATAPRE:Ljava/lang/String; = "<![CDATA["


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 547
    return-void
.end method


# virtual methods
.method protected attributeEscapedEntitiesFilter(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Ljava/lang/String;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    if-nez v0, :cond_a

    .line 397
    invoke-virtual {p0, p1, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 403
    :goto_9
    return-void

    .line 401
    :cond_a
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/jdom2/output/Format;->escapeAttribute(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected printAttribute(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1017
    :goto_c
    return-void

    .line 1010
    :cond_d
    const-string v0, " "

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1012
    const-string v0, "="

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1014
    const-string v0, "\""

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->attributeEscapedEntitiesFilter(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Ljava/lang/String;)V

    .line 1016
    const-string v0, "\""

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_c
.end method

.method protected printCDATA(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textCDATA(Ljava/io/Writer;Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method protected printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    const-string v0, "<!--"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 712
    const-string v0, "-->"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method protected printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    .registers 9
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 924
    :goto_0
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 925
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 926
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_1e

    .line 928
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "t":Ljava/lang/String;
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 930
    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textCDATA(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    .line 932
    :cond_1a
    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    .end local v1    # "t":Ljava/lang/String;
    :cond_1e
    sget-object v2, Lorg/jdom2/output/support/AbstractXMLOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5a

    goto :goto_0

    .line 940
    :pswitch_2e
    check-cast v0, Lorg/jdom2/Comment;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_0

    .line 937
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_34
    check-cast v0, Lorg/jdom2/CDATA;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printCDATA(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 943
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_3a
    check-cast v0, Lorg/jdom2/DocType;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    goto :goto_0

    .line 946
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_40
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 949
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_46
    check-cast v0, Lorg/jdom2/EntityRef;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printEntityRef(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    goto :goto_0

    .line 952
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_4c
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_0

    .line 956
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_52
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printText(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 962
    :cond_58
    return-void

    .line 935
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_3a
        :pswitch_40
        :pswitch_4c
        :pswitch_52
        :pswitch_34
        :pswitch_46
    .end packed-switch
.end method

.method protected printDeclaration(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 596
    :goto_6
    return-void

    .line 582
    :cond_7
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitEncoding()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 583
    const-string v0, "<?xml version=\"1.0\"?>"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 595
    :goto_12
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_6

    .line 585
    :cond_1a
    const-string v0, "<?xml version=\"1.0\""

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 586
    const-string v0, " encoding=\""

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 588
    const-string v0, "\"?>"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_12
.end method

.method protected printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    .registers 9
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "publicID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "systemID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "internalSubset":Ljava/lang/String;
    const/4 v0, 0x0

    .line 621
    .local v0, "hasPublic":Z
    const-string v4, "<!DOCTYPE "

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 623
    if-eqz v2, :cond_29

    .line 624
    const-string v4, " PUBLIC \""

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 626
    const-string v4, "\""

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x1

    .line 629
    :cond_29
    if-eqz v3, :cond_3f

    .line 630
    if-nez v0, :cond_32

    .line 631
    const-string v4, " SYSTEM"

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 633
    :cond_32
    const-string v4, " \""

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 635
    const-string v4, "\""

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 637
    :cond_3f
    if-eqz v1, :cond_61

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 638
    const-string v4, " ["

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 641
    const-string v4, "]"

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 643
    :cond_61
    const-string v4, ">"

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method protected printDocument(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    .registers 13
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p4}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v2

    .line 498
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 499
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v4

    .line 500
    .local v4, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    if-ge v1, v4, :cond_2b

    .line 501
    invoke-virtual {p4, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 496
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v4    # "sz":I
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_a

    .line 505
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDeclaration(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;)V

    .line 507
    const/4 v6, 0x1

    invoke-virtual {p0, p2, v2, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v5

    .line 508
    .local v5, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 509
    :cond_39
    :goto_39
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 511
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 514
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_5b

    .line 516
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "padding":Ljava/lang/String;
    if-eqz v3, :cond_39

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v6

    if-nez v6, :cond_39

    .line 522
    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_39

    .line 525
    .end local v3    # "padding":Ljava/lang/String;
    :cond_5b
    sget-object v6, Lorg/jdom2/output/support/AbstractXMLOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_a4

    goto :goto_39

    .line 527
    :pswitch_6b
    check-cast v0, Lorg/jdom2/Comment;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_39

    .line 530
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_71
    check-cast v0, Lorg/jdom2/DocType;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    goto :goto_39

    .line 533
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_77
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_39

    .line 536
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_7d
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_39

    .line 540
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_83
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {v0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v3

    .line 541
    .restart local v3    # "padding":Ljava/lang/String;
    if-eqz v3, :cond_39

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 545
    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_39

    .line 554
    .end local v3    # "padding":Ljava/lang/String;
    :cond_95
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a2

    .line 555
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 559
    :cond_a2
    return-void

    .line 525
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_71
        :pswitch_77
        :pswitch_7d
        :pswitch_83
    .end packed-switch
.end method

.method protected printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    .registers 13
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-virtual {p3, p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 796
    :try_start_3
    invoke-virtual {p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v1

    .line 800
    .local v1, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    const-string v6, "<"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 802
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 806
    .local v3, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printNamespace(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    .line 882
    .end local v1    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ns":Lorg/jdom2/Namespace;
    :catchall_2b
    move-exception v6

    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    throw v6

    .line 810
    .restart local v1    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_30
    :try_start_30
    invoke-virtual {p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 811
    invoke-virtual {p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 812
    .local v0, "attribute":Lorg/jdom2/Attribute;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printAttribute(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    goto :goto_3e

    .line 816
    .end local v0    # "attribute":Lorg/jdom2/Attribute;
    :cond_4e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 818
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isExpandEmptyElements()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 819
    const-string v6, "></"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 821
    const-string v6, ">"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_30 .. :try_end_6b} :catchall_2b

    .line 882
    :goto_6b
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 885
    :goto_6e
    return-void

    .line 824
    :cond_6f
    :try_start_6f
    const-string v6, " />"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_6b

    .line 831
    :cond_75
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_2b

    .line 835
    :try_start_78
    const-string v6, "space"

    sget-object v7, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p4, v6, v7}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v4

    .line 838
    .local v4, "space":Ljava/lang/String;
    const-string v6, "default"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 839
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v6

    invoke-virtual {p2, v6}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 846
    :cond_8f
    :goto_8f
    const/4 v6, 0x1

    invoke-virtual {p0, p2, v1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v5

    .line 848
    .local v5, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v6

    if-nez v6, :cond_d1

    .line 850
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isExpandEmptyElements()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 851
    const-string v6, "></"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 853
    const-string v6, ">"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_78 .. :try_end_b1} :catchall_c6

    .line 879
    :goto_b1
    :try_start_b1
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_2b

    .line 882
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    goto :goto_6e

    .line 841
    .end local v5    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_b8
    :try_start_b8
    const-string v6, "preserve"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 842
    sget-object v6, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {p2, v6}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_c6

    goto :goto_8f

    .line 879
    .end local v4    # "space":Ljava/lang/String;
    :catchall_c6
    move-exception v6

    :try_start_c7
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v6
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_2b

    .line 856
    .restart local v4    # "space":Ljava/lang/String;
    .restart local v5    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_cb
    :try_start_cb
    const-string v6, " />"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_b1

    .line 862
    :cond_d1
    const-string v6, ">"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 863
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v6

    if-nez v6, :cond_e3

    .line 865
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 868
    :cond_e3
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 870
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v6

    if-nez v6, :cond_f3

    .line 872
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 874
    :cond_f3
    const-string v6, "</"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 876
    const-string v6, ">"

    invoke-virtual {p0, p1, v6}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_cb .. :try_end_104} :catchall_c6

    .line 879
    :try_start_104
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_2b

    .line 882
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    goto/16 :goto_6e
.end method

.method protected printEntityRef(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 730
    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textEntityRef(Ljava/io/Writer;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method protected printNamespace(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V
    .registers 7
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "ns"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "uri":Ljava/lang/String;
    const-string v2, " xmlns"

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 983
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 984
    const-string v2, ":"

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 987
    :cond_1d
    const-string v2, "=\""

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->attributeEscapedEntitiesFilter(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Ljava/lang/String;)V

    .line 989
    const-string v2, "\""

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method protected printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    .registers 8
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x0

    .line 665
    .local v0, "piProcessed":Z
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isIgnoreTrAXEscapingPIs()Z

    move-result v3

    if-nez v3, :cond_18

    .line 666
    const-string v3, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 668
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lorg/jdom2/output/support/FormatStack;->setEscapeOutput(Z)V

    .line 669
    const/4 v0, 0x1

    .line 677
    :cond_18
    :goto_18
    if-nez v0, :cond_3b

    .line 678
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "rawData":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 682
    const-string v3, "<?"

    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 684
    const-string v3, " "

    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 686
    const-string v3, "?>"

    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 694
    .end local v1    # "rawData":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return-void

    .line 671
    :cond_3c
    const-string v3, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 673
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lorg/jdom2/output/support/FormatStack;->setEscapeOutput(Z)V

    .line 674
    const/4 v0, 0x1

    goto :goto_18

    .line 689
    .restart local v1    # "rawData":Ljava/lang/String;
    :cond_4a
    const-string v3, "<?"

    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 691
    const-string v3, "?>"

    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method protected printText(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    .registers 7
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 766
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jdom2/output/Format;->escapeText(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 772
    :goto_19
    return-void

    .line 771
    :cond_1a
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_19
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .registers 7
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 235
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x1

    invoke-virtual {p0, v0, p3, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 236
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 237
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 238
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V
    .registers 8
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 251
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 252
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 253
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 254
    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 256
    :cond_1c
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 257
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 288
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 289
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 205
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 206
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V
    .registers 6
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocument(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V

    .line 192
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 193
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .registers 6
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 221
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 222
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V
    .registers 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printEntityRef(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 317
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 318
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V
    .registers 6
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 302
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setIgnoreTrAXEscapingPIs(Z)V

    .line 303
    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 304
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 305
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V
    .registers 8
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 270
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 271
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 272
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 273
    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 275
    :cond_1c
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 276
    return-void
.end method

.method protected textCDATA(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 462
    const-string v0, "<![CDATA["

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 464
    const-string v0, "]]>"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method protected textEntityRef(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    const/16 v0, 0x26

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;C)V

    .line 451
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 452
    const/16 v0, 0x3b

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;C)V

    .line 453
    return-void
.end method

.method protected textRaw(Ljava/io/Writer;C)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;C)V

    .line 437
    return-void
.end method

.method protected textRaw(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method protected write(Ljava/io/Writer;C)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 357
    return-void
.end method

.method protected write(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    if-nez p2, :cond_3

    .line 343
    :goto_2
    return-void

    .line 342
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2
.end method
