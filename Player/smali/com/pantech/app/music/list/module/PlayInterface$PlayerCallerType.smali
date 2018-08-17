.class public final enum Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
.super Ljava/lang/Enum;
.source "PlayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerCallerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

.field public static final enum EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

.field public static final enum LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

.field public static final enum NOTIFICATION:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

.field private static final mSparseArrayOrdinal:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const-string v3, "LIST"

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 59
    new-instance v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const-string v3, "NOTIFICATION"

    invoke-direct {v2, v3, v5}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->NOTIFICATION:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 60
    new-instance v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const-string v3, "EXINTERFACE"

    invoke-direct {v2, v3, v6}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 56
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    sget-object v3, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->NOTIFICATION:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    aput-object v3, v2, v6

    sput-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->$VALUES:[Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 73
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    .line 77
    const-class v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    .line 79
    .local v0, "callerType":Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    sget-object v2, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_40

    .line 81
    .end local v0    # "callerType":Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    :cond_56
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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->$VALUES:[Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    return-object v0
.end method


# virtual methods
.method public fromList()Z
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/pantech/app/music/list/module/PlayInterface$2;->$SwitchMap$com$pantech$app$music$list$module$PlayInterface$PlayerCallerType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 70
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 67
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 64
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method
