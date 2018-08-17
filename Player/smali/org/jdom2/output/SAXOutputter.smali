.class public Lorg/jdom2/output/SAXOutputter;
.super Ljava/lang/Object;
.source "SAXOutputter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/SAXOutputter$1;,
        Lorg/jdom2/output/SAXOutputter$DefaultSAXOutputProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULT_PROCESSOR:Lorg/jdom2/output/support/SAXOutputProcessor;


# instance fields
.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private declHandler:Lorg/xml/sax/ext/DeclHandler;

.field private declareNamespaces:Z

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private format:Lorg/jdom2/output/Format;

.field private lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private processor:Lorg/jdom2/output/support/SAXOutputProcessor;

.field private reportDtdEvents:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 116
    new-instance v0, Lorg/jdom2/output/SAXOutputter$DefaultSAXOutputProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/SAXOutputter$DefaultSAXOutputProcessor;-><init>(Lorg/jdom2/output/SAXOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/SAXOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/SAXOutputProcessor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->declareNamespaces:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->reportDtdEvents:Z

    .line 154
    sget-object v0, Lorg/jdom2/output/SAXOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/SAXOutputProcessor;

    iput-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    .line 159
    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    .line 167
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/SAXOutputProcessor;Lorg/jdom2/output/Format;Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 9
    .param p1, "processor"    # Lorg/jdom2/output/support/SAXOutputProcessor;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p4, "errorHandler"    # Lorg/xml/sax/ErrorHandler;
    .param p5, "dtdHandler"    # Lorg/xml/sax/DTDHandler;
    .param p6, "entityResolver"    # Lorg/xml/sax/EntityResolver;
    .param p7, "lexicalHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->declareNamespaces:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->reportDtdEvents:Z

    .line 154
    sget-object v0, Lorg/jdom2/output/SAXOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/SAXOutputProcessor;

    iput-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    .line 159
    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    .line 250
    if-nez p1, :cond_17

    sget-object p1, Lorg/jdom2/output/SAXOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/SAXOutputProcessor;

    .end local p1    # "processor":Lorg/jdom2/output/support/SAXOutputProcessor;
    :cond_17
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    .line 251
    if-nez p2, :cond_1f

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object p2

    .end local p2    # "format":Lorg/jdom2/output/Format;
    :cond_1f
    iput-object p2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    .line 252
    iput-object p3, p0, Lorg/jdom2/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 253
    iput-object p4, p0, Lorg/jdom2/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 254
    iput-object p5, p0, Lorg/jdom2/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 255
    iput-object p6, p0, Lorg/jdom2/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 256
    iput-object p7, p0, Lorg/jdom2/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .registers 8
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    const/4 v2, 0x0

    .line 177
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/jdom2/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;)V
    .registers 11
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "errorHandler"    # Lorg/xml/sax/ErrorHandler;
    .param p3, "dtdHandler"    # Lorg/xml/sax/DTDHandler;
    .param p4, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 197
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jdom2/output/SAXOutputter;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 7
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;
    .param p2, "errorHandler"    # Lorg/xml/sax/ErrorHandler;
    .param p3, "dtdHandler"    # Lorg/xml/sax/DTDHandler;
    .param p4, "entityResolver"    # Lorg/xml/sax/EntityResolver;
    .param p5, "lexicalHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->declareNamespaces:Z

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->reportDtdEvents:Z

    .line 154
    sget-object v0, Lorg/jdom2/output/SAXOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/SAXOutputProcessor;

    iput-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    .line 159
    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    .line 219
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 220
    iput-object p2, p0, Lorg/jdom2/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 221
    iput-object p3, p0, Lorg/jdom2/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 222
    iput-object p4, p0, Lorg/jdom2/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 223
    iput-object p5, p0, Lorg/jdom2/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 224
    return-void
.end method

