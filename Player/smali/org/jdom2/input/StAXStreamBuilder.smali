.class public Lorg/jdom2/input/StAXStreamBuilder;
.super Ljava/lang/Object;
.source "StAXStreamBuilder.java"


# instance fields
.field private builderfactory:Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method private static final process(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Document;
    .registers 8
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "stream"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 124
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v1

    .line 126
    .local v1, "state":I
    const/4 v3, 0x7

    if-eq v3, v1, :cond_18

    .line 127
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "JDOM requires that XMLStreamReaders are at their beginning when being processed."

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_f} :catch_f

    .line 188
    .end local v1    # "state":I
    :catch_f
    move-exception v2

    .line 189
    .local v2, "xse":Ljavax/xml/stream/XMLStreamException;
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unable to process XMLStream. See Cause."

    invoke-direct {v3, v4, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 131
    .end local v2    # "xse":Ljavax/xml/stream/XMLStreamException;
    .restart local v1    # "state":I
    :cond_18
    const/4 v3, 0x0

    :try_start_19
    invoke-interface {p0, v3}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v0

    .line 133
    .local v0, "document":Lorg/jdom2/Document;
    :goto_1d
    const/16 v3, 0x8

    if-eq v1, v3, :cond_d2

    .line 134
    packed-switch v1, :pswitch_data_d4

    .line 178
    :pswitch_24
    new-instance v3, Lorg/jdom2/JDOMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected XMLStream event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 138
    :pswitch_3d
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    .line 139
    const-string v3, "ENCODING_SCHEME"

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v3, "STANDALONE"

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    const-string v3, "ENCODING"

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    :goto_67
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 182
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v1

    goto :goto_1d

    .line 148
    :pswitch_72
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lorg/jdom2/input/stax/DTDParser;->parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jdom2/Document;->setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;

    goto :goto_67

    .line 153
    :pswitch_7e
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElementFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    goto :goto_67

    .line 157
    :pswitch_86
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unexpected XMLStream event at Document level: END_ELEMENT"

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :pswitch_8e
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unexpected XMLStream event at Document level: ENTITY_REFERENCE"

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :pswitch_96
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unexpected XMLStream event at Document level: CDATA"

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    :pswitch_9e
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unexpected XMLStream event at Document level: SPACE"

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :pswitch_a6
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unexpected XMLStream event at Document level: CHARACTERS"

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :pswitch_ae
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    goto :goto_67

    .line 173
    :pswitch_ba
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    goto :goto_67

    .line 184
    :cond_ca
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unexpected end-of-XMLStreamReader"

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_d2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_19 .. :try_end_d2} :catch_f

    .line 187
    :cond_d2
    return-object v0

    .line 134
    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_86
        :pswitch_ba
        :pswitch_a6
        :pswitch_ae
        :pswitch_9e
        :pswitch_3d
        :pswitch_24
        :pswitch_8e
        :pswitch_24
        :pswitch_72
        :pswitch_96
    .end packed-switch
.end method

.method private static final processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;
    .registers 10
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;

    .prologue
    .line 497
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    .line 502
    .local v0, "element":Lorg/jdom2/Element;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v2

    .local v2, "len":I
    :goto_19
    if-ge v1, v2, :cond_41

    .line 503
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jdom2/AttributeType;->getAttributeType(Ljava/lang/String;)Lorg/jdom2/AttributeType;

    move-result-object v5

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v6

    invoke-interface {p0, v3, v4, v5, v6}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 512
    :cond_41
    const/4 v1, 0x0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v2

    :goto_46
    if-ge v1, v2, :cond_5a

    .line 513
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 517
    :cond_5a
    return-object v0
.end method

.method private static final processElementFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;
    .registers 9
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v4, 0x1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v5

    if-eq v4, v5, :cond_f

    .line 443
    new-instance v4, Lorg/jdom2/JDOMException;

    const-string v5, "JDOM requires that the XMLStreamReader is at the START_ELEMENT state when retrieving an Element Fragment."

    invoke-direct {v4, v5}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 448
    :cond_f
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v2

    .line 449
    .local v2, "fragment":Lorg/jdom2/Element;
    move-object v0, v2

    .line 450
    .local v0, "current":Lorg/jdom2/Element;
    const/4 v1, 0x1

    .line 451
    .local v1, "depth":I
    :goto_15
    if-lez v1, :cond_93

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    .line 452
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v4

    packed-switch v4, :pswitch_data_94

    .line 486
    :pswitch_24
    new-instance v4, Lorg/jdom2/JDOMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected XMLStream event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 454
    :pswitch_41
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v3

    .line 455
    .local v3, "tmp":Lorg/jdom2/Element;
    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 456
    move-object v0, v3

    .line 457
    add-int/lit8 v1, v1, 0x1

    .line 458
    goto :goto_15

    .line 460
    .end local v3    # "tmp":Lorg/jdom2/Element;
    :pswitch_4c
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    .line 461
    add-int/lit8 v1, v1, -0x1

    .line 462
    goto :goto_15

    .line 464
    :pswitch_53
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_15

    .line 469
    :pswitch_5f
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_15

    .line 473
    :pswitch_6b
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_15

    .line 477
    :pswitch_77
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_15

    .line 481
    :pswitch_83
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_15

    .line 491
    :cond_93
    return-object v2

    .line 452
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_41
        :pswitch_4c
        :pswitch_83
        :pswitch_5f
        :pswitch_6b
        :pswitch_5f
        :pswitch_24
        :pswitch_24
        :pswitch_77
        :pswitch_24
        :pswitch_24
        :pswitch_53
    .end packed-switch
