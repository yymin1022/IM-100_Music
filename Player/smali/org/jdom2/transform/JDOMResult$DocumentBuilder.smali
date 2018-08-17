.class Lorg/jdom2/transform/JDOMResult$DocumentBuilder;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "JDOMResult.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/transform/JDOMResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocumentBuilder"
.end annotation


# instance fields
.field private saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

.field private startDocumentReceived:Z

.field final synthetic this$0:Lorg/jdom2/transform/JDOMResult;


# direct methods
.method public constructor <init>(Lorg/jdom2/transform/JDOMResult;)V
    .registers 3

    .prologue
    .line 435
    iput-object p1, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom2/transform/JDOMResult;

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    .line 435
    return-void
.end method

.method private ensureInitialization()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 464
    iget-boolean v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    if-nez v0, :cond_7

    .line 465
    invoke-virtual {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->startDocument()V

    .line 467
    :cond_7
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 551
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->characters([CII)V

    .line 552
    return-void
.end method

.method public comment([CII)V
    .registers 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 687
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 688
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->comment([CII)V

    .line 689
    return-void
.end method

.method public endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->endCDATA()V

    .line 672
    return-void
.end method

.method public endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->endDTD()V

    .line 620
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->endEntity(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public getResult()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 448
    .local v0, "mresult":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    iget-object v1, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    if-eqz v1, :cond_11

    .line 450
    iget-object v1, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v1}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->getResult()Ljava/util/List;

    move-result-object v0

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    .line 456
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    .line 458
    :cond_11
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 4
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 561
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 562
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/XMLFilterImpl;->ignorableWhitespace([CII)V

    .line 563
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 573
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 582
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 583
    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->skippedEntity(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method public startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 659
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 660
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->startCDATA()V

    .line 661
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 608
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    return-void
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->startDocumentReceived:Z

    .line 488
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom2/transform/JDOMResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/jdom2/transform/JDOMResult;->setResult(Ljava/util/List;)V

    .line 494
    new-instance v0, Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    iget-object v1, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->this$0:Lorg/jdom2/transform/JDOMResult;

    invoke-virtual {v1}, Lorg/jdom2/transform/JDOMResult;->getFactory()Lorg/jdom2/JDOMFactory;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;-><init>(Lorg/jdom2/JDOMFactory;)V

    iput-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    .line 495
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-super {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 498
    invoke-super {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->startDocument()V

    .line 499
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .param p1, "nsURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 529
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/XMLFilterImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 530
    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 634
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 635
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->saxHandler:Lorg/jdom2/transform/JDOMResult$FragmentHandler;

    invoke-virtual {v0, p1}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->startEntity(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->ensureInitialization()V

    .line 540
    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/XMLFilterImpl;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method
