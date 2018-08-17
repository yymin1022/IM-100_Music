.class public Lorg/jdom2/input/StAXEventBuilder;
.super Ljava/lang/Object;
.source "StAXEventBuilder.java"


# instance fields
.field private factory:Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/StAXEventBuilder;->factory:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method private static final process(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLEventReader;)Lorg/jdom2/Document;
    .registers 15
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "events"    # Ljavax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v11, 0x0

    :try_start_1
    invoke-interface {p0, v11}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v4

    .line 128
    .local v4, "document":Lorg/jdom2/Document;
    const/4 v3, 0x0

    .line 130
    .local v3, "current":Lorg/jdom2/Element;
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    .line 132
    .local v8, "event":Ljavax/xml/stream/events/XMLEvent;
    const/4 v11, 0x7

    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v12

    if-eq v11, v12, :cond_22

    .line 133
    new-instance v11, Lorg/jdom2/JDOMException;

    const-string v12, "JDOM requires that XMLStreamReaders are at their beginning when being processed."

    invoke-direct {v11, v12}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_19
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_19} :catch_19

    .line 204
    .end local v3    # "current":Lorg/jdom2/Element;
    .end local v4    # "document":Lorg/jdom2/Document;
    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :catch_19
    move-exception v10

    .line 205
    .local v10, "xse":Ljavax/xml/stream/XMLStreamException;
    new-instance v11, Lorg/jdom2/JDOMException;

    const-string v12, "Unable to process XMLStream. See Cause."

    invoke-direct {v11, v12, v10}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 139
    .end local v10    # "xse":Ljavax/xml/stream/XMLStreamException;
    .restart local v3    # "current":Lorg/jdom2/Element;
    .restart local v4    # "document":Lorg/jdom2/Document;
    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_22
    :goto_22
    :try_start_22
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_125

    .line 140
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v11

    if-eqz v11, :cond_62

    .line 141
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v11

    invoke-interface {v11}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    .line 142
    const-string v12, "ENCODING_SCHEME"

    move-object v0, v8

    check-cast v0, Ljavax/xml/stream/events/StartDocument;

    move-object v11, v0

    invoke-interface {v11}, Ljavax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v12, v11}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v11, "STANDALONE"

    check-cast v8, Ljavax/xml/stream/events/StartDocument;

    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v8}, Ljavax/xml/stream/events/StartDocument;->isStandalone()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_57
    :goto_57
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_125

    .line 198
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    goto :goto_22

    .line 148
    :cond_62
    instance-of v11, v8, Ljavax/xml/stream/events/DTD;

    if-eqz v11, :cond_74

    .line 151
    check-cast v8, Ljavax/xml/stream/events/DTD;

    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v8}, Ljavax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p0}, Lorg/jdom2/input/stax/DTDParser;->parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;

    move-result-object v6

    .line 152
    .local v6, "dtype":Lorg/jdom2/DocType;
    invoke-virtual {v4, v6}, Lorg/jdom2/Document;->setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;

    goto :goto_57

    .line 153
    .end local v6    # "dtype":Lorg/jdom2/DocType;
    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_74
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 154
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v11

    invoke-static {p0, v11}, Lorg/jdom2/input/StAXEventBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/events/StartElement;)Lorg/jdom2/Element;

    move-result-object v7

    .line 155
    .local v7, "emt":Lorg/jdom2/Element;
    if-nez v3, :cond_96

    .line 156
    invoke-virtual {v4, v7}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 157
    invoke-virtual {v4}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v5

    .line 158
    .local v5, "dt":Lorg/jdom2/DocType;
    if-eqz v5, :cond_94

    .line 159
    invoke-virtual {v7}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/jdom2/DocType;->setElementName(Ljava/lang/String;)Lorg/jdom2/DocType;

    .line 164
    .end local v5    # "dt":Lorg/jdom2/DocType;
    :cond_94
    :goto_94
    move-object v3, v7

    .line 165
    goto :goto_57

    .line 162
    :cond_96
    invoke-virtual {v3, v7}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_94

    .line 165
    .end local v7    # "emt":Lorg/jdom2/Element;
    :cond_9a
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v11

    if-eqz v11, :cond_c6

    .line 166
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v1

    .line 167
    .local v1, "chars":Ljavax/xml/stream/events/Characters;
    invoke-interface {v1}, Ljavax/xml/stream/events/Characters;->isCData()Z

    move-result v11

    if-eqz v11, :cond_b8

    .line 168
    check-cast v8, Ljavax/xml/stream/events/Characters;

    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v8}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v11}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_57

    .line 171
    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_b8
    check-cast v8, Ljavax/xml/stream/events/Characters;

    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v8}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v11}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_57

    .line 174
    .end local v1    # "chars":Ljavax/xml/stream/events/Characters;
    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_c6
    instance-of v11, v8, Ljavax/xml/stream/events/Comment;

    if-eqz v11, :cond_e0

    .line 175
    check-cast v8, Ljavax/xml/stream/events/Comment;

    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v8}, Ljavax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v11}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v2

    .line 177
    .local v2, "comment":Lorg/jdom2/Comment;
    if-nez v3, :cond_db

    .line 178
    invoke-virtual {v4, v2}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    goto/16 :goto_57

    .line 180
    :cond_db
    invoke-virtual {v3, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_57

    .line 182
    .end local v2    # "comment":Lorg/jdom2/Comment;
    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_e0
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isEntityReference()Z

    move-result v11

    if-eqz v11, :cond_f5

    .line 183
    check-cast v8, Ljavax/xml/stream/events/EntityReference;

    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v8}, Ljavax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v11}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_57

    .line 185
    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_f5
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isProcessingInstruction()Z

    move-result v11

    if-eqz v11, :cond_119

    .line 186
    move-object v0, v8

    check-cast v0, Ljavax/xml/stream/events/ProcessingInstruction;

    move-object v11, v0

    invoke-interface {v11}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v11

    check-cast v8, Ljavax/xml/stream/events/ProcessingInstruction;

    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v8}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p0, v11, v12}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v9

    .line 189
    .local v9, "pi":Lorg/jdom2/ProcessingInstruction;
    if-nez v3, :cond_114

    .line 190
    invoke-virtual {v4, v9}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    goto/16 :goto_57

    .line 192
    :cond_114
    invoke-virtual {v3, v9}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_57

    .line 194
    .end local v9    # "pi":Lorg/jdom2/ProcessingInstruction;
    .restart local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_119
    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v11

    if-eqz v11, :cond_57

    .line 195
    invoke-virtual {v3}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;
    :try_end_122
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_22 .. :try_end_122} :catch_19

    move-result-object v3

    goto/16 :goto_57

    .line 203
    .end local v8    # "event":Ljavax/xml/stream/events/XMLEvent;
    :cond_125
    return-object v4
