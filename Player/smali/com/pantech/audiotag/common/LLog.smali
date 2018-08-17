.class public Lcom/pantech/audiotag/common/LLog;
.super Ljava/lang/Object;
.source "LLog.java"


# static fields
.field public static final LEVEL_DEBUG:I = 0x2

.field public static final LEVEL_ERROR:I = 0x10

.field public static final LEVEL_INFO:I = 0x4

.field public static final LEVEL_VERBOSE:I = 0x1

.field public static final LEVEL_WARNING:I = 0x8

.field private static final TAG:Ljava/lang/String; = "VTAG_PARSER"

.field public static final TEST_LOG_OTHER_CASE:Z = true

.field private static TEST_LOG_SYSTEM_OUT:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeLogLevelJavaProjectMode()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    .line 30
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_13

    .line 182
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 190
    :goto_c
    return-void

    .line 184
    :cond_d
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 188
    :cond_13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 196
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 204
    :goto_c
    return-void

    .line 198
    :cond_d
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 202
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 216
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 218
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    .line 226
    :goto_c
    return-void

    .line 220
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 224
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static d(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "isMust"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_b

    .line 84
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_c

    .line 86
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_b
    :goto_b
    return-void

    .line 90
    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 348
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_13

    .line 350
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_d

    .line 358
    :goto_c
    return-void

    .line 352
    :cond_d
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 356
    :cond_13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 362
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 364
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_d

    .line 372
    :goto_c
    return-void

    .line 366
    :cond_d
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 370
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 384
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 386
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_d

    .line 394
    :goto_c
    return-void

    .line 388
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 392
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 49
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-eqz v0, :cond_9

    .line 51
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 53
    :cond_9
    return-void
.end method

.method public static getIsJavProjectMode()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 236
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_13

    .line 238
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_d

    .line 246
    :goto_c
    return-void

    .line 240
    :cond_d
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 244
    :cond_13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 250
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 252
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_d

    .line 260
    :goto_c
    return-void

    .line 254
    :cond_d
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 258
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 272
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 274
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_d

    .line 282
    :goto_c
    return-void

    .line 276
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 280
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static i(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "isMust"    # Z

    .prologue
    .line 62
    if-eqz p1, :cond_b

    .line 64
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_c

    .line 66
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_b
    :goto_b
    return-void

    .line 70
    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_13

    .line 125
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    .line 133
    :goto_c
    return-void

    .line 127
    :cond_d
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 131
    :cond_13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 139
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    .line 147
    :goto_c
    return-void

    .line 141
    :cond_d
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 145
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 160
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 162
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_d

    .line 170
    :goto_c
    return-void

    .line 164
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 168
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static v(Ljava/lang/String;Z)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "isMust"    # Z

    .prologue
    .line 102
    if-eqz p1, :cond_b

    .line 104
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_c

    .line 106
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_b
    :goto_b
    return-void

    .line 110
    :cond_c
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 292
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_13

    .line 294
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_d

    .line 302
    :goto_c
    return-void

    .line 296
    :cond_d
    const-string v0, "VTAG_PARSER"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 300
    :cond_13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 308
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_d

    .line 316
    :goto_c
    return-void

    .line 310
    :cond_d
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 314
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 328
    sget-boolean v0, Lcom/pantech/audiotag/common/LLog;->TEST_LOG_SYSTEM_OUT:Z

    if-nez v0, :cond_11

    .line 330
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getAllowLogLevel()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_d

    .line 338
    :goto_c
    return-void

    .line 332
    :cond_d
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 336
    :cond_11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c
.end method
