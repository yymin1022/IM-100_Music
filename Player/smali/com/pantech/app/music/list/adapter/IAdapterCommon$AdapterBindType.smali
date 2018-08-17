.class public final enum Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
.super Ljava/lang/Enum;
.source "IAdapterCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdapterBindType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum EXPANDABLE_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum EXPANDABLE_INDEXED_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum EXPANDABLE_INDEXED_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum EXPANDABLE_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum EXPANDABLE_SEPARATER_ARTIST_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum GRID:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum NORMAL:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

.field public static final enum SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->NORMAL:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 163
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "INDEXED"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 164
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->GRID:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 165
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "SEPARATER_ARTIST"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 166
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "SEPARATER_SIMILARIRTY"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 167
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "EXPANDABLE_PARENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 168
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "EXPANDABLE_CHILD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 169
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "EXPANDABLE_INDEXED_PARENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 170
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "EXPANDABLE_INDEXED_CHILD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 171
    new-instance v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    const-string v1, "EXPANDABLE_SEPARATER_ARTIST_CHILD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_SEPARATER_ARTIST_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    .line 160
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->NORMAL:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->GRID:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_SEPARATER_ARTIST_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    const-class v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;
    .registers 1

    .prologue
    .line 160
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->$VALUES:[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 176
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 200
    const-string v0, ""

    :goto_d
    return-object v0

    .line 179
    :pswitch_e
    const-string v0, "NORMAL"

    goto :goto_d

    .line 181
    :pswitch_11
    const-string v0, "INDEXED"

    goto :goto_d

    .line 183
    :pswitch_14
    const-string v0, "GRID"

    goto :goto_d

    .line 185
    :pswitch_17
    const-string v0, "SEPERATOR_ARTIST"

    goto :goto_d

    .line 187
    :pswitch_1a
    const-string v0, "SEPERATOR_SIMILARIRTY_ADATPER"

    goto :goto_d

    .line 189
    :pswitch_1d
    const-string v0, "EXPANDABLE_PARENT"

    goto :goto_d

    .line 191
    :pswitch_20
    const-string v0, "EXPANDABLE_CHILD"

    goto :goto_d

    .line 193
    :pswitch_23
    const-string v0, "EXPANDABLE_INDEXED_PARENT"

    goto :goto_d

    .line 195
    :pswitch_26
    const-string v0, "EXPANDABLE_INDEXED_CHILD"

    goto :goto_d

    .line 197
    :pswitch_29
    const-string v0, "EXPANDABLE_SEPARATER_ARTIST_CHILD"

    goto :goto_d

    .line 176
    :pswitch_data_2c
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
    .end packed-switch
.end method
