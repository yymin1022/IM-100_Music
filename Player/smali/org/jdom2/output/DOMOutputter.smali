.class public Lorg/jdom2/output/DOMOutputter;
.super Ljava/lang/Object;
.source "DOMOutputter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/DOMOutputter$1;,
        Lorg/jdom2/output/DOMOutputter$DefaultDOMOutputProcessor;
    }
.end annotation


# static fields
.field private static final DEFAULT_ADAPTER:Lorg/jdom2/adapters/DOMAdapter;

.field private static final DEFAULT_PROCESSOR:Lorg/jdom2/output/support/DOMOutputProcessor;


# instance fields
.field private adapter:Lorg/jdom2/adapters/DOMAdapter;

.field private format:Lorg/jdom2/output/Format;

.field private processor:Lorg/jdom2/output/support/DOMOutputProcessor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 108
    new-instance v0, Lorg/jdom2/adapters/JAXPDOMAdapter;

    invoke-direct {v0}, Lorg/jdom2/adapters/JAXPDOMAdapter;-><init>()V

    sput-object v0, Lorg/jdom2/output/DOMOutputter;->DEFAULT_ADAPTER:Lorg/jdom2/adapters/DOMAdapter;

    .line 110
    new-instance v0, Lorg/jdom2/output/DOMOutputter$DefaultDOMOutputProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jdom2/output/DOMOutputter$DefaultDOMOutputProcessor;-><init>(Lorg/jdom2/output/DOMOutputter$1;)V

    sput-object v0, Lorg/jdom2/output/DOMOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/DOMOutputProcessor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0, v0, v0}, Lorg/jdom2/output/DOMOutputter;-><init>(Lorg/jdom2/adapters/DOMAdapter;Lorg/jdom2/output/Format;Lorg/jdom2/output/support/DOMOutputProcessor;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "adapterClass"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    if-nez p1, :cond_a

    .line 176
    sget-object v0, Lorg/jdom2/output/DOMOutputter;->DEFAULT_ADAPTER:Lorg/jdom2/adapters/DOMAdapter;

    iput-object v0, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    .line 181
    :goto_9
    return-void

    .line 178
    :cond_a
    const-class v0, Lorg/jdom2/adapters/DOMAdapter;

    invoke-static {p1, v0}, Lorg/jdom2/internal/ReflectionConstructor;->construct(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/adapters/DOMAdapter;

    iput-object v0, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    goto :goto_9
.end method

.method public constructor <init>(Lorg/jdom2/adapters/DOMAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lorg/jdom2/adapters/DOMAdapter;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    if-nez p1, :cond_7

    sget-object p1, Lorg/jdom2/output/DOMOutputter;->DEFAULT_ADAPTER:Lorg/jdom2/adapters/DOMAdapter;

    .end local p1    # "adapter":Lorg/jdom2/adapters/DOMAdapter;
    :cond_7
    iput-object p1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    .line 199
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/adapters/DOMAdapter;Lorg/jdom2/output/Format;Lorg/jdom2/output/support/DOMOutputProcessor;)V
    .registers 4
    .param p1, "adapter"    # Lorg/jdom2/adapters/DOMAdapter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "processor"    # Lorg/jdom2/output/support/DOMOutputProcessor;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-nez p1, :cond_7

    sget-object p1, Lorg/jdom2/output/DOMOutputter;->DEFAULT_ADAPTER:Lorg/jdom2/adapters/DOMAdapter;

    .end local p1    # "adapter":Lorg/jdom2/adapters/DOMAdapter;
    :cond_7
    iput-object p1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    .line 157
    if-nez p2, :cond_f

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object p2

    .end local p2    # "format":Lorg/jdom2/output/Format;
    :cond_f
    iput-object p2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    .line 158
    if-nez p3, :cond_15

    sget-object p3, Lorg/jdom2/output/DOMOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/DOMOutputProcessor;

    .end local p3    # "processor":Lorg/jdom2/output/support/DOMOutputProcessor;
    :cond_15
    iput-object p3, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    .line 159
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/output/support/DOMOutputProcessor;)V
    .registers 3
    .param p1, "processor"    # Lorg/jdom2/output/support/DOMOutputProcessor;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, v0, v0, p1}, Lorg/jdom2/output/DOMOutputter;-><init>(Lorg/jdom2/adapters/DOMAdapter;Lorg/jdom2/output/Format;Lorg/jdom2/output/support/DOMOutputProcessor;)V

    .line 138
    return-void
.end method


# virtual methods
.method public getDOMAdapter()Lorg/jdom2/adapters/DOMAdapter;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    return-object v0
.end method

.method public getDOMOutputProcessor()Lorg/jdom2/output/support/DOMOutputProcessor;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    return-object v0
.end method

.method public getForceNamespaceAware()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method public getFormat()Lorg/jdom2/output/Format;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    return-object v0
.end method

.method public output(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Ljava/util/List;)Ljava/util/List;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/util/List",
            "<+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 611
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;
    .registers 5
    .param p1, "attribute"    # Lorg/jdom2/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "attribute"    # Lorg/jdom2/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 592
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;
    .registers 5
    .param p1, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;
    .registers 5
    .param p1, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/Document;)Lorg/w3c/dom/Document;
    .registers 5
    .param p1, "document"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-virtual {p1}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jdom2/adapters/DOMAdapter;->createDocument(Lorg/jdom2/DocType;)Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/DocType;)Lorg/w3c/dom/DocumentType;
    .registers 3
    .param p1, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v0, p1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument(Lorg/jdom2/DocType;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/Element;)Lorg/w3c/dom/Element;
    .registers 5
    .param p1, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;
    .registers 5
    .param p1, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 5
    .param p1, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/jdom2/Text;)Lorg/w3c/dom/Text;
    .registers 5
    .param p1, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    invoke-interface {v1}, Lorg/jdom2/adapters/DOMAdapter;->createDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, v1, v2, p1}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0
