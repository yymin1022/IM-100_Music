.class final Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;
.super Ljava/lang/Object;
.source "AbstractXPathCompiled.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/xpath/util/AbstractXPathCompiled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NamespaceComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/jdom2/Namespace;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/xpath/util/AbstractXPathCompiled$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/jdom2/xpath/util/AbstractXPathCompiled$1;

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Lorg/jdom2/Namespace;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/jdom2/Namespace;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/xpath/util/AbstractXPathCompiled$NamespaceComparator;->compare(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/jdom2/Namespace;Lorg/jdom2/Namespace;)I
    .registers 5
    .param p1, "ns1"    # Lorg/jdom2/Namespace;
    .param p2, "ns2"    # Lorg/jdom2/Namespace;

    .prologue
    .line 85
    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
