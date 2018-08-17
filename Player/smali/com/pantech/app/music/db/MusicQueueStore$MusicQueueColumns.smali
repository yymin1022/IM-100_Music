.class public interface abstract Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;
.super Ljava/lang/Object;
.source "MusicQueueStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicQueueStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MusicQueueColumns"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"

.field public static final ALBUMART_URL:Ljava/lang/String; = "albumartUrl"

.field public static final ALBUM_ID:Ljava/lang/String; = "albumID"

.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final AUDIO_ID:Ljava/lang/String; = "audioID"

.field public static final CNTS_TYPE:Ljava/lang/String; = "contentsType"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATE_MODIFIED:Ljava/lang/String; = "dateModified"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "position ASC"

.field public static final DISP_TITLE:Ljava/lang/String; = "disp_title"

.field public static final DLNA_URI:Landroid/net/Uri;

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final MIME_TYPE:Ljava/lang/String; = "MimeType"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final RATE:Ljava/lang/String; = "rate"

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final SKIPCOUNT:Ljava/lang/String; = "retryCount"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "content://com.pantech.app.music.db.musicqueue/songs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.pantech.app.music.db.musicqueue/dlna"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->DLNA_URI:Landroid/net/Uri;

    return-void
.end method
