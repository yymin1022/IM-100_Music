.class public Lorg/jdom2/transform/JDOMResult;
.super Ljavax/xml/transform/sax/SAXResult;
.source "JDOMResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/transform/JDOMResult$DocumentBuilder;,
        Lorg/jdom2/transform/JDOMResult$FragmentHandler;
    }
.end annotation


# static fields
.field public static final JDOM_FEATURE:Ljava/lang/String; = "http://jdom.org/jdom2/transform/JDOMResult/feature"


# instance fields
.field private factory:Lorg/jdom2/JDOMFactory;

.field private queried:Z

.field private resultdoc:Lorg/jdom2/Document;

.field private resultlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXResult;-><init>()V

    .line 121
    iput-object v2, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    .line 123
    iput-object v2, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    .line 129
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jdom2/transform/JDOMResult;->queried:Z

    .line 135
    iput-object v2, p0, Lorg/jdom2/transform/JDOMResult;->factory:Lorg/jdom2/JDOMFactory;

    .line 142
    new-instance v0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;

    invoke-direct {v0, p0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;-><init>(Lorg/jdom2/transform/JDOMResult;)V

    .line 145
    .local v0, "builder":Lorg/jdom2/transform/JDOMResult$DocumentBuilder;
    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 146
    invoke-super {p0, v0}, Ljavax/xml/transform/sax/SAXResult;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V

    .line 147
    return-void
.end method

.method private retrieveResult()V
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    if-nez v0, :cond_15

    .line 320
    invoke-virtual {p0}, Lorg/jdom2/transform/JDOMResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    check-cast v0, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;

    invoke-virtual {v0}, Lorg/jdom2/transform/JDOMResult$DocumentBuilder;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/transform/JDOMResult;->setResult(Ljava/util/List;)V

    .line 322
    :cond_15
    return-void
.end method


# virtual methods
.method public getDocument()Lorg/jdom2/Document;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 252
    const/4 v0, 0x0

    .line 255
    .local v0, "doc":Lorg/jdom2/Document;
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult;->retrieveResult()V

    .line 257
    iget-object v4, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    if-eqz v4, :cond_10

    .line 258
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    .line 280
    :cond_b
    :goto_b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jdom2/transform/JDOMResult;->queried:Z

    move-object v3, v0

    .line 282
    :goto_f
    return-object v3

    .line 261
    :cond_10
    iget-object v4, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lorg/jdom2/transform/JDOMResult;->queried:Z

    if-nez v4, :cond_b

    .line 264
    :try_start_18
    invoke-virtual {p0}, Lorg/jdom2/transform/JDOMResult;->getFactory()Lorg/jdom2/JDOMFactory;

    move-result-object v2

    .line 265
    .local v2, "f":Lorg/jdom2/JDOMFactory;
    if-nez v2, :cond_23

    new-instance v2, Lorg/jdom2/DefaultJDOMFactory;

    .end local v2    # "f":Lorg/jdom2/JDOMFactory;
    invoke-direct {v2}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    .line 267
    .restart local v2    # "f":Lorg/jdom2/JDOMFactory;
    :cond_23
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v0

    .line 268
    iget-object v4, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    invoke-virtual {v0, v4}, Lorg/jdom2/Document;->setContent(Ljava/util/Collection;)Lorg/jdom2/Document;

    .line 270
    iput-object v0, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    .line 271
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_32} :catch_33

    goto :goto_b

    .line 273
    .end local v2    # "f":Lorg/jdom2/JDOMFactory;
    :catch_33
    move-exception v1

    .line 276
    .local v1, "ex1":Ljava/lang/RuntimeException;
    goto :goto_f
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult;->factory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .registers 5
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
    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-direct {p0}, Lorg/jdom2/transform/JDOMResult;->retrieveResult()V

    .line 188
    iget-object v3, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    if-eqz v3, :cond_11

    .line 189
    iget-object v1, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    .line 205
    :cond_d
    :goto_d
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/jdom2/transform/JDOMResult;->queried:Z

    .line 207
    return-object v1

    .line 192
    :cond_11
    iget-object v3, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lorg/jdom2/transform/JDOMResult;->queried:Z

    if-nez v3, :cond_d

    .line 193
    iget-object v3, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    invoke-virtual {v3}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    .restart local v1    # "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_39

    .line 198
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    .line 199
    .local v2, "o":Lorg/jdom2/Content;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 201
    .end local v2    # "o":Lorg/jdom2/Content;
    :cond_39
    iput-object v1, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    .line 202
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    goto :goto_d
.end method

.method public setDocument(Lorg/jdom2/Document;)V
    .registers 3
    .param p1, "document"    # Lorg/jdom2/Document;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/jdom2/transform/JDOMResult;->resultdoc:Lorg/jdom2/Document;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/transform/JDOMResult;->queried:Z

    .line 229
    return-void
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .registers 2
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 297
    iput-object p1, p0, Lorg/jdom2/transform/JDOMResult;->factory:Lorg/jdom2/JDOMFactory;

    .line 298
    return-void
.end method

.method public setHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 336
    return-void
.end method

.method public setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .registers 2
    .param p1, "handler"    # Lorg/xml/sax/ext/LexicalHandler;

    .prologue
    .line 351
    return-void
.end method

.method public setResult(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    iput-object p1, p0, Lorg/jdom2/transform/JDOMResult;->resultlist:Ljava/util/List;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/transform/JDOMResult;->queried:Z

    .line 168
    return-void
.end method
