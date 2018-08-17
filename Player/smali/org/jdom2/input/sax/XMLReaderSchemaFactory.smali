.class public Lorg/jdom2/input/sax/XMLReaderSchemaFactory;
.super Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;
.source "XMLReaderSchemaFactory.java"


# direct methods
.method public constructor <init>(Ljavax/xml/validation/Schema;)V
    .registers 3
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .prologue
    .line 86
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 87
    return-void
.end method
