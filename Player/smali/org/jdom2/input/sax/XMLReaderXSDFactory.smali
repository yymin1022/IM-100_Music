.class public Lorg/jdom2/input/sax/XMLReaderXSDFactory;
.super Lorg/jdom2/input/sax/AbstractReaderXSDFactory;
.source "XMLReaderXSDFactory.java"


# static fields
.field private static final xsdschemas:Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Lorg/jdom2/input/sax/XMLReaderXSDFactory$1;

    invoke-direct {v0}, Lorg/jdom2/input/sax/XMLReaderXSDFactory$1;-><init>()V

    sput-object v0, Lorg/jdom2/input/sax/XMLReaderXSDFactory;->xsdschemas:Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;

    return-void
.end method

.method public varargs constructor <init>([Ljava/io/File;)V
    .registers 4
    .param p1, "systemid"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-object v1, Lorg/jdom2/input/sax/XMLReaderXSDFactory;->xsdschemas:Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;

    invoke-direct {p0, v0, v1, p1}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)V

    .line 140
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 4
    .param p1, "systemid"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-object v1, Lorg/jdom2/input/sax/XMLReaderXSDFactory;->xsdschemas:Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;

    invoke-direct {p0, v0, v1, p1}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public varargs constructor <init>([Ljava/net/URL;)V
    .registers 4
    .param p1, "systemid"    # [Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-object v1, Lorg/jdom2/input/sax/XMLReaderXSDFactory;->xsdschemas:Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;

    invoke-direct {p0, v0, v1, p1}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)V

    .line 125
    return-void
.end method

.method public varargs constructor <init>([Ljavax/xml/transform/Source;)V
    .registers 4
    .param p1, "sources"    # [Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-object v1, Lorg/jdom2/input/sax/XMLReaderXSDFactory;->xsdschemas:Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;

    invoke-direct {p0, v0, v1, p1}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)V

    .line 155
    return-void
.end method