.end method

.method private static final processFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Content;
    .registers 13
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "stream"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v8

    packed-switch v8, :pswitch_data_a0

    .line 431
    :pswitch_7
    new-instance v8, Lorg/jdom2/JDOMException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected XMLStream event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_24
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_24} :catch_24

    .line 434
    :catch_24
    move-exception v7

    .line 435
    .local v7, "xse":Ljavax/xml/stream/XMLStreamException;
    new-instance v8, Lorg/jdom2/JDOMException;

    const-string v9, "Unable to process XMLStream. See Cause."

    invoke-direct {v8, v9, v7}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 387
    .end local v7    # "xse":Ljavax/xml/stream/XMLStreamException;
    :pswitch_2d
    :try_start_2d
    new-instance v8, Lorg/jdom2/JDOMException;

    const-string v9, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state START_DOCUMENT"

    invoke-direct {v8, v9}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 389
    :pswitch_35
    new-instance v8, Lorg/jdom2/JDOMException;

    const-string v9, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_DOCUMENT"

    invoke-direct {v8, v9}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 391
    :pswitch_3d
    new-instance v8, Lorg/jdom2/JDOMException;

    const-string v9, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_ELEMENT"

    invoke-direct {v8, v9}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 394
    :pswitch_45
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElementFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v3

    .line 395
    .local v3, "emt":Lorg/jdom2/Element;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 428
    .end local v3    # "emt":Lorg/jdom2/Element;
    :goto_4c
    return-object v3

    .line 399
    :pswitch_4d
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lorg/jdom2/input/stax/DTDParser;->parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;

    move-result-object v2

    .line 400
    .local v2, "dt":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-object v3, v2

    .line 401
    goto :goto_4c

    .line 404
    .end local v2    # "dt":Lorg/jdom2/Content;
    :pswitch_5a
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    .line 405
    .local v0, "cd":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-object v3, v0

    .line 406
    goto :goto_4c

    .line 410
    .end local v0    # "cd":Lorg/jdom2/Content;
    :pswitch_67
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v6

    .line 411
    .local v6, "txt":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-object v3, v6

    .line 412
    goto :goto_4c

    .line 415
    .end local v6    # "txt":Lorg/jdom2/Content;
    :pswitch_74
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v1

    .line 416
    .local v1, "comment":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-object v3, v1

    .line 417
    goto :goto_4c

    .line 420
    .end local v1    # "comment":Lorg/jdom2/Content;
    :pswitch_81
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v4

    .line 421
    .local v4, "er":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-object v3, v4

    .line 422
    goto :goto_4c

    .line 425
    .end local v4    # "er":Lorg/jdom2/Content;
    :pswitch_8e
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v8, v9}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v5

    .line 427
    .local v5, "pi":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I
    :try_end_9d
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2d .. :try_end_9d} :catch_24

    move-object v3, v5

    .line 428
    goto :goto_4c

    .line 384
    nop

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_45
        :pswitch_3d
        :pswitch_8e
        :pswitch_67
        :pswitch_74
        :pswitch_67
        :pswitch_2d
        :pswitch_35
        :pswitch_81
        :pswitch_7
        :pswitch_4d
        :pswitch_5a
    .end packed-switch
.end method

