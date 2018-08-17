.class public final enum Lcom/pantech/app/music/library/FragmentInfo$Category;
.super Ljava/lang/Enum;
.source "FragmentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/FragmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/library/FragmentInfo$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_ALBUM_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_DUPLICATE:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_FAVORITE:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_FOLDER:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_FOLDER_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_GENRE:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_GENRE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_MOST_PLAYED:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_MOST_PLAYED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_NOW_PLAYING:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_PLAYLIST_ADD:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_PLAYLIST_DIALOG:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_PLAYLIST_SHORTCUT:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_PLAY_ALL:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_RECENTLY_ADDED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_SEARCH_GROUPS:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_SEARCH_HISTORY:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_TAB_LIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

.field public static final enum CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_NONE"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 55
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_TRACK"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 57
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_ALBUM"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 58
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_ALBUM_TRACK"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 60
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_ARTIST"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 61
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_ARTIST_TRACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 63
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_GENRE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 64
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_GENRE_TRACK"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 66
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_FOLDER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 67
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_FOLDER_TRACK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 69
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_PLAYLIST"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 70
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_PLAYLIST_TRACK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 71
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_PLAYLIST_DIALOG"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_DIALOG:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 72
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_PLAYLIST_SHORTCUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_SHORTCUT:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 73
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_PLAYLIST_ADD"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_ADD:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 75
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_RECENTLY_ADDED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 76
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_RECENTLY_ADDED_TRACK"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 78
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_MOST_PLAYED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 79
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_MOST_PLAYED_TRACK"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 81
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_FAVORITE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 82
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_FAVORITE_TRACK"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 84
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_PLAY_ALL"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAY_ALL:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 86
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_NOW_PLAYING"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NOW_PLAYING:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 88
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_DUPLICATE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_DUPLICATE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 89
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_SEARCH_HISTORY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_HISTORY:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 90
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_SEARCH_GROUPS"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_GROUPS:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 92
    new-instance v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    const-string v1, "CATEGORY_TAB_LIST"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/library/FragmentInfo$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TAB_LIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 52
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/pantech/app/music/library/FragmentInfo$Category;

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_DIALOG:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_SHORTCUT:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_ADD:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAY_ALL:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NOW_PLAYING:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_DUPLICATE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_HISTORY:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_SEARCH_GROUPS:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TAB_LIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->$VALUES:[Lcom/pantech/app/music/library/FragmentInfo$Category;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/library/FragmentInfo$Category;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/library/FragmentInfo$Category;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/library/FragmentInfo$Category;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/pantech/app/music/library/FragmentInfo$Category;->$VALUES:[Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0}, [Lcom/pantech/app/music/library/FragmentInfo$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/library/FragmentInfo$Category;

    return-object v0
.end method


# virtual methods
.method public toString(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$2;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_40

    .line 116
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "string":Ljava/lang/String;
    :goto_f
    return-object v0

    .line 98
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_10
    const v1, 0x7f080083

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_f

    .line 101
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_18
    const v1, 0x7f080017

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_f

    .line 104
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_20
    const v1, 0x7f080018

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_f

    .line 107
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_28
    const v1, 0x7f08003d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_f

    .line 110
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_30
    const v1, 0x7f080061

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_f

    .line 113
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_38
    const v1, 0x7f0800b9

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_f

    .line 96
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_10
        :pswitch_18
        :pswitch_20
        :pswitch_28
        :pswitch_30
        :pswitch_38
    .end packed-switch
.end method
