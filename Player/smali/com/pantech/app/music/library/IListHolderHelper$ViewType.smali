.class public final enum Lcom/pantech/app/music/library/IListHolderHelper$ViewType;
.super Ljava/lang/Enum;
.source "IListHolderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/IListHolderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/library/IListHolderHelper$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

.field public static final enum VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

.field public static final enum VIEW_TYPE_DIVIDER_BUTTON:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

.field public static final enum VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    const-string v1, "VIEW_TYPE_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    .line 24
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    const-string v1, "VIEW_TYPE_DIVIDER_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER_BUTTON:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    .line 25
    new-instance v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    const-string v1, "VIEW_TYPE_DIVIDER"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER_BUTTON:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->$VALUES:[Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/pantech/app/music/library/IListHolderHelper$ViewType;
    .registers 4
    .param p0, "ordinal"    # I

    .prologue
    .line 28
    const-class v2, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    .line 29
    .local v1, "viewType":Lcom/pantech/app/music/library/IListHolderHelper$ViewType;
    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v2

    if-ne v2, p0, :cond_a

    .line 33
    .end local v1    # "viewType":Lcom/pantech/app/music/library/IListHolderHelper$ViewType;
    :goto_1c
    return-object v1

    :cond_1d
    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_NORMAL:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    goto :goto_1c
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/library/IListHolderHelper$ViewType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/library/IListHolderHelper$ViewType;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->$VALUES:[Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    return-object v0
.end method
