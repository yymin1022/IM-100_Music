.class final Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;
.super Lorg/jdom2/output/support/AbstractXMLOutputProcessor;
.source "XMLOutputter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/XMLOutputter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultXMLProcessor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jdom2/output/XMLOutputter$1;)V
    .registers 2
    .param p1, "x0"    # Lorg/jdom2/output/XMLOutputter$1;

    .prologue
    .line 181
    invoke-direct {p0}, Lorg/jdom2/output/XMLOutputter$DefaultXMLProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public escapeAttributeEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "format"    # Lorg/jdom2/output/Format;

    .prologue
    .line 195
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 197
    .local v0, "sw":Ljava/io/StringWriter;
    :try_start_5
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-super {p0, v0, v1, p1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->attributeEscapedEntitiesFilter(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_12

    .line 201
    :goto_d
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 198
    :catch_12
    move-exception v1

    goto :goto_d
.end method

.method public final escapeElementEntities(Ljava/lang/String;Lorg/jdom2/output/Format;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "format"    # Lorg/jdom2/output/Format;

    .prologue
    .line 216
    invoke-virtual {p2}, Lorg/jdom2/output/Format;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/output/Format;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/jdom2/output/Format;->escapeText(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
