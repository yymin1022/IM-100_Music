.class Lcom/pantech/app/music/db/MusicDBProvider$MusicCommonProviderDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicDBProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicDBProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicCommonProviderDBOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 427
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 428
    const-string v0, "VMusicDBProvider"

    const-string v1, "MusicQueueSQLiteOpenHelper"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method private upgradeDataBase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 450
    const/16 v0, 0xb

    if-ge p2, v0, :cond_29

    .line 453
    const-string v0, "DROP TABLE IF EXISTS uplusbox_music"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v0, "DROP TABLE IF EXISTS uplusbox_playlist"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    const-string v0, "DROP TABLE IF EXISTS uplusbox_playlist_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    const-string v0, "VMusicDBProvider"

    const-string v1, "DROP TABLE About UPLUSBOX"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v0, "CREATE TABLE IF NOT EXISTS uplusbox_music (_id INTEGER PRIMARY KEY AUTOINCREMENT,Title TEXT,fileID BIGINT,cloudType INTEGER,fileName TEXT,fileSize INTEGER,DownUrl TEXT,AlbumUrl TEXT,Artist TEXT,Album TEXT,Playtime INTEGER,Bitrate INTEGER,Rating INTEGER,Playcount INTEGER,ModifyTime INTEGER,FileType INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 477
    const-string v0, "CREATE TABLE IF NOT EXISTS uplusbox_playlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,playlist_name TEXT NOT NULL,data_added INTEGER,data_modified INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    const-string v0, "CREATE TABLE IF NOT EXISTS uplusbox_playlist_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,map_file_id BIGINT NOT NULL,map_playlist_id INTEGER NOT NULL,playlist_order INTEGER NOT NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 489
    :cond_29
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 434
    const-string v0, "VMusicDBProvider"

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/music/db/MusicDBProvider$MusicCommonProviderDBOpenHelper;->upgradeDataBase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 437
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 442
    const-string v0, "VMusicDBProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading From version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/db/MusicDBProvider$MusicCommonProviderDBOpenHelper;->upgradeDataBase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 445
    return-void
.end method
