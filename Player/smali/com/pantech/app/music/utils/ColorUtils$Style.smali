.class public final enum Lcom/pantech/app/music/utils/ColorUtils$Style;
.super Ljava/lang/Enum;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/ColorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/utils/ColorUtils$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/utils/ColorUtils$Style;

.field public static final enum BLENDING_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

.field public static final enum MAIN_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

.field public static final enum POINT_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

.field public static final enum POINT_COLOR2:Lcom/pantech/app/music/utils/ColorUtils$Style;

.field public static final enum SUB_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/pantech/app/music/utils/ColorUtils$Style;

    const-string v1, "MAIN_COLOR"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/utils/ColorUtils$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/ColorUtils$Style;->MAIN_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    .line 161
    new-instance v0, Lcom/pantech/app/music/utils/ColorUtils$Style;

    const-string v1, "SUB_COLOR"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/utils/ColorUtils$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/ColorUtils$Style;->SUB_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    .line 162
    new-instance v0, Lcom/pantech/app/music/utils/ColorUtils$Style;

    const-string v1, "POINT_COLOR"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/utils/ColorUtils$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/ColorUtils$Style;->POINT_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    .line 163
    new-instance v0, Lcom/pantech/app/music/utils/ColorUtils$Style;

    const-string v1, "POINT_COLOR2"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/utils/ColorUtils$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/ColorUtils$Style;->POINT_COLOR2:Lcom/pantech/app/music/utils/ColorUtils$Style;

    .line 164
    new-instance v0, Lcom/pantech/app/music/utils/ColorUtils$Style;

    const-string v1, "BLENDING_COLOR"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/utils/ColorUtils$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/utils/ColorUtils$Style;->BLENDING_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    .line 159
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pantech/app/music/utils/ColorUtils$Style;

    sget-object v1, Lcom/pantech/app/music/utils/ColorUtils$Style;->MAIN_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/utils/ColorUtils$Style;->SUB_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/utils/ColorUtils$Style;->POINT_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/utils/ColorUtils$Style;->POINT_COLOR2:Lcom/pantech/app/music/utils/ColorUtils$Style;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/utils/ColorUtils$Style;->BLENDING_COLOR:Lcom/pantech/app/music/utils/ColorUtils$Style;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pantech/app/music/utils/ColorUtils$Style;->$VALUES:[Lcom/pantech/app/music/utils/ColorUtils$Style;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/utils/ColorUtils$Style;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    const-class v0, Lcom/pantech/app/music/utils/ColorUtils$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/ColorUtils$Style;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/utils/ColorUtils$Style;
    .registers 1

    .prologue
    .line 159
    sget-object v0, Lcom/pantech/app/music/utils/ColorUtils$Style;->$VALUES:[Lcom/pantech/app/music/utils/ColorUtils$Style;

    invoke-virtual {v0}, [Lcom/pantech/app/music/utils/ColorUtils$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/utils/ColorUtils$Style;

    return-object v0
.end method
