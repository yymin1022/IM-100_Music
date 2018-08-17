.class public Lcom/pantech/app/musicfx/utils/MLog;
.super Ljava/lang/Object;
.source "MLog.java"


# static fields
.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x10

.field public static final LEVEL_INFO:I = 0x4

.field public static final LEVEL_VERBOSE:I = 0x1

.field public static final LEVEL_WARNING:I = 0x8

.field private static final TAG:Ljava/lang/String; = "VMusicFX"

.field public static final TagDB:Ljava/lang/String; = "VMusicFX_DB"

.field public static final TagEQP:Ljava/lang/String; = "VMusicFX_EQP"

.field public static final TagIns:Ljava/lang/String; = "VMusicFX_Ins"

.field public static final TagService:Ljava/lang/String; = "VMusicFX_Service"

.field public static final TagSettingP:Ljava/lang/String; = "VMusicFX_SettingP"

.field public static final logControl:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 179
    :goto_8
    return-void

    .line 175
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 176
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicFX"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 189
    :goto_8
    return-void

    .line 185
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 186
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 188
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
    .line 201
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_9

    .line 207
    :goto_8
    return-void

    .line 203
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 204
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isMust"    # Z

    .prologue
    .line 102
    return-void
.end method

.method public static d(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "isMust"    # Z

    .prologue
    .line 57
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    .line 310
    :goto_8
    return-void

    .line 306
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 307
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicFX"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    .line 320
    :goto_8
    return-void

    .line 316
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 317
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 319
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
    .line 332
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_9

    .line 338
    :goto_8
    return-void

    .line 334
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 335
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static i(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 223
    :goto_8
    return-void

    .line 219
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 220
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicFX"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 233
    :goto_8
    return-void

    .line 229
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 230
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 232
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
    .line 245
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_9

    .line 251
    :goto_8
    return-void

    .line 247
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 248
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isMust"    # Z

    .prologue
    .line 87
    return-void
.end method

.method public static i(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "isMust"    # Z

    .prologue
    .line 42
    return-void
.end method

.method public static list(Landroid/database/Cursor;)V
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
    .line 530
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "szCol":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-eqz p0, :cond_45

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_45

    .line 534
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 536
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_11
    array-length v3, v2

    if-ge v1, v3, :cond_3d

    .line 538
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

    invoke-static {v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 541
    :cond_3d
    const-string v3, "============================================"

    invoke-static {v3}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 543
    .end local v1    # "j":I
    :cond_45
    return-void
.end method

.method public static list(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "audioIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TK;>;"
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9

    .line 526
    :goto_8
    return-void

    .line 513
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 515
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 517
    .local v1, "id":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x400

    if-lt v5, v6, :cond_20

    .line 522
    .end local v1    # "id":Ljava/lang/Object;, "TK;"
    :cond_49
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 523
    .local v3, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "totalMsg":Ljava/lang/String;
    const-string v5, "VMusicFX"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static list(Ljava/lang/String;Ljava/util/Vector;)V
    .registers 9
    .param p0, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "audioIDs":Ljava/util/Vector;, "Ljava/util/Vector<TK;>;"
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_9

    .line 507
    :goto_8
    return-void

    .line 494
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 498
    .local v1, "id":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x400

    if-lt v5, v6, :cond_20

    .line 503
    .end local v1    # "id":Ljava/lang/Object;, "TK;"
    :cond_49
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 504
    .local v3, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v2, v3}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "totalMsg":Ljava/lang/String;
    const-string v5, "VMusicFX"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static list(Ljava/lang/String;[I)V
    .registers 13
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "audioIDs"    # [I

    .prologue
    .line 467
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_9

    .line 488
    :goto_8
    return-void

    .line 469
    :cond_9
    if-nez p1, :cond_24

    .line 471
    const-string v8, "VMusicFX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 475
    :cond_24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 477
    .local v5, "msg":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3a
    if-ge v1, v4, :cond_5e

    aget v8, v0, v1

    int-to-long v2, v8

    .line 479
    .local v2, "id":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 481
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x400

    if-lt v8, v9, :cond_71

    .line 484
    .end local v2    # "id":J
    :cond_5e
    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 485
    .local v6, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v5, v6}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v7

    .line 487
    .local v7, "totalMsg":Ljava/lang/String;
    const-string v8, "VMusicFX"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 477
    .end local v6    # "ste":[Ljava/lang/StackTraceElement;
    .end local v7    # "totalMsg":Ljava/lang/String;
    .restart local v2    # "id":J
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public static list(Ljava/lang/String;[ILjava/lang/String;Z)V
    .registers 13
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "list"    # [I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isMust"    # Z

    .prologue
    .line 367
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_b

    if-nez p3, :cond_b

    .line 388
    :goto_a
    return-void

    .line 369
    :cond_b
    if-nez p1, :cond_13

    .line 371
    const-string v7, " = null"

    invoke-static {p0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 375
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "msg":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_29
    if-ge v1, v3, :cond_4c

    aget v2, v0, v1

    .line 379
    .local v2, "id":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x400

    if-lt v7, v8, :cond_5d

    .line 384
    .end local v2    # "id":I
    :cond_4c
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 385
    .local v5, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v4, v5}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    .line 387
    .local v6, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 377
    .end local v5    # "ste":[Ljava/lang/StackTraceElement;
    .end local v6    # "totalMsg":Ljava/lang/String;
    .restart local v2    # "id":I
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method public static list(Ljava/lang/String;[J)V
    .registers 13
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "audioIDs"    # [J

    .prologue
    .line 417
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_9

    .line 438
    :goto_8
    return-void

    .line 419
    :cond_9
    if-nez p1, :cond_24

    .line 421
    const-string v8, "VMusicFX"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 425
    :cond_24
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "msg":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3a
    if-ge v1, v4, :cond_5d

    aget-wide v2, v0, v1

    .line 429
    .local v2, "id":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x400

    if-lt v8, v9, :cond_70

    .line 434
    .end local v2    # "id":J
    :cond_5d
    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 435
    .local v6, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v5, v6}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, "totalMsg":Ljava/lang/String;
    const-string v8, "VMusicFX"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 427
    .end local v6    # "ste":[Ljava/lang/StackTraceElement;
    .end local v7    # "totalMsg":Ljava/lang/String;
    .restart local v2    # "id":J
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public static list(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "audioIDs"    # [Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_9

    .line 363
    :goto_8
    return-void

    .line 344
    :cond_9
    if-nez p1, :cond_24

    .line 346
    const-string v7, "VMusicFX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 350
    :cond_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "msg":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3a
    if-ge v1, v3, :cond_5d

    aget-object v2, v0, v1

    .line 354
    .local v2, "id":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x400

    if-lt v7, v8, :cond_70

    .line 359
    .end local v2    # "id":Ljava/lang/String;
    :cond_5d
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 360
    .local v5, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v4, v5}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    .line 362
    .local v6, "totalMsg":Ljava/lang/String;
    const-string v7, "VMusicFX"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 352
    .end local v5    # "ste":[Ljava/lang/StackTraceElement;
    .end local v6    # "totalMsg":Ljava/lang/String;
    .restart local v2    # "id":Ljava/lang/String;
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public static list(Ljava/lang/String;[S)V
    .registers 12
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "audioIDs"    # [S

    .prologue
    .line 442
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_9

    .line 463
    :goto_8
    return-void

    .line 444
    :cond_9
    if-nez p1, :cond_24

    .line 446
    const-string v7, "VMusicFX"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 450
    :cond_24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    .local v4, "msg":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3a
    if-ge v1, v3, :cond_5d

    aget-short v2, v0, v1

    .line 454
    .local v2, "id":S
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x400

    if-lt v7, v8, :cond_70

    .line 459
    .end local v2    # "id":S
    :cond_5d
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 460
    .local v5, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v4, v5}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    .line 462
    .local v6, "totalMsg":Ljava/lang/String;
    const-string v7, "VMusicFX"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 452
    .end local v5    # "ste":[Ljava/lang/StackTraceElement;
    .end local v6    # "totalMsg":Ljava/lang/String;
    .restart local v2    # "id":S
    :cond_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public static list(Ljava/lang/String;[SLjava/lang/String;Z)V
    .registers 13
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "list"    # [S
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isMust"    # Z

    .prologue
    .line 392
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_b

    if-nez p3, :cond_b

    .line 413
    :goto_a
    return-void

    .line 394
    :cond_b
    if-nez p1, :cond_13

    .line 396
    const-string v7, " = null"

    invoke-static {p0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 400
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, "msg":Ljava/lang/String;
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_29
    if-ge v1, v3, :cond_4c

    aget-short v2, v0, v1

    .line 404
    .local v2, "id":S
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x400

    if-lt v7, v8, :cond_5d

    .line 409
    .end local v2    # "id":S
    :cond_4c
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 410
    .local v5, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {v4, v5}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    .line 412
    .local v6, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 402
    .end local v5    # "ste":[Ljava/lang/StackTraceElement;
    .end local v6    # "totalMsg":Ljava/lang/String;
    .restart local v2    # "id":S
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method private static makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 9
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ste"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v6, 0x1

    .line 555
    const-string v0, ""

    .line 557
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

    .line 559
    return-object v0
.end method

.method public static v(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 134
    :goto_8
    return-void

    .line 130
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 131
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicFX"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 144
    :goto_8
    return-void

    .line 140
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 141
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 143
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
    .line 157
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_9

    .line 163
    :goto_8
    return-void

    .line 159
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 160
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isMust"    # Z

    .prologue
    .line 118
    return-void
.end method

.method public static v(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "isMust"    # Z

    .prologue
    .line 72
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 266
    :goto_8
    return-void

    .line 263
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 264
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p0, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "totalMsg":Ljava/lang/String;
    const-string v2, "VMusicFX"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 270
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

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
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 275
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
    .line 288
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getAllowLogLevel()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    .line 294
    :goto_8
    return-void

    .line 290
    :cond_9
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 291
    .local v0, "ste":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v0}, Lcom/pantech/app/musicfx/utils/MLog;->makeMsg(Ljava/lang/String;[Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "totalMsg":Ljava/lang/String;
    invoke-static {p0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method
