.class public Lcom/pantech/app/musicfx/db/AudioEffectProvider;
.super Landroid/content/ContentProvider;
.source "AudioEffectProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/db/AudioEffectProvider$AudioEffectSQLiteOpenHelper;
    }
.end annotation


# static fields
.field private static AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final AUDIOEFFECT_SETTING:I = 0x1

.field private static DEBUG:Z

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    .line 39
    const-string v0, "VMusicFX_DB"

    const-string v1, "static method"

    sget-boolean v2, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 42
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.pantech.app.musicfx.db.audioeffectprovider"

    const-string v2, "setting"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    .line 45
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "package_name"

    const-string v2, "package_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "eq_onoff"

    const-string v2, "eq_onoff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "bassboost_onoff"

    const-string v2, "bassboost_onoff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "virtualizer_onoff"

    const-string v2, "virtualizer_onoff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "presetReverb_onoff"

    const-string v2, "presetReverb_onoff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "trebleEnhance_onoff"

    const-string v2, "trebleEnhance_onoff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "loudnessmaximizer_onoff"

    const-string v2, "loudnessmaximizer_onoff"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "eq_setting"

    const-string v2, "eq_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "bassboost_setting"

    const-string v2, "bassboost_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "virtualizer_setting"

    const-string v2, "virtualizer_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "presetReverb_setting"

    const-string v2, "presetReverb_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "presetReverb_setting"

    const-string v2, "presetReverb_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "trebleEnhance_setting"

    const-string v2, "trebleEnhance_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "loudnessmaximizer_setting"

    const-string v2, "loudnessmaximizer_setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;

    .line 263
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 187
    const/4 v0, -0x1

    .line 189
    .local v0, "count":I
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 190
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    sget-object v2, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_96

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :pswitch_5b
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 201
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5f
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "audioeffect"

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_91

    move-result v0

    .line 206
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 215
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 217
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    return v0

    .line 206
    :catchall_91
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 192
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_5b
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 139
    const-string v0, "VMusicFX_DB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType Matcher= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v0, v1, v2}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    sget-object v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_46

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_42
    const-string v0, "vnd.android.cursor.item/vnd.audioeffect.settings"

    return-object v0

    .line 141
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_42
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 155
    const-wide/16 v0, -0x1

    .line 157
    .local v0, "raw_id":J
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    sget-object v2, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_80

    .line 170
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :pswitch_45
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "audioeffect"

    invoke-virtual {v2, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 163
    cmp-long v2, v0, v6

    if-lez v2, :cond_57

    .line 165
    sget-object v2, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 173
    :cond_57
    cmp-long v2, v0, v6

    if-lez v2, :cond_67

    .line 175
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 177
    return-object p1

    .line 180
    :cond_67
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert row into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 159
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_45
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 7

    .prologue
    .line 66
    const-string v2, "VMusicFX_DB"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/pantech/app/musicfx/db/AudioEffectProvider$AudioEffectSQLiteOpenHelper;

    invoke-virtual {p0}, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audioEffectSetting.db"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/pantech/app/musicfx/db/AudioEffectProvider$AudioEffectSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 73
    .local v0, "dbHelper":Lcom/pantech/app/musicfx/db/AudioEffectProvider$AudioEffectSQLiteOpenHelper;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 77
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_18
    invoke-virtual {v0}, Lcom/pantech/app/musicfx/db/AudioEffectProvider$AudioEffectSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_27

    .line 82
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 85
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2c

    const/4 v2, 0x0

    :goto_26
    return v2

    .line 82
    :catchall_27
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 85
    :cond_2c
    const/4 v2, 0x1

    goto :goto_26
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 94
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v7, p5

    .line 96
    .local v7, "defaultSort":Ljava/lang/String;
    const-string v1, "VMusicFX_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v1, v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    const-string v1, "VMusicFX_DB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selection= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sort= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Matcher= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v1, v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 99
    sget-object v1, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :pswitch_7a
    const-string v1, "audioeffect"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 103
    sget-object v1, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->AUDIOEFFECT_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 105
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 106
    const-string p5, " ASC"

    .line 117
    :cond_8c
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v9

    .line 121
    .local v9, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_90
    iget-object v1, p0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_ac

    move-result-object v8

    .line 126
    .local v8, "c":Landroid/database/Cursor;
    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 129
    if-eqz v8, :cond_ab

    .line 130
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 132
    :cond_ab
    return-object v8

    .line 126
    .end local v8    # "c":Landroid/database/Cursor;
    :catchall_ac
    move-exception v1

    invoke-static {v9}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 99
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_7a
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, -0x1

    .line 228
    .local v0, "count":I
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    sget-object v2, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_96

    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :pswitch_5b
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 240
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_5f
    iget-object v2, p0, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->mAudioEffectDataBase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "audioeffect"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_91

    move-result v0

    .line 245
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 254
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 256
    const-string v2, "VMusicFX_DB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/pantech/app/musicfx/db/AudioEffectProvider;->DEBUG:Z

    invoke-static {v2, v3, v4}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 258
    return v0

    .line 245
    :catchall_91
    move-exception v2

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2

    .line 231
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_5b
    .end packed-switch
.end method
