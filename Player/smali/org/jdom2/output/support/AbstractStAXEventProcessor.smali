.class public abstract Lorg/jdom2/output/support/AbstractStAXEventProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractStAXEventProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/StAXEventProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractStAXEventProcessor$1;,
        Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;,
        Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 154
    return-void
.end method


# virtual methods
.method protected printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p4}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 592
    return-void
.end method

.method protected printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-virtual {p4}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 553
    return-void
.end method

.method protected printContent(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/output/support/Walker;)V
    .registers 13
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p5, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 734
    :goto_0
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 736
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v6

    .line 738
    .local v6, "content":Lorg/jdom2/Content;
    if-nez v6, :cond_2c

    .line 739
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 740
    new-instance v0, Lorg/jdom2/CDATA;

    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 742
    :cond_1f
    new-instance v0, Lorg/jdom2/Text;

    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 745
    :cond_2c
    sget-object v0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v6}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8c

    .line 769
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Content "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 747
    :pswitch_58
    check-cast v6, Lorg/jdom2/CDATA;

    .end local v6    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p4, v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 750
    .restart local v6    # "content":Lorg/jdom2/Content;
    :pswitch_5e
    check-cast v6, Lorg/jdom2/Comment;

    .end local v6    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p4, v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V

    goto :goto_0

    .restart local v6    # "content":Lorg/jdom2/Content;
    :pswitch_64
    move-object v5, v6

    .line 753
    check-cast v5, Lorg/jdom2/Element;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 756
    :pswitch_70
    check-cast v6, Lorg/jdom2/EntityRef;

    .end local v6    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p4, v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printEntityRef(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V

    goto :goto_0

    .line 759
    .restart local v6    # "content":Lorg/jdom2/Content;
    :pswitch_76
    check-cast v6, Lorg/jdom2/ProcessingInstruction;

    .end local v6    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p4, v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_0

    .line 763
    .restart local v6    # "content":Lorg/jdom2/Content;
    :pswitch_7c
    check-cast v6, Lorg/jdom2/Text;

    .end local v6    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p4, v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    goto/16 :goto_0

    .line 766
    .restart local v6    # "content":Lorg/jdom2/Content;
    :pswitch_83
    check-cast v6, Lorg/jdom2/DocType;

    .end local v6    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p4, v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V

    goto/16 :goto_0

    .line 775
    :cond_8a
    return-void

    .line 745
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_83
        :pswitch_64
        :pswitch_76
        :pswitch_58
        :pswitch_70
        :pswitch_7c
    .end packed-switch
.end method

.method protected printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V
    .registers 11
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "publicID":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v4

    .line 471
    .local v4, "systemID":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    .line 472
    .local v1, "internalSubset":Ljava/lang/String;
    const/4 v0, 0x0

    .line 477
    .local v0, "hasPublic":Z
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 479
    .local v3, "sw":Ljava/io/StringWriter;
    const-string v5, "<!DOCTYPE "

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 481
    if-eqz v2, :cond_2e

    .line 482
    const-string v5, " PUBLIC \""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v3, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 484
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 485
    const/4 v0, 0x1

    .line 487
    :cond_2e
    if-eqz v4, :cond_44

    .line 488
    if-nez v0, :cond_37

    .line 489
    const-string v5, " SYSTEM"

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 491
    :cond_37
    const-string v5, " \""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v3, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 493
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 495
    :cond_44
    if-eqz v1, :cond_66

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 496
    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 499
    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 501
    :cond_66
    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljavax/xml/stream/XMLEventFactory;->createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;

    move-result-object v5

    invoke-interface {p1, v5}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 508
    return-void
.end method

.method protected printDocument(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Document;)V
    .registers 19
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p5, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 377
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 393
    :cond_11
    :goto_11
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v9

    .line 395
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_1b
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 396
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Document;->getContentSize()I

    move-result v11

    .line 397
    .local v11, "sz":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_26
    if-ge v8, v11, :cond_87

    .line 398
    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    .line 378
    .end local v8    # "i":I
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v11    # "sz":I
    :cond_34
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitEncoding()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 379
    const/4 v1, 0x0

    const-string v2, "1.0"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 380
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 381
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_11

    .line 384
    :cond_5a
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEncoding()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1.0"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 385
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 386
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_11

    .line 393
    :cond_7d
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_1b

    .line 402
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :cond_87
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v9, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v12

    .line 403
    .local v12, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v12}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 404
    :cond_92
    :goto_92
    invoke-interface {v12}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 406
    invoke-interface {v12}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v7

    .line 410
    .local v7, "c":Lorg/jdom2/Content;
    if-nez v7, :cond_ba

    .line 412
    invoke-interface {v12}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, "padding":Ljava/lang/String;
    if-eqz v10, :cond_92

    invoke-static {v10}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-interface {v12}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v1

    if-nez v1, :cond_92

    .line 418
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_92

    .line 421
    .end local v10    # "padding":Ljava/lang/String;
    :cond_ba
    sget-object v1, Lorg/jdom2/output/support/AbstractStAXEventProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v7}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_10c

    goto :goto_92

    .line 423
    :pswitch_ca
    check-cast v7, Lorg/jdom2/Comment;

    .end local v7    # "c":Lorg/jdom2/Content;
    move-object/from16 v0, p4

    invoke-virtual {p0, p1, p2, v0, v7}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V

    goto :goto_92

    .line 426
    .restart local v7    # "c":Lorg/jdom2/Content;
    :pswitch_d2
    check-cast v7, Lorg/jdom2/DocType;

    .end local v7    # "c":Lorg/jdom2/Content;
    move-object/from16 v0, p4

    invoke-virtual {p0, p1, p2, v0, v7}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V

    goto :goto_92

    .restart local v7    # "c":Lorg/jdom2/Content;
    :pswitch_da
    move-object v6, v7

    .line 429
    check-cast v6, Lorg/jdom2/Element;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V

    goto :goto_92

    .line 433
    :pswitch_e8
    check-cast v7, Lorg/jdom2/ProcessingInstruction;

    .end local v7    # "c":Lorg/jdom2/Content;
    move-object/from16 v0, p4

    invoke-virtual {p0, p1, p2, v0, v7}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_92

    .line 443
    :cond_f0
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_103

    .line 444
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 448
    :cond_103
    invoke-virtual/range {p4 .. p4}, Ljavax/xml/stream/XMLEventFactory;->createEndDocument()Ljavax/xml/stream/events/EndDocument;

    move-result-object v1

    invoke-interface {p1, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 450
    return-void

    .line 421
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_d2
        :pswitch_da
        :pswitch_e8
    .end packed-switch
.end method

.method protected printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V
    .registers 20
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p5, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 637
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 640
    :try_start_7
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v11

    .line 641
    .local v11, "ns":Lorg/jdom2/Namespace;
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v2

    if-eqz v2, :cond_f0

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 644
    .local v8, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    :goto_19
    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v11, v2, :cond_f3

    .line 645
    const-string v3, ""

    const-string v4, ""

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v2

    move-object/from16 v0, p4

    invoke-direct {v6, v8, v0, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;Z)V

    new-instance v7, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {v7, v2, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 657
    :goto_48
    const/4 v8, 0x0

    .line 659
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v9

    .line 661
    .local v9, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c8

    .line 662
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v13

    .line 665
    .local v13, "textmode":Lorg/jdom2/output/Format$TextMode;
    const-string v2, "space"

    sget-object v3, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v12

    .line 668
    .local v12, "space":Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_164

    .line 669
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v13

    .line 675
    :cond_6d
    :goto_6d
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_70
    .catchall {:try_start_7 .. :try_end_70} :catchall_12e

    .line 678
    :try_start_70
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 680
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v9, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v7

    .line 681
    .local v7, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v7}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 682
    invoke-interface {v7}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v2

    if-nez v2, :cond_9e

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9e

    .line 684
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v10

    .line 685
    .local v10, "indent":Ljava/lang/String;
    new-instance v2, Lorg/jdom2/Text;

    invoke-direct {v2, v10}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    .end local v10    # "indent":Ljava/lang/String;
    :cond_9e
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 688
    invoke-virtual/range {v2 .. v7}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printContent(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/output/support/Walker;)V

    .line 690
    invoke-interface {v7}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v2

    if-nez v2, :cond_c5

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c5

    .line 692
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v10

    .line 693
    .restart local v10    # "indent":Ljava/lang/String;
    new-instance v2, Lorg/jdom2/Text;

    invoke-direct {v2, v10}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V
    :try_end_c5
    .catchall {:try_start_70 .. :try_end_c5} :catchall_170

    .line 697
    .end local v10    # "indent":Ljava/lang/String;
    :cond_c5
    :try_start_c5
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 702
    .end local v7    # "walker":Lorg/jdom2/output/support/Walker;
    .end local v12    # "space":Ljava/lang/String;
    .end local v13    # "textmode":Lorg/jdom2/output/Format$TextMode;
    :cond_c8
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedReverse()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-direct {v5, v6, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljavax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_ec
    .catchall {:try_start_c5 .. :try_end_ec} :catchall_12e

    .line 708
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 710
    return-void

    .line 641
    .end local v8    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    .end local v9    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :cond_f0
    const/4 v8, 0x0

    goto/16 :goto_19

    .line 648
    .restart local v8    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    :cond_f3
    :try_start_f3
    const-string v2, ""

    invoke-virtual {v11}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    .line 649
    const-string v3, ""

    invoke-virtual {v11}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v2

    move-object/from16 v0, p4

    invoke-direct {v6, v8, v0, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;Z)V

    new-instance v7, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {v7, v2, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_12c
    .catchall {:try_start_f3 .. :try_end_12c} :catchall_12e

    goto/16 :goto_48

    .line 708
    .end local v8    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    .end local v11    # "ns":Lorg/jdom2/Namespace;
    :catchall_12e
    move-exception v2

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    throw v2

    .line 653
    .restart local v8    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    .restart local v11    # "ns":Lorg/jdom2/Namespace;
    :cond_133
    :try_start_133
    invoke-virtual {v11}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v2

    move-object/from16 v0, p4

    invoke-direct {v6, v8, v0, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;Z)V

    new-instance v7, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-direct {v7, v2, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v7}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto/16 :goto_48

    .line 671
    .restart local v9    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v12    # "space":Ljava/lang/String;
    .restart local v13    # "textmode":Lorg/jdom2/output/Format$TextMode;
    :cond_164
    const-string v2, "preserve"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 672
    sget-object v13, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    goto/16 :goto_6d

    .line 697
    :catchall_170
    move-exception v2

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v2
    :try_end_175
    .catchall {:try_start_133 .. :try_end_175} :catchall_12e
.end method

.method protected printEntityRef(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V
    .registers 7
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p4}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 572
    return-void
.end method

.method protected printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V
    .registers 8
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p4}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "target":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "rawData":Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c

    .line 530
    invoke-virtual {p3, v1, v0}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 534
    :goto_1b
    return-void

    .line 532
    :cond_1c
    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_1b
.end method

.method protected printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 610
    invoke-virtual {p4}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 611
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Ljava/util/List;)V
    .registers 12
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/util/XMLEventConsumer;",
            "Lorg/jdom2/output/Format;",
            "Ljavax/xml/stream/XMLEventFactory;",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 260
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v6, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v6, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 261
    .local v6, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v0, 0x0

    invoke-virtual {p0, v6, p4, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v5

    .line 262
    .local v5, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v2, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v2, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printContent(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/output/support/Walker;)V

    .line 263
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V
    .registers 11
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 275
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 276
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 277
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 278
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 279
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_27

    .line 280
    new-instance v4, Lorg/jdom2/CDATA;

    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p3, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    .line 285
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_26
    :goto_26
    return-void

    .line 281
    .restart local v0    # "c":Lorg/jdom2/Content;
    :cond_27
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_26

    .line 282
    check-cast v0, Lorg/jdom2/CDATA;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, v1, p3, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    goto :goto_26
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V

    .line 319
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V

    .line 233
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Document;)V
    .registers 11
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v2, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v2, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocument(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Document;)V

    .line 221
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V
    .registers 11
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 246
    new-instance v2, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v2, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V

    .line 248
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printEntityRef(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V

    .line 346
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V
    .registers 7
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 332
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setIgnoreTrAXEscapingPIs(Z)V

    .line 333
    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V

    .line 334
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V
    .registers 11
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 297
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 298
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 299
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 300
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 301
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_27

    .line 302
    new-instance v4, Lorg/jdom2/Text;

    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p3, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    .line 307
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_26
    :goto_26
    return-void

    .line 303
    .restart local v0    # "c":Lorg/jdom2/Content;
    :cond_27
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_26

    .line 304
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, v1, p3, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    goto :goto_26
.end method
