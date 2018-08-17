.class public Lorg/jdom2/input/sax/SAXHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXHandler.java"

# interfaces
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lorg/xml/sax/DTDHandler;


# instance fields
.field private atRoot:Z

.field private currentDocument:Lorg/jdom2/Document;

.field private currentElement:Lorg/jdom2/Element;

.field private currentLocator:Lorg/xml/sax/Locator;

.field private final declaredNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private entityDepth:I

.field private expand:Z

.field private final externalEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lorg/jdom2/JDOMFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private inCDATA:Z

.field private inDTD:Z

.field private inInternalSubset:Z

.field private final internalSubset:Ljava/lang/StringBuilder;

.field private lastcol:I

.field private lastline:I

.field private previousCDATA:Z

.field private suppress:Z

.field private final textBuffer:Lorg/jdom2/input/sax/TextBuffer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jdom2/input/sax/SAXHandler;-><init>(Lorg/jdom2/JDOMFactory;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/JDOMFactory;)V
    .registers 7
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    .line 136
    new-instance v0, Lorg/jdom2/input/sax/TextBuffer;

    invoke-direct {v0}, Lorg/jdom2/input/sax/TextBuffer;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    .line 142
    iput-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    .line 145
    iput-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 148
    iput-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    .line 151
    iput-boolean v4, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    .line 158
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 161
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 164
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 167
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    .line 170
    iput-boolean v4, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    .line 176
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    .line 179
    iput v2, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 182
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    .line 185
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    .line 187
    iput v2, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    iput v2, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    .line 207
    if-eqz p1, :cond_4a

    .end local p1    # "factory":Lorg/jdom2/JDOMFactory;
    :goto_44
    iput-object p1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    .line 208
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->reset()V

    .line 209
    return-void

    .line 207
    .restart local p1    # "factory":Lorg/jdom2/JDOMFactory;
    :cond_4a
    new-instance p1, Lorg/jdom2/DefaultJDOMFactory;

    .end local p1    # "factory":Lorg/jdom2/JDOMFactory;
    invoke-direct {p1}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    goto :goto_44
.end method

