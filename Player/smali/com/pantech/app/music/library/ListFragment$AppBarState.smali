.class final enum Lcom/pantech/app/music/library/ListFragment$AppBarState;
.super Ljava/lang/Enum;
.source "ListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AppBarState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/library/ListFragment$AppBarState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/library/ListFragment$AppBarState;

.field public static final enum COLLAPSED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

.field public static final enum EXPANDED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

.field public static final enum IDLE:Lcom/pantech/app/music/library/ListFragment$AppBarState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 128
    new-instance v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/ListFragment$AppBarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;->EXPANDED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    .line 129
    new-instance v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/library/ListFragment$AppBarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;->COLLAPSED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    .line 130
    new-instance v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/library/ListFragment$AppBarState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;->IDLE:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    .line 127
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pantech/app/music/library/ListFragment$AppBarState;

    sget-object v1, Lcom/pantech/app/music/library/ListFragment$AppBarState;->EXPANDED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/library/ListFragment$AppBarState;->COLLAPSED:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/library/ListFragment$AppBarState;->IDLE:Lcom/pantech/app/music/library/ListFragment$AppBarState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;->$VALUES:[Lcom/pantech/app/music/library/ListFragment$AppBarState;

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
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/library/ListFragment$AppBarState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 127
    const-class v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/library/ListFragment$AppBarState;
    .registers 1

    .prologue
    .line 127
    sget-object v0, Lcom/pantech/app/music/library/ListFragment$AppBarState;->$VALUES:[Lcom/pantech/app/music/library/ListFragment$AppBarState;

    invoke-virtual {v0}, [Lcom/pantech/app/music/library/ListFragment$AppBarState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/library/ListFragment$AppBarState;

    return-object v0
.end method
