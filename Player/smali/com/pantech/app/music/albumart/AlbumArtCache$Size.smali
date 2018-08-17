.class public final enum Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
.super Ljava/lang/Enum;
.source "AlbumArtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/albumart/AlbumArtCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/albumart/AlbumArtCache$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

.field public static final enum LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

.field public static final enum NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    .line 25
    new-instance v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->$VALUES:[Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->$VALUES:[Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    invoke-virtual {v0}, [Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    return-object v0
.end method
