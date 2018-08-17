.class public final enum Lorg/jdom2/AttributeType;
.super Ljava/lang/Enum;
.source "AttributeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jdom2/AttributeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/AttributeType;

.field public static final enum CDATA:Lorg/jdom2/AttributeType;

.field public static final enum ENTITIES:Lorg/jdom2/AttributeType;

.field public static final enum ENTITY:Lorg/jdom2/AttributeType;

.field public static final enum ENUMERATION:Lorg/jdom2/AttributeType;

.field public static final enum ID:Lorg/jdom2/AttributeType;

.field public static final enum IDREF:Lorg/jdom2/AttributeType;

.field public static final enum IDREFS:Lorg/jdom2/AttributeType;

.field public static final enum NMTOKEN:Lorg/jdom2/AttributeType;

.field public static final enum NMTOKENS:Lorg/jdom2/AttributeType;

.field public static final enum NOTATION:Lorg/jdom2/AttributeType;

.field public static final enum UNDECLARED:Lorg/jdom2/AttributeType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "UNDECLARED"

    invoke-direct {v0, v1, v3}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    .line 80
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "CDATA"

    invoke-direct {v0, v1, v4}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->CDATA:Lorg/jdom2/AttributeType;

    .line 87
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "ID"

    invoke-direct {v0, v1, v5}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->ID:Lorg/jdom2/AttributeType;

    .line 95
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "IDREF"

    invoke-direct {v0, v1, v6}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->IDREF:Lorg/jdom2/AttributeType;

    .line 103
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "IDREFS"

    invoke-direct {v0, v1, v7}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->IDREFS:Lorg/jdom2/AttributeType;

    .line 109
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "ENTITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->ENTITY:Lorg/jdom2/AttributeType;

    .line 117
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "ENTITIES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->ENTITIES:Lorg/jdom2/AttributeType;

    .line 129
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "NMTOKEN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->NMTOKEN:Lorg/jdom2/AttributeType;

    .line 135
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "NMTOKENS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->NMTOKENS:Lorg/jdom2/AttributeType;

    .line 141
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "NOTATION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->NOTATION:Lorg/jdom2/AttributeType;

    .line 148
    new-instance v0, Lorg/jdom2/AttributeType;

    const-string v1, "ENUMERATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jdom2/AttributeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/AttributeType;->ENUMERATION:Lorg/jdom2/AttributeType;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/jdom2/AttributeType;

    sget-object v1, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jdom2/AttributeType;->CDATA:Lorg/jdom2/AttributeType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jdom2/AttributeType;->ID:Lorg/jdom2/AttributeType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jdom2/AttributeType;->IDREF:Lorg/jdom2/AttributeType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jdom2/AttributeType;->IDREFS:Lorg/jdom2/AttributeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jdom2/AttributeType;->ENTITY:Lorg/jdom2/AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jdom2/AttributeType;->ENTITIES:Lorg/jdom2/AttributeType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jdom2/AttributeType;->NMTOKEN:Lorg/jdom2/AttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/jdom2/AttributeType;->NMTOKENS:Lorg/jdom2/AttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/jdom2/AttributeType;->NOTATION:Lorg/jdom2/AttributeType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/jdom2/AttributeType;->ENUMERATION:Lorg/jdom2/AttributeType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jdom2/AttributeType;->$VALUES:[Lorg/jdom2/AttributeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final byIndex(I)Lorg/jdom2/AttributeType;
    .registers 4
    .param p0, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    if-gez p0, :cond_1b

    .line 162
    new-instance v0, Lorg/jdom2/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such AttributeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1b
    invoke-static {}, Lorg/jdom2/AttributeType;->values()[Lorg/jdom2/AttributeType;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_4c

    .line 165
    new-instance v0, Lorg/jdom2/IllegalDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such AttributeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/jdom2/AttributeType;->values()[Lorg/jdom2/AttributeType;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jdom2/IllegalDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_4c
    invoke-static {}, Lorg/jdom2/AttributeType;->values()[Lorg/jdom2/AttributeType;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static final getAttributeType(Ljava/lang/String;)Lorg/jdom2/AttributeType;
    .registers 4
    .param p0, "typeName"    # Ljava/lang/String;

    .prologue
    .line 184
    if-nez p0, :cond_5

    .line 185
    sget-object v1, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    .line 198
    :goto_4
    return-object v1

    .line 189
    :cond_5
    :try_start_5
    invoke-static {p0}, Lorg/jdom2/AttributeType;->valueOf(Ljava/lang/String;)Lorg/jdom2/AttributeType;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v1

    goto :goto_4

    .line 190
    :catch_a
    move-exception v0

    .line 191
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_21

    .line 196
    sget-object v1, Lorg/jdom2/AttributeType;->ENUMERATION:Lorg/jdom2/AttributeType;

    goto :goto_4

    .line 198
    :cond_21
    sget-object v1, Lorg/jdom2/AttributeType;->UNDECLARED:Lorg/jdom2/AttributeType;

    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/AttributeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lorg/jdom2/AttributeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/AttributeType;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/AttributeType;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lorg/jdom2/AttributeType;->$VALUES:[Lorg/jdom2/AttributeType;

    invoke-virtual {v0}, [Lorg/jdom2/AttributeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/AttributeType;

    return-object v0
.end method
