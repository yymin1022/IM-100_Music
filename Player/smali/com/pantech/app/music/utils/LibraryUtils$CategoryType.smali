.class public final enum Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
.super Ljava/lang/Enum;
.source "LibraryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/LibraryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CategoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final enum CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field private static final mSparseArrayOrdinal:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 22
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_SONG"

    invoke-direct {v2, v3, v5}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 24
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_ALBUM"

    invoke-direct {v2, v3, v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 25
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_ALBUM_SONG"

    invoke-direct {v2, v3, v7}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 27
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_ARTIST"

    invoke-direct {v2, v3, v8}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 28
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_ARTIST_SONG"

    invoke-direct {v2, v3, v9}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 30
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_GENRE"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 31
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_GENRE_SONG"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 33
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_FOLDER"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 34
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_FOLDER_SONG"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 36
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_PLAYLIST"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 37
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_PLAYLIST_SONG"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 39
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_PODCAST"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 40
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_RECENTLY_ADDED"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 41
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_FAVORITES"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 42
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_MOSTPLAYED"

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 44
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_SIMILARITY"

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 46
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_SHORTCUT"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 48
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_UBOX"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 49
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_UBOX_PLAYLIST"

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 50
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_UBOX_PLAYLIST_SONG"

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 51
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_UBOX_SEARCH"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 53
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_SEARCH"

    const/16 v4, 0x15

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 54
    new-instance v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const-string v3, "CATEGORY_NOWPLAYING"

    const/16 v4, 0x16

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 20
    const/16 v2, 0x17

    new-array v2, v2, [Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v3, v2, v6

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v3, v2, v8

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PODCAST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0xc

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FAVORITES:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_MOSTPLAYED:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0xf

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SIMILARITY:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x10

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SHORTCUT:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x11

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x14

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x15

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SEARCH:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    const/16 v3, 0x16

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v4, v2, v3

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 56
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    .line 60
    const-class v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_189
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 62
    .local v1, "modeType":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_189

    .line 64
    .end local v1    # "modeType":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :cond_19f
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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 2
    .param p0, "ordinal"    # I

    .prologue
    .line 68
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->mSparseArrayOrdinal:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->$VALUES:[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    return-object v0
.end method


# virtual methods
.method public getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;
    .registers 4

    .prologue
    .line 333
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 385
    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not implements "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :pswitch_24
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->INDEXED_LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    .line 382
    :goto_26
    return-object v0

    .line 345
    :pswitch_27
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ALBUMDETAIL_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 352
    :pswitch_2a
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 356
    :pswitch_2d
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_SEARCH_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 360
    :pswitch_30
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_ARTIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 366
    :pswitch_33
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->REARRANGE_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 370
    :pswitch_36
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->GRID_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 374
    :pswitch_39
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->LIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 378
    :pswitch_3c
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_PLAYLIST_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 382
    :pswitch_3f
    sget-object v0, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->SEPARATER_SIMILARITY_ADAPTER:Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    goto :goto_26

    .line 333
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_24
        :pswitch_33
        :pswitch_2d
        :pswitch_2a
        :pswitch_2d
        :pswitch_24
        :pswitch_36
        :pswitch_24
        :pswitch_39
        :pswitch_39
        :pswitch_3c
        :pswitch_33
        :pswitch_30
        :pswitch_27
        :pswitch_24
        :pswitch_24
        :pswitch_33
        :pswitch_2a
        :pswitch_2a
        :pswitch_24
        :pswitch_2a
        :pswitch_3c
        :pswitch_3f
    .end packed-switch
.end method

.method public getChild()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 3

    .prologue
    .line 281
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 296
    .end local p0    # "this":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :goto_b
    :pswitch_b
    return-object p0

    .line 284
    .restart local p0    # "this":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :pswitch_c
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 286
    :pswitch_f
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 288
    :pswitch_12
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 290
    :pswitch_15
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 292
    :pswitch_18
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 294
    :pswitch_1b
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 281
    :pswitch_data_1e
    .packed-switch 0x4
        :pswitch_1b
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
    .end packed-switch
.end method

.method public getGroupID(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "cursorLock"    # Ljava/lang/Object;

    .prologue
    .line 410
    const-string v0, ""

    .line 412
    .local v0, "groupID":Ljava/lang/String;
    if-nez p2, :cond_9

    new-instance p2, Ljava/lang/Object;

    .end local p2    # "cursorLock":Ljava/lang/Object;
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 414
    .restart local p2    # "cursorLock":Ljava/lang/Object;
    :cond_9
    monitor-enter p2

    .line 416
    :try_start_a
    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_b6

    .line 464
    :pswitch_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal Call category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    :catchall_2e
    move-exception v1

    monitor-exit p2
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v1

    .line 418
    :pswitch_31
    :try_start_31
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_3b
    monitor-exit p2

    move-object v1, v0

    .line 468
    :goto_3d
    return-object v1

    .line 421
    :pswitch_3e
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    goto :goto_3b

    .line 424
    :pswitch_49
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 425
    goto :goto_3b

    .line 427
    :pswitch_54
    const-string v1, "artist_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    goto :goto_3b

    .line 430
    :pswitch_5f
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    goto :goto_3b

    .line 433
    :pswitch_6a
    const-string v1, "genre_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    goto :goto_3b

    .line 436
    :pswitch_75
    const-string v1, "bucket_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    goto :goto_3b

    .line 439
    :pswitch_80
    const-string v1, "bucket_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    goto :goto_3b

    .line 444
    :pswitch_8b
    invoke-static {p0}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    goto :goto_3b

    .line 448
    :pswitch_98
    invoke-static {p0}, Lcom/pantech/app/music/db/PanMediaStore$PlayListWrapper;->getColumnPlaylistMemberPlaylistID(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    goto :goto_3b

    .line 452
    :pswitch_a5
    const-string v1, "-4"

    monitor-exit p2

    goto :goto_3d

    .line 455
    :pswitch_a9
    const-string v1, "-5"

    monitor-exit p2

    goto :goto_3d

    .line 458
    :pswitch_ad
    const-string v1, "-3"

    monitor-exit p2

    goto :goto_3d

    .line 461
    :pswitch_b1
    const-string v1, "-6"

    monitor-exit p2
    :try_end_b4
    .catchall {:try_start_31 .. :try_end_b4} :catchall_2e

    goto :goto_3d

    .line 416
    nop

    :pswitch_data_b6
    .packed-switch 0x2
        :pswitch_98
        :pswitch_15
        :pswitch_8b
        :pswitch_15
        :pswitch_15
        :pswitch_31
        :pswitch_49
        :pswitch_5f
        :pswitch_75
        :pswitch_8b
        :pswitch_15
        :pswitch_54
        :pswitch_3e
        :pswitch_6a
        :pswitch_80
        :pswitch_98
        :pswitch_a5
        :pswitch_a9
        :pswitch_b1
        :pswitch_ad
        :pswitch_8b
    .end packed-switch
.end method

.method public getGroupName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupID"    # I

    .prologue
    .line 473
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_48

    .line 510
    :pswitch_b
    const-string v0, ""

    :goto_d
    return-object v0

    .line 477
    :pswitch_e
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getAlbumName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 481
    :pswitch_13
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getArtistName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 485
    :pswitch_18
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getGenreName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 489
    :pswitch_1d
    invoke-static {p1, p2}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getBucketName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 495
    :pswitch_22
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/pantech/app/music/list/db/DBInterfaceCommon;->getPlaylistName(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 498
    :pswitch_28
    const v0, 0x7f080120

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 501
    :pswitch_30
    const v0, 0x7f08004b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 504
    :pswitch_38
    const v0, 0x7f0801ae

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 507
    :pswitch_40
    const v0, 0x7f080071

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 473
    :pswitch_data_48
    .packed-switch 0x2
        :pswitch_22
        :pswitch_b
        :pswitch_22
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_13
        :pswitch_18
        :pswitch_1d
        :pswitch_22
        :pswitch_b
        :pswitch_13
        :pswitch_e
        :pswitch_18
        :pswitch_1d
        :pswitch_22
        :pswitch_40
        :pswitch_30
        :pswitch_38
        :pswitch_28
    .end packed-switch
.end method

.method public getParent()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .registers 3

    .prologue
    .line 302
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 322
    .end local p0    # "this":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :goto_b
    :pswitch_b
    return-object p0

    .line 305
    .restart local p0    # "this":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    :pswitch_c
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 307
    :pswitch_f
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 309
    :pswitch_12
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 311
    :pswitch_15
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 313
    :pswitch_18
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 315
    :pswitch_1b
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 320
    :pswitch_1e
    sget-object p0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    goto :goto_b

    .line 302
    nop

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_1b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_c
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
    .end packed-switch
.end method

.method public hasContentObserver()Z
    .registers 3

    .prologue
    .line 390
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_10

    .line 399
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 396
    :sswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 390
    nop

    :sswitch_data_10
    .sparse-switch
        0x1 -> :sswitch_d
        0x4 -> :sswitch_d
        0x11 -> :sswitch_d
        0x17 -> :sswitch_d
    .end sparse-switch
.end method

.method public isGroup()Z
    .registers 3

    .prologue
    .line 171
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 182
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 179
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 171
    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public isGroupChild()Z
    .registers 3

    .prologue
    .line 191
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 206
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 203
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 191
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public isHasAudioID()Z
    .registers 3

    .prologue
    .line 228
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_10

    .line 240
    const/4 v0, 0x1

    :goto_c
    return v0

    .line 237
    :sswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 228
    nop

    :sswitch_data_10
    .sparse-switch
        0x4 -> :sswitch_d
        0x7 -> :sswitch_d
        0x8 -> :sswitch_d
        0x9 -> :sswitch_d
        0xa -> :sswitch_d
        0xb -> :sswitch_d
        0x16 -> :sswitch_d
    .end sparse-switch
.end method

.method public isNeedHintLayer()Z
    .registers 3

    .prologue
    .line 136
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 150
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 147
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 136
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public isNoneEmptyGroupChild()Z
    .registers 3

    .prologue
    .line 211
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 223
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 220
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 211
    nop

    :pswitch_data_10
    .packed-switch 0xd
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public isRemovingCategory()Z
    .registers 3

    .prologue
    .line 267
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_10

    .line 276
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 273
    :sswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 267
    nop

    :sswitch_data_10
    .sparse-switch
        0x2 -> :sswitch_d
        0xc -> :sswitch_d
        0x11 -> :sswitch_d
        0x14 -> :sswitch_d
    .end sparse-switch
.end method

.method public isSearch()Z
    .registers 3

    .prologue
    .line 100
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 107
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 104
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 100
    nop

    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_d
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public isSublistHeaderVisible()Z
    .registers 3

    .prologue
    .line 157
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 162
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 160
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 157
    nop

    :pswitch_data_10
    .packed-switch 0xd
        :pswitch_d
    .end packed-switch
.end method

.method public isSupportSelectMode()Z
    .registers 3

    .prologue
    .line 515
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 521
    const/4 v0, 0x1

    :goto_c
    return v0

    .line 518
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 515
    nop

    :pswitch_data_10
    .packed-switch 0x16
        :pswitch_d
    .end packed-switch
.end method

.method public isTABActivity()Z
    .registers 3

    .prologue
    .line 115
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 128
    :pswitch_b
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 125
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 115
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public isUBoxCategory()Z
    .registers 3

    .prologue
    .line 86
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 95
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 92
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 86
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public isUBoxSongCategory()Z
    .registers 3

    .prologue
    .line 73
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 81
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 78
    :pswitch_d
    const/4 v0, 0x1

    goto :goto_c

    .line 73
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 528
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 578
    const-string v0, ""

    :goto_d
    return-object v0

    .line 531
    :pswitch_e
    const-string v0, "CATEGORY_SONG"

    goto :goto_d

    .line 533
    :pswitch_11
    const-string v0, "CATEGORY_ALBUM"

    goto :goto_d

    .line 535
    :pswitch_14
    const-string v0, "CATEGORY_ALBUM_SONG"

    goto :goto_d

    .line 537
    :pswitch_17
    const-string v0, "CATEGORY_ARTIST"

    goto :goto_d

    .line 539
    :pswitch_1a
    const-string v0, "CATEGORY_ARTIST_SONG"

    goto :goto_d

    .line 541
    :pswitch_1d
    const-string v0, "CATEGORY_GENRE"

    goto :goto_d

    .line 543
    :pswitch_20
    const-string v0, "CATEGORY_GENRE_SONG"

    goto :goto_d

    .line 545
    :pswitch_23
    const-string v0, "CATEGORY_FOLDER"

    goto :goto_d

    .line 547
    :pswitch_26
    const-string v0, "CATEGORY_FOLDER_SONG"

    goto :goto_d

    .line 549
    :pswitch_29
    const-string v0, "CATEGORY_PLAYLIST"

    goto :goto_d

    .line 551
    :pswitch_2c
    const-string v0, "CATEGORY_PLAYLIST_SONG"

    goto :goto_d

    .line 553
    :pswitch_2f
    const-string v0, "CATEGORY_PODCAST"

    goto :goto_d

    .line 555
    :pswitch_32
    const-string v0, "CATEGORY_RECENTLY_ADDED"

    goto :goto_d

    .line 557
    :pswitch_35
    const-string v0, "CATEGORY_FAVORITES"

    goto :goto_d

    .line 559
    :pswitch_38
    const-string v0, "CATEGORY_SIMILARITY"

    goto :goto_d

    .line 561
    :pswitch_3b
    const-string v0, "CATEGORY_SHORTCUT"

    goto :goto_d

    .line 563
    :pswitch_3e
    const-string v0, "CATEGORY_UBOX"

    goto :goto_d

    .line 565
    :pswitch_41
    const-string v0, "CATEGORY_UBOX_PLAYLIST"

    goto :goto_d

    .line 567
    :pswitch_44
    const-string v0, "CATEGORY_UBOX_PLAYLIST_SONG"

    goto :goto_d

    .line 569
    :pswitch_47
    const-string v0, "CATEGORY_MOSTPLAYED"

    goto :goto_d

    .line 571
    :pswitch_4a
    const-string v0, "CATEGORY_NOWPLAYING"

    goto :goto_d

    .line 573
    :pswitch_4d
    const-string v0, "CATEGORY_SEARCH"

    goto :goto_d

    .line 575
    :pswitch_50
    const-string v0, "CATEGORY_UBOX_SEARCH"

    goto :goto_d

    .line 528
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_44
        :pswitch_50
        :pswitch_41
        :pswitch_4d
        :pswitch_e
        :pswitch_11
        :pswitch_17
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_4a
        :pswitch_1a
        :pswitch_14
        :pswitch_20
        :pswitch_26
        :pswitch_2c
        :pswitch_32
        :pswitch_47
        :pswitch_35
        :pswitch_2f
        :pswitch_3b
        :pswitch_38
    .end packed-switch
.end method
