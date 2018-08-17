.class public Lcom/pantech/app/music/list/component/MenuTable;
.super Ljava/lang/Object;
.source "MenuTable.java"


# static fields
.field public static final MENU_DESELECT_ALL:I = 0x8000000

.field public static final MENU_HELP:I = 0x10

.field public static final MENU_MAKE_PLAYLIST:I = 0x20

.field public static final MENU_MUSICBELL_RING:I = 0x80

.field public static final MENU_PLAY_ALL:I = 0x2

.field public static final MENU_SAVE_NOWPLAYING:I = 0x400

.field public static final MENU_SEARCH:I = 0x4

.field public static final MENU_SELECT_ALL:I = 0x4000000

.field public static final MENU_SELECT_SONG:I = 0x1

.field public static final MENU_SETTING:I = 0x8

.field public static final MENU_SIMILARITY_SORT:I = 0x100

.field public static final MENU_UBOX_REFRESH:I = 0x200

.field public static final MENU_VIEW_SECRETBOX:I = 0x40

.field public static final SELECT_MENU_CART:I = 0x2

.field public static final SELECT_MENU_DELETE:I = 0x4

.field public static final SELECT_MENU_DELETE_PLAYLIST:I = 0x10

.field public static final SELECT_MENU_MOVE_TO_LOCAL:I = 0x400

.field public static final SELECT_MENU_PLAY:I = 0x1

.field public static final SELECT_MENU_PROPERTIES:I = 0x200

.field public static final SELECT_MENU_REMOVE_FROM_PLAYLIST:I = 0x8

.field public static final SELECT_MENU_RENAME_PLAYLIST:I = 0x20

.field public static final SELECT_MENU_SET_AS_RINGTONE:I = 0x80

.field public static final SELECT_MENU_SHARE:I = 0x40

.field public static final SELECT_MENU_SHARE_YOUTUBE:I = 0x100

.field public static final SELECT_MENU_UBOX_UPLOAD:I = 0x1000


# instance fields
.field OptionsMenuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field QuickMenuMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    .line 195
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/MenuTable;->quickMenuInit()V

    .line 196
    invoke-direct {p0}, Lcom/pantech/app/music/list/component/MenuTable;->optionsMenuInit()V

    .line 197
    return-void
.end method

.method public static clearMenuMask(II)I
    .registers 3
    .param p0, "origin"    # I
    .param p1, "remove"    # I

    .prologue
    .line 94
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method public static clearMenuMask(JJ)J
    .registers 6
    .param p0, "origin"    # J
    .param p2, "remove"    # J

    .prologue
    .line 89
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p2

    and-long/2addr v0, p0

    return-wide v0
.end method

.method private optionsMenuInit()V
    .registers 8

    .prologue
    const/16 v6, 0x3d

    const/16 v5, 0x1f

    .line 148
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 150
    const/16 v0, 0x1d

    .line 151
    .local v0, "defaultGroupMenu":I
    const/16 v1, 0x9

    .line 154
    .local v1, "defaultSubMenu":I
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v4, 0x11d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 159
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :goto_38
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v4, 0x29d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void

    .line 161
    :cond_10d
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_38
.end method

.method private quickMenuInit()V
    .registers 7

    .prologue
    const/16 v5, 0x303

    .line 99
    const/16 v1, 0x3c3

    .line 100
    .local v1, "song_quick_menu":I
    const/16 v0, 0x43

    .line 102
    .local v0, "group_quick_menu":I
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isLGUPlus()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 104
    or-int/lit16 v1, v1, 0x1000

    .line 105
    or-int/lit16 v0, v0, 0x1000

    .line 108
    :cond_10
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 110
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v0, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v0, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v0, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v0, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v0, 0x20

    or-int/lit8 v4, v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    and-int/lit16 v4, v4, -0x181

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v4, 0x3cb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v4, 0x33

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/16 v4, 0x30b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    or-int/lit8 v4, v1, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 203
    return-void
.end method

.method public getOptionsMenuMask(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;IIZ)I
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "pageCount"    # I
    .param p3, "realCount"    # I
    .param p4, "isMediaScanning"    # Z

    .prologue
    .line 64
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    .local v0, "mask":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->OptionsMenuMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 66
    .local v1, "mask_L":Ljava/lang/Integer;
    if-eqz v1, :cond_17

    .line 67
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 69
    :cond_17
    if-gtz p2, :cond_23

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, -0x104

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 77
    :cond_23
    if-gtz p3, :cond_2f

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, -0x127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 84
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public getSelectMenu(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 5
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "mask":I
    iget-object v2, p0, Lcom/pantech/app/music/list/component/MenuTable;->QuickMenuMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 55
    .local v1, "mask_L":Ljava/lang/Integer;
    if-eqz v1, :cond_f

    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    :cond_f
    return v0
.end method
