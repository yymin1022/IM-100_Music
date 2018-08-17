.class Lorg/jdom2/transform/JDOMResult$FragmentHandler;
.super Lorg/jdom2/input/sax/SAXHandler;
.source "JDOMResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/transform/JDOMResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentHandler"
.end annotation


# instance fields
.field private dummyRoot:Lorg/jdom2/Element;


# direct methods
.method public constructor <init>(Lorg/jdom2/JDOMFactory;)V
    .registers 5
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    const/4 v2, 0x0

    .line 370
    invoke-direct {p0, p1}, Lorg/jdom2/input/sax/SAXHandler;-><init>(Lorg/jdom2/JDOMFactory;)V

    .line 363
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "root"

    invoke-direct {v0, v1, v2, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom2/Element;

    .line 375
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom2/Element;

    invoke-virtual {p0, v0}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->pushElement(Lorg/jdom2/Element;)V

    .line 376
    return-void
.end method

.method private getDetachedContent(Lorg/jdom2/Element;)Ljava/util/List;
    .registers 6
    .param p1, "elt"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    .local v1, "nodes":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1e

    .line 408
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    .line 409
    .local v2, "o":Lorg/jdom2/Content;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 411
    .end local v2    # "o":Lorg/jdom2/Content;
    :cond_1e
    return-object v1
.end method


# virtual methods
.method public getResult()Ljava/util/List;
    .registers 2
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
    .line 388
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->flushCharacters()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_3} :catch_a

    .line 391
    :goto_3
    iget-object v0, p0, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->dummyRoot:Lorg/jdom2/Element;

    invoke-direct {p0, v0}, Lorg/jdom2/transform/JDOMResult$FragmentHandler;->getDetachedContent(Lorg/jdom2/Element;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 390
    :catch_a
    move-exception v0

    goto :goto_3
.end method
