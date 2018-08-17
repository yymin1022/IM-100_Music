.class final enum Lcom/pantech/app/music/list/module/PlayInterface$PlayType;
.super Ljava/lang/Enum;
.source "PlayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PlayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/module/PlayInterface$PlayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

.field public static final enum PLAY:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

.field public static final enum PLAY_ALL:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

.field public static final enum PLAY_QUERY_CHILD:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

.field public static final enum PLAY_SELECTED:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    .line 51
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    const-string v1, "PLAY_SELECTED"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_SELECTED:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    .line 52
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    const-string v1, "PLAY_ALL"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_ALL:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    .line 53
    new-instance v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    const-string v1, "PLAY_QUERY_CHILD"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_QUERY_CHILD:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    sget-object v1, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_SELECTED:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_ALL:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->PLAY_QUERY_CHILD:Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->$VALUES:[Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/module/PlayInterface$PlayType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/module/PlayInterface$PlayType;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->$VALUES:[Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/module/PlayInterface$PlayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/module/PlayInterface$PlayType;

    return-object v0
.end method
