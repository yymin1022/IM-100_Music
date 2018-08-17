.class Lorg/jdom2/transform/JDOMSource$DocumentReader;
.super Lorg/jdom2/output/SAXOutputter;
.source "JDOMSource.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentReader"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 511
    invoke-direct {p0}, Lorg/jdom2/output/SAXOutputter;-><init>()V

    .line 512
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .registers 4
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 532
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Only JDOM Documents are supported as input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .registers 7
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 554
    instance-of v3, p1, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    if-eqz v3, :cond_27

    .line 556
    :try_start_4
    move-object v0, p1

    check-cast v0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->getDocumentSource()Lorg/jdom2/Document;

    move-result-object v1

    .line 557
    .local v1, "docsource":Lorg/jdom2/Document;
    if-eqz v1, :cond_12

    .line 558
    invoke-virtual {p0, v1}, Lorg/jdom2/transform/JDOMSource$DocumentReader;->output(Lorg/jdom2/Document;)V

    .line 572
    .end local p1    # "input":Lorg/xml/sax/InputSource;
    :goto_11
    return-void

    .line 561
    .restart local p1    # "input":Lorg/xml/sax/InputSource;
    :cond_12
    check-cast p1, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    .end local p1    # "input":Lorg/xml/sax/InputSource;
    invoke-virtual {p1}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->getListSource()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/jdom2/transform/JDOMSource$DocumentReader;->output(Ljava/util/List;)V
    :try_end_1b
    .catch Lorg/jdom2/JDOMException; {:try_start_4 .. :try_end_1b} :catch_1c

    goto :goto_11

    .line 564
    .end local v1    # "docsource":Lorg/jdom2/Document;
    :catch_1c
    move-exception v2

    .line 565
    .local v2, "e":Lorg/jdom2/JDOMException;
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-virtual {v2}, Lorg/jdom2/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 569
    .end local v2    # "e":Lorg/jdom2/JDOMException;
    .restart local p1    # "input":Lorg/xml/sax/InputSource;
    :cond_27
    new-instance v3, Lorg/xml/sax/SAXNotSupportedException;

    const-string v4, "Only JDOM Documents are supported as input"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
