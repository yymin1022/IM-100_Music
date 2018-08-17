.class final enum Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;
.super Ljava/lang/Enum;
.source "ListDragTouchIntercepter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/component/ListDragTouchIntercepter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OUT_OF_BORDER_DIRECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

.field public static final enum DOWN:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

.field public static final enum UP:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->UP:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    new-instance v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->DOWN:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    sget-object v1, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->UP:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->DOWN:Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->$VALUES:[Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->$VALUES:[Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/component/ListDragTouchIntercepter$OUT_OF_BORDER_DIRECTION;

    return-object v0
.end method
