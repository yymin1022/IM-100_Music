.class public Lcom/pantech/app/music/db/MusicQueueProvider;
.super Landroid/content/ContentProvider;
.source "MusicQueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/db/MusicQueueProvider$MusicQueueSQLiteOpenHelper;
    }
.end annotation


# static fields
.field private static final MUSICQUEUE_CURRENT_PLAY:I = 0x3

.field private static final MUSICQUEUE_DLNA:I = 0x4

.field private static MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MUSICQUEUE_SONG:I = 0x1

.field private static final MUSICQUEUE_SONG_ID:I = 0x2

.field public static final TAG:Ljava/lang/String; = "VMusicQueueProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 482
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 483
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.pantech.app.music.db.musicqueue"

    const-string v2, "songs"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.pantech.app.music.db.musicqueue"

    const-string v2, "songs/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 485
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.pantech.app.music.db.musicqueue"

    const-string v2, "currentPlaySong"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 486
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.pantech.app.music.db.musicqueue"

    const-string v2, "dlna"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 489
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "position"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "contentsType"

    const-string v2, "contentsType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "audioID"

    const-string v2, "audioID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "retryCount"

    const-string v2, "retryCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "albumID"

    const-string v2, "albumID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "rate"

    const-string v2, "rate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "albumartUrl"

    const-string v2, "albumartUrl"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "data"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "disp_title"

    const-string v2, "disp_title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "artist"

    const-string v2, "artist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "album"

    const-string v2, "album"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "size"

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "dateModified"

    const-string v2, "dateModified"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "MimeType"

    const-string v2, "MimeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 509
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 202
    const/4 v3, 0x0

    .line 204
    .local v3, "numInserted":I
    const-string v4, "VMusicQueueProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bulkInsert="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    sget-object v4, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_c8

    .line 259
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 211
    :pswitch_3d
    :try_start_3d
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3d .. :try_end_42} :catch_77

    .line 213
    :try_start_42
    array-length v2, p2

    .line 214
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    if-ge v1, v2, :cond_57

    .line 215
    aget-object v4, p2, v1

    if-eqz v4, :cond_54

    .line 216
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlnaqueue"

    const/4 v6, 0x0

    aget-object v7, p2, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 214
    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 219
    :cond_57
    move v3, v2

    .line 220
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_70

    .line 222
    :try_start_5d
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_62
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5d .. :try_end_62} :catch_77

    .line 262
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_62
    if-lez v3, :cond_6f

    invoke-virtual {p0}, Lcom/pantech/app/music/db/MusicQueueProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 264
    :cond_6f
    return v3

    .line 222
    :catchall_70
    move-exception v4

    :try_start_71
    iget-object v5, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_77
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_71 .. :try_end_77} :catch_77

    .line 225
    :catch_77
    move-exception v0

    .line 227
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_62

    .line 234
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_7c
    :try_start_7c
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_81
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7c .. :try_end_81} :catch_a2

    .line 236
    :try_start_81
    array-length v2, p2

    .line 237
    .restart local v2    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_83
    if-ge v1, v2, :cond_96

    .line 238
    aget-object v4, p2, v1

    if-eqz v4, :cond_93

    .line 239
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "musicqueue"

    const/4 v6, 0x0

    aget-object v7, p2, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 237
    :cond_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 242
    :cond_96
    move v3, v2

    .line 243
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9c
    .catchall {:try_start_81 .. :try_end_9c} :catchall_a7

    .line 245
    :try_start_9c
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9c .. :try_end_a1} :catch_a2

    goto :goto_62

    .line 248
    .end local v1    # "i":I
    .end local v2    # "len":I
    :catch_a2
    move-exception v0

    .line 250
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_62

    .line 245
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catchall_a7
    move-exception v4

    :try_start_a8
    iget-object v5, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_ae
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a8 .. :try_end_ae} :catch_a2

    .line 256
    :pswitch_ae
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 206
    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_ae
        :pswitch_ae
        :pswitch_3d
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 408
    const/4 v0, -0x1

    .line 409
    .local v0, "count":I
    const/4 v2, 0x0

    .line 411
    .local v2, "where":Ljava/lang/String;
    const-string v3, "VMusicQueueProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v3, "VMusicQueueProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v3, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_104

    .line 471
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    :pswitch_59
    :try_start_59
    iget-object v3, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "dlnaqueue"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_60
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_59 .. :try_end_60} :catch_85

    move-result v0

    .line 474
    :goto_61
    invoke-virtual {p0}, Lcom/pantech/app/music/db/MusicQueueProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 476
    const-string v3, "VMusicQueueProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return v0

    .line 421
    :catch_85
    move-exception v1

    .line 423
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_61

    .line 430
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_8a
    :try_start_8a
    iget-object v3, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "musicqueue"

    invoke-virtual {v3, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8a .. :try_end_91} :catch_93

    move-result v0

    goto :goto_61

    .line 432
    :catch_93
    move-exception v1

    .line 434
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_61

    .line 439
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audioID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_df

    .line 442
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    :cond_df
    :goto_df
    :try_start_df
    iget-object v3, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "musicqueue"

    invoke-virtual {v3, v4, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_df .. :try_end_e6} :catch_eb

    move-result v0

    goto/16 :goto_61

    .line 445
    :cond_e9
    move-object v2, p2

    goto :goto_df

    .line 453
    :catch_eb
    move-exception v1

    .line 455
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto/16 :goto_61

    .line 462
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_f1
    :try_start_f1
    iget-object v3, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "currentPlaying"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_fa
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_f1 .. :try_end_fa} :catch_fd

    move-result v0

    goto/16 :goto_61

    .line 464
    :catch_fd
    move-exception v1

    .line 466
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto/16 :goto_61

    .line 414
    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_98
        :pswitch_f1
        :pswitch_59
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 54
    const-string v0, "VMusicQueueProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType Matcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_4c

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :pswitch_40
    const-string v0, "vnd.android.cursor.item/vnd.musicqueue.dlna"

    .line 67
    :goto_42
    return-object v0

    .line 61
    :pswitch_43
    const-string v0, "vnd.android.cursor.item/vnd.musicqueue.songs"

    goto :goto_42

    .line 64
    :pswitch_46
    const-string v0, "vnd.android.cursor.item/vnd.musicqueue.song"

    goto :goto_42

    .line 67
    :pswitch_49
    const-string v0, "vnd.android.cursor.item/vnd.musicqueue.currentPlaySong"

    goto :goto_42

    .line 55
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_43
        :pswitch_46
        :pswitch_49
        :pswitch_40
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 269
    const-wide/16 v2, -0x1

    .line 270
    .local v2, "raw_id":J
    const/4 v1, 0x0

    .line 272
    .local v1, "newUri":Landroid/net/Uri;
    const-string v4, "VMusicQueueProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v4, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_be

    .line 330
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 279
    :pswitch_44
    :try_start_44
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "dlnaqueue"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_44 .. :try_end_4c} :catch_65

    move-result-wide v2

    .line 286
    :goto_4d
    cmp-long v4, v2, v10

    if-lez v4, :cond_57

    .line 288
    sget-object v4, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->DLNA_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 333
    :cond_57
    :goto_57
    if-eqz v1, :cond_64

    .line 335
    invoke-virtual {p0}, Lcom/pantech/app/music/db/MusicQueueProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 338
    :cond_64
    return-object v1

    .line 281
    :catch_65
    move-exception v0

    .line 283
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_4d

    .line 295
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_6a
    :try_start_6a
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "musicqueue"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_72
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6a .. :try_end_72} :catch_7e

    move-result-wide v2

    .line 302
    :goto_73
    cmp-long v4, v2, v10

    if-lez v4, :cond_57

    .line 304
    sget-object v4, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_57

    .line 297
    :catch_7e
    move-exception v0

    .line 299
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_73

    .line 309
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_83
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 315
    :pswitch_9c
    :try_start_9c
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "currentPlaying"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 316
    iget-object v4, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "currentPlaying"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 318
    cmp-long v4, v2, v10

    if-lez v4, :cond_57

    .line 320
    sget-object v4, Lcom/pantech/app/music/db/MusicQueueStore$MusicQueueColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_b7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9c .. :try_end_b7} :catch_b9

    move-result-object v1

    goto :goto_57

    .line 323
    :catch_b9
    move-exception v0

    .line 325
    .restart local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_57

    .line 274
    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_83
        :pswitch_9c
        :pswitch_44
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    .line 44
    const-string v1, "VMusicQueueProvider"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/pantech/app/music/db/MusicQueueProvider$MusicQueueSQLiteOpenHelper;

    invoke-virtual {p0}, Lcom/pantech/app/music/db/MusicQueueProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "musicqueue.db"

    const/4 v3, 0x0

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pantech/app/music/db/MusicQueueProvider$MusicQueueSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 47
    .local v0, "dbHelper":Lcom/pantech/app/music/db/MusicQueueProvider$MusicQueueSQLiteOpenHelper;
    invoke-virtual {v0}, Lcom/pantech/app/music/db/MusicQueueProvider$MusicQueueSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    iget-object v1, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_21

    const/4 v1, 0x0

    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x1

    goto :goto_20
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 24
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 79
    .local v1, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v8, p5

    .line 81
    .local v8, "defaultSort":Ljava/lang/String;
    const-string v2, "VMusicQueueProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "VMusicQueueProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sort="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Matcher="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_1a8

    .line 123
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content://com.pantech.app.music.db.musicqueue/setting/titleAsFilename"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_172

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/db/MusicQueueProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "list_display_filename"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v17

    .line 127
    .local v17, "value":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting show title as filename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 129
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "titleAsFilename"

    aput-object v3, v16, v2

    .line 131
    .local v16, "szCol":[Ljava/lang/String;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v15, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v9, Lcom/pantech/app/music/common/ArrayListCursor;

    move-object/from16 v0, v16

    invoke-direct {v9, v0, v15}, Lcom/pantech/app/music/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 196
    .end local v14    # "record":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v15    # "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    .end local v16    # "szCol":[Ljava/lang/String;
    .end local v17    # "value":Z
    :cond_ba
    :goto_ba
    return-object v9

    .line 87
    :pswitch_bb
    const-string v2, "dlnaqueue"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 88
    sget-object v2, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 90
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 91
    const-string p5, "position ASC"

    .line 146
    :cond_cd
    :goto_cd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 151
    .local v9, "c":Landroid/database/Cursor;
    sget-object v2, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_197

    .line 155
    if-eqz v9, :cond_197

    .line 157
    :try_start_ea
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_197

    .line 159
    const-string v13, ""

    .line 160
    .local v13, "path":Ljava/lang/String;
    const-string v2, "data"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 162
    .local v10, "colIdx":I
    if-lez v10, :cond_fe

    .line 164
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 167
    :cond_fe
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_197

    .line 169
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v12, "file":Ljava/io/File;
    if-eqz v12, :cond_197

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_197

    .line 173
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_114} :catch_18d

    .line 174
    const/4 v9, 0x0

    goto :goto_ba

    .line 95
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v10    # "colIdx":I
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "path":Ljava/lang/String;
    :pswitch_116
    const-string v2, "musicqueue"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 96
    sget-object v2, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 98
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 99
    const-string p5, "position ASC"

    goto :goto_cd

    .line 103
    :pswitch_129
    const-string v2, "musicqueue"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 108
    const-string p5, "position ASC"

    goto/16 :goto_cd

    .line 112
    :pswitch_15e
    const-string v2, "currentPlaying"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 113
    sget-object v2, Lcom/pantech/app/music/db/MusicQueueProvider;->MUSICQUEUE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 115
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 116
    const-string p5, "position ASC"

    goto/16 :goto_cd

    .line 142
    :cond_172
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    .restart local v9    # "c":Landroid/database/Cursor;
    :catch_18d
    move-exception v11

    .line 182
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    if-eqz v9, :cond_197

    .line 187
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 188
    const/4 v9, 0x0

    .line 193
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_197
    if-eqz v9, :cond_ba

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/music/db/MusicQueueProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v9, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_ba

    .line 84
    :pswitch_data_1a8
    .packed-switch 0x1
        :pswitch_116
        :pswitch_129
        :pswitch_15e
        :pswitch_bb
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 343
    const/4 v0, -0x1

    .line 344
    .local v0, "count":I
    const/4 v2, 0x0

    .line 346
    .local v2, "where":Ljava/lang/String;
    const-string v3, "VMusicQueueProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v3, "VMusicQueueProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object v3, Lcom/pantech/app/music/db/MusicQueueProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_f2

    .line 396
    :pswitch_3f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 354
    :pswitch_58
    :try_start_58
    iget-object v3, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "dlnaqueue"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_58 .. :try_end_5f} :catch_85

    move-result v0

    .line 399
    :goto_60
    invoke-virtual {p0}, Lcom/pantech/app/music/db/MusicQueueProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 401
    const-string v3, "VMusicQueueProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update count ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return v0

    .line 356
    :catch_85
    move-exception v1

    .line 358
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_60

    .line 365
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_8a
    :try_start_8a
    iget-object v3, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "musicqueue"

    invoke-virtual {v3, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_91
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8a .. :try_end_91} :catch_93

    move-result v0

    goto :goto_60

    .line 367
    :catch_93
    move-exception v1

    .line 369
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_60

    .line 374
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :pswitch_98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audioID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_df

    .line 377
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e9

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    :cond_df
    :goto_df
    :try_start_df
    iget-object v3, p0, Lcom/pantech/app/music/db/MusicQueueProvider;->mDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "musicqueue"

    invoke-virtual {v3, v4, p2, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_df .. :try_end_e6} :catch_eb

    move-result v0

    goto/16 :goto_60

    .line 380
    :cond_e9
    move-object v2, p3

    goto :goto_df

    .line 388
    :catch_eb
    move-exception v1

    .line 390
    .restart local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto/16 :goto_60

    .line 349
    nop

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_98
        :pswitch_3f
        :pswitch_58
    .end packed-switch
.end method
