.class public Lcom/pantech/app/music/db/MusicQueueStore;
.super Ljava/lang/Object;
.source "MusicQueueStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/db/MusicQueueStore$MusicCurrentPlayColumns;,
        Lcom/pantech/app/music/db/MusicQueueStore$MusicQueue;,
        Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.pantech.app.music.db.musicqueue"

.field public static final CURRENT_PLAYING_TABLE_NAME:Ljava/lang/String; = "currentPlaying"

.field public static final DB_NAME:Ljava/lang/String; = "musicqueue.db"

.field public static final DB_VERSION:I = 0xe

.field public static final DLNA_QUEUE_TABLE_NAME:Ljava/lang/String; = "dlnaqueue"

.field public static final MUSICQUEUE_TABLE_NAME:Ljava/lang/String; = "musicqueue"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method
