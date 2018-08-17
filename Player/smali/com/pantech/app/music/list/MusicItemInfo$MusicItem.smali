.class final enum Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;
.super Ljava/lang/Enum;
.source "MusicItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/MusicItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MusicItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum ALBUM_ID:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum ALBUM_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum ALBUM_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum ARTIST_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum DATE_MODIFIED:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum DISPLAY_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum DRM_TRY_COUNT:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum DURATION:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum MIMETYPE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum PATH:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum PLAY_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum RATING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum SIZE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field public static final enum TITLE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

.field static mColumnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;",
            "Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 43
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "ALBUM_ID"

    invoke-direct {v0, v1, v8}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_ID:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 44
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v9}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DURATION:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 45
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "RATING"

    invoke-direct {v0, v1, v10}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->RATING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 46
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v11}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->TITLE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 47
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DISPLAY_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 48
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "ALBUM_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 49
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "ARTIST_NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ARTIST_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 50
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "PATH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PATH:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 51
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "PLAY_URL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PLAY_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 52
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "ALBUM_URL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 53
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "MIMETYPE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->MIMETYPE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 54
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "DRM_TRY_COUNT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DRM_TRY_COUNT:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 55
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "DATE_MODIFIED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DATE_MODIFIED:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 56
    new-instance v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    const-string v1, "SIZE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->SIZE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 41
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_ID:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v1, v0, v8

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DURATION:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v1, v0, v9

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->RATING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v1, v0, v10

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->TITLE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v1, v0, v11

    const/4 v1, 0x4

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DISPLAY_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ARTIST_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PATH:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PLAY_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->MIMETYPE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DRM_TRY_COUNT:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DATE_MODIFIED:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->SIZE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->$VALUES:[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    .line 79
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_ID:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "album_id"

    aput-object v5, v4, v8

    const-string v5, "album_id"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    aput-object v7, v4, v11

    const/4 v5, 0x4

    const-string v6, "albumID"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DURATION:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "duration"

    aput-object v5, v4, v8

    const-string v5, "duration"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    aput-object v7, v4, v11

    const/4 v5, 0x4

    const-string v6, "duration"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->RATING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->LONG:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "rating"

    aput-object v5, v4, v8

    const-string v5, "rating"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "Rating"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "rate"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DATE_MODIFIED:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "date_modified"

    aput-object v5, v4, v8

    const-string v5, "date_modified"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "ModifyTime"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "dateModified"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->SIZE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_size"

    aput-object v5, v4, v8

    const-string v5, "_size"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "fileSize"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "size"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DRM_TRY_COUNT:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->INTEGER:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v8

    const-string v5, "retryCount"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    aput-object v7, v4, v11

    const/4 v5, 0x4

    const-string v6, "retryCount"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->TITLE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v8

    const-string v5, "title"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "Title"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "title"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->DISPLAY_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_display_name"

    aput-object v5, v4, v8

    const-string v5, "_display_name"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "fileName"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "disp_title"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "album"

    aput-object v5, v4, v8

    const-string v5, "album"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "Album"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "album"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ARTIST_NAME:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "artist"

    aput-object v5, v4, v8

    const-string v5, "artist"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "Artist"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "artist"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PATH:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "_data"

    aput-object v5, v4, v8

    const-string v5, "_data"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    aput-object v7, v4, v11

    const/4 v5, 0x4

    const-string v6, "data"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->PLAY_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v8

    const-string v5, "url"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "DownUrl"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "url"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->ALBUM_URL:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    aput-object v7, v4, v8

    const-string v5, "albumartUrl"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    const-string v5, "AlbumUrl"

    aput-object v5, v4, v11

    const/4 v5, 0x4

    const-string v6, "albumartUrl"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->MIMETYPE:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    new-instance v2, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    sget-object v3, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;->STRING:Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "mime_type"

    aput-object v5, v4, v8

    const-string v5, "mime_type"

    aput-object v5, v4, v9

    aput-object v7, v4, v10

    aput-object v7, v4, v11

    const/4 v5, 0x4

    const-string v6, "MimeType"

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;-><init>(Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType$VarType;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->$VALUES:[Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    invoke-virtual {v0}, [Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;

    return-object v0
.end method


# virtual methods
.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .param p1, "cntsType"    # I

    .prologue
    .line 166
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem;->mColumnMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;

    iget-object v0, v0, Lcom/pantech/app/music/list/MusicItemInfo$MusicItem$ColumnsMapType;->columns:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