.end method

.method public output(Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;
    .registers 5
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    iget-object v1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    invoke-interface {v0, p1, v1, p2}, Lorg/jdom2/output/support/DOMOutputProcessor;->process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0
.end method

.method public setDOMAdapter(Lorg/jdom2/adapters/DOMAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lorg/jdom2/adapters/DOMAdapter;

    .prologue
    .line 219
    if-nez p1, :cond_4

    sget-object p1, Lorg/jdom2/output/DOMOutputter;->DEFAULT_ADAPTER:Lorg/jdom2/adapters/DOMAdapter;

    .end local p1    # "adapter":Lorg/jdom2/adapters/DOMAdapter;
    :cond_4
    iput-object p1, p0, Lorg/jdom2/output/DOMOutputter;->adapter:Lorg/jdom2/adapters/DOMAdapter;

    .line 220
    return-void
.end method

.method public setDOMOutputProcessor(Lorg/jdom2/output/support/DOMOutputProcessor;)V
    .registers 2
    .param p1, "processor"    # Lorg/jdom2/output/support/DOMOutputProcessor;

    .prologue
    .line 261
    if-nez p1, :cond_4

    sget-object p1, Lorg/jdom2/output/DOMOutputter;->DEFAULT_PROCESSOR:Lorg/jdom2/output/support/DOMOutputProcessor;

    .end local p1    # "processor":Lorg/jdom2/output/support/DOMOutputProcessor;
    :cond_4
    iput-object p1, p0, Lorg/jdom2/output/DOMOutputter;->processor:Lorg/jdom2/output/support/DOMOutputProcessor;

    .line 262
    return-void
.end method

.method public setForceNamespaceAware(Z)V
    .registers 2
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    return-void
.end method

.method public setFormat(Lorg/jdom2/output/Format;)V
    .registers 2
    .param p1, "format"    # Lorg/jdom2/output/Format;

    .prologue
    .line 240
    if-nez p1, :cond_6

    invoke-static {}, Lorg/jdom2/output/Format;->getRawFormat()Lorg/jdom2/output/Format;

    move-result-object p1

    .end local p1    # "format":Lorg/jdom2/output/Format;
    :cond_6
    iput-object p1, p0, Lorg/jdom2/output/DOMOutputter;->format:Lorg/jdom2/output/Format;

    .line 241
    return-void
.end method
