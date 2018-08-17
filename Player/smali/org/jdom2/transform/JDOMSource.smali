.class public Lorg/jdom2/transform/JDOMSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/transform/JDOMSource$DocumentReader;,
        Lorg/jdom2/transform/JDOMSource$JDOMInputSource;
    }
.end annotation


# static fields
.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://jdom.org/jdom2/transform/JDOMSource/feature"


# instance fields
.field private resolver:Lorg/xml/sax/EntityResolver;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    const/4 v0, 0x0

    .line 166
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 133
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 142
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 167
    invoke-virtual {p0, p1}, Lorg/jdom2/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Document;)V
    .registers 3
    .param p1, "source"    # Lorg/jdom2/Document;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/transform/JDOMSource;-><init>(Lorg/jdom2/Document;Lorg/xml/sax/EntityResolver;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Document;Lorg/xml/sax/EntityResolver;)V
    .registers 4
    .param p1, "source"    # Lorg/jdom2/Document;
    .param p2, "resolver"    # Lorg/xml/sax/EntityResolver;

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 133
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 142
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 200
    invoke-virtual {p0, p1}, Lorg/jdom2/transform/JDOMSource;->setDocument(Lorg/jdom2/Document;)V

    .line 201
    iput-object p2, p0, Lorg/jdom2/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 202
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lorg/jdom2/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 203
    invoke-virtual {p1}, Lorg/jdom2/Document;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    .line 205
    :cond_1c
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Element;)V
    .registers 4
    .param p1, "source"    # Lorg/jdom2/Element;

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 133
    iput-object v1, p0, Lorg/jdom2/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 142
    iput-object v1, p0, Lorg/jdom2/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p0, v0}, Lorg/jdom2/transform/JDOMSource;->setNodes(Ljava/util/List;)V

    .line 184
    return-void
.end method

.method private buildDocumentReader()Lorg/xml/sax/XMLReader;
    .registers 3

    .prologue
    .line 353
    new-instance v0, Lorg/jdom2/transform/JDOMSource$DocumentReader;

    invoke-direct {v0}, Lorg/jdom2/transform/JDOMSource$DocumentReader;-><init>()V

    .line 354
    .local v0, "reader":Lorg/jdom2/transform/JDOMSource$DocumentReader;
    iget-object v1, p0, Lorg/jdom2/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    if-eqz v1, :cond_e

    .line 355
    iget-object v1, p0, Lorg/jdom2/transform/JDOMSource;->resolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v0, v1}, Lorg/jdom2/transform/JDOMSource$DocumentReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 356
    :cond_e
    return-object v0
.end method


# virtual methods
.method public getDocument()Lorg/jdom2/Document;
    .registers 4

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/jdom2/transform/JDOMSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v2

    check-cast v2, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v2}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 232
    .local v1, "src":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 234
    .local v0, "doc":Lorg/jdom2/Document;
    instance-of v2, v1, Lorg/jdom2/Document;

    if-eqz v2, :cond_12

    move-object v0, v1

    .line 235
    check-cast v0, Lorg/jdom2/Document;

    .line 237
    :cond_12
    return-object v0
.end method

.method public getNodes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/jdom2/transform/JDOMSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    check-cast v0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v0}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->getListSource()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_a

    .line 339
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 341
    :cond_a
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setDocument(Lorg/jdom2/Document;)V
    .registers 3
    .param p1, "source"    # Lorg/jdom2/Document;

    .prologue
    .line 219
    new-instance v0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;-><init>(Lorg/jdom2/Document;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 220
    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .registers 3
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNodes(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    invoke-direct {v0, p1}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;-><init>(Ljava/util/List;)V

    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 253
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .registers 4
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 310
    instance-of v1, p1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_23

    move-object v0, p1

    .line 312
    check-cast v0, Lorg/xml/sax/XMLFilter;

    .line 313
    .local v0, "filter":Lorg/xml/sax/XMLFilter;
    :goto_7
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_19

    .line 314
    invoke-interface {v0}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/XMLFilter;

    move-object v0, v1

    check-cast v0, Lorg/xml/sax/XMLFilter;

    goto :goto_7

    .line 316
    :cond_19
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMSource;->buildDocumentReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 319
    iput-object p1, p0, Lorg/jdom2/transform/JDOMSource;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 324
    return-void

    .line 322
    .end local v0    # "filter":Lorg/xml/sax/XMLFilter;
    :cond_23
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method
