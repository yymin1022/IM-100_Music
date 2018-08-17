.class final Lorg/jdom2/xpath/jaxen/NamespaceContainer;
.super Ljava/lang/Object;
.source "NamespaceContainer.java"


# instance fields
.field private final emt:Lorg/jdom2/Element;

.field private final ns:Lorg/jdom2/Namespace;


# direct methods
.method public constructor <init>(Lorg/jdom2/Namespace;Lorg/jdom2/Element;)V
    .registers 3
    .param p1, "ns"    # Lorg/jdom2/Namespace;
    .param p2, "emt"    # Lorg/jdom2/Element;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->ns:Lorg/jdom2/Namespace;

    .line 83
    iput-object p2, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->emt:Lorg/jdom2/Element;

    .line 84
    return-void
.end method


# virtual methods
.method public getNamespace()Lorg/jdom2/Namespace;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->ns:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public getParentElement()Lorg/jdom2/Element;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->emt:Lorg/jdom2/Element;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->ns:Lorg/jdom2/Namespace;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/xpath/jaxen/NamespaceContainer;->ns:Lorg/jdom2/Namespace;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
