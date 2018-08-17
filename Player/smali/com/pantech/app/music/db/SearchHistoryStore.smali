.class public Lcom/pantech/app/music/db/SearchHistoryStore;
.super Ljava/lang/Object;
.source "SearchHistoryStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistory;,
        Lcom/pantech/app/music/db/SearchHistoryStore$SearchHistoryColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.pantech.app.music.db.searchhistoryprovider"

.field public static final SEARCHHISOTORY_DB_NAME:Ljava/lang/String; = "searchhistory.db"

.field public static final SEARCHHISOTORY_DB_VERSION:I = 0x1

.field public static final SEARCHHISOTORY_TABLE_NAME_LOCAL:Ljava/lang/String; = "history_local"

.field public static final SEARCHHISOTORY_TABLE_NAME_ONLINE:Ljava/lang/String; = "history_online"

.field public static final SEARCHHISOTORY_TABLE_NAME_SECRETBOX:Ljava/lang/String; = "history_secretbox"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method
