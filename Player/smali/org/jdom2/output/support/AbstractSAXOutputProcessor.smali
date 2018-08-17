.class public Lorg/jdom2/output/support/AbstractSAXOutputProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractSAXOutputProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/SAXOutputProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractSAXOutputProcessor$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 370
    return-void
.end method

.method private createDTDParser(Lorg/jdom2/output/support/SAXTarget;)Lorg/xml/sax/XMLReader;
    .registers 6
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 790
    const/4 v1, 0x0

    .line 794
    .local v1, "parser":Lorg/xml/sax/XMLReader;
    :try_start_1
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->createParser()Lorg/xml/sax/XMLReader;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_46

    move-result-object v1

    .line 800
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 801
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 803
    :cond_12
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 804
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 806
    :cond_1f
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 808
    :try_start_25
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Lorg/xml/sax/SAXException; {:try_start_25 .. :try_end_2e} :catch_4f

    .line 819
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 821
    :try_start_34
    const-string v2, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3d
    .catch Lorg/xml/sax/SAXException; {:try_start_34 .. :try_end_3d} :catch_5c

    .line 834
    :cond_3d
    :goto_3d
    new-instance v2, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v2}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 836
    return-object v1

    .line 795
    :catch_46
    move-exception v0

    .line 796
    .local v0, "ex1":Ljava/lang/Exception;
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Error in SAX parser allocation"

    invoke-direct {v2, v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 810
    .end local v0    # "ex1":Ljava/lang/Exception;
    :catch_4f
    move-exception v0

    .line 812
    .local v0, "ex1":Lorg/xml/sax/SAXException;
    :try_start_50
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_59
    .catch Lorg/xml/sax/SAXException; {:try_start_50 .. :try_end_59} :catch_5a

    goto :goto_2e

    .line 814
    :catch_5a
    move-exception v2

    goto :goto_2e

    .line 823
    .end local v0    # "ex1":Lorg/xml/sax/SAXException;
    :catch_5c
    move-exception v0

    .line 825
    .restart local v0    # "ex1":Lorg/xml/sax/SAXException;
    :try_start_5d
    const-string v2, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_66
    .catch Lorg/xml/sax/SAXException; {:try_start_5d .. :try_end_66} :catch_67

    goto :goto_3d

    .line 827
    :catch_67
    move-exception v2

    goto :goto_3d
.end method

.method private static getAttributeTypeName(Lorg/jdom2/AttributeType;)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # Lorg/jdom2/AttributeType;

    .prologue
    .line 719
    sget-object v0, Lorg/jdom2/output/support/AbstractSAXOutputProcessor$1;->$SwitchMap$org$jdom2$AttributeType:[I

    invoke-virtual {p0}, Lorg/jdom2/AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 723
    invoke-virtual {p0}, Lorg/jdom2/AttributeType;->name()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    .line 721
    :pswitch_10
    const-string v0, "CDATA"

    goto :goto_f

    .line 719
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method private static locate(Lorg/jdom2/output/support/SAXTarget;)V
    .registers 3
    .param p0, "out"    # Lorg/jdom2/output/support/SAXTarget;

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected createParser()Lorg/xml/sax/XMLReader;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 737
    const/4 v7, 0x0

    .line 744
    .local v7, "parser":Lorg/xml/sax/XMLReader;
    :try_start_1
    const-string v9, "javax.xml.parsers.SAXParserFactory"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 748
    .local v2, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "newInstance"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 749
    .local v5, "newParserInstance":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 752
    .local v1, "factory":Ljava/lang/Object;
    const-string v9, "newSAXParser"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v2, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 753
    .local v6, "newSAXParser":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 756
    .local v4, "jaxpParser":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 757
    .local v8, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v9, "getXMLReader"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 758
    .local v3, "getXMLReader":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lorg/xml/sax/XMLReader;

    move-object v7, v0
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_40} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_40} :catch_4d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_40} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_40} :catch_49

    .line 771
    .end local v1    # "factory":Ljava/lang/Object;
    .end local v2    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getXMLReader":Ljava/lang/reflect/Method;
    .end local v4    # "jaxpParser":Ljava/lang/Object;
    .end local v5    # "newParserInstance":Ljava/lang/reflect/Method;
    .end local v6    # "newSAXParser":Ljava/lang/reflect/Method;
    .end local v8    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :goto_40
    if-nez v7, :cond_48

    .line 772
    const-string v9, "org.apache.xerces.parsers.SAXParser"

    invoke-static {v9}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v7

    .line 775
    :cond_48
    return-object v7

    .line 765
    :catch_49
    move-exception v9

    goto :goto_40

    .line 763
    :catch_4b
    move-exception v9

    goto :goto_40

    .line 761
    :catch_4d
    move-exception v9

    goto :goto_40

    .line 759
    :catch_4f
    move-exception v9

    goto :goto_40
