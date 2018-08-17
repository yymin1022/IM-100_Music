.class final Lorg/jdom2/input/sax/DefaultSAXHandlerFactory$DefaultSAXHandler;
.super Lorg/jdom2/input/sax/SAXHandler;
.source "DefaultSAXHandlerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/input/sax/DefaultSAXHandlerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultSAXHandler"
.end annotation


# direct methods
.method public constructor <init>(Lorg/jdom2/JDOMFactory;)V
    .registers 2
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lorg/jdom2/input/sax/SAXHandler;-><init>(Lorg/jdom2/JDOMFactory;)V

    .line 77
    return-void
.end method
