.class public Lcom/pantech/app/music/properties/MusicFileTagEdit;
.super Ljava/lang/Object;
.source "MusicFileTagEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;,
        Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;
    }
.end annotation


# static fields
.field public static final TAG_EDIT_LIMITED_FILE_SIZE:I = 0xc800000

.field public static final TAG_EDIT_MAX_LENGTH_DEFAULT:I = 0x64

.field public static final TAG_EDIT_MAX_LENGTH_TRACK:I = 0x3

.field public static final TAG_EDIT_USABLE_SIZE:I = 0x1e00000

.field private static final TYPE_CHECK_STORAGE_FILE_NOT_FOUND:I = -0x2

.field private static final TYPE_CHECK_STORAGE_NOT_ENOUGH:I = -0x1

.field private static final TYPE_CHECK_STORAGE_OK:I

.field private static final mTagEdittingMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityCallBack:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

.field private mContext:Landroid/content/Context;

.field private mEditSelfPos:I

.field private mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

.field private mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

.field private mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

.field private mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

.field private mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

.field private mMainLooper:Landroid/os/Looper;

.field private mMediaScanningConnection:Landroid/media/MediaScannerConnection;

.field private mMusicID:J

.field private mParentKilled:Z

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private mTagEditWorker:Lcom/pantech/app/music/common/MusicWorker;

.field private mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

