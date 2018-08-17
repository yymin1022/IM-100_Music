.class public Lorg/jdom2/input/SAXBuilder;
.super Ljava/lang/Object;
.source "SAXBuilder.java"

# interfaces
.implements Lorg/jdom2/input/sax/SAXEngine;


# static fields
.field private static final DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

.field private static final DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;


# instance fields
.field private engine:Lorg/jdom2/input/sax/SAXEngine;

.field private expand:Z

.field private final features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private jdomfac:Lorg/jdom2/JDOMFactory;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

.field private reuseParser:Z

.field private saxDTDHandler:Lorg/xml/sax/DTDHandler;

.field private saxEntityResolver:Lorg/xml/sax/EntityResolver;

.field private saxErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private saxXMLFilter:Lorg/xml/sax/XMLFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 146
    new-instance v0, Lorg/jdom2/input/sax/DefaultSAXHandlerFactory;

    invoke-direct {v0}, Lorg/jdom2/input/sax/DefaultSAXHandlerFactory;-><init>()V

    sput-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 150
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    sput-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, v0, v0, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "saxDriverClass"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "saxDriverClass"    # Ljava/lang/String;
    .param p2, "validate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 289
    new-instance v0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;

    invoke-direct {v0, p2, p1}, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, v0, v1, v1}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V
    .registers 3
    .param p1, "readersouce"    # Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V
    .registers 9
    .param p1, "xmlreaderfactory"    # Lorg/jdom2/input/sax/XMLReaderJDOMFactory;
    .param p2, "handlerfactory"    # Lorg/jdom2/input/sax/SAXHandlerFactory;
    .param p3, "jdomfactory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 164
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 169
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 184
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 187
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 190
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 193
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 196
    iput-boolean v3, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    .line 199
    iput-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    .line 202
    iput-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    .line 205
    iput-boolean v3, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    .line 208
    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 338
    if-nez p1, :cond_31

    sget-object p1, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .end local p1    # "xmlreaderfactory":Lorg/jdom2/input/sax/XMLReaderJDOMFactory;
    :cond_31
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 341
    if-nez p2, :cond_37

    sget-object p2, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .end local p2    # "handlerfactory":Lorg/jdom2/input/sax/SAXHandlerFactory;
    :cond_37
    iput-object p2, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 344
    if-nez p3, :cond_3d

    sget-object p3, Lorg/jdom2/input/SAXBuilder;->DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

    .end local p3    # "jdomfactory":Lorg/jdom2/JDOMFactory;
    :cond_3d
    iput-object p3, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    .line 347
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "validate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 244
    if-eqz p1, :cond_9

    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    :goto_5
    invoke-direct {p0, v0, v1, v1}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 248
    return-void

    .line 244
    :cond_9
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    goto :goto_5
.end method

.method private getEngine()Lorg/jdom2/input/sax/SAXEngine;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 900
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    if-eqz v0, :cond_7

    .line 901
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 905
    :goto_6
    return-object v0

    .line 904
    :cond_7
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->buildEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 905
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    goto :goto_6
.end method

.method private internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .param p4, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 1020
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_3} :catch_2a

    .line 1028
    return-void

    .line 1021
    :catch_4
    move-exception v0

    .line 1022
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " feature not supported for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1024
    .end local v0    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_2a
    move-exception v0

    .line 1025
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " feature not recognized for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 1039
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_3} :catch_2a

    .line 1047
    return-void

    .line 1040
    :catch_4
    move-exception v0

    .line 1041
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property not supported for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1043
    .end local v0    # "e":Lorg/xml/sax/SAXNotSupportedException;
    :catch_2a
    move-exception v0

    .line 1044
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property not recognized for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public build(Ljava/io/File;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1116
    :try_start_1
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/File;)Lorg/jdom2/Document;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 1118
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_f

    .line 1119
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_f
    return-object v0

    .line 1118
    :catchall_10
    move-exception v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_17

    .line 1119
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_17
    throw v0
.end method

.method public build(Ljava/io/InputStream;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1091
    :try_start_1
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/InputStream;)Lorg/jdom2/Document;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 1093
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_f

    .line 1094
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_f
    return-object v0

    .line 1093
    :catchall_10
    move-exception v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_17

    .line 1094
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_17
    throw v0