.method private processFragments(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;Lorg/jdom2/input/stax/StAXFilter;)Ljava/util/List;
    .registers 14
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p2, "stream"    # Ljavax/xml/stream/XMLStreamReader;
    .param p3, "filter"    # Lorg/jdom2/input/stax/StAXFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/JDOMFactory;",
            "Ljavax/xml/stream/XMLStreamReader;",
            "Lorg/jdom2/input/stax/StAXFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v5

    .line 197
    .local v5, "state":I
    const/4 v7, 0x7

    if-eq v7, v5, :cond_f

    .line 198
    new-instance v7, Lorg/jdom2/JDOMException;

    const-string v8, "JDOM requires that XMLStreamReaders are at their beginning when being processed."

    invoke-direct {v7, v8}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 201
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    const/4 v1, 0x0

    .line 204
    .local v1, "depth":I
    const/4 v6, 0x0

    .line 207
    .local v6, "text":Ljava/lang/String;
    :cond_16
    :goto_16
    :try_start_16
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_120

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v5

    const/16 v7, 0x8

    if-eq v5, v7, :cond_120

    .line 208
    packed-switch v5, :pswitch_data_122

    .line 275
    :pswitch_27
    new-instance v7, Lorg/jdom2/JDOMException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected XMLStream event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_44
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_16 .. :try_end_44} :catch_44

    .line 278
    :catch_44
    move-exception v2

    .line 279
    .local v2, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v7, Lorg/jdom2/JDOMException;

    const-string v8, "Unable to process fragments from XMLStreamReader."

    invoke-direct {v7, v8, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 210
    .end local v2    # "e":Ljavax/xml/stream/XMLStreamException;
    :pswitch_4d
    :try_start_4d
    new-instance v7, Lorg/jdom2/JDOMException;

    const-string v8, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state START_DOCUMENT"

    invoke-direct {v7, v8}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 212
    :pswitch_55
    new-instance v7, Lorg/jdom2/JDOMException;

    const-string v8, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_DOCUMENT"

    invoke-direct {v7, v8}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 214
    :pswitch_5d
    new-instance v7, Lorg/jdom2/JDOMException;

    const-string v8, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_ELEMENT"

    invoke-direct {v7, v8}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 217
    :pswitch_65
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    .line 218
    .local v3, "qn":Ljavax/xml/namespace/QName;
    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v8

    invoke-interface {p3, v1, v7, v8}, Lorg/jdom2/input/stax/StAXFilter;->includeElement(ILjava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 220
    invoke-static {p1, p2, v1, p3}, Lorg/jdom2/input/StAXStreamBuilder;->processPrunableElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;ILorg/jdom2/input/stax/StAXFilter;)Lorg/jdom2/Element;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 222
    :cond_87
    move v0, v1

    .line 223
    .local v0, "back":I
    add-int/lit8 v1, v1, 0x1

    .line 225
    :cond_8a
    :goto_8a
    if-le v1, v0, :cond_16

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 226
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v5

    .line 227
    const/4 v7, 0x1

    if-ne v5, v7, :cond_9c

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 229
    :cond_9c
    const/4 v7, 0x2

    if-ne v5, v7, :cond_8a

    .line 230
    add-int/lit8 v1, v1, -0x1

    goto :goto_8a

    .line 237
    .end local v0    # "back":I
    .end local v3    # "qn":Ljavax/xml/namespace/QName;
    :pswitch_a2
    invoke-interface {p3}, Lorg/jdom2/input/stax/StAXFilter;->includeDocType()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 238
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/jdom2/input/stax/DTDParser;->parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 243
    :pswitch_b5
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v1, v7}, Lorg/jdom2/input/stax/StAXFilter;->includeCDATA(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 244
    invoke-interface {p1, v6}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 250
    :pswitch_c8
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v1, v7}, Lorg/jdom2/input/stax/StAXFilter;->includeText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 251
    invoke-interface {p1, v6}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 256
    :pswitch_db
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v1, v7}, Lorg/jdom2/input/stax/StAXFilter;->includeComment(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 257
    invoke-interface {p1, v6}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 262
    :pswitch_ee
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v1, v7}, Lorg/jdom2/input/stax/StAXFilter;->includeEntityRef(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 263
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    .line 268
    :pswitch_105
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p3, v1, v7}, Lorg/jdom2/input/stax/StAXFilter;->includeProcessingInstruction(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 269
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11e
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_4d .. :try_end_11e} :catch_44

    goto/16 :goto_16

    .line 282
    :cond_120
    return-object v4

    .line 208
    nop

    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_65
        :pswitch_5d
        :pswitch_105
        :pswitch_c8
        :pswitch_db
        :pswitch_c8
        :pswitch_4d
        :pswitch_55
        :pswitch_ee
        :pswitch_27
        :pswitch_a2
        :pswitch_b5
    .end packed-switch
.end method

