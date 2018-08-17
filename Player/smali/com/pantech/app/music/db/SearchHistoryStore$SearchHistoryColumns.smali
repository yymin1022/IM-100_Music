.class public interface abstract Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistoryColumns;
.super Ljava/lang/Object;
.source "SearchHistoryStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/SearchHistoryStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchHistoryColumns"
.end annotation


# static fields
.field public static final DATE_ADDED:Ljava/lang/String; = "date_added"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date_added DESC"

.field public static final LOCAL_URI:Landroid/net/Uri;

.field public static final ONLINE_URI:Landroid/net/Uri;

.field public static final SEARCH_WORD:Ljava/lang/String; = "search_word"

.field public static final SECRETBOX_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "content://com.pantech.app.music.db.searchhistoryprovider/local"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistoryColumns;->LOCAL_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "content://com.pantech.app.music.db.searchhistoryprovider/online"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistoryColumns;->ONLINE_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://com.pantech.app.music.db.searchhistoryprovider/secretbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistoryColumns;->SECRETBOX_URI:Landroid/net/Uri;

    return-void
.end method
