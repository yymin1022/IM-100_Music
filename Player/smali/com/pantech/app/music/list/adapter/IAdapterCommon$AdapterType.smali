.class public final enum Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;
.super Ljava/lang/Enum;
.source "IAdapterCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum ALBUMDETAIL_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum GRID_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum INDEXED_LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum LIST_SEARCH_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum SEPARATER_ARTIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum SEPARATER_PLAYLIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

.field public static final enum SEPARATER_SIMILARITY_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "GRID_ADAPTER"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->GRID_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 66
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "LIST_ADAPTER"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 67
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "ALBUMDETAIL_ADAPTER"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ALBUMDETAIL_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 68
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "INDEXED_LIST_ADAPTER"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 69
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "SEPARATER_ARTIST_ADAPTER"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_ARTIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 70
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "SEPARATER_SIMILARITY_ADAPTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_SIMILARITY_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 71
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "SEPARATER_PLAYLIST_ADAPTER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_PLAYLIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 72
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "EXPANDABLE_ADAPTER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 73
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "INDEXED_EXPANDABLE_ADAPTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 74
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "REARRANGE_ADAPTER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 75
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    const-string v1, "LIST_SEARCH_ADAPTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_SEARCH_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 63
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->GRID_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ALBUMDETAIL_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_ARTIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_SIMILARITY_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_PLAYLIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_SEARCH_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 116
    const-string v0, ""

    :goto_d
    return-object v0

    .line 83
    :pswitch_e
    const-string v0, "GRID_ADAPTER"

    goto :goto_d

    .line 86
    :pswitch_11
    const-string v0, "LIST_ADAPTER"

    goto :goto_d

    .line 89
    :pswitch_14
    const-string v0, "SEPARATER_PLAYLIST_ADAPTER"

    goto :goto_d

    .line 92
    :pswitch_17
    const-string v0, "INDEXED_LIST_ADAPTER"

    goto :goto_d

    .line 95
    :pswitch_1a
    const-string v0, "SEPARATER_ARTIST_ADAPTER"

    goto :goto_d

    .line 98
    :pswitch_1d
    const-string v0, "SEPARATER_SIMILARITY_ADAPTER"

    goto :goto_d

    .line 101
    :pswitch_20
    const-string v0, "EXPANDABLE_ADAPTER"

    goto :goto_d

    .line 104
    :pswitch_23
    const-string v0, "INDEXED_EXPANDABLE_ADAPTER"

    goto :goto_d

    .line 107
    :pswitch_26
    const-string v0, "REARRANGE_ADAPTER"

    goto :goto_d

    .line 110
    :pswitch_29
    const-string v0, "LIST_SEARCH_ADAPTER"

    goto :goto_d

    .line 113
    :pswitch_2c
    const-string v0, "ALBUMDETAIL_ADAPTER"

    goto :goto_d

    .line 80
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
    .end packed-switch
.end method
