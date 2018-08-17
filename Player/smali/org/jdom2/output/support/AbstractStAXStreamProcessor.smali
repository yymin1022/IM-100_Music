.class public abstract Lorg/jdom2/output/support/AbstractStAXStreamProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractStAXStreamProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/StAXStreamProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractStAXStreamProcessor$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 373
    return-void
.end method


# virtual methods
.method protected printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V
    .registers 9
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 799
    :goto_c
    return-void

    .line 792
    :cond_d
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 793
    .local v0, "ns":Lorg/jdom2/Namespace;
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v0, v1, :cond_21

    .line 794
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 796
    :cond_21
    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method protected printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V
    .registers 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    .line 519
    return-void
.end method

.method protected printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    .registers 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method protected printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    .registers 9
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 708
    :goto_0
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 709
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 711
    .local v0, "content":Lorg/jdom2/Content;
    if-nez v0, :cond_2c

    .line 712
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 713
    new-instance v1, Lorg/jdom2/CDATA;

    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 715
    :cond_1f
    new-instance v1, Lorg/jdom2/Text;

    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 718
    :cond_2c
    sget-object v1, Lorg/jdom2/output/support/AbstractStAXStreamProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_84

    .line 742
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Content "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :pswitch_58
    check-cast v0, Lorg/jdom2/CDATA;

    .end local v0    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 723
    .restart local v0    # "content":Lorg/jdom2/Content;
    :pswitch_5e
    check-cast v0, Lorg/jdom2/Comment;

    .end local v0    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_0

    .line 726
    .restart local v0    # "content":Lorg/jdom2/Content;
    :pswitch_64
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 729
    .restart local v0    # "content":Lorg/jdom2/Content;
    :pswitch_6a
    check-cast v0, Lorg/jdom2/EntityRef;

    .end local v0    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    goto :goto_0

    .line 732
    .restart local v0    # "content":Lorg/jdom2/Content;
    :pswitch_70
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .end local v0    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_0

    .line 736
    .restart local v0    # "content":Lorg/jdom2/Content;
    :pswitch_76
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 739
    .restart local v0    # "content":Lorg/jdom2/Content;
    :pswitch_7c
    check-cast v0, Lorg/jdom2/DocType;

    .end local v0    # "content":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    goto/16 :goto_0

    .line 749
    :cond_83
    return-void

    .line 718
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_7c
        :pswitch_64
        :pswitch_70
        :pswitch_76
        :pswitch_58
        :pswitch_6a
    .end packed-switch
.end method

