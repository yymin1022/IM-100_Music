.class public Lcom/pantech/app/music/db/MusicDBStore;
.super Ljava/lang/Object;
.source "MusicDBStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/db/MusicDBStore$SearchHistory;,
        Lcom/pantech/app/music/db/MusicDBStore$SearchHistoryColumns;,
        Lcom/pantech/app/music/db/MusicDBStore$Setting;,
        Lcom/pantech/app/music/db/MusicDBStore$Cloud;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.pantech.app.music.db.common"

.field public static final CLOUD_CLOUDLIVE:I = 0x1

.field public static final CLOUD_UBOX:I = 0x0

.field public static final DB_NAME:Ljava/lang/String; = "vega_music.db"

.field public static final DB_VERSION:I = 0xc

.field public static final SAFEBOX_DB_NAME:Ljava/lang/String; = "vega_safe_music.db"

.field public static final SAFEBOX_DB_VERSION:I = 0x5

.field public static final SECRETBOX_AUTHORITY:Ljava/lang/String; = "com.pantech.app.music.db.secretbox"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method
