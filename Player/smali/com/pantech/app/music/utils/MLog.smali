.class public final Lcom/pantech/app/music/utils/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field private static DEBUG_TAG:Ljava/lang/String; = null

.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x10

.field public static final LEVEL_INFO:I = 0x4

.field public static final LEVEL_NONE:I = 0x0

.field public static final LEVEL_VERBOSE:I = 0x1

.field public static final LEVEL_WARNING:I = 0x8

.field public static final MusicActivity:Ljava/lang/String; = "VMusicActivity"

.field public static final MusicAdapterTag:Ljava/lang/String; = "VMusicAdapterTag"

.field public static final MusicAlbumartTag:Ljava/lang/String; = "VMusicAlbumartTag"

.field public static final MusicDiaglogFragment:Ljava/lang/String; = "VMusicDiaglogFragment"

.field public static final MusicIndexBar:Ljava/lang/String; = "VMusicIndexBar"

.field public static final MusicInterfaceTag:Ljava/lang/String; = "VMusicInterfaceTag"

.field public static final MusicLyrics:Ljava/lang/String; = "VMusicLyrics"

.field public static final MusicMetaData:Ljava/lang/String; = "VMusicMetaData"

.field public static final MusicNaviTag:Ljava/lang/String; = "VMusicNavi"

.field public static final MusicPageApapterTag:Ljava/lang/String; = "VMusicPageApapterTag"

.field public static final MusicProperties:Ljava/lang/String; = "VMusicProperties"

.field public static final MusicSearchTag:Ljava/lang/String; = "VMusicSearchTag"

.field public static final MusicTagEdit:Ljava/lang/String; = "VMusicTagEdit"

.field public static final MusicWidget:Ljava/lang/String; = "VMusicWidget"

.field public static final MusicWorkerTag:Ljava/lang/String; = "VMusicWorkerTag"

.field public static final TAG:Ljava/lang/String; = "VMusicDefault"

