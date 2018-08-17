.class public final enum Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
.super Ljava/lang/Enum;
.source "IListHolderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/IListHolderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_D0_NOTHING:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_MOVE_DETAIL_WITH_IMAGE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_MOVE_DETAIL_WITH_TITLE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_PLAY_ALBUM_TRACK:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_PLAY_CUR_ITEM:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_PLAY_ONLY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_PLAY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

.field public static final enum CLICK_SEND_ITEM_INFO:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_D0_NOTHING"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_D0_NOTHING:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 13
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_MOVE_DETAIL_WITH_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_IMAGE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 14
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_MOVE_DETAIL_WITH_TITLE"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_TITLE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 15
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_PLAY_TRACKS"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 16
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_PLAY_ONLY_TRACKS"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ONLY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 17
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_PLAY_CUR_ITEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_CUR_ITEM:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 18
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_PLAY_ALBUM_TRACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ALBUM_TRACK:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 19
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    const-string v1, "CLICK_SEND_ITEM_INFO"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_SEND_ITEM_INFO:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_D0_NOTHING:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_IMAGE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_TITLE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ONLY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_CUR_ITEM:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ALBUM_TRACK:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_SEND_ITEM_INFO:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->$VALUES:[Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->$VALUES:[Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v0}, [Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    return-object v0
.end method
