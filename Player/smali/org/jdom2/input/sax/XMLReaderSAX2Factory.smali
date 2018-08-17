.class public Lorg/jdom2/input/sax/XMLReaderSAX2Factory;
.super Ljava/lang/Object;
.source "XMLReaderSAX2Factory.java"

# interfaces
.implements Lorg/jdom2/input/sax/XMLReaderJDOMFactory;


# instance fields
.field private final saxdriver:Ljava/lang/String;

.field private final validate:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "validate"    # Z

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;-><init>(ZLjava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3
    .param p1, "validate"    # Z
    .param p2, "saxdriver"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean p1, p0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->validate:Z

    .line 110
    iput-object p2, p0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->saxdriver:Ljava/lang/String;

    .line 111
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
    .line 116
    :try_start_0
    iget-object v2, p0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->saxdriver:Ljava/lang/String;

    if-nez v2, :cond_1c

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 119
    .local v1, "reader":Lorg/xml/sax/XMLReader;
    :goto_8
    const-string v2, "http://xml.org/sax/features/validation"

    iget-boolean v3, p0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->validate:Z

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 122
    const-string v2, "http://xml.org/sax/features/namespaces"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 124
    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 127
    return-object v1

    .line 116
    .end local v1    # "reader":Lorg/xml/sax/XMLReader;
    :cond_1c
    iget-object v2, p0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->saxdriver:Ljava/lang/String;

    invoke-static {v2}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;
    :try_end_21
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v1

    goto :goto_8

    .line 128
    :catch_23
    move-exception v0

    .line 129
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lorg/jdom2/JDOMException;

    const-string v3, "Unable to create SAX2 XMLReader."

    invoke-direct {v2, v3, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDriverClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->saxdriver:Ljava/lang/String;

    return-object v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->validate:Z

    return v0
.end method
