.class public Lorg/jdom2/Attribute;
.super Lorg/jdom2/CloneBase;
.source "Attribute.java"

# interfaces
.implements Lorg/jdom2/NamespaceAware;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CDATA_TYPE:Lorg/jdom2/AttributeType;

.field public static final ENTITIES_TYPE:Lorg/jdom2/AttributeType;

.field public static final ENTITY_TYPE:Lorg/jdom2/AttributeType;

.field public static final ENUMERATED_TYPE:Lorg/jdom2/AttributeType;

.field public static final IDREFS_TYPE:Lorg/jdom2/AttributeType;

.field public static final IDREF_TYPE:Lorg/jdom2/AttributeType;

.field public static final ID_TYPE:Lorg/jdom2/AttributeType;

.field public static final NMTOKENS_TYPE:Lorg/jdom2/AttributeType;

.field public static final NMTOKEN_TYPE:Lorg/jdom2/AttributeType;

.field public static final NOTATION_TYPE:Lorg/jdom2/AttributeType;

.field public static final UNDECLARED_TYPE:Lorg/jdom2/AttributeType;

.field private static final serialVersionUID:J = 0xc8L


# instance fields
.field protected name:Ljava/lang/String;

.field protected namespace:Lorg/jdom2/Namespace;

.field protected transient parent:Lorg/jdom2/Element;

.field protected specified:Z

.field protected type:Lorg/jdom2/AttributeType;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->UNDECLARED_TYPE:Lorg/jdom2/AttributeType;

    .line 96
    sget-object v0, Lorg/jdom2/AttributeType;->CDATA:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->CDATA_TYPE:Lorg/jdom2/AttributeType;

    .line 99
    sget-object v0, Lorg/jdom2/AttributeType;->ID:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ID_TYPE:Lorg/jdom2/AttributeType;

    .line 102
    sget-object v0, Lorg/jdom2/AttributeType;->IDREF:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->IDREF_TYPE:Lorg/jdom2/AttributeType;

    .line 105
    sget-object v0, Lorg/jdom2/AttributeType;->IDREFS:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->IDREFS_TYPE:Lorg/jdom2/AttributeType;

    .line 108
    sget-object v0, Lorg/jdom2/AttributeType;->ENTITY:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ENTITY_TYPE:Lorg/jdom2/AttributeType;

    .line 111
    sget-object v0, Lorg/jdom2/AttributeType;->ENTITIES:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ENTITIES_TYPE:Lorg/jdom2/AttributeType;

    .line 114
    sget-object v0, Lorg/jdom2/AttributeType;->NMTOKEN:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->NMTOKEN_TYPE:Lorg/jdom2/AttributeType;

    .line 117
    sget-object v0, Lorg/jdom2/AttributeType;->NMTOKENS:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->NMTOKENS_TYPE:Lorg/jdom2/AttributeType;

    .line 120
    sget-object v0, Lorg/jdom2/AttributeType;->NOTATION:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->NOTATION_TYPE:Lorg/jdom2/AttributeType;

    .line 123
    sget-object v0, Lorg/jdom2/AttributeType;->ENUMERATION:Lorg/jdom2/AttributeType;

    sput-object v0, Lorg/jdom2/Attribute;->ENUMERATED_TYPE:Lorg/jdom2/AttributeType;

    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 138
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    iput-object v0, p0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom2/Namespace;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILorg/jdom2/Namespace;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "namespace"    # Lorg/jdom2/Namespace;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    invoke-static {p3}, Lorg/jdom2/AttributeType;->byIndex(I)Lorg/jdom2/AttributeType;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;

    .prologue
    .line 268
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    .line 269
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Lorg/jdom2/AttributeType;
    .param p4, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 219
    invoke-direct {p0}, Lorg/jdom2/CloneBase;-><init>()V

    .line 138
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    iput-object v0, p0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 220
    invoke-virtual {p0, p1}, Lorg/jdom2/Attribute;->setName(Ljava/lang/String;)Lorg/jdom2/Attribute;

    .line 221
    invoke-virtual {p0, p2}, Lorg/jdom2/Attribute;->setValue(Ljava/lang/String;)Lorg/jdom2/Attribute;

    .line 222
    invoke-virtual {p0, p3}, Lorg/jdom2/Attribute;->setAttributeType(Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;

    .line 223
    invoke-virtual {p0, p4}, Lorg/jdom2/Attribute;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 174
    sget-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)V

    .line 175
    return-void
