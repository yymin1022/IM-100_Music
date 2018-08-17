.class synthetic Lcom/pantech/app/music/utils/LibraryUtils$1;
.super Ljava/lang/Object;
.source "LibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/LibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$ContentsType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$HierarchyType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$PickingSelectModeType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 722
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$PickingSelectModeType:[I

    :try_start_9
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$PickingSelectModeType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_237

    :goto_14
    :try_start_14
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$PickingSelectModeType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->MAKE_AND_ADD_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_234

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$PickingSelectModeType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ADD_TO_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_231

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$PickingSelectModeType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_22e

    .line 659
    :goto_35
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

    :try_start_3e
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_22b

    :goto_49
    :try_start_49
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_228

    :goto_54
    :try_start_54
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ListModeType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_225

    .line 633
    :goto_5f
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ContentsType:[I

    :try_start_68
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ContentsType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_LOCAL:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_73} :catch_222

    :goto_73
    :try_start_73
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ContentsType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7e} :catch_21f

    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ContentsType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_89} :catch_21c

    :goto_89
    :try_start_89
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$ContentsType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->CONTENTS_TYPE_SECRET_BOX:Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$ContentsType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_219

    .line 602
    :goto_94
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$HierarchyType:[I

    :try_start_9d
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$HierarchyType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_GROUP:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a8} :catch_216

    :goto_a8
    :try_start_a8
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$HierarchyType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_CHILD:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b3} :catch_213

    :goto_b3
    :try_start_b3
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$HierarchyType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->HIERARCHY_ALONE:Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$HierarchyType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_be} :catch_210

    .line 73
    :goto_be
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    :try_start_c7
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d2} :catch_20d

    :goto_d2
    :try_start_d2
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dd} :catch_20a

    :goto_dd
    :try_start_dd
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e8} :catch_207

    :goto_e8
    :try_start_e8
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e8 .. :try_end_f3} :catch_204

    :goto_f3
    :try_start_f3
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_fe
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f3 .. :try_end_fe} :catch_201

    :goto_fe
    :try_start_fe
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_109
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_109} :catch_1fe

    :goto_109
    :try_start_109
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_109 .. :try_end_114} :catch_1fb

    :goto_114
    :try_start_114
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_120} :catch_1f8

    :goto_120
    :try_start_120
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_12c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_12c} :catch_1f5

    :goto_12c
    :try_start_12c
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_138
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12c .. :try_end_138} :catch_1f2

    :goto_138
    :try_start_138
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_144
    .catch Ljava/lang/NoSuchFieldError; {:try_start_138 .. :try_end_144} :catch_1ef

    :goto_144
    :try_start_144
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_1ec

    :goto_150
    :try_start_150
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_15c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15c} :catch_1e9

    :goto_15c
    :try_start_15c
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_168
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15c .. :try_end_168} :catch_1e7

    :goto_168
    :try_start_168
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_174
    .catch Ljava/lang/NoSuchFieldError; {:try_start_168 .. :try_end_174} :catch_1e5

    :goto_174
    :try_start_174
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_180
    .catch Ljava/lang/NoSuchFieldError; {:try_start_174 .. :try_end_180} :catch_1e3

    :goto_180
    :try_start_180
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_180 .. :try_end_18c} :catch_1e1

    :goto_18c
    :try_start_18c
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_198
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_198} :catch_1df

    :goto_198
    :try_start_198
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1dd

    :goto_1a4
    :try_start_1a4
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_1b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a4 .. :try_end_1b0} :catch_1db

    :goto_1b0
    :try_start_1b0
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_1bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b0 .. :try_end_1bc} :catch_1d9

    :goto_1bc
    :try_start_1bc
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1bc .. :try_end_1c8} :catch_1d7

    :goto_1c8
    :try_start_1c8
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_1d4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d4} :catch_1d5

    :goto_1d4
    return-void

    :catch_1d5
    move-exception v0

    goto :goto_1d4

    :catch_1d7
    move-exception v0

    goto :goto_1c8

    :catch_1d9
    move-exception v0

    goto :goto_1bc

    :catch_1db
    move-exception v0

    goto :goto_1b0

    :catch_1dd
    move-exception v0

    goto :goto_1a4

    :catch_1df
    move-exception v0

    goto :goto_198

    :catch_1e1
    move-exception v0

    goto :goto_18c

    :catch_1e3
    move-exception v0

    goto :goto_180

    :catch_1e5
    move-exception v0

    goto :goto_174

    :catch_1e7
    move-exception v0

    goto :goto_168

    :catch_1e9
    move-exception v0

    goto/16 :goto_15c

    :catch_1ec
    move-exception v0

    goto/16 :goto_150

    :catch_1ef
    move-exception v0

    goto/16 :goto_144

    :catch_1f2
    move-exception v0

    goto/16 :goto_138

    :catch_1f5
    move-exception v0

    goto/16 :goto_12c

    :catch_1f8
    move-exception v0

    goto/16 :goto_120

    :catch_1fb
    move-exception v0

    goto/16 :goto_114

    :catch_1fe
    move-exception v0

    goto/16 :goto_109

    :catch_201
    move-exception v0

    goto/16 :goto_fe

    :catch_204
    move-exception v0

    goto/16 :goto_f3

    :catch_207
    move-exception v0

    goto/16 :goto_e8

    :catch_20a
    move-exception v0

    goto/16 :goto_dd

    :catch_20d
    move-exception v0

    goto/16 :goto_d2

    .line 602
    :catch_210
    move-exception v0

    goto/16 :goto_be

    :catch_213
    move-exception v0

    goto/16 :goto_b3

    :catch_216
    move-exception v0

    goto/16 :goto_a8

    .line 633
    :catch_219
    move-exception v0

    goto/16 :goto_94

    :catch_21c
    move-exception v0

    goto/16 :goto_89

    :catch_21f
    move-exception v0

    goto/16 :goto_7e

    :catch_222
    move-exception v0

    goto/16 :goto_73

    .line 659
    :catch_225
    move-exception v0

    goto/16 :goto_5f

    :catch_228
    move-exception v0

    goto/16 :goto_54

    :catch_22b
    move-exception v0

    goto/16 :goto_49

    .line 722
    :catch_22e
    move-exception v0

    goto/16 :goto_35

    :catch_231
    move-exception v0

    goto/16 :goto_2a

    :catch_234
    move-exception v0

    goto/16 :goto_1f

    :catch_237
    move-exception v0

    goto/16 :goto_14
.end method
