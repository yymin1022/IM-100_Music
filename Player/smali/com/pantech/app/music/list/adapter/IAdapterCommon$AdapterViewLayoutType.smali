.class public final enum Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;
.super Ljava/lang/Enum;
.source "IAdapterCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterViewLayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_ALBUMART_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_GRID_1LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_GRID_2LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_ICON_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADAPTERVIEW_ICON_REARRANGE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADATPERVIEW_ALBUMART_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADATPERVIEW_ICON_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

.field public static final enum ADATPERVIEW_ICON_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_GRID_2LINE"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_GRID_2LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 123
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_GRID_1LINE"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_GRID_1LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 124
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_ALBUMART_2_LINE"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 125
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADATPERVIEW_ALBUMART_ARTIST"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ALBUMART_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 126
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADATPERVIEW_ICON_2_LINE"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 127
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_ICON_1_LINE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 128
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_ICON_REARRANGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_REARRANGE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 129
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_2_LINE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 130
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_1_LINE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 131
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 132
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    const-string v1, "ADATPERVIEW_ICON_2_LINE_EXPANDABLE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    .line 120
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_GRID_2LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_GRID_1LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ALBUMART_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_REARRANGE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-class v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;
    .registers 1

    .prologue
    .line 120
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 156
    const-string v0, ""

    :goto_d
    return-object v0

    .line 139
    :pswitch_e
    const-string v0, "ADAPTERVIEW_ALBUMART_2_LINE"

    goto :goto_d

    .line 141
    :pswitch_11
    const-string v0, "ADATPERVIEW_ALBUMART_ARTIST"

    goto :goto_d

    .line 143
    :pswitch_14
    const-string v0, "ADATPERVIEW_ICON_2LINE"

    goto :goto_d

    .line 145
    :pswitch_17
    const-string v0, "ADAPTERVIEW_ICON_1LINE"

    goto :goto_d

    .line 147
    :pswitch_1a
    const-string v0, "ADAPTERVIEW_2_LINE"

    goto :goto_d

    .line 149
    :pswitch_1d
    const-string v0, "ADAPTERVIEW_1_LINE"

    goto :goto_d

    .line 151
    :pswitch_20
    const-string v0, "ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE"

    goto :goto_d

    .line 153
    :pswitch_23
    const-string v0, "ADATPERVIEW_ICON_2_LINE_EXPANDABLE"

    goto :goto_d

    .line 136
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method
