.class Lcom/pantech/app/musicfx/db/AudioEffectProvider$AudioEffectSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AudioEffectProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/db/AudioEffectProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AudioEffectSQLiteOpenHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 267
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 268
    const-string v0, "VMusicFX_DB"

    const-string v1, "AudioEffectSQLiteOpenHelper"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private upgradeDataBase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 326
    const/4 v0, 0x2

    if-ge p2, v0, :cond_74

    .line 328
    const-string v0, "VMusicFX_DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeDataBase "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "audioeffect"

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 333
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_74

    .line 335
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v9

    .line 337
    .local v9, "count":I
    const-string v0, "VMusicFX_DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgradeDataBase column count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    if-lez v9, :cond_71

    const/16 v0, 0xd

    if-ge v9, v0, :cond_71

    .line 340
    const-string v0, "VMusicFX_DB"

    const-string v1, "upgradeDataBase insert column"

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v0, "ALTER TABLE audioeffect ADD COLUMN trebleEnhance_onoff INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 342
    const-string v0, "ALTER TABLE audioeffect ADD COLUMN loudnessmaximizer_onoff INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    const-string v0, "ALTER TABLE audioeffect ADD COLUMN trebleEnhance_setting TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    const-string v0, "ALTER TABLE audioeffect ADD COLUMN loudnessmaximizer_setting TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 347
    :cond_71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 350
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v9    # "count":I
    :cond_74
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 274
    const-string v1, "VMusicFX_DB"

    const-string v2, "onCreate start"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 281
    .local v0, "policy":Landroid/os/StrictMode$ThreadPolicy;
    const-string v1, "CREATE TABLE IF NOT EXISTS audioeffect (package_name TEXT PRIMARY KEY,eq_onoff INTEGER,bassboost_onoff INTEGER,virtualizer_onoff INTEGER,presetReverb_onoff INTEGER,trebleEnhance_onoff INTEGER,loudnessmaximizer_onoff INTEGER,eq_setting TEXT,bassboost_setting TEXT,virtualizer_setting TEXT,presetReverb_setting TEXT,trebleEnhance_setting TEXT,loudnessmaximizer_setting TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 296
    const-string v1, "VMusicFX_DB"

    const-string v2, "onCreate Over"

    invoke-static {v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 300
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 306
    const-string v0, "VMusicFX_DB"

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

    invoke-static {v0, v1}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/musicfx/db/AudioEffectProvider$AudioEffectSQLiteOpenHelper;->upgradeDataBase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 315
    return-void
.end method
