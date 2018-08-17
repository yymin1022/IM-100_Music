.class synthetic Lcom/pantech/app/music/list/PageInfoType$2;
.super Ljava/lang/Object;
.source "PageInfoType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/PageInfoType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 653
    invoke-static {}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    :try_start_9
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ALBUMART_ARTIST:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_27f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_27c

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_GRID_1LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_279

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_GRID_2LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_276

    :goto_35
    :try_start_35
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_1_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_273

    :goto_40
    :try_start_40
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_270

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ICON_REARRANGE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_26d

    :goto_56
    :try_start_56
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADAPTERVIEW_ALBUMART_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_26a

    :goto_62
    :try_start_62
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterViewLayoutType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ADATPERVIEW_ICON_2_LINE_EXPANDABLE:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterViewLayoutType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_267

    .line 543
    :goto_6e
    invoke-static {}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->values()[Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    :try_start_77
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_ARTIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_82} :catch_264

    :goto_82
    :try_start_82
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_SIMILARITY_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_8d} :catch_261

    :goto_8d
    :try_start_8d
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_98} :catch_25e

    :goto_98
    :try_start_98
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_PLAYLIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a3} :catch_25b

    :goto_a3
    :try_start_a3
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_ae} :catch_258

    :goto_ae
    :try_start_ae
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_b9} :catch_255

    :goto_b9
    :try_start_b9
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_EXPANDABLE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c4} :catch_252

    :goto_c4
    :try_start_c4
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_24f

    :goto_d0
    :try_start_d0
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->GRID_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d0 .. :try_end_dc} :catch_24c

    :goto_dc
    :try_start_dc
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_SEARCH_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e8} :catch_249

    :goto_e8
    :try_start_e8
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    sget-object v1, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ALBUMDETAIL_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_f4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f4} :catch_246

    .line 463
    :goto_f4
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    :try_start_fd
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_108
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fd .. :try_end_108} :catch_243

    :goto_108
    :try_start_108
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_113
    .catch Ljava/lang/NoSuchFieldError; {:try_start_108 .. :try_end_113} :catch_240

    :goto_113
    :try_start_113
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_11e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_113 .. :try_end_11e} :catch_23d

    :goto_11e
    :try_start_11e
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11e .. :try_end_129} :catch_23a

    :goto_129
    :try_start_129
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_134} :catch_237

    :goto_134
    :try_start_134
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_13f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_134 .. :try_end_13f} :catch_234

    :goto_13f
    :try_start_13f
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_14a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13f .. :try_end_14a} :catch_231

    :goto_14a
    :try_start_14a
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_156
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14a .. :try_end_156} :catch_22e

    :goto_156
    :try_start_156
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_162
    .catch Ljava/lang/NoSuchFieldError; {:try_start_156 .. :try_end_162} :catch_22b

    :goto_162
    :try_start_162
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_16e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_162 .. :try_end_16e} :catch_228

    :goto_16e
    :try_start_16e
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_17a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_17a} :catch_225

    :goto_17a
    :try_start_17a
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_186
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17a .. :try_end_186} :catch_222

    :goto_186
    :try_start_186
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_192
    .catch Ljava/lang/NoSuchFieldError; {:try_start_186 .. :try_end_192} :catch_21f

    :goto_192
    :try_start_192
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_19e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_192 .. :try_end_19e} :catch_21d

    :goto_19e
    :try_start_19e
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19e .. :try_end_1aa} :catch_21b

    :goto_1aa
    :try_start_1aa
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1aa .. :try_end_1b6} :catch_219

    :goto_1b6
    :try_start_1b6
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_1c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b6 .. :try_end_1c2} :catch_217

    :goto_1c2
    :try_start_1c2
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_1ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c2 .. :try_end_1ce} :catch_215

    :goto_1ce
    :try_start_1ce
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1da
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ce .. :try_end_1da} :catch_213

    :goto_1da
    :try_start_1da
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1da .. :try_end_1e6} :catch_211

    :goto_1e6
    :try_start_1e6
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1f2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e6 .. :try_end_1f2} :catch_20f

    :goto_1f2
    :try_start_1f2
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f2 .. :try_end_1fe} :catch_20d

    :goto_1fe
    :try_start_1fe
    sget-object v0, Lcom/pantech/app/music/list/PageInfoType$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_20a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fe .. :try_end_20a} :catch_20b

    :goto_20a
    return-void

    :catch_20b
    move-exception v0

    goto :goto_20a

    :catch_20d
    move-exception v0

    goto :goto_1fe

    :catch_20f
    move-exception v0

    goto :goto_1f2

    :catch_211
    move-exception v0

    goto :goto_1e6

    :catch_213
    move-exception v0

    goto :goto_1da

    :catch_215
    move-exception v0

    goto :goto_1ce

    :catch_217
    move-exception v0

    goto :goto_1c2

    :catch_219
    move-exception v0

    goto :goto_1b6

    :catch_21b
    move-exception v0

    goto :goto_1aa

    :catch_21d
    move-exception v0

    goto :goto_19e

    :catch_21f
    move-exception v0

    goto/16 :goto_192

    :catch_222
    move-exception v0

    goto/16 :goto_186

    :catch_225
    move-exception v0

    goto/16 :goto_17a

    :catch_228
    move-exception v0

    goto/16 :goto_16e

    :catch_22b
    move-exception v0

    goto/16 :goto_162

    :catch_22e
    move-exception v0

    goto/16 :goto_156

    :catch_231
    move-exception v0

    goto/16 :goto_14a

    :catch_234
    move-exception v0

    goto/16 :goto_13f

    :catch_237
    move-exception v0

    goto/16 :goto_134

    :catch_23a
    move-exception v0

    goto/16 :goto_129

    :catch_23d
    move-exception v0

    goto/16 :goto_11e

    :catch_240
    move-exception v0

    goto/16 :goto_113

    :catch_243
    move-exception v0

    goto/16 :goto_108

    .line 543
    :catch_246
    move-exception v0

    goto/16 :goto_f4

    :catch_249
    move-exception v0

    goto/16 :goto_e8

    :catch_24c
    move-exception v0

    goto/16 :goto_dc

    :catch_24f
    move-exception v0

    goto/16 :goto_d0

    :catch_252
    move-exception v0

    goto/16 :goto_c4

    :catch_255
    move-exception v0

    goto/16 :goto_b9

    :catch_258
    move-exception v0

    goto/16 :goto_ae

    :catch_25b
    move-exception v0

    goto/16 :goto_a3

    :catch_25e
    move-exception v0

    goto/16 :goto_98

    :catch_261
    move-exception v0

    goto/16 :goto_8d

    :catch_264
    move-exception v0

    goto/16 :goto_82

    .line 653
    :catch_267
    move-exception v0

    goto/16 :goto_6e

    :catch_26a
    move-exception v0

    goto/16 :goto_62

    :catch_26d
    move-exception v0

    goto/16 :goto_56

    :catch_270
    move-exception v0

    goto/16 :goto_4b

    :catch_273
    move-exception v0

    goto/16 :goto_40

    :catch_276
    move-exception v0

    goto/16 :goto_35

    :catch_279
    move-exception v0

    goto/16 :goto_2a

    :catch_27c
    move-exception v0

    goto/16 :goto_1f

    :catch_27f
    move-exception v0

    goto/16 :goto_14
.end method
