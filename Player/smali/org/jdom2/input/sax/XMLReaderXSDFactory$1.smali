.class final Lorg/jdom2/input/sax/XMLReaderXSDFactory$1;
.super Ljava/lang/Object;
.source "XMLReaderXSDFactory.java"

# interfaces
.implements Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/input/sax/XMLReaderXSDFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSchemaFactory()Ljavax/xml/validation/SchemaFactory;
    .registers 2

    .prologue
    .line 90
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v0}, Ljavax/xml/validation/SchemaFactory;->newInstance(Ljava/lang/String;)Ljavax/xml/validation/SchemaFactory;

    move-result-object v0

    return-object v0
.end method
