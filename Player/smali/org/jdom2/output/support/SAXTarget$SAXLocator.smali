.class public final Lorg/jdom2/output/support/SAXTarget$SAXLocator;
.super Ljava/lang/Object;
.source "SAXTarget.java"

# interfaces
.implements Lorg/jdom2/output/JDOMLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/support/SAXTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SAXLocator"
.end annotation


# instance fields
.field private node:Ljava/lang/Object;

.field private final publicid:Ljava/lang/String;

.field private final systemid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "publicid"    # Ljava/lang/String;
    .param p2, "systemid"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->node:Ljava/lang/Object;

    .line 90
    iput-object p1, p0, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->publicid:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->systemid:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 96
    const/4 v0, -0x1

    return v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 101
    const/4 v0, -0x1

    return v0
.end method

.method public getNode()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->node:Ljava/lang/Object;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->publicid:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->systemid:Ljava/lang/String;

    return-object v0
.end method

.method public setNode(Ljava/lang/Object;)V
    .registers 2
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->node:Ljava/lang/Object;

    .line 125
    return-void
.end method
