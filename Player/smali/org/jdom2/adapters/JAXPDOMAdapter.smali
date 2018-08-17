.class public Lorg/jdom2/adapters/JAXPDOMAdapter;
.super Lorg/jdom2/adapters/AbstractDOMAdapter;
.source "JAXPDOMAdapter.java"


# static fields
.field private static final localbuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljavax/xml/parsers/DocumentBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jdom2/adapters/JAXPDOMAdapter;->localbuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/jdom2/adapters/AbstractDOMAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createDocument()Lorg/w3c/dom/Document;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .prologue
    .line 93
    sget-object v3, Lorg/jdom2/adapters/JAXPDOMAdapter;->localbuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/parsers/DocumentBuilder;

    .line 94
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    if-nez v0, :cond_17

    .line 96
    :try_start_a
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 97
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 98
    sget-object v3, Lorg/jdom2/adapters/JAXPDOMAdapter;->localbuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_17
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_17} :catch_1c

    .line 103
    .end local v1    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_17
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    return-object v3

    .line 99
    :catch_1c
    move-exception v2

    .line 100
    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v3, Lorg/jdom2/JDOMException;

    const-string v4, "Unable to obtain a DOM parser. See cause:"

    invoke-direct {v3, v4, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
