.class public final enum Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
.super Ljava/lang/Enum;
.source "MusicProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/properties/MusicProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum DATE_ADDED:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum DISC_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum DURATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum FILENAME:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum FILESIZE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum LICENSE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum PLAY_COUNT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum RATING:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

.field public static final enum YEAR:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;


# instance fields
.field private path:Ljava/lang/String;

.field protected property:Ljava/lang/String;

.field protected text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 47
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 48
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 49
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "GENRE"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 50
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DURATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 51
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "FILENAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILENAME:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 52
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "FILESIZE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILESIZE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 53
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "LOCATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 54
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "FORMAT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 57
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "DATE_ADDED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DATE_ADDED:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 58
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "LICENSE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LICENSE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 60
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "DISC_NUMBER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DISC_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 61
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "PLAY_COUNT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->PLAY_COUNT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 62
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "TRACK_NUMBER"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 63
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "YEAR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->YEAR:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 64
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "RATING"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->RATING:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 65
    new-instance v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v1, "ALBUMID"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    .line 45
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DURATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILENAME:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FILESIZE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DATE_ADDED:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LICENSE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->DISC_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->PLAY_COUNT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->YEAR:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->RATING:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUMID:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->$VALUES:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->text:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->property:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->$VALUES:[Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v0}, [Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->path:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setProperty(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->property:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->text:Ljava/lang/String;

    .line 83
    return-void
.end method