.method private appendExternalId(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "publicID"    # Ljava/lang/String;
    .param p2, "systemID"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 1112
    if-eqz p1, :cond_13

    .line 1113
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, " PUBLIC \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1115
    :cond_13
    if-eqz p2, :cond_2b

    .line 1116
    if-nez p1, :cond_2c

    .line 1117
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, " SYSTEM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :goto_1e
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1123
    :cond_2b
    return-void

    .line 1119
    :cond_2c
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e
.end method

.method private transferNamespaces(Lorg/jdom2/Element;)V
    .registers 5
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 734
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 735
    .local v1, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 736
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    goto :goto_6

    .line 739
    .end local v1    # "ns":Lorg/jdom2/Namespace;
    :cond_1c
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 740
    return-void
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "eName"    # Ljava/lang/String;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "valueDefault"    # Ljava/lang/String;
    .param p5, "value"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/16 v2, 0x20

    .line 415
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_9

    .line 429
    :goto_8
    return-void

    .line 418
    :cond_9
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ATTLIST "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    if-eqz p4, :cond_50

    .line 421
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :goto_2f
    if-eqz p4, :cond_48

    const-string v0, "#FIXED"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 426
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    :cond_48
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 423
    :cond_50
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2f
.end method

.method public characters([CII)V
    .registers 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 756
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-nez v0, :cond_a

    if-nez p3, :cond_b

    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    if-nez v0, :cond_b

    .line 769
    :cond_a
    :goto_a
    return-void

    .line 759
    :cond_b
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    if-eq v0, v1, :cond_14

    .line 760
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 763
    :cond_14
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jdom2/input/sax/TextBuffer;->append([CII)V

    .line 765
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_a

    .line 766
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v0

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    .line 767
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v0

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    goto :goto_a
.end method

.method public comment([CII)V
    .registers 9
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1032
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v2, :cond_5

    .line 1053
    :cond_4
    :goto_4
    return-void

    .line 1035
    :cond_5
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 1037
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 1038
    .local v1, "commentText":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    if-nez v2, :cond_2b

    .line 1039
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v3, "  <!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-->\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1042
    :cond_2b
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    if-nez v2, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1043
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v2, :cond_4d

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v2, v1}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    .line 1047
    .local v0, "comment":Lorg/jdom2/Comment;
    :goto_41
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-eqz v2, :cond_60

    .line 1048
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v2, v3, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_4

    .line 1043
    .end local v0    # "comment":Lorg/jdom2/Comment;
    :cond_4d
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v3

    iget-object v4, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v4}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Lorg/jdom2/JDOMFactory;->comment(IILjava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v0

    goto :goto_41

    .line 1050
    .restart local v0    # "comment":Lorg/jdom2/Comment;
    :cond_60
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_4
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_5

    .line 447
    :goto_4
    return-void

    .line 445
    :cond_5
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ELEMENT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public endCDATA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1005
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_6

    .line 1012
    :goto_5
    return-void

    .line 1008
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 1009
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 1010
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 1011
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    goto :goto_5
.end method

.method public endDTD()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 918
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-virtual {v0}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/DocType;->setInternalSubset(Ljava/lang/String;)V

    .line 920
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 921
    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 922
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 866
    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v1, :cond_5

    .line 883
    :goto_4
    return-void

    .line 869
    :cond_5
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 871
    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-nez v1, :cond_1f

    .line 872
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    invoke-virtual {v1}, Lorg/jdom2/Element;->getParent()Lorg/jdom2/Parent;

    move-result-object v0

    .line 873
    .local v0, "p":Lorg/jdom2/Parent;
    instance-of v1, v0, Lorg/jdom2/Document;

    if-eqz v1, :cond_1a

    .line 874
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    goto :goto_4

    .line 876
    :cond_1a
    check-cast v0, Lorg/jdom2/Element;

    .end local v0    # "p":Lorg/jdom2/Parent;
    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    goto :goto_4

    .line 879
    :cond_1f
    new-instance v1, Lorg/xml/sax/SAXException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ill-formed XML document (missing opening tag for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .line 978
    iget v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 979
    iget v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    if-nez v0, :cond_d

    .line 982
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    .line 984
    :cond_d
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 987
    :cond_18
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_13

    .line 395
    :goto_12
    return-void

    .line 392
    :cond_13
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-direct {p0, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12
.end method

.method protected flushCharacters()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 801
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    if-eqz v0, :cond_1b

    .line 802
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->isAllWhitespace()Z

    move-result v0

    if-nez v0, :cond_15

    .line 803
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    .line 808
    :cond_15
    :goto_15
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->clear()V

    .line 809
    return-void

    .line 806
    :cond_1b
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected flushCharacters(Ljava/lang/String;)V
    .registers 7
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 822
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    if-nez v2, :cond_f

    .line 823
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 845
    :goto_e
    return-void

    .line 834
    :cond_f
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    if-eqz v2, :cond_36

    .line 835
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v2, :cond_2b

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    .line 837
    .local v0, "cdata":Lorg/jdom2/CDATA;
    :goto_1d
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 844
    .end local v0    # "cdata":Lorg/jdom2/CDATA;
    :goto_26
    iget-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    iput-boolean v2, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    goto :goto_e

    .line 835
    :cond_2b
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget v3, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    iget v4, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    invoke-interface {v2, v3, v4, p1}, Lorg/jdom2/JDOMFactory;->cdata(IILjava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v0

    goto :goto_1d

    .line 839
    :cond_36
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v2, :cond_4a

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v2, p1}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v1

    .line 841
    .local v1, "text":Lorg/jdom2/Text;
    :goto_40
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_26

    .line 839
    .end local v1    # "text":Lorg/jdom2/Text;
    :cond_4a
    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget v3, p0, Lorg/jdom2/input/sax/SAXHandler;->lastline:I

    iget v4, p0, Lorg/jdom2/input/sax/SAXHandler;->lastcol:I

    invoke-interface {v2, v3, v4, p1}, Lorg/jdom2/JDOMFactory;->text(IILjava/lang/String;)Lorg/jdom2/Text;

    move-result-object v1

    goto :goto_40
.end method

.method public getCurrentElement()Lorg/jdom2/Element;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    if-nez v0, :cond_c

    .line 1134
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Ill-formed XML document (multiple root elements detected)"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_c
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    return-object v0
.end method

.method public getDocument()Lorg/jdom2/Document;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    return-object v0
.end method

.method public getDocumentLocator()Lorg/xml/sax/Locator;
    .registers 2

    .prologue
    .line 1165
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getExpandEntities()Z
    .registers 2

    .prologue
    .line 308
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .registers 2

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    return v0
.end method

.method public ignorableWhitespace([CII)V
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
    .line 788
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    if-nez v0, :cond_7

    .line 789
    invoke-virtual {p0, p1, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->characters([CII)V

    .line 791
    :cond_7
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_5

    .line 471
    :goto_4
    return-void

    .line 464
    :cond_5
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 466
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "% "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :goto_24
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 468
    :cond_36
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1069
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_5

    .line 1075
    :goto_4
    return-void

    .line 1072
    :cond_5
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!NOTATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-direct {p0, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 490
    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v1, :cond_5

    .line 505
    :goto_4
    return-void

    .line 493
    :cond_5
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 495
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, p1, p2}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    .line 500
    .local v0, "pi":Lorg/jdom2/ProcessingInstruction;
    :goto_12
    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-eqz v1, :cond_31

    .line 501
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_4

    .line 495
    .end local v0    # "pi":Lorg/jdom2/ProcessingInstruction;
    :cond_1e
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    iget-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-interface {v1, v2, v3, p1, p2}, Lorg/jdom2/JDOMFactory;->processingInstruction(IILjava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v0

    goto :goto_12

    .line 503
    .restart local v0    # "pi":Lorg/jdom2/ProcessingInstruction;
    :cond_31
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_4
.end method

.method protected pushElement(Lorg/jdom2/Element;)V
    .registers 4
    .param p1, "element"    # Lorg/jdom2/Element;

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-eqz v0, :cond_f

    .line 257
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-virtual {v0, p1}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    .line 263
    :goto_c
    iput-object p1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 264
    return-void

    .line 261
    :cond_f
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    invoke-interface {v0, v1, p1}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_c
.end method

.method public final reset()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 227
    iput-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    .line 228
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, v2}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    .line 229
    iput-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 230
    iput-boolean v3, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    .line 231
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 232
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 233
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->previousCDATA:Z

    .line 234
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    .line 235
    iput-boolean v3, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    .line 236
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    .line 237
    iput v1, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 238
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 239
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 240
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->textBuffer:Lorg/jdom2/input/sax/TextBuffer;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/TextBuffer;->clear()V

    .line 241
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 242
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    .line 243
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    .line 244
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->resetSubCLass()V

    .line 245
    return-void
.end method

.method protected resetSubCLass()V
    .registers 1

    .prologue
    .line 218
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 1155
    iput-object p1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    .line 1156
    return-void
.end method

.method public setExpandEntities(Z)V
    .registers 2
    .param p1, "expand"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    .line 298
    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .registers 2
    .param p1, "ignoringBoundaryWhite"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringBoundaryWhite:Z

    .line 337
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .registers 2
    .param p1, "ignoringWhite"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lorg/jdom2/input/sax/SAXHandler;->ignoringWhite:Z

    .line 324
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 520
    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 530
    :goto_8
    return-void

    .line 523
    :cond_9
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 525
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_20

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v1, p1}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    .line 529
    .local v0, "er":Lorg/jdom2/EntityRef;
    :goto_16
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto :goto_8

    .line 525
    .end local v0    # "er":Lorg/jdom2/EntityRef;
    :cond_20
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    iget-object v3, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v3}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Lorg/jdom2/JDOMFactory;->entityRef(IILjava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v0

    goto :goto_16
.end method

.method public startCDATA()V
    .registers 2

    .prologue
    .line 994
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v0, :cond_5

    .line 998
    :goto_4
    return-void

    .line 997
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inCDATA:Z

    goto :goto_4
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 901
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 903
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/jdom2/JDOMFactory;->docType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v6

    .line 907
    .local v6, "doctype":Lorg/jdom2/DocType;
    :goto_e
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    invoke-interface {v0, v1, v6}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 908
    iput-boolean v7, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    .line 909
    iput-boolean v7, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    .line 910
    return-void

    .line 903
    .end local v6    # "doctype":Lorg/jdom2/DocType;
    :cond_1a
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/jdom2/JDOMFactory;->docType(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/DocType;

    move-result-object v6

    goto :goto_e
.end method

.method public startDocument()V
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-eqz v0, :cond_f

    .line 367
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    .line 369
    :cond_f
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 35
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    .line 724
    :cond_8
    return-void

    .line 578
    :cond_9
    const-string v24, ""

    .line 581
    .local v24, "prefix":Ljava/lang/String;
    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_47

    .line 582
    const/16 v27, 0x3a

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 584
    .local v16, "colon":I
    if-lez v16, :cond_2f

    .line 585
    const/16 v27, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v27

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 589
    :cond_2f
    if-eqz p2, :cond_3d

    const-string v27, ""

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_47

    .line 590
    :cond_3d
    add-int/lit8 v27, v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 596
    .end local v16    # "colon":I
    :cond_47
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v21

    .line 598
    .local v21, "namespace":Lorg/jdom2/Namespace;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    move-object/from16 v27, v0

    if-nez v27, :cond_fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v17

    .line 605
    .local v17, "element":Lorg/jdom2/Element;
    :goto_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_7a

    .line 606
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/jdom2/input/sax/SAXHandler;->transferNamespaces(Lorg/jdom2/Element;)V

    .line 609
    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 611
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    move/from16 v27, v0

    if-eqz v27, :cond_125

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->currentDocument:Lorg/jdom2/Document;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->setRoot(Lorg/jdom2/Document;Lorg/jdom2/Element;)V

    .line 614
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    .line 618
    :goto_a2
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jdom2/input/sax/SAXHandler;->currentElement:Lorg/jdom2/Element;

    .line 621
    const/16 v18, 0x0

    .local v18, "i":I
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v20

    .local v20, "len":I
    :goto_ae
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 623
    const-string v8, ""

    .line 624
    .local v8, "attPrefix":Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "attLocalName":Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    .line 626
    .local v9, "attQName":Ljava/lang/String;
    move-object/from16 v0, p4

    instance-of v0, v0, Lorg/xml/sax/ext/Attributes2;

    move/from16 v27, v0

    if-eqz v27, :cond_13a

    move-object/from16 v27, p4

    check-cast v27, Lorg/xml/sax/ext/Attributes2;

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v25

    .line 630
    .local v25, "specified":Z
    :goto_da
    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_161

    .line 635
    const-string v27, "xmlns:"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_f8

    const-string v27, "xmlns"

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_13d

    .line 621
    :cond_f8
    :goto_f8
    add-int/lit8 v18, v18, 0x1

    goto :goto_ae

    .line 598
    .end local v6    # "attLocalName":Ljava/lang/String;
    .end local v8    # "attPrefix":Ljava/lang/String;
    .end local v9    # "attQName":Ljava/lang/String;
    .end local v17    # "element":Lorg/jdom2/Element;
    .end local v18    # "i":I
    .end local v20    # "len":I
    .end local v25    # "specified":Z
    :cond_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, p2

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/jdom2/JDOMFactory;->element(IILjava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v17

    goto/16 :goto_67

    .line 616
    .restart local v17    # "element":Lorg/jdom2/Element;
    :cond_125
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    goto/16 :goto_a2

    .line 626
    .restart local v6    # "attLocalName":Ljava/lang/String;
    .restart local v8    # "attPrefix":Ljava/lang/String;
    .restart local v9    # "attQName":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v20    # "len":I
    :cond_13a
    const/16 v25, 0x1

    goto :goto_da

    .line 639
    .restart local v25    # "specified":Z
    :cond_13d
    const/16 v27, 0x3a

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 641
    .local v5, "attColon":I
    if-lez v5, :cond_14f

    .line 642
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v9, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 646
    :cond_14f
    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_161

    .line 647
    add-int/lit8 v27, v5, 0x1

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 651
    .end local v5    # "attColon":I
    :cond_161
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/jdom2/AttributeType;->getAttributeType(Ljava/lang/String;)Lorg/jdom2/AttributeType;

    move-result-object v10

    .line 653
    .local v10, "attType":Lorg/jdom2/AttributeType;
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v12

    .line 654
    .local v12, "attValue":Ljava/lang/String;
    move-object/from16 v0, p4

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v11

    .line 656
    .local v11, "attURI":Ljava/lang/String;
    const-string v27, "xmlns"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_f8

    const-string v27, "xmlns"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_f8

    const-string v27, "http://www.w3.org/2000/xmlns/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_f8

    .line 669
    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_236

    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_236

    .line 681
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 682
    .local v26, "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-virtual/range {v17 .. v17}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_1bc
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1e2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/jdom2/Namespace;

    .line 683
    .local v22, "nss":Lorg/jdom2/Namespace;
    invoke-virtual/range {v22 .. v22}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_226

    invoke-virtual/range {v22 .. v22}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_226

    .line 685
    invoke-virtual/range {v22 .. v22}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v8

    .line 691
    .end local v22    # "nss":Lorg/jdom2/Namespace;
    :cond_1e2
    const-string v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_236

    .line 703
    const/4 v15, 0x0

    .line 704
    .local v15, "cnt":I
    const-string v14, "attns"

    .line 705
    .local v14, "base":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "attns"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 706
    .local v23, "pfx":Ljava/lang/String;
    :goto_204
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_234

    .line 707
    add-int/lit8 v15, v15, 0x1

    .line 708
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "attns"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto :goto_204

    .line 688
    .end local v14    # "base":Ljava/lang/String;
    .end local v15    # "cnt":I
    .end local v23    # "pfx":Ljava/lang/String;
    .restart local v22    # "nss":Lorg/jdom2/Namespace;
    :cond_226
    invoke-virtual/range {v22 .. v22}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bc

    .line 710
    .end local v22    # "nss":Lorg/jdom2/Namespace;
    .restart local v14    # "base":Ljava/lang/String;
    .restart local v15    # "cnt":I
    .restart local v23    # "pfx":Ljava/lang/String;
    :cond_234
    move-object/from16 v8, v23

    .line 713
    .end local v14    # "base":Ljava/lang/String;
    .end local v15    # "cnt":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v23    # "pfx":Ljava/lang/String;
    .end local v26    # "tmpmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    :cond_236
    invoke-static {v8, v11}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v7

    .line 715
    .local v7, "attNs":Lorg/jdom2/Namespace;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v12, v10, v7}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v13

    .line 717
    .local v13, "attribute":Lorg/jdom2/Attribute;
    if-nez v25, :cond_24f

    .line 719
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/jdom2/Attribute;->setSpecified(Z)V

    .line 721
    :cond_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v13}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    goto/16 :goto_f8
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    .line 926
    iget v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    .line 928
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    if-nez v0, :cond_10

    iget v0, p0, Lorg/jdom2/input/sax/SAXHandler;->entityDepth:I

    if-le v0, v8, :cond_11

    .line 974
    :cond_10
    :goto_10
    return-void

    .line 934
    :cond_11
    const-string v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 935
    iput-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    goto :goto_10

    .line 940
    :cond_1c
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inDTD:Z

    if-nez v0, :cond_10

    const-string v0, "amp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "lt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "gt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "apos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "quot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 944
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->expand:Z

    if-nez v0, :cond_10

    .line 945
    const/4 v4, 0x0

    .line 946
    .local v4, "pub":Ljava/lang/String;
    const/4 v5, 0x0

    .line 947
    .local v5, "sys":Ljava/lang/String;
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->externalEntities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 948
    .local v7, "ids":[Ljava/lang/String;
    if-eqz v7, :cond_5c

    .line 949
    aget-object v4, v7, v1

    .line 950
    aget-object v5, v7, v8

    .line 960
    :cond_5c
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->atRoot:Z

    if-nez v0, :cond_76

    .line 961
    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->flushCharacters()V

    .line 962
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_79

    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, p1, v4, v5}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v6

    .line 969
    .local v6, "entity":Lorg/jdom2/EntityRef;
    :goto_6d
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    invoke-virtual {p0}, Lorg/jdom2/input/sax/SAXHandler;->getCurrentElement()Lorg/jdom2/Element;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lorg/jdom2/JDOMFactory;->addContent(Lorg/jdom2/Parent;Lorg/jdom2/Content;)V

    .line 971
    .end local v6    # "entity":Lorg/jdom2/EntityRef;
    :cond_76
    iput-boolean v8, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    goto :goto_10

    .line 962
    :cond_79
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->factory:Lorg/jdom2/JDOMFactory;

    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    iget-object v2, p0, Lorg/jdom2/input/sax/SAXHandler;->currentLocator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lorg/jdom2/JDOMFactory;->entityRef(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v6

    goto :goto_6d
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 545
    iget-boolean v1, p0, Lorg/jdom2/input/sax/SAXHandler;->suppress:Z

    if-eqz v1, :cond_5

    .line 550
    :goto_4
    return-void

    .line 548
    :cond_5
    invoke-static {p1, p2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    .line 549
    .local v0, "ns":Lorg/jdom2/Namespace;
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXHandler;->declaredNamespaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicID"    # Ljava/lang/String;
    .param p3, "systemID"    # Ljava/lang/String;
    .param p4, "notationName"    # Ljava/lang/String;

    .prologue
    .line 1093
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXHandler;->inInternalSubset:Z

    if-nez v0, :cond_5

    .line 1100
    :goto_4
    return-void

    .line 1096
    :cond_5
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, "  <!ENTITY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-direct {p0, p2, p3}, Lorg/jdom2/input/sax/SAXHandler;->appendExternalId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, " NDATA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXHandler;->internalSubset:Ljava/lang/StringBuilder;

    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
