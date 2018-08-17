.class public abstract Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;
.super Ljava/lang/Object;
.source "AbstractReaderSchemaFactory.java"

# interfaces
.implements Lorg/jdom2/input/sax/XMLReaderJDOMFactory;


# instance fields
.field private final saxfac:Ljavax/xml/parsers/SAXParserFactory;


# direct methods
.method public constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V
    .registers 5
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "schema"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-nez p2, :cond_d

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a SchemaXMLReaderFactory with a null schema"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_d
    iput-object p1, p0, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;->saxfac:Ljavax/xml/parsers/SAXParserFactory;

    .line 101
    iget-object v0, p0, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;->saxfac:Ljavax/xml/parsers/SAXParserFactory;

    if-eqz v0, :cond_24

    .line 102
    iget-object v0, p0, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;->saxfac:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 103
    iget-object v0, p0, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;->saxfac:Ljavax/xml/parsers/SAXParserFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 104
    iget-object v0, p0, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;->saxfac:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0, p2}, Ljavax/xml/parsers/SAXParserFactory;->setSchema(Ljavax/xml/validation/Schema;)V

    .line 106
    :cond_24
    return-void
.end method


# virtual methods
.method public createXMLReader()Lorg/xml/sax/XMLReader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;->saxfac:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v1, :cond_1d

    .line 111
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "It was not possible to configure a suitable XMLReader to support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;->saxfac:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_26
    .catch Lorg/xml/sax/SAXException; {:try_start_1d .. :try_end_26} :catch_28
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d .. :try_end_26} :catch_31

    move-result-object v1

    return-object v1

    .line 117
    :catch_28
    move-exception v0

    .line 118
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Could not create a new Schema-Validating XMLReader."

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 120
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_31
    move-exception v0

    .line 121
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Could not create a new Schema-Validating XMLReader."

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method