.method protected printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    .registers 10
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, "publicID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "systemID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "internalSubset":Ljava/lang/String;
    const/4 v0, 0x0

    .line 412
    .local v0, "hasPublic":Z
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 414
    .local v3, "sw":Ljava/io/StringWriter;
    const-string v5, "<!DOCTYPE "

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 416
    if-eqz v2, :cond_2e

    .line 417
    const-string v5, " PUBLIC \""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v3, v2}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 419
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 420
    const/4 v0, 0x1

    .line 422
    :cond_2e
    if-eqz v4, :cond_44

    .line 423
    if-nez v0, :cond_37

    .line 424
    const-string v5, " SYSTEM"

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 426
    :cond_37
    const-string v5, " \""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v3, v4}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 428
    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 430
    :cond_44
    if-eqz v1, :cond_66

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 431
    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 434
    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 436
    :cond_66
    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method protected printDocument(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    .registers 13
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 304
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 305
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 306
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 325
    :cond_16
    :goto_16
    invoke-virtual {p4}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v2

    .line 327
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_20
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 328
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v4

    .line 329
    .local v4, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v4, :cond_71

    .line 330
    invoke-virtual {p4, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 308
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v4    # "sz":I
    :cond_37
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitEncoding()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 309
    const-string v6, "1.0"

    invoke-interface {p1, v6}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 311
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_16

    .line 314
    :cond_50
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEncoding()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1.0"

    invoke-interface {p1, v6, v7}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 316
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_16

    .line 325
    :cond_67
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_20

    .line 333
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :cond_71
    const/4 v6, 0x0

    invoke-virtual {p0, p2, v2, v6}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v5

    .line 334
    .local v5, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 335
    :cond_7c
    :goto_7c
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 337
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 340
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_9e

    .line 342
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "padding":Ljava/lang/String;
    if-eqz v3, :cond_7c

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v6

    if-nez v6, :cond_7c

    .line 348
    invoke-interface {p1, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_7c

    .line 351
    .end local v3    # "padding":Ljava/lang/String;
    :cond_9e
    sget-object v6, Lorg/jdom2/output/support/AbstractStAXStreamProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_ea

    goto :goto_7c

    .line 353
    :pswitch_ae
    check-cast v0, Lorg/jdom2/Comment;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_7c

    .line 356
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_b4
    check-cast v0, Lorg/jdom2/DocType;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    goto :goto_7c

    .line 359
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_ba
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_7c

    .line 362
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_c0
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_7c

    .line 366
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_c6
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {v0}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v3

    .line 367
    .restart local v3    # "padding":Ljava/lang/String;
    if-eqz v3, :cond_7c

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 371
    invoke-interface {p1, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_7c

    .line 380
    .end local v3    # "padding":Ljava/lang/String;
    :cond_d8
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e5

    .line 381
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 385
    :cond_e5
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 387
    return-void

    .line 351
    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_c6
    .end packed-switch
.end method

.method protected printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    .registers 22
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual/range {p3 .. p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 558
    :try_start_3
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v5

    .line 560
    .local v5, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v12

    .line 570
    .local v12, "textmode":Lorg/jdom2/output/Format$TextMode;
    const/4 v13, 0x0

    .line 572
    .local v13, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_43

    .line 575
    const-string v14, "space"

    sget-object v15, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v15}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v11

    .line 578
    .local v11, "space":Ljava/lang/String;
    const-string v14, "default"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_82

    .line 579
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v12

    .line 585
    :cond_28
    :goto_28
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_7d

    .line 587
    :try_start_2b
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 588
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5, v14}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v13

    .line 589
    invoke-interface {v13}, Lorg/jdom2/output/support/Walker;->hasNext()Z
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_8d

    move-result v14

    if-nez v14, :cond_40

    .line 591
    const/4 v13, 0x0

    .line 594
    :cond_40
    :try_start_40
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 602
    .end local v11    # "space":Ljava/lang/String;
    :cond_43
    if-nez v13, :cond_4b

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isExpandEmptyElements()Z

    move-result v14

    if-eqz v14, :cond_92

    :cond_4b
    const/4 v6, 0x1

    .line 604
    .local v6, "expandit":Z
    :goto_4c
    if-eqz v6, :cond_146

    .line 605
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v9

    .line 606
    .local v9, "ns":Lorg/jdom2/Namespace;
    sget-object v14, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v9, v14, :cond_94

    .line 607
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 615
    :goto_5f
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_67
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jdom2/Namespace;

    .line 616
    .local v10, "nsd":Lorg/jdom2/Namespace;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V
    :try_end_7c
    .catchall {:try_start_40 .. :try_end_7c} :catchall_7d

    goto :goto_67

    .line 685
    .end local v5    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v6    # "expandit":Z
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "ns":Lorg/jdom2/Namespace;
    .end local v10    # "nsd":Lorg/jdom2/Namespace;
    .end local v12    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v13    # "walker":Lorg/jdom2/output/support/Walker;
    :catchall_7d
    move-exception v14

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    throw v14

    .line 581
    .restart local v5    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v11    # "space":Ljava/lang/String;
    .restart local v12    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .restart local v13    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_82
    :try_start_82
    const-string v14, "preserve"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28

    .line 582
    sget-object v12, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    goto :goto_28

    .line 594
    :catchall_8d
    move-exception v14

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v14

    .line 602
    .end local v11    # "space":Ljava/lang/String;
    :cond_92
    const/4 v6, 0x0

    goto :goto_4c

    .line 608
    .restart local v6    # "expandit":Z
    .restart local v9    # "ns":Lorg/jdom2/Namespace;
    :cond_94
    const-string v14, ""

    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_ae

    .line 609
    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 611
    :cond_ae
    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v15, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5f

    .line 620
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_c2
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v14

    if-eqz v14, :cond_e6

    .line 621
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Attribute;

    .line 622
    .local v4, "attribute":Lorg/jdom2/Attribute;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    goto :goto_d0

    .line 627
    .end local v4    # "attribute":Lorg/jdom2/Attribute;
    :cond_e6
    if-eqz v13, :cond_13a

    .line 629
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_eb
    .catchall {:try_start_82 .. :try_end_eb} :catchall_7d

    .line 631
    :try_start_eb
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 632
    invoke-interface {v13}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v14

    if-nez v14, :cond_10e

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_10e

    .line 634
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v8

    .line 635
    .local v8, "indent":Ljava/lang/String;
    new-instance v14, Lorg/jdom2/Text;

    invoke-direct {v14, v8}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 638
    .end local v8    # "indent":Ljava/lang/String;
    :cond_10e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 640
    invoke-interface {v13}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v14

    if-nez v14, :cond_137

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_137

    .line 642
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v8

    .line 643
    .restart local v8    # "indent":Ljava/lang/String;
    new-instance v14, Lorg/jdom2/Text;

    invoke-direct {v14, v8}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    :try_end_137
    .catchall {:try_start_eb .. :try_end_137} :catchall_141

    .line 646
    .end local v8    # "indent":Ljava/lang/String;
    :cond_137
    :try_start_137
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 650
    :cond_13a
    invoke-interface/range {p1 .. p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_13d
    .catchall {:try_start_137 .. :try_end_13d} :catchall_7d

    .line 685
    :goto_13d
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 687
    return-void

    .line 646
    :catchall_141
    move-exception v14

    :try_start_142
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v14

    .line 661
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "ns":Lorg/jdom2/Namespace;
    :cond_146
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v9

    .line 662
    .restart local v9    # "ns":Lorg/jdom2/Namespace;
    sget-object v14, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v9, v14, :cond_175

    .line 663
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;)V

    .line 671
    :goto_157
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_15f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jdom2/Namespace;

    .line 672
    .restart local v10    # "nsd":Lorg/jdom2/Namespace;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V

    goto :goto_15f

    .line 664
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "nsd":Lorg/jdom2/Namespace;
    :cond_175
    const-string v14, ""

    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_193

    .line 665
    const-string v14, ""

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v15, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_157

    .line 667
    :cond_193
    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v15, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_157

    .line 676
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1a7
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1af
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1c5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Attribute;

    .line 677
    .restart local v4    # "attribute":Lorg/jdom2/Attribute;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    goto :goto_1af

    .line 681
    .end local v4    # "attribute":Lorg/jdom2/Attribute;
    :cond_1c5
    const-string v14, ""

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_1cc
    .catchall {:try_start_142 .. :try_end_1cc} :catchall_7d

    goto/16 :goto_13d
.end method

.method protected printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    .registers 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method protected printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "ns"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 767
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 768
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 770
    .local v1, "uri":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method protected printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    .registers 7
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "target":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "rawData":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_18

    .line 463
    invoke-interface {p1, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_17
    return-void

    .line 465
    :cond_18
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    .registers 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .registers 7
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/XMLStreamWriter;",
            "Lorg/jdom2/output/Format;",
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
    .line 183
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 184
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, p3, v2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 185
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 186
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 187
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V
    .registers 10
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 199
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 200
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 201
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 202
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 203
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_2a

    .line 204
    new-instance v4, Lorg/jdom2/CDATA;

    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    .line 209
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_26
    :goto_26
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 210
    return-void

    .line 205
    .restart local v0    # "c":Lorg/jdom2/Content;
    :cond_2a
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_26

    .line 206
    check-cast v0, Lorg/jdom2/CDATA;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, v1, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_26
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V
    .registers 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 245
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 246
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V
    .registers 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 154
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 155
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocument(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V

    .line 141
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 142
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 170
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 171
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V
    .registers 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 274
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 275
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V
    .registers 6
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 259
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setIgnoreTrAXEscapingPIs(Z)V

    .line 260
    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 261
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 262
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V
    .registers 10
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 222
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 223
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 224
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 225
    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 226
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_2a

    .line 227
    new-instance v4, Lorg/jdom2/Text;

    invoke-interface {v3}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 232
    .end local v0    # "c":Lorg/jdom2/Content;
    :cond_26
    :goto_26
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 233
    return-void

    .line 228
    .restart local v0    # "c":Lorg/jdom2/Content;
    :cond_2a
    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_26

    .line 229
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, v1, v0}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_26
.end method
