.class Lorg/jdom2/transform/JDOMSource$JDOMInputSource;
.super Lorg/xml/sax/InputSource;
.source "JDOMSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JDOMInputSource"
.end annotation


# instance fields
.field private docsource:Lorg/jdom2/Document;

.field private listsource:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field


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
    .local p1, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    const/4 v0, 0x0

    .line 397
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 377
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    .line 382
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    .line 398
    iput-object p1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    .line 399
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/Document;)V
    .registers 3
    .param p1, "document"    # Lorg/jdom2/Document;

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-direct {p0}, Lorg/xml/sax/InputSource;-><init>()V

    .line 377
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    .line 382
    iput-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    .line 389
    iput-object p1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    .line 390
    return-void
.end method


# virtual methods
.method public getCharacterStream()Ljava/io/Reader;
    .registers 4

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 450
    .local v0, "reader":Ljava/io/Reader;
    iget-object v1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    if-eqz v1, :cond_16

    .line 453
    new-instance v0, Ljava/io/StringReader;

    .end local v0    # "reader":Ljava/io/Reader;
    new-instance v1, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    iget-object v2, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    invoke-virtual {v1, v2}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/Document;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 461
    .restart local v0    # "reader":Ljava/io/Reader;
    :cond_15
    :goto_15
    return-object v0

    .line 456
    :cond_16
    iget-object v1, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    if-eqz v1, :cond_15

    .line 457
    new-instance v0, Ljava/io/StringReader;

    .end local v0    # "reader":Ljava/io/Reader;
    new-instance v1, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    iget-object v2, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/jdom2/output/XMLOutputter;->outputString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .restart local v0    # "reader":Ljava/io/Reader;
    goto :goto_15
.end method

.method public getDocumentSource()Lorg/jdom2/Document;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    return-object v0
.end method

.method public getListSource()Ljava/util/List;
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
    .line 488
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->listsource:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->docsource:Lorg/jdom2/Document;

    goto :goto_6
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "byteStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .registers 3
    .param p1, "characterStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