.end method

.method public build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom2/Document;
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1168
    :try_start_1
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom2/Document;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 1170
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_f

    .line 1171
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_f
    return-object v0

    .line 1170
    :catchall_10
    move-exception v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_17

    .line 1171
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_17
    throw v0
.end method

.method public build(Ljava/io/Reader;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "characterStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1196
    :try_start_1
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/Reader;)Lorg/jdom2/Document;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 1198
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_f

    .line 1199
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_f
    return-object v0

    .line 1198
    :catchall_10
    move-exception v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_17

    .line 1199
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_17
    throw v0
.end method

.method public build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom2/Document;
    .registers 6
    .param p1, "characterStream"    # Ljava/io/Reader;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1227
    :try_start_1
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom2/Document;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 1229
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_f

    .line 1230
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_f
    return-object v0

    .line 1229
    :catchall_10
    move-exception v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_17

    .line 1230
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_17
    throw v0
.end method

.method public build(Ljava/lang/String;)Lorg/jdom2/Document;
    .registers 9
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1251
    if-nez p1, :cond_b

    .line 1252
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Unable to build a URI from a null systemID."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1256
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/lang/String;)Lorg/jdom2/Document;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_1a
    .catchall {:try_start_b .. :try_end_12} :catchall_44

    move-result-object v4

    .line 1289
    iget-boolean v5, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v5, :cond_19

    .line 1290
    iput-object v6, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_19
    return-object v4

    .line 1257
    :catch_1a
    move-exception v1

    .line 1270
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1271
    .local v2, "len":I
    const/4 v0, 0x0

    .line 1272
    .local v0, "i":I
    :goto_20
    if-ge v0, v2, :cond_2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1273
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1275
    :cond_2f
    if-ge v0, v2, :cond_4c

    const/16 v4, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_4c

    .line 1277
    new-instance v3, Ljava/net/MalformedURLException;

    const-string v4, "SAXBuilder.build(String) expects the String to be a systemID, but in this instance it appears to be actual XML data."

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 1283
    .local v3, "mx":Ljava/net/MalformedURLException;
    invoke-virtual {v3, v1}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1284
    throw v3
    :try_end_44
    .catchall {:try_start_1b .. :try_end_44} :catchall_44

    .line 1289
    .end local v0    # "i":I
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "len":I
    .end local v3    # "mx":Ljava/net/MalformedURLException;
    :catchall_44
    move-exception v4

    iget-boolean v5, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v5, :cond_4b

    .line 1290
    iput-object v6, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_4b
    throw v4

    .line 1287
    .restart local v0    # "i":I
    .restart local v1    # "ioe":Ljava/io/IOException;
    .restart local v2    # "len":I
    :cond_4c
    :try_start_4c
    throw v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_44
.end method

.method public build(Ljava/net/URL;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1141
    :try_start_1
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/net/URL;)Lorg/jdom2/Document;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 1143
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_f

    .line 1144
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_f
    return-object v0

    .line 1143
    :catchall_10
    move-exception v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_17

    .line 1144
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_17
    throw v0
.end method

.method public build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;
    .registers 5
    .param p1, "in"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1065
    :try_start_1
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    move-result-object v0

    .line 1067
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_f

    .line 1068
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_f
    return-object v0

    .line 1067
    :catchall_10
    move-exception v0

    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v1, :cond_17

    .line 1068
    iput-object v2, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_17
    throw v0
.end method

