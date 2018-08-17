.class final enum Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;
.super Ljava/lang/Enum;
.source "MusicItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "VarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

.field public static final enum INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

.field public static final enum LONG:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

.field public static final enum STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    .line 63
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->LONG:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    .line 64
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->LONG:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->$VALUES:[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->$VALUES:[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    return-object v0
.end method
