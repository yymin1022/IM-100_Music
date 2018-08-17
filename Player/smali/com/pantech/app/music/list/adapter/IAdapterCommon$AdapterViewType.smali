.class public final enum Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
.super Ljava/lang/Enum;
.source "IAdapterCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

.field public static final enum NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

.field public static final enum SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

.field private static final mSparseArrayOrdinal:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 23
    new-instance v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    const-string v4, "NORMAL_VIEW"

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    .line 24
    new-instance v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    const-string v4, "SEPARATER_VIEW"

    invoke-direct {v3, v4, v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    .line 21
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    aput-object v4, v3, v5

    sget-object v4, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    aput-object v4, v3, v6

    sput-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    .line 40
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, "ordinal":I
    const-class v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    .line 47
    .local v1, "modeType":Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    sget-object v3, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    goto :goto_33

    .line 50
    .end local v1    # "modeType":Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    :cond_47
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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 37
    const-string v0, ""

    :goto_d
    return-object v0

    .line 32
    :pswitch_e
    const-string v0, "NORMAL_VIEW"

    goto :goto_d

    .line 34
    :pswitch_11
    const-string v0, "SEPERATOR_VIEW"

    goto :goto_d

    .line 29
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method