.end method

.method private static final processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/events/StartElement;)Lorg/jdom2/Element;
    .registers 12
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "event"    # Ljavax/xml/stream/events/StartElement;

    .prologue
    .line 211
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v6

    .line 213
    .local v6, "qname":Ljavax/xml/namespace/QName;
    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v8

    invoke-interface {p0, v7, v8}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v3

    .line 217
    .local v3, "element":Lorg/jdom2/Element;
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v4

    .line 218
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 220
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Attribute;

    .line 223
    .local v1, "att":Ljavax/xml/stream/events/Attribute;
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 225
    .local v0, "aqname":Ljavax/xml/namespace/QName;
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v2

    .line 228
    .local v2, "attNs":Lorg/jdom2/Namespace;
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/jdom2/AttributeType;->getAttributeType(Ljava/lang/String;)Lorg/jdom2/AttributeType;

    move-result-object v9

    invoke-interface {p0, v7, v8, v9, v2}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v7

    invoke-interface {p0, v3, v7}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    goto :goto_1c

    .line 233
    .end local v0    # "aqname":Ljavax/xml/namespace/QName;
    .end local v1    # "att":Ljavax/xml/stream/events/Attribute;
    .end local v2    # "attNs":Lorg/jdom2/Namespace;
    :cond_50
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v4

    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 234
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/stream/events/Namespace;

    .line 237
    .local v5, "ns":Ljavax/xml/stream/events/Namespace;
    invoke-interface {v5}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    goto :goto_54

    .line 241
    .end local v5    # "ns":Ljavax/xml/stream/events/Namespace;
    :cond_70
    return-object v3
.end method


# virtual methods
.method public build(Ljavax/xml/stream/XMLEventReader;)Lorg/jdom2/Document;
    .registers 3
    .param p1, "events"    # Ljavax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jdom2/input/StAXEventBuilder;->factory:Lorg/jdom2/JDOMFactory;

    invoke-static {v0, p1}, Lorg/jdom2/input/StAXEventBuilder;->process(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLEventReader;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lorg/jdom2/input/StAXEventBuilder;->factory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .registers 2
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/jdom2/input/StAXEventBuilder;->factory:Lorg/jdom2/JDOMFactory;

    .line 265
    return-void
.end method
