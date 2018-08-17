.class public final enum Lorg/jdom2/input/sax/XMLReaders;
.super Ljava/lang/Enum;
.source "XMLReaders.java"

# interfaces
.implements Lorg/jdom2/input/sax/XMLReaderJDOMFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jdom2/input/sax/XMLReaders;",
        ">;",
        "Lorg/jdom2/input/sax/XMLReaderJDOMFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/input/sax/XMLReaders;

.field public static final enum DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

.field public static final enum NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

.field public static final enum XSDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;


# instance fields
.field private final jaxpfactory:Ljavax/xml/parsers/SAXParserFactory;

.field private final validates:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    new-instance v0, Lorg/jdom2/input/sax/XMLReaders;

    const-string v1, "NONVALIDATING"

    invoke-direct {v0, v1, v2, v2}, Lorg/jdom2/input/sax/XMLReaders;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .line 90
    new-instance v0, Lorg/jdom2/input/sax/XMLReaders;

    const-string v1, "DTDVALIDATING"

    invoke-direct {v0, v1, v3, v3}, Lorg/jdom2/input/sax/XMLReaders;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jdom2/input/sax/XMLReaders;->DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .line 95
    new-instance v0, Lorg/jdom2/input/sax/XMLReaders;

    const-string v1, "XSDVALIDATING"

    invoke-direct {v0, v1, v4, v4}, Lorg/jdom2/input/sax/XMLReaders;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/jdom2/input/sax/XMLReaders;->XSDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jdom2/input/sax/XMLReaders;

    sget-object v1, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jdom2/input/sax/XMLReaders;->DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jdom2/input/sax/XMLReaders;->XSDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jdom2/input/sax/XMLReaders;->$VALUES:[Lorg/jdom2/input/sax/XMLReaders;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 12
    .param p3, "validate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 105
    .local v0, "fac":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v5, 0x0

    .line 107
    .local v5, "val":Z
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 108
    packed-switch p3, :pswitch_data_36

    .line 134
    :goto_10
    iput-object v0, p0, Lorg/jdom2/input/sax/XMLReaders;->jaxpfactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 135
    iput-boolean v5, p0, Lorg/jdom2/input/sax/XMLReaders;->validates:Z

    .line 136
    return-void

    .line 110
    :pswitch_15
    invoke-virtual {v0, v6}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    goto :goto_10

    .line 113
    :pswitch_19
    invoke-virtual {v0, v7}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 114
    const/4 v5, 0x1

    .line 115
    goto :goto_10

    .line 117
    :pswitch_1e
    invoke-virtual {v0, v6}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 119
    :try_start_21
    const-string v6, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v6}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v4

    .line 121
    .local v4, "sfac":Ljavax/xml/validation/SchemaFactory;
    invoke-virtual {v4}, Ljavax/xml/validation/SchemaFactory;->newSchema()Ljavax/xml/validation/Schema;

    move-result-object v2

    .line 122
    .local v2, "schema":Ljavax/xml/validation/Schema;
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/SAXParserFactory;->setSchema(Ljavax/xml/validation/Schema;)V
    :try_end_2e
    .catch Lorg/xml/sax/SAXException; {:try_start_21 .. :try_end_2e} :catch_30
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2e} :catch_33

    .line 123
    const/4 v5, 0x1

    goto :goto_10

    .line 124
    .end local v2    # "schema":Ljavax/xml/validation/Schema;
    .end local v4    # "sfac":Ljavax/xml/validation/SchemaFactory;
    :catch_30
    move-exception v3

    .line 126
    .local v3, "se":Lorg/xml/sax/SAXException;
    const/4 v0, 0x0

    .line 131
    goto :goto_10

    .line 127
    .end local v3    # "se":Lorg/xml/sax/SAXException;
    :catch_33
    move-exception v1

    .line 130
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    goto :goto_10

    .line 108
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_15
        :pswitch_19
        :pswitch_1e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/input/sax/XMLReaders;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lorg/jdom2/input/sax/XMLReaders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/input/sax/XMLReaders;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/input/sax/XMLReaders;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->$VALUES:[Lorg/jdom2/input/sax/XMLReaders;

    invoke-virtual {v0}, [Lorg/jdom2/input/sax/XMLReaders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/input/sax/XMLReaders;

    return-object v0
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
    .line 148
    iget-object v1, p0, Lorg/jdom2/input/sax/XMLReaders;->jaxpfactory:Ljavax/xml/parsers/SAXParserFactory;

    if-nez v1, :cond_1d

    .line 149
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

    .line 153
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lorg/jdom2/input/sax/XMLReaders;->jaxpfactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_26
    .catch Lorg/xml/sax/SAXException; {:try_start_1d .. :try_end_26} :catch_28
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d .. :try_end_26} :catch_31

    move-result-object v1

    return-object v1

    .line 154
    :catch_28
    move-exception v0

    .line 155
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Unable to create a new XMLReader instance"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_31
    move-exception v0

    .line 158
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Unable to create a new XMLReader instance"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lorg/jdom2/input/sax/XMLReaders;->validates:Z

    return v0
.end method
