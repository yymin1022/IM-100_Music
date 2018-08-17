.class public final Lcom/pantech/app/music/db/MusicDBStore$SearchHistory;
.super Ljava/lang/Object;
.source "MusicDBStore.java"

# interfaces
.implements Lcom/pantech/app/music/db/MusicDBStore$SearchHistoryColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicDBStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchHistory"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "data_added ASC"

.field public static final PathName:Ljava/lang/String; = "searchHistory"

.field public static final TABLE_NAME:Ljava/lang/String; = "searchHistory"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 152
    const-string v0, "content://com.pantech.app.music.db.common/searchHistory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/MusicDBStore$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContentUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/pantech/app/music/db/MusicDBStore$SearchHistory;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static final getContentUri(J)Landroid/net/Uri;
    .registers 4
    .param p0, "fileID"    # J

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.pantech.app.music.db.common/searchHistory/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