.method private final buildTarget(Lorg/jdom2/Document;)Lorg/jdom2/output/support/SAXTarget;
    .registers 14
    .param p1, "doc"    # Lorg/jdom2/Document;

    .prologue
    .line 629
    const/4 v9, 0x0

    .line 630
    .local v9, "publicID":Ljava/lang/String;
    const/4 v10, 0x0

    .line 631
    .local v10, "systemID":Ljava/lang/String;
    if-eqz p1, :cond_12

    .line 632
    invoke-virtual {p1}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v11

    .line 633
    .local v11, "dt":Lorg/jdom2/DocType;
    if-eqz v11, :cond_12

    .line 634
    invoke-virtual {v11}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v9

    .line 635
    invoke-virtual {v11}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v10

    .line 638
    .end local v11    # "dt":Lorg/jdom2/DocType;
    :cond_12
    new-instance v0, Lorg/jdom2/output/support/SAXTarget;

    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    iget-object v3, p0, Lorg/jdom2/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    iget-object v4, p0, Lorg/jdom2/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    iget-object v5, p0, Lorg/jdom2/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object v6, p0, Lorg/jdom2/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    iget-boolean v7, p0, Lorg/jdom2/output/SAXOutputter;->declareNamespaces:Z

    iget-boolean v8, p0, Lorg/jdom2/output/SAXOutputter;->reportDtdEvents:Z

    invoke-direct/range {v0 .. v10}, Lorg/jdom2/output/support/SAXTarget;-><init>(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/DTDHandler;Lorg/xml/sax/EntityResolver;Lorg/xml/sax/ext/LexicalHandler;Lorg/xml/sax/ext/DeclHandler;ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleError(Lorg/jdom2/JDOMException;)V
    .registers 7
    .param p1, "exception"    # Lorg/jdom2/JDOMException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 783
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_30

    .line 785
    :try_start_4
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Lorg/jdom2/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_13} :catch_14

    .line 798
    return-void

    .line 788
    :catch_14
    move-exception v0

    .line 789
    .local v0, "se":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lorg/jdom2/JDOMException;

    if-eqz v1, :cond_26

    .line 790
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Lorg/jdom2/JDOMException;

    check-cast v1, Lorg/jdom2/JDOMException;

    throw v1

    .line 792
    :cond_26
    new-instance v1, Lorg/jdom2/JDOMException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 796
    .end local v0    # "se":Lorg/xml/sax/SAXException;
    :cond_30
    throw p1
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 502
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 504
    iget-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->declareNamespaces:Z

    .line 512
    :goto_a
    return v0

    .line 506
    :cond_b
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 508
    const/4 v0, 0x1

    goto :goto_a

    .line 510
    :cond_15
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 512
    iget-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->reportDtdEvents:Z

    goto :goto_a

    .line 515
    :cond_20
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .registers 2

    .prologue
    .line 615
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-object v0
.end method

.method public getLocator()Lorg/jdom2/output/JDOMLocator;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 811
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 579
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 581
    :cond_10
    invoke-virtual {p0}, Lorg/jdom2/output/SAXOutputter;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    .line 585
    :goto_14
    return-object v0

    .line 583
    :cond_15
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 585
    :cond_25
    invoke-virtual {p0}, Lorg/jdom2/output/SAXOutputter;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v0

    goto :goto_14

    .line 587
    :cond_2a
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReportDTDEvents()Z
    .registers 2

    .prologue
    .line 409
    iget-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->reportDtdEvents:Z

    return v0
.end method

.method public getReportNamespaceDeclarations()Z
    .registers 2

    .prologue
    .line 387
    iget-boolean v0, p0, Lorg/jdom2/output/SAXOutputter;->declareNamespaces:Z

    return v0
.end method

.method public getSAXOutputProcessor()Lorg/jdom2/output/support/SAXOutputProcessor;
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    return-object v0
.end method

.method public output(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 674
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jdom2/output/SAXOutputter;->buildTarget(Lorg/jdom2/Document;)Lorg/jdom2/output/support/SAXTarget;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->processAsDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Ljava/util/List;)V

    .line 675
    return-void
.end method

.method public output(Lorg/jdom2/Document;)V
    .registers 5
    .param p1, "document"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    invoke-direct {p0, p1}, Lorg/jdom2/output/SAXOutputter;->buildTarget(Lorg/jdom2/Document;)Lorg/jdom2/output/support/SAXTarget;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V

    .line 654
    return-void
.end method

.method public output(Lorg/jdom2/Element;)V
    .registers 5
    .param p1, "node"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jdom2/output/SAXOutputter;->buildTarget(Lorg/jdom2/Document;)Lorg/jdom2/output/support/SAXTarget;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->processAsDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V

    .line 688
    return-void
.end method

.method public outputFragment(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    if-nez p1, :cond_3

    .line 714
    :goto_2
    return-void

    .line 713
    :cond_3
    iget-object v0, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jdom2/output/SAXOutputter;->buildTarget(Lorg/jdom2/Document;)Lorg/jdom2/output/support/SAXTarget;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Ljava/util/List;)V

    goto :goto_2
.end method

