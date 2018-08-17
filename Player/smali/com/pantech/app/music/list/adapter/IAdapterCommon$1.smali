.class synthetic Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;
.super Ljava/lang/Object;
.source "IAdapterCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/adapter/IAdapterCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 176
    invoke-static {}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    :try_start_9
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->NORMAL:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_1d3

    :goto_14
    :try_start_14
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->INDEXED:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_1d0

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->GRID:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_1cd

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_1ca

    :goto_35
    :try_start_35
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->SEPARATER_SIMILARIRTY:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_1c7

    :goto_40
    :try_start_40
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_1c4

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_1c1

    :goto_56
    :try_start_56
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_PARENT:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_1be

    :goto_62
    :try_start_62
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_INDEXED_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_1bb

    :goto_6e
    :try_start_6e
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterBindType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->EXPANDABLE_SEPARATER_ARTIST_CHILD:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterBindType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_1b8

    .line 136
    :goto_7a
    invoke-static {}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    :try_start_83
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8e} :catch_1b5

    :goto_8e
    :try_start_8e
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ALBUMART_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_99} :catch_1b2

    :goto_99
    :try_start_99
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_a4} :catch_1af

    :goto_a4
    :try_start_a4
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_af} :catch_1ac

    :goto_af
    :try_start_af
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_ba} :catch_1a9

    :goto_ba
    :try_start_ba
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_c5} :catch_1a6

    :goto_c5
    :try_start_c5
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_d0} :catch_1a3

    :goto_d0
    :try_start_d0
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_dc} :catch_1a0

    .line 80
    :goto_dc
    invoke-static {}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    :try_start_e5
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->GRID_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e5 .. :try_end_f0} :catch_19d

    :goto_f0
    :try_start_f0
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_fb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fb} :catch_19a

    :goto_fb
    :try_start_fb
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_PLAYLIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_106
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fb .. :try_end_106} :catch_197

    :goto_106
    :try_start_106
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_111
    .catch Ljava/lang/NoSuchFieldError; {:try_start_106 .. :try_end_111} :catch_194

    :goto_111
    :try_start_111
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_ARTIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_11c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_111 .. :try_end_11c} :catch_192

    :goto_11c
    :try_start_11c
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_SIMILARITY_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11c .. :try_end_127} :catch_190

    :goto_127
    :try_start_127
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_127 .. :try_end_132} :catch_18e

    :goto_132
    :try_start_132
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_13e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13e} :catch_18c

    :goto_13e
    :try_start_13e
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13e .. :try_end_14a} :catch_18a

    :goto_14a
    :try_start_14a
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_SEARCH_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_156
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14a .. :try_end_156} :catch_188

    :goto_156
    :try_start_156
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ALBUMDETAIL_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_156 .. :try_end_162} :catch_186

    .line 29
    :goto_162
    invoke-static {}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewType:[I

    :try_start_16b
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->NORMAL_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_176
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16b .. :try_end_176} :catch_184

    :goto_176
    :try_start_176
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->SEPARATER_VIEW:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_181
    .catch Ljava/lang/NoSuchFieldError; {:try_start_176 .. :try_end_181} :catch_182

    :goto_181
    return-void

    :catch_182
    move-exception v0

    goto :goto_181

    :catch_184
    move-exception v0

    goto :goto_176

    .line 80
    :catch_186
    move-exception v0

    goto :goto_162

    :catch_188
    move-exception v0

    goto :goto_156

    :catch_18a
    move-exception v0

    goto :goto_14a

    :catch_18c
    move-exception v0

    goto :goto_13e

    :catch_18e
    move-exception v0

    goto :goto_132

    :catch_190
    move-exception v0

    goto :goto_127

    :catch_192
    move-exception v0

    goto :goto_11c

    :catch_194
    move-exception v0

    goto/16 :goto_111

    :catch_197
    move-exception v0

    goto/16 :goto_106

    :catch_19a
    move-exception v0

    goto/16 :goto_fb

    :catch_19d
    move-exception v0

    goto/16 :goto_f0

    .line 136
    :catch_1a0
    move-exception v0

    goto/16 :goto_dc

    :catch_1a3
    move-exception v0

    goto/16 :goto_d0

    :catch_1a6
    move-exception v0

    goto/16 :goto_c5

    :catch_1a9
    move-exception v0

    goto/16 :goto_ba

    :catch_1ac
    move-exception v0

    goto/16 :goto_af

    :catch_1af
    move-exception v0

    goto/16 :goto_a4

    :catch_1b2
    move-exception v0

    goto/16 :goto_99

    :catch_1b5
    move-exception v0

    goto/16 :goto_8e

    .line 176
    :catch_1b8
    move-exception v0

    goto/16 :goto_7a

    :catch_1bb
    move-exception v0

    goto/16 :goto_6e

    :catch_1be
    move-exception v0

    goto/16 :goto_62

    :catch_1c1
    move-exception v0

    goto/16 :goto_56

    :catch_1c4
    move-exception v0

    goto/16 :goto_4b

    :catch_1c7
    move-exception v0

    goto/16 :goto_40

    :catch_1ca
    move-exception v0

    goto/16 :goto_35

    :catch_1cd
    move-exception v0

    goto/16 :goto_2a

    :catch_1d0
    move-exception v0

    goto/16 :goto_1f

    :catch_1d3
    move-exception v0

    goto/16 :goto_14
.end method