.method public buildEngine()Lorg/jdom2/input/sax/SAXEngine;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v3, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    invoke-interface {v3, v4}, Lorg/jdom2/input/sax/SAXHandlerFactory;->createSAXHandler(Lorg/jdom2/JDOMFactory;)Lorg/jdom2/input/sax/SAXHandler;

    move-result-object v0

    .line 850
    .local v0, "contentHandler":Lorg/jdom2/input/sax/SAXHandler;
    iget-boolean v3, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    invoke-virtual {v0, v3}, Lorg/jdom2/input/sax/SAXHandler;->setExpandEntities(Z)V

    .line 851
    iget-boolean v3, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    invoke-virtual {v0, v3}, Lorg/jdom2/input/sax/SAXHandler;->setIgnoringElementContentWhitespace(Z)V

    .line 852
    iget-boolean v3, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    invoke-virtual {v0, v3}, Lorg/jdom2/input/sax/SAXHandler;->setIgnoringBoundaryWhitespace(Z)V

    .line 854
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 856
    .local v1, "parser":Lorg/xml/sax/XMLReader;
    invoke-virtual {p0, v1, v0}, Lorg/jdom2/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;)V

    .line 857
    iget-object v3, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v3}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->isValidating()Z

    move-result v2

    .line 859
    .local v2, "valid":Z
    new-instance v3, Lorg/jdom2/input/sax/SAXBuilderEngine;

    invoke-direct {v3, v1, v0, v2}, Lorg/jdom2/input/sax/SAXBuilderEngine;-><init>(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;Z)V

    return-object v3
.end method

.method protected configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;)V
    .registers 10
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "contentHandler"    # Lorg/jdom2/input/sax/SAXHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 933
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v4, :cond_c

    .line 934
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-interface {p1, v4}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 937
    :cond_c
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v4, :cond_5d

    .line 938
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    invoke-interface {p1, v4}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 943
    :goto_15
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v4, :cond_61

    .line 944
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p1, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 949
    :goto_1e
    const/4 v3, 0x0

    .line 952
    .local v3, "success":Z
    :try_start_1f
    const-string v4, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v4, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1f .. :try_end_24} :catch_bf
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1f .. :try_end_24} :catch_bc

    .line 954
    const/4 v3, 0x1

    .line 962
    :goto_25
    if-nez v3, :cond_2d

    .line 964
    :try_start_27
    const-string v4, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-interface {p1, v4, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2c
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_27 .. :try_end_2c} :catch_b9
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_27 .. :try_end_2c} :catch_b6

    .line 966
    const/4 v3, 0x1

    .line 975
    :cond_2d
    :goto_2d
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 976
    .local v1, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v6, v5}, Lorg/jdom2/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_37

    .line 940
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v3    # "success":Z
    :cond_5d
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    goto :goto_15

    .line 946
    :cond_61
    new-instance v4, Lorg/jdom2/input/sax/BuilderErrorHandler;

    invoke-direct {v4}, Lorg/jdom2/input/sax/BuilderErrorHandler;-><init>()V

    invoke-interface {p1, v4}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_1e

    .line 980
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "success":Z
    :cond_6a
    iget-object v4, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 981
    .local v2, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v6, v5}, Lorg/jdom2/input/SAXBuilder;->internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_74

    .line 992
    .end local v2    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_94
    :try_start_94
    const-string v4, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v4}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iget-boolean v5, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    if-eq v4, v5, :cond_a5

    .line 993
    const-string v4, "http://xml.org/sax/features/external-general-entities"

    iget-boolean v5, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    invoke-interface {p1, v4, v5}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_a5
    .catch Lorg/xml/sax/SAXException; {:try_start_94 .. :try_end_a5} :catch_b4

    .line 999
    :cond_a5
    :goto_a5
    iget-boolean v4, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    if-nez v4, :cond_af

    .line 1001
    :try_start_a9
    const-string v4, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {p1, v4, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ae
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_a9 .. :try_end_ae} :catch_b2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_a9 .. :try_end_ae} :catch_b0

    .line 1003
    const/4 v3, 0x1

    .line 1011
    :cond_af
    :goto_af
    return-void

    .line 1006
    :catch_b0
    move-exception v4

    goto :goto_af

    .line 1004
    :catch_b2
    move-exception v4

    goto :goto_af

    .line 995
    :catch_b4
    move-exception v4

    goto :goto_a5

    .line 969
    .end local v0    # "i$":Ljava/util/Iterator;
    :catch_b6
    move-exception v4

    goto/16 :goto_2d

    .line 967
    :catch_b9
    move-exception v4

    goto/16 :goto_2d

    .line 957
    :catch_bc
    move-exception v4

    goto/16 :goto_25

    .line 955
    :catch_bf
    move-exception v4

    goto/16 :goto_25
.end method