.field private mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 822
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagEdittingMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;JLcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooper"    # Landroid/os/Looper;
    .param p3, "musicID"    # J
    .param p5, "callBack"    # Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mParentKilled:Z

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditSelfPos:I

    .line 92
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMainLooper:Landroid/os/Looper;

    .line 94
    iput-wide p3, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMusicID:J

    .line 95
    iput-object p5, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mActivityCallBack:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    .line 98
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMainLooper:Landroid/os/Looper;

    if-eqz v0, :cond_22

    .line 99
    new-instance v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    .line 100
    :cond_22
    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->checkTrackDataAvailable(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/pantech/app/music/properties/MusicFileTagEdit;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditSelfPos:I

    return v0
.end method

.method static synthetic access$1400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/media/MediaScannerConnection;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMediaScanningConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Z
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mParentKilled:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/pantech/app/music/properties/MusicFileTagEdit;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMusicID:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/pantech/app/music/properties/MusicFileTagEdit;J)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;
    .param p1, "x1"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->removeGenreFieldByAudioID(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->updateTagData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/app/AlertDialog;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/view/SkyEditText;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mActivityCallBack:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/pantech/app/music/properties/MusicFileTagEditData;
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showDialogForTagEdit(ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditData;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->getDefaultPropertyViewData()Lcom/pantech/app/music/properties/MusicFileTagEditData;

    move-result-object v0

    return-object v0
.end method

.method private checkTrackDataAvailable(ILjava/lang/String;)Z
    .registers 7
    .param p1, "writeType"    # I
    .param p2, "newTrack"    # Ljava/lang/String;

    .prologue
    .line 542
    const/4 v1, 0x1

    .line 544
    .local v1, "result":Z
    if-eqz p2, :cond_3b

    .line 546
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 550
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_19

    .line 551
    const/4 v1, 0x0

    .line 548
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 554
    :cond_1c
    if-eqz v1, :cond_3b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3b

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_3a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3b

    .line 555
    :cond_3a
    const/4 v1, 0x0

    .line 558
    .end local v0    # "i":I
    :cond_3b
    if-nez v1, :cond_49

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mActivityCallBack:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    if-eqz v2, :cond_49

    .line 559
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mActivityCallBack:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    const v3, 0x7f080158

    invoke-interface {v2, v3}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(I)V

    .line 561
    :cond_49
    return v1
.end method

.method private getDefaultPropertyViewData()Lcom/pantech/app/music/properties/MusicFileTagEditData;
    .registers 8

    .prologue
    .line 745
    new-instance v0, Lcom/pantech/app/music/properties/MusicFileTagEditData;

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v3}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TRACK_NUMBER:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v5}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/music/properties/MusicFileTagEditData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static declared-synchronized getFileUsedNow(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 827
    const-class v1, Lcom/pantech/app/music/properties/MusicFileTagEdit;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagEdittingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 828
    sget-object v0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagEdittingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    move-result v0

    .line 830
    :goto_17
    monitor-exit v1

    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_17

    .line 827
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeGenreFieldByAudioID(J)V
    .registers 16
    .param p1, "audioID"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 446
    const/4 v9, 0x0

    .line 449
    .local v9, "genreID":Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v2, -0x1

    invoke-static {v0, v3, v2}, Lcom/pantech/app/music/list/db/DBInterfaceHelper;->getUri(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v6

    .line 450
    .local v6, "audioUri":Landroid/net/Uri;
    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 451
    const-string v0, "/genres"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 453
    .local v1, "genreUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "name"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 455
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_6b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v11, :cond_6b

    .line 457
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_f9

    .line 459
    sget-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    .line 468
    :goto_49
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 469
    const-string v0, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GENRE_ID in DB: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_6b
    if-eqz v7, :cond_70

    .line 473
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_70
    const-string v0, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeGenreFieldByAudioID genreID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  audioID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    if-eqz v9, :cond_f8

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_f8

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/audio/genres/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/members"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 482
    .local v10, "genreMapUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 484
    .local v8, "count":I
    const-string v0, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete genre count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .end local v8    # "count":I
    .end local v10    # "genreMapUri":Landroid/net/Uri;
    :cond_f8
    return-void

    .line 463
    :cond_f9
    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    .line 464
    sget-object v0, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->GENRE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    const-string v2, "name"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->setProperty(Ljava/lang/String;)V

    goto/16 :goto_49
.end method

.method private removeZeroValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 576
    if-eqz p1, :cond_16

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_16

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_16

    .line 580
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 584
    :cond_16
    return-object p1
.end method

.method public static declared-synchronized setFileUsedNow(Ljava/lang/String;Z)V
    .registers 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "isUsed"    # Z

    .prologue
    .line 837
    const-class v1, Lcom/pantech/app/music/properties/MusicFileTagEdit;

    monitor-enter v1

    :try_start_3
    const-string v0, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTagEdittingMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagEdittingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    sget-object v0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagEdittingMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_32

    .line 840
    monitor-exit v1

    return-void

    .line 837
    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setGenreItemV2(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    .local p1, "spinItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080164

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080169

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f08016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080172

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080175

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080176

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080177

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080178

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f08017a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f08017b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f08017c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    return-void
.end method

.method private setGenreSpinner(Landroid/widget/Spinner;Lcom/pantech/app/music/view/SkyEditText;ILjava/lang/String;)V
    .registers 14
    .param p1, "genreSpinner"    # Landroid/widget/Spinner;
    .param p2, "editTextGenre"    # Lcom/pantech/app/music/view/SkyEditText;
    .param p3, "writeType"    # I
    .param p4, "oldGenre"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 345
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v7, "spinItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p4, :cond_4f

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 348
    invoke-virtual {v7, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :goto_13
    if-eq p3, v3, :cond_19

    const/16 v0, 0x10

    if-ne p3, v0, :cond_5c

    .line 354
    :cond_19
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f080131

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-direct {p0, v7}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->setGenreItemV2(Ljava/util/ArrayList;)V

    .line 357
    iput v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditSelfPos:I

    .line 368
    :cond_2a
    :goto_2a
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x1090008

    invoke-direct {v2, v0, v1, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 369
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 370
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 374
    new-instance v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/music/properties/MusicFileTagEdit$4;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Landroid/widget/ArrayAdapter;Landroid/widget/Spinner;Lcom/pantech/app/music/view/SkyEditText;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 437
    return-void

    .line 350
    .end local v2    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4f
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 359
    :cond_5c
    const/16 v0, 0x100

    if-ne p3, v0, :cond_2a

    .line 361
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_61
    sget-object v0, Lcom/pantech/audiotag/common/util/GenreUtil;->mGenreList:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_70

    .line 362
    sget-object v0, Lcom/pantech/audiotag/common/util/GenreUtil;->mGenreList:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v8, v8, 0x1

    goto :goto_61

    .line 364
    :cond_70
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditSelfPos:I

    goto :goto_2a
.end method

.method private showDialogForTagEdit(ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V
    .registers 14
    .param p1, "writeType"    # I
    .param p2, "showData"    # Lcom/pantech/app/music/properties/MusicFileTagEditData;
    .param p3, "isGenreEdit"    # Z

    .prologue
    .line 122
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 340
    :goto_c
    return-void

    .line 125
    :cond_d
    const-string v7, "VMusicTagEdit"

    const-string v8, "showDialogForTagEdit()"

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v7, "VMusicTagEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show DATA TITLE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v7, "VMusicTagEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show DATA ARTIST: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->artist:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v7, "VMusicTagEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show DATA ALBUM: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->album:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v7, "VMusicTagEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show DATA GENRE: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v7, "VMusicTagEdit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show DATA TRACK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 133
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f0300bf

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 135
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f1001bc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/view/SkyEditText;

    iput-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    .line 136
    const v7, 0x7f1001be

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/view/SkyEditText;

    iput-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    .line 137
    const v7, 0x7f1001bd

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/view/SkyEditText;

    iput-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    .line 138
    const v7, 0x7f1001c0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/view/SkyEditText;

    iput-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    .line 139
    const v7, 0x7f1001c1

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/music/view/SkyEditText;

    iput-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    .line 140
    const v7, 0x7f1001bf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 143
    .local v3, "spinnerGenre":Landroid/widget/Spinner;
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setFilters(Landroid/text/InputFilter;)V

    .line 144
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setFilters(Landroid/text/InputFilter;)V

    .line 145
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setFilters(Landroid/text/InputFilter;)V

    .line 146
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/16 v9, 0x64

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setFilters(Landroid/text/InputFilter;)V

    .line 147
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setFilters(Landroid/text/InputFilter;)V

    .line 150
    const/4 v7, 0x5

    new-array v4, v7, [Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;

    .line 151
    .local v4, "textChangeListener":[Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_123
    array-length v7, v4

    if-ge v0, v7, :cond_131

    .line 152
    new-instance v7, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Lcom/pantech/app/music/properties/MusicFileTagEdit$1;)V

    aput-object v7, v4, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_123

    .line 154
    :cond_131
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSkyEditTextId(I)V

    .line 155
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSkyEditTextId(I)V

    .line 156
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSkyEditTextId(I)V

    .line 157
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSkyEditTextId(I)V

    .line 158
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSkyEditTextId(I)V

    .line 160
    const/4 v7, 0x0

    aget-object v7, v4, v7

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->setListener(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 161
    const/4 v7, 0x1

    aget-object v7, v4, v7

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->setListener(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 162
    const/4 v7, 0x2

    aget-object v7, v4, v7

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->setListener(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 163
    const/4 v7, 0x3

    aget-object v7, v4, v7

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->setListener(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 164
    const/4 v7, 0x4

    aget-object v7, v4, v7

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/properties/MusicFileTagEdit$FileTagTextChangeListener;->setListener(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 166
    const/16 v7, 0x100

    if-ne p1, v7, :cond_187

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mActivityCallBack:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    if-eqz v7, :cond_187

    .line 167
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mActivityCallBack:Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    const v8, 0x7f080159

    invoke-interface {v7, v8}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(I)V

    .line 169
    :cond_187
    iget-object v7, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    if-eqz v7, :cond_1a9

    .line 171
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_1a9

    .line 173
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->title:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 176
    :cond_1a9
    iget-object v7, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    if-eqz v7, :cond_1c6

    .line 178
    iget-object v5, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->track:Ljava/lang/String;

    .line 180
    .local v5, "trackStr":Ljava/lang/String;
    if-eqz v5, :cond_1c6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c6

    .line 182
    invoke-direct {p0, v5}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->removeZeroValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7, v5}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .end local v5    # "trackStr":Ljava/lang/String;
    :cond_1c6
    iget-object v7, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->artist:Ljava/lang/String;

    if-eqz v7, :cond_1d1

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->artist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :cond_1d1
    iget-object v7, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->album:Ljava/lang/String;

    if-eqz v7, :cond_1dc

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->album:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :cond_1dc
    iget-object v7, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    if-eqz v7, :cond_1e7

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_1e7
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_20a

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_20a

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v8}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 193
    :cond_20a
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_22d

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_22d

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v8}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 194
    :cond_22d
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_250

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_250

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v8}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 195
    :cond_250
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_273

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_273

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v8}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    .line 198
    :cond_273
    if-nez p3, :cond_2ca

    .line 202
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setVisibility(I)V

    .line 203
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p2, Lcom/pantech/app/music/properties/MusicFileTagEditData;->genre:Ljava/lang/String;

    invoke-direct {p0, v3, v7, p1, v8}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->setGenreSpinner(Landroid/widget/Spinner;Lcom/pantech/app/music/view/SkyEditText;ILjava/lang/String;)V

    .line 214
    :cond_283
    :goto_283
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v2, "popupDialog":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    const v8, 0x7f08015a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 219
    const v7, 0x7f08001b

    new-instance v8, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;

    invoke-direct {v8, p0, v3, p1}, Lcom/pantech/app/music/properties/MusicFileTagEdit$1;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Landroid/widget/Spinner;I)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 316
    const v7, 0x7f0800af

    new-instance v8, Lcom/pantech/app/music/properties/MusicFileTagEdit$2;

    invoke-direct {v8, p0}, Lcom/pantech/app/music/properties/MusicFileTagEdit$2;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    new-instance v7, Lcom/pantech/app/music/properties/MusicFileTagEdit$3;

    invoke-direct {v7, p0}, Lcom/pantech/app/music/properties/MusicFileTagEdit$3;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mPopupDialog:Landroid/app/AlertDialog;

    .line 337
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mPopupDialog:Landroid/app/AlertDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 339
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {p0, v7}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    goto/16 :goto_c

    .line 207
    .end local v2    # "popupDialog":Landroid/app/AlertDialog$Builder;
    :cond_2ca
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setVisibility(I)V

    .line 208
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 209
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_283

    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_283

    .line 210
    iget-object v7, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    iget-object v8, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v8}, Lcom/pantech/app/music/view/SkyEditText;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyEditText;->setSelection(I)V

    goto :goto_283
.end method

.method private updateTagData()V
    .registers 4

    .prologue
    .line 494
    const-string v1, "VMusicTagEdit"

    const-string v2, "updatePropertyData()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/properties/MusicFileTagEdit$5;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V

    .line 529
    .local v0, "scanClient":Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    new-instance v1, Landroid/media/MediaScannerConnection;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMediaScanningConnection:Landroid/media/MediaScannerConnection;

    .line 530
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mMediaScanningConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 531
    return-void
.end method


# virtual methods
.method public destoryProcess()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    if-eqz v0, :cond_c

    .line 628
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 629
    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    .line 632
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 634
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 636
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->getIsWorking()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 637
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->destroy()V

    .line 641
    :goto_2a
    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    .line 644
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mParentKilled:Z

    .line 645
    return-void

    .line 639
    :cond_30
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->stopWorker()V

    goto :goto_2a
.end method

.method protected getStorageAvailableType()I
    .registers 9

    .prologue
    .line 598
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 602
    const-string v1, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v1, "VMusicTagEdit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available free Space: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_64

    move-result-wide v4

    const-wide/32 v6, 0x1e00000

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_5e

    .line 607
    const/4 v1, 0x0

    .line 619
    const/4 v0, 0x0

    :goto_5d
    return v1

    .line 611
    :cond_5e
    const/4 v1, -0x1

    .line 619
    const/4 v0, 0x0

    goto :goto_5d

    .line 615
    :cond_61
    const/4 v1, -0x2

    .line 619
    const/4 v0, 0x0

    goto :goto_5d

    .end local v0    # "f":Ljava/io/File;
    :catchall_64
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "f":Ljava/io/File;
    throw v1
.end method

.method public onStartForIME()V
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    if-eqz v0, :cond_21

    .line 866
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    .line 875
    :cond_21
    :goto_21
    return-void

    .line 867
    :cond_22
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextArtist:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    goto :goto_21

    .line 868
    :cond_34
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextAlbum:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    goto :goto_21

    .line 869
    :cond_46
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextGenre:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    goto :goto_21

    .line 870
    :cond_58
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getEditTextView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTrack:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    goto :goto_21

    .line 873
    :cond_6a
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mEditTextTitle:Lcom/pantech/app/music/view/SkyEditText;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->showIME(Lcom/pantech/app/music/view/SkyEditText;)V

    goto :goto_21
.end method

.method public quitWorker()V
    .registers 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    if-eqz v0, :cond_e

    .line 651
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 652
    :cond_e
    return-void
.end method

.method public showIME(Lcom/pantech/app/music/view/SkyEditText;)V
    .registers 6
    .param p1, "editText"    # Lcom/pantech/app/music/view/SkyEditText;

    .prologue
    .line 845
    new-instance v0, Lcom/pantech/app/music/properties/MusicFileTagEdit$6;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/music/properties/MusicFileTagEdit$6;-><init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Lcom/pantech/app/music/view/SkyEditText;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v0, v2, v3}, Lcom/pantech/app/music/view/SkyEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 857
    return-void
.end method

.method public startTagEdit()V
    .registers 5

    .prologue
    .line 105
    new-instance v1, Lcom/pantech/app/music/common/MusicWorker;

    const-string v2, "Tag Edit Thread"

    invoke-direct {v1, v2}, Lcom/pantech/app/music/common/MusicWorker;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagEditWorker:Lcom/pantech/app/music/common/MusicWorker;

    .line 107
    new-instance v1, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagEditWorker:Lcom/pantech/app/music/common/MusicWorker;

    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagUIHandler:Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;-><init>(Lcom/pantech/app/music/common/MusicWorker;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    .line 109
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    if-eqz v1, :cond_24

    .line 111
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit;->mTagWorkerHandler:Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    .end local v0    # "msg":Landroid/os/Message;
    :cond_24
    return-void
.end method
