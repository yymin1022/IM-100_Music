.class public abstract Lorg/jdom2/output/support/AbstractDOMOutputProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractDOMOutputProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/DOMOutputProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractDOMOutputProcessor$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 296
    return-void
.end method

.method private static getXmlnsTagFor(Lorg/jdom2/Namespace;)Ljava/lang/String;
    .registers 4
    .param p0, "ns"    # Lorg/jdom2/Namespace;

    .prologue
    .line 133
    const-string v0, "xmlns"

    .line 134
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_36
    return-object v0
.end method


# virtual methods
.method protected helperContentDispatcher(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Content;)Lorg/w3c/dom/Node;
    .registers 8
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "content"    # Lorg/jdom2/Content;

    .prologue
    .line 572
    sget-object v0, Lorg/jdom2/output/support/AbstractDOMOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {p4}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_58

    .line 589
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Content "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :pswitch_2c
    check-cast p4, Lorg/jdom2/CDATA;

    .end local p4    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p3, p4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    .line 587
    :goto_32
    return-object v0

    .line 576
    .restart local p4    # "content":Lorg/jdom2/Content;
    :pswitch_33
    check-cast p4, Lorg/jdom2/Comment;

    .end local p4    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p3, p4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v0

    goto :goto_32

    .line 578
    .restart local p4    # "content":Lorg/jdom2/Content;
    :pswitch_3a
    check-cast p4, Lorg/jdom2/Element;

    .end local p4    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    goto :goto_32

    .line 580
    .restart local p4    # "content":Lorg/jdom2/Content;
    :pswitch_41
    check-cast p4, Lorg/jdom2/EntityRef;

    .end local p4    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p3, p4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    goto :goto_32

    .line 582
    .restart local p4    # "content":Lorg/jdom2/Content;
    :pswitch_48
    check-cast p4, Lorg/jdom2/ProcessingInstruction;

    .end local p4    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p3, p4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    goto :goto_32

    .line 585
    .restart local p4    # "content":Lorg/jdom2/Content;
    :pswitch_4f
    check-cast p4, Lorg/jdom2/Text;

    .end local p4    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p3, p4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v0

    goto :goto_32

    .line 587
    .restart local p4    # "content":Lorg/jdom2/Content;
    :pswitch_56
    const/4 v0, 0x0

    goto :goto_32

    .line 572
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_33
        :pswitch_56
        :pswitch_3a
        :pswitch_48
        :pswitch_2c
        :pswitch_41
        :pswitch_4f
    .end packed-switch
.end method

