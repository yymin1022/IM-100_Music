.class Lcom/pantech/app/music/db/MusicQueueProvider$MusicQueueSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicQueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/db/MusicQueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicQueueSQLiteOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 513
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 514
    const-string v0, "VMusicQueueProvider"

    const-string v1, "MusicQueueSQLiteOpenHelper"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 520
    const-string v0, "VMusicQueueProvider"

    const-string v1, "onCreate Start"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "CREATE TABLE IF NOT EXISTS musicqueue (position INTEGER PRIMARY KEY,contentsType INTEGER,audioID BIGINT,albumID INTEGER,retryCount INTEGER,duration INTEGER,rate INTEGER,url TEXT,albumartUrl TEXT,data TEXT,title TEXT,disp_title TEXT,artist TEXT,size INTEGER,dateModified INTEGER,MimeType TEXT,album TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 542
    const-string v0, "CREATE TABLE IF NOT EXISTS dlnaqueue (position INTEGER PRIMARY KEY,contentsType INTEGER,audioID BIGINT,albumID INTEGER,retryCount INTEGER,duration INTEGER,rate INTEGER,url TEXT,albumartUrl TEXT,data TEXT,title TEXT,disp_title TEXT,artist TEXT,size INTEGER,dateModified INTEGER,MimeType TEXT,album TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 562
    const-string v0, "CREATE TABLE IF NOT EXISTS currentPlaying (position INTEGER PRIMARY KEY,contentsType INTEGER,audioID BIGINT,albumID INTEGER,retryCount INTEGER,duration INTEGER,rate INTEGER,url TEXT,albumartUrl TEXT,data TEXT,title TEXT,disp_title TEXT,artist TEXT,size INTEGER,dateModified INTEGER,MimeType TEXT,album TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 581
    const-string v0, "VMusicQueueProvider"

    const-string v1, "onCreate Over"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 587
    const-string v0, "VMusicQueueProvider"

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

    .line 589
    const/16 v0, 0xe

    if-ge p2, v0, :cond_4d

    .line 591
    const-string v0, "DROP TABLE IF EXISTS musicqueue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    const-string v0, "DROP TABLE IF EXISTS dlnaqueue"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 593
    const-string v0, "DROP TABLE IF EXISTS currentPlaying"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 595
    const-string v0, "VMusicQueueProvider"

    const-string v1, "###################################################"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const-string v0, "VMusicQueueProvider"

    const-string v1, " DROP TABLE AND RECREATE "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v0, "VMusicQueueProvider"

    const-string v1, "###################################################"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/db/MusicQueueProvider$MusicQueueSQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 601
    :cond_4d
    return-void
.end method
