.class public final enum Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
.super Ljava/lang/Enum;
.source "LibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/LibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PickingSelectModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

.field public static final enum ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

.field public static final enum ADD_TO_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

.field public static final enum MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

.field public static final enum NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

.field private static final mSparseArrayOrdinal:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 713
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const-string v3, "ADD_PLAYLIST"

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 714
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const-string v3, "MAKE_AND_ADD_PLAYLIST"

    invoke-direct {v2, v3, v5}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 715
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const-string v3, "ADD_TO_FAVORITES"

    invoke-direct {v2, v3, v6}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_TO_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 716
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const-string v3, "NONE"

    invoke-direct {v2, v3, v7}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 711
    const/4 v2, 0x4

    new-array v2, v2, [Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_TO_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    aput-object v3, v2, v7

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 737
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    .line 741
    const-class v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    .line 743
    .local v1, "modeType":Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4e

    .line 745
    .end local v1    # "modeType":Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    :cond_64
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
    .line 711
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 749
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 711
    const-class v0, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;
    .registers 1

    .prologue
    .line 711
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 722
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$PickingSelectModeType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 734
    const-string v0, ""

    :goto_d
    return-object v0

    .line 725
    :pswitch_e
    const-string v0, "ADD_PLAYLIST"

    goto :goto_d

    .line 727
    :pswitch_11
    const-string v0, "MAKE_AND_ADD_PLAYLIST"

    goto :goto_d

    .line 729
    :pswitch_14
    const-string v0, "ADD_TO_FAVORITES"

    goto :goto_d

    .line 731
    :pswitch_17
    const-string v0, "NONE"

    goto :goto_d

    .line 722
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method