.method protected printAttribute(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;
    .registers 7
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 410
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 411
    const/4 v0, 0x0

    .line 416
    :goto_d
    return-object v0

    .line 413
    :cond_e
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 415
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    goto :goto_d
.end method

.method protected printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;
    .registers 5
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;

    .prologue
    .line 378
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    return-object v0
.end method

.method protected printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;
    .registers 5
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "comment"    # Lorg/jdom2/Comment;

    .prologue
    .line 344
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0
.end method

.method protected printContent(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/jdom2/output/support/Walker;)V
    .registers 10
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "target"    # Lorg/w3c/dom/Node;
    .param p5, "walker"    # Lorg/jdom2/output/support/Walker;

    .prologue
    .line 532
    :cond_0
    :goto_0
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 533
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 534
    .local v0, "c":Lorg/jdom2/Content;
    const/4 v1, 0x0

    .line 535
    .local v1, "n":Lorg/w3c/dom/Node;
    if-nez v0, :cond_30

    .line 537
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "text":Ljava/lang/String;
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 539
    new-instance v3, Lorg/jdom2/CDATA;

    invoke-direct {v3, v2}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v1

    .line 547
    .end local v2    # "text":Ljava/lang/String;
    :goto_20
    if-eqz v1, :cond_0

    .line 548
    invoke-interface {p4, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 541
    .restart local v2    # "text":Ljava/lang/String;
    :cond_26
    new-instance v3, Lorg/jdom2/Text;

    invoke-direct {v3, v2}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v1

    goto :goto_20

    .line 544
    .end local v2    # "text":Ljava/lang/String;
    :cond_30
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->helperContentDispatcher(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Content;)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_20

    .line 552
    .end local v0    # "c":Lorg/jdom2/Content;
    .end local v1    # "n":Lorg/w3c/dom/Node;
    :cond_35
    return-void
.end method

.method protected printDocument(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Document;)Lorg/w3c/dom/Document;
    .registers 11
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "doc"    # Lorg/jdom2/Document;

    .prologue
    .line 270
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v4

    if-nez v4, :cond_b

    .line 271
    const-string v4, "1.0"

    invoke-interface {p3, v4}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 274
    :cond_b
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v3

    .line 276
    .local v3, "sz":I
    if-lez v3, :cond_45

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v3, :cond_45

    .line 278
    invoke-virtual {p4, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 279
    .local v0, "c":Lorg/jdom2/Content;
    const/4 v2, 0x0

    .line 280
    .local v2, "n":Lorg/w3c/dom/Node;
    sget-object v4, Lorg/jdom2/output/support/AbstractDOMOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_46

    .line 299
    .end local v0    # "c":Lorg/jdom2/Content;
    :goto_28
    :pswitch_28
    if-eqz v2, :cond_2d

    .line 300
    invoke-interface {p3, v2}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 277
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 282
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_30
    check-cast v0, Lorg/jdom2/Comment;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v2

    .line 283
    goto :goto_28

    .line 290
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_37
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 291
    goto :goto_28

    .line 293
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_3e
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v2

    .line 295
    goto :goto_28

    .line 305
    .end local v1    # "i":I
    .end local v2    # "n":Lorg/w3c/dom/Node;
    :cond_45
    return-object p3

    .line 280
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_30
        :pswitch_28
        :pswitch_37
        :pswitch_3e
    .end packed-switch
.end method

.method protected printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;
    .registers 22
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 443
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 446
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v16

    .line 449
    .local v16, "textmode":Lorg/jdom2/output/Format$TextMode;
    const-string v3, "space"

    sget-object v4, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v15

    .line 452
    .local v15, "space":Ljava/lang/String;
    const-string v3, "default"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 453
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v16

    .line 458
    :cond_21
    :goto_21
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v7

    .line 461
    .local v7, "ret":Lorg/w3c/dom/Element;
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_37
    :goto_37
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jdom2/Namespace;

    .line 462
    .local v14, "ns":Lorg/jdom2/Namespace;
    sget-object v3, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq v14, v3, :cond_37

    .line 465
    invoke-static {v14}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->getXmlnsTagFor(Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_53

    goto :goto_37

    .line 509
    .end local v7    # "ret":Lorg/w3c/dom/Element;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "ns":Lorg/jdom2/Namespace;
    .end local v15    # "space":Ljava/lang/String;
    .end local v16    # "textmode":Lorg/jdom2/output/Format$TextMode;
    :catchall_53
    move-exception v3

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/util/NamespaceStack;->pop()V

    throw v3

    .line 454
    .restart local v15    # "space":Ljava/lang/String;
    .restart local v16    # "textmode":Lorg/jdom2/output/Format$TextMode;
    :cond_58
    :try_start_58
    const-string v3, "preserve"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 455
    sget-object v16, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    goto :goto_21

    .line 468
    .restart local v7    # "ret":Lorg/w3c/dom/Element;
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_63
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 469
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_71
    :goto_71
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jdom2/Attribute;

    .line 470
    .local v10, "att":Lorg/jdom2/Attribute;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v10}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printAttribute(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;

    move-result-object v9

    .line 471
    .local v9, "a":Lorg/w3c/dom/Attr;
    if-eqz v9, :cond_71

    .line 472
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    goto :goto_71

    .line 477
    .end local v9    # "a":Lorg/w3c/dom/Attr;
    .end local v10    # "att":Lorg/jdom2/Attribute;
    :cond_8d
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v11

    .line 479
    .local v11, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ea

    .line 480
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_9a
    .catchall {:try_start_58 .. :try_end_9a} :catchall_53

    .line 482
    :try_start_9a
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 483
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v8

    .line 485
    .local v8, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v8}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v3

    if-nez v3, :cond_c3

    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c3

    .line 487
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v13

    .line 489
    .local v13, "n":Lorg/w3c/dom/Text;
    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .end local v13    # "n":Lorg/w3c/dom/Text;
    :cond_c3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 492
    invoke-virtual/range {v3 .. v8}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printContent(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/jdom2/output/support/Walker;)V

    .line 494
    invoke-interface {v8}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v3

    if-nez v3, :cond_e7

    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e7

    .line 496
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v13

    .line 498
    .restart local v13    # "n":Lorg/w3c/dom/Text;
    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_e7
    .catchall {:try_start_9a .. :try_end_e7} :catchall_ee

    .line 502
    .end local v13    # "n":Lorg/w3c/dom/Text;
    :cond_e7
    :try_start_e7
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->pop()V
    :try_end_ea
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_53

    .line 509
    .end local v8    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_ea
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/util/NamespaceStack;->pop()V

    return-object v7

    .line 502
    :catchall_ee
    move-exception v3

    :try_start_ef
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v3
    :try_end_f3
    .catchall {:try_start_ef .. :try_end_f3} :catchall_53
.end method

.method protected printEntityRef(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;
    .registers 5
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;

    .prologue
    .line 361
    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    return-object v0
.end method

.method protected printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 7
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;

    .prologue
    .line 323
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "target":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "rawData":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    .line 326
    :cond_14
    const-string v0, ""

    .line 328
    :cond_16
    invoke-interface {p2, v1, v0}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v2

    return-object v2
.end method

.method protected printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;
    .registers 5
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "text"    # Lorg/jdom2/Text;

    .prologue
    .line 394
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 165
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 166
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    new-instance v4, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v4}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    .line 167
    .local v4, "nstack":Lorg/jdom2/util/NamespaceStack;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 168
    .local v0, "c":Lorg/jdom2/Content;
    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->push()V

    .line 170
    :try_start_26
    invoke-virtual {p0, v1, v4, p1, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->helperContentDispatcher(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Content;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 172
    .local v3, "node":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2f

    .line 173
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_33

    .line 176
    :cond_2f
    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    goto :goto_17

    .end local v3    # "node":Lorg/w3c/dom/Node;
    :catchall_33
    move-exception v6

    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v6

    .line 179
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_38
    return-object v5
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;

    .prologue
    .line 242
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printAttribute(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;
    .registers 10
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;

    .prologue
    .line 185
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 187
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 188
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 189
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 190
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_28

    .line 191
    new-instance v4, Lorg/jdom2/CDATA;

    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v4

    .line 198
    .end local v0    # "c":Lorg/jdom2/Content;
    :goto_27
    return-object v4

    .line 193
    .restart local v0    # "c":Lorg/jdom2/Content;
    :cond_28
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_37

    .line 194
    check-cast v0, Lorg/jdom2/CDATA;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, v1, p1, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v4

    goto :goto_27

    .line 198
    :cond_37
    const/4 v4, 0x0

    goto :goto_27
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;

    .prologue
    .line 223
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)Lorg/w3c/dom/Document;
    .registers 6
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;

    .prologue
    .line 149
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printDocument(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;
    .registers 6
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 156
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;

    .prologue
    .line 236
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;

    .prologue
    .line 230
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;
    .registers 10
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;

    .prologue
    .line 204
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 205
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 206
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 207
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 208
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 209
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_28

    .line 210
    new-instance v4, Lorg/jdom2/Text;

    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v4

    .line 217
    .end local v0    # "c":Lorg/jdom2/Content;
    :goto_27
    return-object v4

    .line 212
    .restart local v0    # "c":Lorg/jdom2/Content;
    :cond_28
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_37

    .line 213
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, v1, p1, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v4

    goto :goto_27

    .line 217
    :cond_37
    const/4 v4, 0x0

    goto :goto_27
.end method