.method public outputFragment(Lorg/jdom2/Content;)V
    .registers 6
    .param p1, "node"    # Lorg/jdom2/Content;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 735
    if-nez p1, :cond_3

    .line 764
    .end local p1    # "node":Lorg/jdom2/Content;
    :goto_2
    return-void

    .line 739
    .restart local p1    # "node":Lorg/jdom2/Content;
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jdom2/output/SAXOutputter;->buildTarget(Lorg/jdom2/Document;)Lorg/jdom2/output/support/SAXTarget;

    move-result-object v0

    .line 741
    .local v0, "out":Lorg/jdom2/output/support/SAXTarget;
    sget-object v1, Lorg/jdom2/output/SAXOutputter$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {p1}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_70

    .line 761
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid element content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lorg/jdom2/output/SAXOutputter;->handleError(Lorg/jdom2/JDOMException;)V

    goto :goto_2

    .line 743
    :pswitch_33
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    check-cast p1, Lorg/jdom2/CDATA;

    .end local p1    # "node":Lorg/jdom2/Content;
    invoke-interface {v1, v0, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V

    goto :goto_2

    .line 746
    .restart local p1    # "node":Lorg/jdom2/Content;
    :pswitch_3d
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    check-cast p1, Lorg/jdom2/Comment;

    .end local p1    # "node":Lorg/jdom2/Content;
    invoke-interface {v1, v0, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V

    goto :goto_2

    .line 749
    .restart local p1    # "node":Lorg/jdom2/Content;
    :pswitch_47
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    check-cast p1, Lorg/jdom2/Element;

    .end local p1    # "node":Lorg/jdom2/Content;
    invoke-interface {v1, v0, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V

    goto :goto_2

    .line 752
    .restart local p1    # "node":Lorg/jdom2/Content;
    :pswitch_51
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    check-cast p1, Lorg/jdom2/EntityRef;

    .end local p1    # "node":Lorg/jdom2/Content;
    invoke-interface {v1, v0, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V

    goto :goto_2

    .line 755
    .restart local p1    # "node":Lorg/jdom2/Content;
    :pswitch_5b
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    check-cast p1, Lorg/jdom2/ProcessingInstruction;

    .end local p1    # "node":Lorg/jdom2/Content;
    invoke-interface {v1, v0, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_2

    .line 758
    .restart local p1    # "node":Lorg/jdom2/Content;
    :pswitch_65
    iget-object v1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    iget-object v2, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    check-cast p1, Lorg/jdom2/Text;

    .end local p1    # "node":Lorg/jdom2/Content;
    invoke-interface {v1, v0, v2, p1}, Lorg/jdom2/output/support/SAXOutputProcessor;->process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V

    goto :goto_2

    .line 741
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_33
        :pswitch_3d
        :pswitch_47
        :pswitch_51
        :pswitch_5b
        :pswitch_65
    .end packed-switch
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "contentHandler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 267
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .registers 2
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    .prologue
    .line 306
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 307
    return-void
.end method

.method public setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .registers 2
    .param p1, "declHandler"    # Lorg/xml/sax/ext/DeclHandler;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->declHandler:Lorg/xml/sax/ext/DeclHandler;

    .line 367
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .registers 2
    .param p1, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    .line 326
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 327
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .registers 2
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .prologue
    .line 286
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 287
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 464
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 466
    invoke-virtual {p0, p2}, Lorg/jdom2/output/SAXOutputter;->setReportNamespaceDeclarations(Z)V

    .line 484
    :cond_b
    :goto_b
    return-void

    .line 468
    :cond_c
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 469
    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    .line 471
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_1d
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 477
    invoke-virtual {p0, p2}, Lorg/jdom2/output/SAXOutputter;->setReportDTDEvents(Z)V

    goto :goto_b

    .line 480
    :cond_29
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .registers 2
    .param p1, "format"    # Lorg/jdom2/output/Format;

    .prologue
    .line 625
    if-nez p1, :cond_6

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object p1

    .end local p1    # "format":Lorg/jdom2/output/Format;
    :cond_6
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->format:Lorg/jdom2/output/Format;

    .line 626
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .param p1, "lexicalHandler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 346
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 347
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 551
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 553
    :cond_10
    check-cast p2, Lorg/xml/sax/ext/LexicalHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jdom2/output/SAXOutputter;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 562
    :goto_15
    return-void

    .line 555
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_16
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 557
    :cond_26
    check-cast p2, Lorg/xml/sax/ext/DeclHandler;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lorg/jdom2/output/SAXOutputter;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V

    goto :goto_15

    .line 559
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2c
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReportDTDEvents(Z)V
    .registers 2
    .param p1, "reportDtdEvents"    # Z

    .prologue
    .line 421
    iput-boolean p1, p0, Lorg/jdom2/output/SAXOutputter;->reportDtdEvents:Z

    .line 422
    return-void
.end method

.method public setReportNamespaceDeclarations(Z)V
    .registers 2
    .param p1, "declareNamespaces"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lorg/jdom2/output/SAXOutputter;->declareNamespaces:Z

    .line 401
    return-void
.end method

.method public setSAXOutputProcessor(Lorg/jdom2/output/support/SAXOutputProcessor;)V
    .registers 2
    .param p1, "processor"    # Lorg/jdom2/output/support/SAXOutputProcessor;

    .prologue
    .line 606
    if-nez p1, :cond_4

    sget-object p1, Lorg/jdom2/output/SAXOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/SAXOutputProcessor;

    .end local p1    # "processor":Lorg/jdom2/output/support/SAXOutputProcessor;
    :cond_4
    iput-object p1, p0, Lorg/jdom2/output/SAXOutputter;->processor:Lorg/jdom2/output/support/SAXOutputProcessor;

    .line 607
    return-void
.end method