.method private static final processPrunableElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;ILorg/jdom2/input/stax/StAXFilter;)Lorg/jdom2/Element;
    .registers 16
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "topdepth"    # I
    .param p3, "filter"    # Lorg/jdom2/input/stax/StAXFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 290
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v8

    if-eq v11, v8, :cond_f

    .line 291
    new-instance v8, Lorg/jdom2/JDOMException;

    const-string v9, "JDOM requires that the XMLStreamReader is at the START_ELEMENT state when retrieving an Element Fragment."

    invoke-direct {v8, v9}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 296
    :cond_f
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v3

    .line 297
    .local v3, "fragment":Lorg/jdom2/Element;
    move-object v0, v3

    .line 298
    .local v0, "current":Lorg/jdom2/Element;
    add-int/lit8 v1, p2, 0x1

    .line 299
    .local v1, "depth":I
    const/4 v6, 0x0

    .line 300
    .local v6, "text":Ljava/lang/String;
    :cond_17
    :goto_17
    if-le v1, p2, :cond_f9

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f9

    .line 301
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v8

    packed-switch v8, :pswitch_data_fa

    .line 362
    :pswitch_26
    new-instance v8, Lorg/jdom2/JDOMException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unexpected XMLStream event "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    :pswitch_43
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    .line 304
    .local v4, "qn":Ljavax/xml/namespace/QName;
    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v9

    invoke-interface {p3, v1, v8, v9}, Lorg/jdom2/input/stax/StAXFilter;->pruneElement(ILjava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 307
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v7

    .line 308
    .local v7, "tmp":Lorg/jdom2/Element;
    invoke-virtual {v0, v7}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 309
    move-object v0, v7

    .line 310
    add-int/lit8 v1, v1, 0x1

    .line 311
    goto :goto_17

    .line 312
    .end local v7    # "tmp":Lorg/jdom2/Element;
    :cond_68
    move v2, v1

    .line 313
    .local v2, "edepth":I
    add-int/lit8 v1, v1, 0x1

    .line 314
    const/4 v5, 0x0

    .line 316
    .local v5, "state":I
    :cond_6c
    :goto_6c
    if-le v1, v2, :cond_17

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v5

    const/16 v8, 0x8

    if-eq v5, v8, :cond_17

    .line 317
    if-ne v5, v11, :cond_81

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    .line 319
    :cond_81
    const/4 v8, 0x2

    if-ne v5, v8, :cond_6c

    .line 320
    add-int/lit8 v1, v1, -0x1

    goto :goto_6c

    .line 326
    .end local v2    # "edepth":I
    .end local v4    # "qn":Ljavax/xml/namespace/QName;
    .end local v5    # "state":I
    :pswitch_87
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v0

    .line 327
    add-int/lit8 v1, v1, -0x1

    .line 328
    goto :goto_17

    .line 330
    :pswitch_8e
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v1, v8}, Lorg/jdom2/input/stax/StAXFilter;->pruneCDATA(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 331
    invoke-interface {p0, v6}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_17

    .line 337
    :pswitch_a1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v1, v8}, Lorg/jdom2/input/stax/StAXFilter;->pruneText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 338
    invoke-interface {p0, v6}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_17

    .line 343
    :pswitch_b4
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v1, v8}, Lorg/jdom2/input/stax/StAXFilter;->pruneComment(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 344
    invoke-interface {p0, v6}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_17

    .line 349
    :pswitch_c7
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v1, v8}, Lorg/jdom2/input/stax/StAXFilter;->pruneEntityRef(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 350
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_17

    .line 355
    :pswitch_de
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p3, v1, v8}, Lorg/jdom2/input/stax/StAXFilter;->pruneProcessingInstruction(ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    .line 356
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v8, v9}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_17

    .line 367
    :cond_f9
    return-object v3

    .line 301
    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_43
        :pswitch_87
        :pswitch_de
        :pswitch_a1
        :pswitch_b4
        :pswitch_a1
        :pswitch_26
        :pswitch_26
        :pswitch_c7
        :pswitch_26
        :pswitch_26
        :pswitch_8e
    .end packed-switch
.end method


# virtual methods
.method public build(Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Document;
    .registers 3
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    invoke-static {v0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->process(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public buildFragments(Ljavax/xml/stream/XMLStreamReader;Lorg/jdom2/input/stax/StAXFilter;)Ljava/util/List;
    .registers 4
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "filter"    # Lorg/jdom2/input/stax/StAXFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/XMLStreamReader;",
            "Lorg/jdom2/input/stax/StAXFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    invoke-direct {p0, v0, p1, p2}, Lorg/jdom2/input/StAXStreamBuilder;->processFragments(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;Lorg/jdom2/input/stax/StAXFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fragment(Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Content;
    .registers 3
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    invoke-static {v0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .registers 2
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 539
    iput-object p1, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    .line 540
    return-void
.end method