.method protected createParser()Lorg/xml/sax/XMLReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 871
    iget-object v2, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v2}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 874
    .local v0, "parser":Lorg/xml/sax/XMLReader;
    iget-object v2, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    if-eqz v2, :cond_20

    .line 876
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 877
    .local v1, "root":Lorg/xml/sax/XMLFilter;
    :goto_c
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v2

    instance-of v2, v2, Lorg/xml/sax/XMLFilter;

    if-eqz v2, :cond_1b

    .line 878
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .end local v1    # "root":Lorg/xml/sax/XMLFilter;
    check-cast v1, Lorg/xml/sax/XMLFilter;

    .restart local v1    # "root":Lorg/xml/sax/XMLFilter;
    goto :goto_c

    .line 880
    :cond_1b
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 883
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 886
    .end local v1    # "root":Lorg/xml/sax/XMLFilter;
    :cond_20
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDriverClass()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 361
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    instance-of v0, v0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;

    if-eqz v0, :cond_f

    .line 362
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    check-cast v0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->getDriverClassName()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getExpandEntities()Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->getJDOMFactory()Lorg/jdom2/JDOMFactory;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .registers 2

    .prologue
    .line 660
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 631
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    return v0
.end method

.method public getJDOMFactory()Lorg/jdom2/JDOMFactory;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public getReuseParser()Z
    .registers 2

    .prologue
    .line 732
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    return v0
.end method

.method public getSAXHandlerFactory()Lorg/jdom2/input/sax/SAXHandlerFactory;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    return-object v0
.end method

.method public getValidation()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->isValidating()Z

    move-result v0

    return v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public getXMLReaderFactory()Lorg/jdom2/input/sax/XMLReaderJDOMFactory;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    return-object v0
.end method

.method public isValidating()Z
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v0}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->isValidating()Z

    move-result v0

    return v0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 3
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 589
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 591
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 3
    .param p1, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 565
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 567
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 3
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 544
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 546
    return-void
.end method

.method public setExpandEntities(Z)V
    .registers 3
    .param p1, "expand"    # Z

    .prologue
    .line 720
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 722
    return-void
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .registers 2
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lorg/jdom2/input/SAXBuilder;->setJDOMFactory(Lorg/jdom2/JDOMFactory;)V

    .line 399
    return-void
.end method

.method public setFastReconfigure(Z)V
    .registers 2
    .param p1, "fastReconfigure"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 774
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 799
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    if-eqz p2, :cond_d

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 801
    return-void

    .line 799
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .registers 3
    .param p1, "ignoringBoundaryWhite"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 683
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .registers 3
    .param p1, "ignoringWhite"    # Z

    .prologue
    .line 646
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 648
    return-void
.end method

.method public setJDOMFactory(Lorg/jdom2/JDOMFactory;)V
    .registers 3
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 409
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 411
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 826
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 828
    return-void
.end method

.method public setReuseParser(Z)V
    .registers 3
    .param p1, "reuseParser"    # Z

    .prologue
    .line 749
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    .line 750
    if-nez p1, :cond_7

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 753
    :cond_7
    return-void
.end method

.method public setSAXHandlerFactory(Lorg/jdom2/input/sax/SAXHandlerFactory;)V
    .registers 3
    .param p1, "factory"    # Lorg/jdom2/input/sax/SAXHandlerFactory;

    .prologue
    .line 453
    if-nez p1, :cond_4

    sget-object p1, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .end local p1    # "factory":Lorg/jdom2/input/sax/SAXHandlerFactory;
    :cond_4
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 455
    return-void
.end method

.method public setValidation(Z)V
    .registers 3
    .param p1, "validate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    if-eqz p1, :cond_8

    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    :goto_4
    invoke-virtual {p0, v0}, Lorg/jdom2/input/SAXBuilder;->setXMLReaderFactory(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V

    .line 518
    return-void

    .line 515
    :cond_8
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    goto :goto_4
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .registers 3
    .param p1, "xmlFilter"    # Lorg/xml/sax/XMLFilter;

    .prologue
    .line 618
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 620
    return-void
.end method

.method public setXMLReaderFactory(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V
    .registers 3
    .param p1, "rfac"    # Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .prologue
    .line 430
    if-nez p1, :cond_4

    sget-object p1, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    .end local p1    # "rfac":Lorg/jdom2/input/sax/XMLReaderJDOMFactory;
    :cond_4
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 434
    return-void
.end method