.end method

.method protected printCDATA(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V
    .registers 9
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 493
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    .line 494
    .local v1, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 495
    .local v0, "chars":[C
    if-eqz v1, :cond_1e

    .line 496
    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 497
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 498
    invoke-interface {v1}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 502
    :goto_1d
    return-void

    .line 500
    :cond_1e
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_1d
.end method

.method protected printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    .registers 8
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 455
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 456
    .local v0, "c":[C
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 458
    .end local v0    # "c":[C
    :cond_17
    return-void
.end method

.method protected printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    .registers 9
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 667
    :goto_0
    :pswitch_0
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 668
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 669
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_28

    .line 671
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "text":Ljava/lang/String;
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 673
    new-instance v2, Lorg/jdom2/CDATA;

    invoke-direct {v2, v1}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printCDATA(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 675
    :cond_1f
    new-instance v2, Lorg/jdom2/Text;

    invoke-direct {v2, v1}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 678
    .end local v1    # "text":Ljava/lang/String;
    :cond_28
    sget-object v2, Lorg/jdom2/output/support/AbstractSAXOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5e

    goto :goto_0

    .line 683
    :pswitch_38
    check-cast v0, Lorg/jdom2/Comment;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_0

    .line 680
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_3e
    check-cast v0, Lorg/jdom2/CDATA;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printCDATA(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 689
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_44
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 692
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_4a
    check-cast v0, Lorg/jdom2/EntityRef;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    goto :goto_0

    .line 695
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_50
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_0

    .line 699
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_56
    check-cast v0, Lorg/jdom2/Text;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 704
    :cond_5c
    return-void

    .line 678
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_0
        :pswitch_44
        :pswitch_50
        :pswitch_3e
        :pswitch_4a
        :pswitch_56
    .end packed-switch
.end method

.method protected printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    .registers 11
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v2

    .line 398
    .local v2, "dtdHandler":Lorg/xml/sax/DTDHandler;
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v0

    .line 399
    .local v0, "declHandler":Lorg/xml/sax/ext/DeclHandler;
    if-eqz p3, :cond_28

    if-nez v2, :cond_e

    if-eqz v0, :cond_28

    .line 403
    :cond_e
    new-instance v4, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v4}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    invoke-virtual {v4, p3}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/DocType;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "dtdDoc":Ljava/lang/String;
    :try_start_17
    invoke-direct {p0, p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->createDTDParser(Lorg/jdom2/output/support/SAXTarget;)Lorg/xml/sax/XMLReader;

    move-result-object v4

    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_28
    .catch Lorg/xml/sax/SAXParseException; {:try_start_17 .. :try_end_28} :catch_32
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_28} :catch_29

    .line 419
    .end local v1    # "dtdDoc":Ljava/lang/String;
    :cond_28
    :goto_28
    return-void

    .line 414
    .restart local v1    # "dtdDoc":Ljava/lang/String;
    :catch_29
    move-exception v3

    .line 415
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "DTD parsing error"

    invoke-direct {v4, v5, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 412
    .end local v3    # "e":Ljava/io/IOException;
    :catch_32
    move-exception v4

    goto :goto_28
.end method

.method protected printDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    .registers 10
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "document"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 334
    if-nez p4, :cond_3

    .line 379
    :goto_2
    return-void

    .line 339
    :cond_3
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 342
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->isReportDTDEvents()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 343
    invoke-virtual {p4}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 349
    :cond_17
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v2

    .line 351
    .local v2, "sz":I
    if-lez v2, :cond_4f

    .line 352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v2, :cond_4f

    .line 353
    invoke-virtual {p4, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v0

    .line 354
    .local v0, "c":Lorg/jdom2/Content;
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    .line 355
    sget-object v3, Lorg/jdom2/output/support/AbstractSAXOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_58

    .line 352
    .end local v0    # "c":Lorg/jdom2/Content;
    :goto_3a
    :pswitch_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 357
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_3d
    check-cast v0, Lorg/jdom2/Comment;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    goto :goto_3a

    .line 364
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_43
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    goto :goto_3a

    .line 367
    .restart local v0    # "c":Lorg/jdom2/Content;
    :pswitch_49
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    goto :goto_3a

    .line 377
    .end local v1    # "i":I
    :cond_4f
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_2

    .line 355
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_3a
        :pswitch_43
        :pswitch_49
    .end packed-switch
.end method

.method protected printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    .registers 27
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v12

    .line 544
    .local v12, "ch":Lorg/xml/sax/ContentHandler;
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->getNode()Ljava/lang/Object;

    move-result-object v17

    .line 545
    .local v17, "origloc":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 549
    :try_start_f
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    .line 551
    new-instance v5, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v5}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 554
    .local v5, "atts":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_93

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/jdom2/Namespace;

    .line 555
    .local v16, "ns":Lorg/jdom2/Namespace;
    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v6, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->isDeclareNamespaces()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 558
    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v18

    .line 559
    .local v18, "prefix":Ljava/lang/String;
    const-string v6, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 560
    const-string v6, ""

    const-string v7, ""

    const-string v8, "xmlns"

    const-string v9, "CDATA"

    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_f .. :try_end_5f} :catchall_60

    goto :goto_25

    .line 642
    .end local v5    # "atts":Lorg/xml/sax/helpers/AttributesImpl;
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "ns":Lorg/jdom2/Namespace;
    .end local v18    # "prefix":Ljava/lang/String;
    :catchall_60
    move-exception v6

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 643
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    throw v6

    .line 562
    .restart local v5    # "atts":Lorg/xml/sax/helpers/AttributesImpl;
    .restart local v14    # "i$":Ljava/util/Iterator;
    .restart local v16    # "ns":Lorg/jdom2/Namespace;
    .restart local v18    # "prefix":Ljava/lang/String;
    :cond_6e
    :try_start_6e
    const-string v6, ""

    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "CDATA"

    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 569
    .end local v16    # "ns":Lorg/jdom2/Namespace;
    .end local v18    # "prefix":Ljava/lang/String;
    :cond_93
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 570
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a1
    :goto_a1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jdom2/Attribute;

    .line 571
    .local v11, "a":Lorg/jdom2/Attribute;
    invoke-virtual {v11}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v6

    if-nez v6, :cond_b9

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v6

    if-nez v6, :cond_a1

    .line 574
    :cond_b9
    invoke-virtual {v11}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lorg/jdom2/Attribute;->getAttributeType()Lorg/jdom2/AttributeType;

    move-result-object v9

    invoke-static {v9}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->getAttributeTypeName(Lorg/jdom2/AttributeType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    .line 582
    .end local v11    # "a":Lorg/jdom2/Attribute;
    :cond_d5
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v12, v6, v7, v8, v5}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 585
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v13

    .line 588
    .local v13, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16f

    .line 589
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v20

    .line 592
    .local v20, "textmode":Lorg/jdom2/output/Format$TextMode;
    const-string v6, "space"

    sget-object v7, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v7}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v19

    .line 595
    .local v19, "space":Ljava/lang/String;
    const-string v6, "default"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 596
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v20

    .line 601
    :cond_10a
    :goto_10a
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_10d
    .catchall {:try_start_6e .. :try_end_10d} :catchall_60

    .line 603
    :try_start_10d
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 604
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v13, v6}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v21

    .line 605
    .local v21, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface/range {v21 .. v21}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 607
    invoke-interface/range {v21 .. v21}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v6

    if-nez v6, :cond_141

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_141

    .line 610
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v15

    .line 611
    .local v15, "indent":Ljava/lang/String;
    new-instance v6, Lorg/jdom2/Text;

    invoke-direct {v6, v15}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 614
    .end local v15    # "indent":Ljava/lang/String;
    :cond_141
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 616
    invoke-interface/range {v21 .. v21}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v6

    if-nez v6, :cond_16c

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16c

    .line 619
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v15

    .line 621
    .restart local v15    # "indent":Ljava/lang/String;
    new-instance v6, Lorg/jdom2/Text;

    invoke-direct {v6, v15}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    :try_end_16c
    .catchall {:try_start_10d .. :try_end_16c} :catchall_1ac

    .line 627
    .end local v15    # "indent":Ljava/lang/String;
    :cond_16c
    :try_start_16c
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 632
    .end local v19    # "space":Ljava/lang/String;
    .end local v20    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v21    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_16f
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedReverse()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_18a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/jdom2/Namespace;

    .line 638
    .restart local v16    # "ns":Lorg/jdom2/Namespace;
    invoke-virtual/range {v16 .. v16}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v6}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    goto :goto_18a

    .line 597
    .end local v16    # "ns":Lorg/jdom2/Namespace;
    .restart local v19    # "space":Ljava/lang/String;
    .restart local v20    # "textmode":Lorg/jdom2/output/Format$TextMode;
    :cond_19e
    const-string v6, "preserve"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 598
    sget-object v20, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    goto/16 :goto_10a

    .line 627
    :catchall_1ac
    move-exception v6

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v6
    :try_end_1b1
    .catchall {:try_start_16c .. :try_end_1b1} :catchall_60

    .line 642
    .end local v19    # "space":Ljava/lang/String;
    .end local v20    # "textmode":Lorg/jdom2/output/Format$TextMode;
    :cond_1b1
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 643
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method protected printEntityRef(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    .registers 6
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method protected printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method protected printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    .registers 8
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 518
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 519
    .local v0, "chars":[C
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 520
    return-void
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .registers 9
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/output/support/SAXTarget;",
            "Lorg/jdom2/output/Format;",
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
    .line 170
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 171
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 172
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, p3, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 173
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v3, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    :try_end_15
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_15} :catch_16

    .line 178
    return-void

    .line 174
    .end local v0    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v2    # "walker":Lorg/jdom2/output/support/Walker;
    :catch_16
    move-exception v1

    .line 175
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Encountered a SAX exception processing the List: "

    invoke-direct {v3, v4, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V
    .registers 10
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 185
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 187
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 188
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v4, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v4}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v4, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 193
    return-void

    .line 189
    .end local v0    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    .end local v3    # "walker":Lorg/jdom2/output/support/Walker;
    :catch_1a
    move-exception v2

    .line 190
    .local v2, "se":Lorg/xml/sax/SAXException;
    new-instance v4, Lorg/jdom2/JDOMException;

    const-string v5, "Encountered a SAX exception processing the CDATA: "

    invoke-direct {v4, v5, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 215
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v1, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_b} :catch_c

    .line 220
    return-void

    .line 216
    :catch_c
    move-exception v0

    .line 217
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Comment: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 146
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v1, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_b} :catch_c

    .line 151
    return-void

    .line 147
    :catch_c
    move-exception v0

    .line 148
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the DocType: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 133
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v2, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_10} :catch_11

    .line 139
    return-void

    .line 135
    :catch_11
    move-exception v0

    .line 136
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Document: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 158
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v2, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    :try_end_10
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_10} :catch_11

    .line 164
    return-void

    .line 160
    :catch_11
    move-exception v0

    .line 161
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Element: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 240
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v1, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_b} :catch_c

    .line 246
    return-void

    .line 241
    :catch_c
    move-exception v0

    .line 242
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the EntityRef: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 227
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v1, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_b} :catch_c

    .line 233
    return-void

    .line 228
    :catch_c
    move-exception v0

    .line 229
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the ProcessingInstruction: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V
    .registers 10
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 199
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 200
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 201
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 202
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v3

    .line 203
    .local v3, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v4, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v4}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v4, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    :try_end_19
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 208
    return-void

    .line 204
    .end local v0    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    .end local v3    # "walker":Lorg/jdom2/output/support/Walker;
    :catch_1a
    move-exception v2

    .line 205
    .local v2, "se":Lorg/xml/sax/SAXException;
    new-instance v4, Lorg/jdom2/JDOMException;

    const-string v5, "Encountered a SAX exception processing the Text: "

    invoke-direct {v4, v5, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public processAsDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .registers 11
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/output/support/SAXTarget;",
            "Lorg/jdom2/output/Format;",
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
    .line 252
    .local p3, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    if-eqz p3, :cond_8

    :try_start_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_9

    .line 284
    :cond_8
    :goto_8
    return-void

    .line 256
    :cond_9
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 258
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-interface {v5}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 260
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 263
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->isReportDTDEvents()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 264
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 265
    .local v0, "c":Lorg/jdom2/Content;
    instance-of v5, v0, Lorg/jdom2/DocType;

    if-eqz v5, :cond_22

    .line 266
    check-cast v0, Lorg/jdom2/DocType;

    .end local v0    # "c":Lorg/jdom2/Content;
    invoke-virtual {p0, p1, v1, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 274
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_37
    const/4 v5, 0x0

    invoke-virtual {p0, v1, p3, v5}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v4

    .line 276
    .local v4, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v5, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v5}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v5, v4}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 279
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    invoke-interface {v5}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_4b
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_8

    .line 280
    .end local v1    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v4    # "walker":Lorg/jdom2/output/support/Walker;
    :catch_4c
    move-exception v3

    .line 281
    .local v3, "se":Lorg/xml/sax/SAXException;
    new-instance v5, Lorg/jdom2/JDOMException;

    const-string v6, "Encountered a SAX exception processing the List: "

    invoke-direct {v5, v6, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public processAsDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .registers 7
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "node"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 290
    if-nez p3, :cond_3

    .line 307
    :goto_2
    return-void

    .line 294
    :cond_3
    :try_start_3
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 296
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 298
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v2, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 302
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_21
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_21} :catch_22

    goto :goto_2

    .line 303
    :catch_22
    move-exception v0

    .line 304
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Element: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
