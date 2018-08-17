.class final Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;
.super Ljava/lang/Object;
.source "AbstractStAXEventProcessor.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/output/support/AbstractStAXEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/xml/stream/events/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field private final fac:Ljavax/xml/stream/XMLEventFactory;

.field private final source:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Attribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;Z)V
    .registers 4
    .param p2, "fac"    # Ljavax/xml/stream/XMLEventFactory;
    .param p3, "specifiedAttributesOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Attribute;",
            ">;",
            "Ljavax/xml/stream/XMLEventFactory;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "source":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-eqz p3, :cond_9

    invoke-direct {p0, p1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->specified(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    .end local p1    # "source":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    :cond_9
    iput-object p1, p0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->source:Ljava/util/Iterator;

    .line 163
    iput-object p2, p0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->fac:Ljavax/xml/stream/XMLEventFactory;

    .line 164
    return-void
.end method

.method private specified(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Attribute;",
            ">;)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jdom2/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "src":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    const/4 v2, 0x0

    .line 167
    if-nez p1, :cond_4

    .line 177
    :cond_3
    :goto_3
    return-object v2

    .line 170
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Attribute;>;"
    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 172
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Attribute;

    .line 173
    .local v1, "att":Lorg/jdom2/Attribute;
    invoke-virtual {v1}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 177
    .end local v1    # "att":Lorg/jdom2/Attribute;
    :cond_1f
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_3
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->source:Ljava/util/Iterator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->source:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->next()Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/xml/stream/events/Attribute;
    .registers 8

    .prologue
    .line 187
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->source:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 188
    .local v0, "att":Lorg/jdom2/Attribute;
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    .line 189
    .local v1, "ns":Lorg/jdom2/Namespace;
    sget-object v2, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v1, v2, :cond_1f

    .line 190
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->fac:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v2

    .line 192
    :goto_1e
    return-object v2

    :cond_1f
    iget-object v2, p0, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;->fac:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Ljavax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v2

    goto :goto_1e
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove attributes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
