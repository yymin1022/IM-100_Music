.class public final enum Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
.super Ljava/lang/Enum;
.source "LibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/LibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

.field public static final enum NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

.field public static final enum SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

.field public static final enum SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

.field private static final mSparseArrayOrdinal:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;",
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

    .line 651
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    const-string v3, "NORMAL"

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 652
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    const-string v3, "SELECTABLE"

    invoke-direct {v2, v3, v5}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 653
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    const-string v3, "SELECTABLE_PICKER"

    invoke-direct {v2, v3, v6}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 649
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    aput-object v3, v2, v6

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 672
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    .line 676
    const-class v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    .line 678
    .local v1, "modeType":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_40

    .line 680
    .end local v1    # "modeType":Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
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
    .line 649
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 684
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 649
    const-class v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;
    .registers 1

    .prologue
    .line 649
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    return-object v0
.end method


# virtual methods
.method public isPickingEditMode()Z
    .registers 3

    .prologue
    .line 689
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 695
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 692
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 689
    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_d
    .end packed-switch
.end method

.method public isSelectable()Z
    .registers 3

    .prologue
    .line 700
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 707
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 704
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 700
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 659
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 669
    const-string v0, ""

    :goto_d
    return-object v0

    .line 662
    :pswitch_e
    const-string v0, "NORMAL"

    goto :goto_d

    .line 664
    :pswitch_11
    const-string v0, "SELECTABLE"

    goto :goto_d

    .line 666
    :pswitch_14
    const-string v0, "SELECTABLE_PICKER"

    goto :goto_d

    .line 659
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method
