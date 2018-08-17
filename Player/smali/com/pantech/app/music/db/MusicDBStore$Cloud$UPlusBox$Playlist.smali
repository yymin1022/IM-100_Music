.class public final Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Playlist;
.super Ljava/lang/Object;
.source "MusicDBStore.java"

# interfaces
.implements Lcom/pantech/app/music/db/MusicDBStore$Cloud$PlaylistColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Playlist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Playlist$Members;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "playlist_name ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "uplusbox_playlist"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-string v0, "content://com.pantech.app.music.db.common/uplusBox/playlist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/MusicDBStore$Cloud$UPlusBox$Playlist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method