.end method

.method private static final orderFirst(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p0, "nsa"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Namespace;",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_8

    .line 782
    .end local p1    # "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    :goto_7
    return-object p1

    .line 773
    .restart local p1    # "nsl":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Namespace;>;"
    :cond_8
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 774
    .local v3, "tm":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lorg/jdom2/Namespace;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 775
    .local v1, "ns":Lorg/jdom2/Namespace;
    if-eq v1, p0, :cond_11

    .line 776
    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 779
    .end local v1    # "ns":Lorg/jdom2/Namespace;
    :cond_27
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 780
    .local v2, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 782
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_7
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->clone()Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jdom2/Attribute;
    .registers 3

    .prologue
    .line 573
    invoke-super {p0}, Lorg/jdom2/CloneBase;->clone()Lorg/jdom2/CloneBase;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Attribute;

    .line 574
    .local v0, "clone":Lorg/jdom2/Attribute;
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    .line 575
    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jdom2/CloneBase;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->clone()Lorg/jdom2/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public detach()Lorg/jdom2/Attribute;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    if-eqz v0, :cond_9

    .line 584
    iget-object v0, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    invoke-virtual {v0, p0}, Lorg/jdom2/Element;->removeAttribute(Lorg/jdom2/Attribute;)Z

    .line 586
    :cond_9
    return-object p0
.end method

.method public getAttributeType()Lorg/jdom2/AttributeType;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    return-object v0
.end method

.method public getBooleanValue()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/DataConversionException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "valueTrim":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 700
    :cond_26
    const/4 v1, 0x1

    .line 707
    :goto_27
    return v1

    .line 701
    :cond_28
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_48

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 707
    :cond_48
    const/4 v1, 0x0

    goto :goto_27

    .line 709
    :cond_4a
    new-instance v1, Lorg/jdom2/DataConversionException;

    iget-object v2, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    const-string v3, "boolean"

    invoke-direct {v1, v2, v3}, Lorg/jdom2/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getDocument()Lorg/jdom2/Document;
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    invoke-virtual {v0}, Lorg/jdom2/Element;->getDocument()Lorg/jdom2/Document;

    move-result-object v0

    goto :goto_5
.end method

.method public getDoubleValue()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/DataConversionException;
        }
    .end annotation

    .prologue
    .line 669
    :try_start_0
    iget-object v2, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-wide v2

    .line 677
    :goto_e
    return-wide v2

    .line 670
    :catch_f
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "v":Ljava/lang/String;
    const-string v2, "INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 674
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_e

    .line 676
    :cond_21
    const-string v2, "-INF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 677
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_e

    .line 679
    :cond_2c
    new-instance v2, Lorg/jdom2/DataConversionException;

    iget-object v3, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    const-string v4, "double"

    invoke-direct {v2, v3, v4}, Lorg/jdom2/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public getFloatValue()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/DataConversionException;
        }
    .end annotation

    .prologue
    .line 651
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    return v1

    .line 652
    :catch_f
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jdom2/DataConversionException;

    iget-object v2, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    const-string v3, "float"

    invoke-direct {v1, v2, v3}, Lorg/jdom2/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getIntValue()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/DataConversionException;
        }
    .end annotation

    .prologue
    .line 616
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    .line 617
    :catch_b
    move-exception v0

    .line 618
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jdom2/DataConversionException;

    iget-object v2, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    const-string v3, "int"

    invoke-direct {v1, v2, v3}, Lorg/jdom2/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getLongValue()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/DataConversionException;
        }
    .end annotation

    .prologue
    .line 633
    :try_start_0
    iget-object v1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v2

    return-wide v2

    .line 634
    :catch_b
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lorg/jdom2/DataConversionException;

    iget-object v2, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    const-string v3, "long"

    invoke-direct {v1, v2, v3}, Lorg/jdom2/DataConversionException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Lorg/jdom2/Namespace;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public getNamespacePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespacesInScope()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 741
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 742
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v1, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 746
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jdom2/Namespace;>;"
    :goto_1c
    return-object v1

    :cond_1d
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jdom2/Attribute;->orderFirst(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_1c
.end method

.method public getNamespacesInherited()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    if-nez v0, :cond_d

    .line 760
    sget-object v0, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 762
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Element;->getNamespacesInScope()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jdom2/Attribute;->orderFirst(Lorg/jdom2/Namespace;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method public getNamespacesIntroduced()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 751
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getParent()Lorg/jdom2/Element;

    move-result-object v0

    if-nez v0, :cond_f

    .line 752
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 754
    :goto_e
    return-object v0

    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_e
.end method

.method public getParent()Lorg/jdom2/Element;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 383
    iget-object v1, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {v1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 387
    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 389
    :goto_12
    return-object v1

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isSpecified()Z
    .registers 2

    .prologue
    .line 540
    iget-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    return v0
.end method

.method public setAttributeType(I)Lorg/jdom2/Attribute;
    .registers 3
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 528
    invoke-static {p1}, Lorg/jdom2/AttributeType;->byIndex(I)Lorg/jdom2/AttributeType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/Attribute;->setAttributeType(Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;

    .line 529
    return-object p0
.end method

.method public setAttributeType(Lorg/jdom2/AttributeType;)Lorg/jdom2/Attribute;
    .registers 3
    .param p1, "type"    # Lorg/jdom2/AttributeType;

    .prologue
    .line 512
    if-nez p1, :cond_4

    sget-object p1, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    .end local p1    # "type":Lorg/jdom2/AttributeType;
    :cond_4
    iput-object p1, p0, Lorg/jdom2/Attribute;->type:Lorg/jdom2/AttributeType;

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 514
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 348
    if-nez p1, :cond_a

    .line 349
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Can not set a null name for an Attribute."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_a
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkAttributeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 354
    new-instance v1, Lorg/jdom2/IllegalNameException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 356
    :cond_18
    iput-object p1, p0, Lorg/jdom2/Attribute;->name:Ljava/lang/String;

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 358
    return-object p0
.end method

.method public setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;
    .registers 6
    .param p1, "namespace"    # Lorg/jdom2/Namespace;

    .prologue
    .line 443
    if-nez p1, :cond_4

    .line 444
    sget-object p1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    .line 449
    :cond_4
    sget-object v0, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-eq p1, v0, :cond_20

    const-string v0, ""

    invoke-virtual {p1}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 451
    new-instance v0, Lorg/jdom2/IllegalNameException;

    const-string v1, ""

    const-string v2, "attribute namespace"

    const-string v3, "An attribute namespace without a prefix can only be the NO_NAMESPACE namespace"

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom2/IllegalNameException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_20
    iput-object p1, p0, Lorg/jdom2/Attribute;->namespace:Lorg/jdom2/Namespace;

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 457
    return-object p0
.end method

.method protected setParent(Lorg/jdom2/Element;)Lorg/jdom2/Attribute;
    .registers 2
    .param p1, "parent"    # Lorg/jdom2/Element;

    .prologue
    .line 596
    iput-object p1, p0, Lorg/jdom2/Attribute;->parent:Lorg/jdom2/Element;

    .line 597
    return-object p0
.end method

.method public setSpecified(Z)V
    .registers 2
    .param p1, "specified"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 550
    return-void
.end method

.method public setValue(Ljava/lang/String;)Lorg/jdom2/Attribute;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 481
    if-nez p1, :cond_a

    .line 482
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Can not set a null value for an Attribute"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 485
    :cond_a
    invoke-static {p1}, Lorg/jdom2/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "reason":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 487
    new-instance v1, Lorg/jdom2/IllegalDataException;

    const-string v2, "attribute"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 489
    :cond_18
    iput-object p1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/Attribute;->specified:Z

    .line 491
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jdom2/Attribute;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
