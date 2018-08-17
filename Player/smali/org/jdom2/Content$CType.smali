.class public final enum Lorg/jdom2/Content$CType;
.super Ljava/lang/Enum;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jdom2/Content$CType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/Content$CType;

.field public static final enum CDATA:Lorg/jdom2/Content$CType;

.field public static final enum Comment:Lorg/jdom2/Content$CType;

.field public static final enum DocType:Lorg/jdom2/Content$CType;

.field public static final enum Element:Lorg/jdom2/Content$CType;

.field public static final enum EntityRef:Lorg/jdom2/Content$CType;

.field public static final enum ProcessingInstruction:Lorg/jdom2/Content$CType;

.field public static final enum Text:Lorg/jdom2/Content$CType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "Comment"

    invoke-direct {v0, v1, v3}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->Comment:Lorg/jdom2/Content$CType;

    .line 118
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "Element"

    invoke-direct {v0, v1, v4}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->Element:Lorg/jdom2/Content$CType;

    .line 120
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "ProcessingInstruction"

    invoke-direct {v0, v1, v5}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    .line 122
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "EntityRef"

    invoke-direct {v0, v1, v6}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->EntityRef:Lorg/jdom2/Content$CType;

    .line 124
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "Text"

    invoke-direct {v0, v1, v7}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    .line 126
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "CDATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    .line 128
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "DocType"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->DocType:Lorg/jdom2/Content$CType;

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/jdom2/Content$CType;

    sget-object v1, Lorg/jdom2/Content$CType;->Comment:Lorg/jdom2/Content$CType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jdom2/Content$CType;->Element:Lorg/jdom2/Content$CType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jdom2/Content$CType;->EntityRef:Lorg/jdom2/Content$CType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jdom2/Content$CType;->DocType:Lorg/jdom2/Content$CType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jdom2/Content$CType;->$VALUES:[Lorg/jdom2/Content$CType;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/Content$CType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    const-class v0, Lorg/jdom2/Content$CType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content$CType;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/Content$CType;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lorg/jdom2/Content$CType;->$VALUES:[Lorg/jdom2/Content$CType;

    invoke-virtual {v0}, [Lorg/jdom2/Content$CType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Content$CType;

    return-object v0
.end method