.field public static performanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-string v0, "MusicD_"

    sput-object v0, Lcom/pantech/app/music/utils/MLog;->DEBUG_TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/utils/MLog;->performanceMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorList(Landroid/database/Cursor;)V
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 442
    :cond_8
    return-void

    .line 429
    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "szCol":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 433
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 435
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1a
    array-length v3, v2

    if-ge v1, v3, :cond_46

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 435
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 440
    :cond_46
    const-string v3, "============================================"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static cursorList(Landroid/database/Cursor;II)V
    .registers 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 446
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 461
    :cond_8
    return-void

    .line 448
    :cond_9
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "szCol":[Ljava/lang/String;
    move v0, p1

    .local v0, "i":I
    :goto_e
    if-eqz p0, :cond_8

    add-int v3, p1, p2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 452
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 454
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_20
    array-length v3, v2

    if-ge v1, v3, :cond_4c

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 454
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 459
    :cond_4c
    const-string v3, "============================================"

    invoke-static {v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;)V

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static d(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 160
    :goto_8
    return-void

    .line 157
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 158
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicDefault"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 170
    :goto_8
    return-void

    .line 166
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 167
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 180
    :goto_8
    return-void

    .line 176
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 177
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static debugD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 59
    :goto_8
    return-void

    .line 56
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 57
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "totalMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pantech/app/music/utils/MLog;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static debugE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    .line 80
    :goto_8
    return-void

    .line 77
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 78
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "totalMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pantech/app/music/utils/MLog;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static debugI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 66
    :goto_8
    return-void

    .line 63
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 64
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "totalMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pantech/app/music/utils/MLog;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static debugV(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 52
    :goto_8
    return-void

    .line 49
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 50
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "totalMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pantech/app/music/utils/MLog;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static debugW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 73
    :goto_8
    return-void

    .line 70
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 71
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "totalMsg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/pantech/app/music/utils/MLog;->DEBUG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static e(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    .line 266
    :goto_8
    return-void

    .line 262
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 263
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicDefault"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    .line 276
    :goto_8
    return-void

    .line 272
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 273
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 279
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    .line 285
    :goto_8
    return-void

    .line 281
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 282
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static functionStack(I)V
    .registers 2
    .param p0, "minDepth"    # I

    .prologue
    .line 293
    const-string v0, "VMusicDefault"

    invoke-static {v0, p0}, Lcom/pantech/app/music/utils/MLog;->functionStack(Ljava/lang/String;I)V

    .line 294
    return-void
.end method

.method public static functionStack(Ljava/lang/String;I)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "minDepth"    # I

    .prologue
    .line 297
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 304
    :cond_8
    return-void

    .line 299
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 300
    .local v1, "ste":[Ljava/lang/StackTraceElement;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    array-length v2, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/pantech/app/music/utils/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public static i(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 195
    :goto_8
    return-void

    .line 192
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 193
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicDefault"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 205
    :goto_8
    return-void

    .line 201
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 202
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 215
    :goto_8
    return-void

    .line 211
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 212
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static list(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p2, "audioIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TK;>;"
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 423
    :goto_8
    return-void

    .line 414
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 418
    .local v1, "id":Ljava/lang/Object;, "TK;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-lt v3, v4, :cond_20

    .line 422
    .end local v1    # "id":Ljava/lang/Object;, "TK;"
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static list(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "audioIDs":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 393
    :goto_8
    return-void

    .line 384
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "msg":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 388
    .local v1, "id":Ljava/lang/Object;, "TK;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-lt v3, v4, :cond_20

    .line 392
    .end local v1    # "id":Ljava/lang/Object;, "TK;"
    :cond_49
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static list(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)V
    .registers 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p2, "audioIDs":Ljava/util/Vector;, "Ljava/util/Vector<TK;>;"
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_9

    .line 408
    :goto_8
    return-void

    .line 399
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 403
    .local v1, "id":Ljava/lang/Object;, "TK;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x400

    if-lt v3, v4, :cond_20

    .line 407
    .end local v1    # "id":Ljava/lang/Object;, "TK;"
    :cond_49
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static list(Ljava/lang/String;Ljava/lang/String;[I)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "audioIDs"    # [I

    .prologue
    .line 334
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9

    .line 351
    :goto_8
    return-void

    .line 336
    :cond_9
    if-nez p2, :cond_22

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 342
    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "msg":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_38
    if-ge v1, v3, :cond_5b

    aget v2, v0, v1

    .line 346
    .local v2, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x400

    if-lt v5, v6, :cond_5f

    .line 350
    .end local v2    # "id":I
    :cond_5b
    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 344
    .restart local v2    # "id":I
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_38
.end method

.method public static list(Ljava/lang/String;Ljava/lang/String;[J)V
    .registers 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "audioIDs"    # [J

    .prologue
    .line 314
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_9

    .line 331
    :goto_8
    return-void

    .line 316
    :cond_9
    if-nez p2, :cond_22

    .line 318
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 322
    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "msg":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_38
    if-ge v1, v4, :cond_5b

    aget-wide v2, v0, v1

    .line 326
    .local v2, "id":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x400

    if-lt v6, v7, :cond_5f

    .line 330
    .end local v2    # "id":J
    :cond_5b
    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 324
    .restart local v2    # "id":J
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_38
.end method

.method public static list(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TK;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p2, "audioIDs":[Ljava/lang/Object;, "[TK;"
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9

    .line 378
    :goto_8
    return-void

    .line 363
    :cond_9
    if-nez p2, :cond_22

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 369
    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 371
    .local v4, "msg":Ljava/lang/String;
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_38
    if-ge v1, v3, :cond_5b

    aget-object v2, v0, v1

    .line 373
    .local v2, "id":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 375
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x400

    if-lt v5, v6, :cond_5f

    .line 377
    .end local v2    # "id":Ljava/lang/Object;, "TK;"
    :cond_5b
    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 371
    .restart local v2    # "id":Ljava/lang/Object;, "TK;"
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_38
.end method

.method private static makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ste"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v6, 0x1

    .line 493
    const-string v0, ""

    .line 495
    .local v0, "strMsg":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      [%s:%d][%s()] #[%s]#"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, p1, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    aget-object v5, p1, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 497
    return-object v0
.end method

.method public static performance(Ljava/lang/String;Z)V
    .registers 10
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "checkPoint"    # Z

    .prologue
    .line 87
    if-eqz p1, :cond_30

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 89
    .local v0, "startTime":J
    sget-object v3, Lcom/pantech/app/music/utils/MLog;->performanceMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v3, "MusicD_Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - StartUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/pantech/app/music/common/Global;->mStartLap:J

    sub-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v0    # "startTime":J
    :goto_2f
    return-void

    .line 92
    :cond_30
    sget-object v3, Lcom/pantech/app/music/utils/MLog;->performanceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 93
    .local v2, "timeLong":Ljava/lang/Long;
    if-nez v2, :cond_42

    .line 94
    const-string v3, "VMusicDefault"

    const-string v4, "You should call performance log in pair (true-false)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 97
    :cond_42
    sget-object v3, Lcom/pantech/app/music/utils/MLog;->performanceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 98
    .restart local v0    # "startTime":J
    sget-object v3, Lcom/pantech/app/music/utils/MLog;->performanceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v3, "MusicD_Performance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - StartUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v6, Lcom/pantech/app/music/common/Global;->mStartLap:J

    sub-long v6, v0, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Elapse:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static v(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 116
    :goto_8
    return-void

    .line 113
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 114
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicDefault"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 126
    :goto_8
    return-void

    .line 122
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 123
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 145
    :goto_8
    return-void

    .line 141
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 142
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static w(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 230
    :goto_8
    return-void

    .line 227
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 228
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicDefault"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 240
    :goto_8
    return-void

    .line 236
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 237
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 244
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 250
    :goto_8
    return-void

    .line 246
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 247
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/music/utils/MLog;->makeSimpleMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method
