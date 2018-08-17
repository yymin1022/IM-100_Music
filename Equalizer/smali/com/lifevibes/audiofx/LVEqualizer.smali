.class public Lcom/lifevibes/audiofx/LVEqualizer;
.super Landroid/media/audiofx/Equalizer;
.source "LVEqualizer.java"


# static fields
.field public static final PARAM_QFACTOR:I = 0xa

.field public static final PARAM_TUNING_BAND_FREQ_RANGE:I = 0x3ed

.field public static final PARAM_TUNING_BAND_LEVEL:I = 0x3ea

.field public static final PARAM_TUNING_CENTER_FREQ:I = 0x3eb

.field public static final PARAM_TUNING_GET_BAND:I = 0x3ee

.field public static final PARAM_TUNING_LEVEL_RANGE:I = 0x3e9

.field public static final PARAM_TUNING_NUM_BANDS:I = 0x3e8

.field public static final PARAM_TUNING_QFACTOR:I = 0x3ec

.field private static final TAG:Ljava/lang/String; = "LVEqualizer"


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    .line 138
    const-string v0, "LVEqualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating LVEqualizer effect type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lifevibes/audiofx/LVEqualizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method


# virtual methods
.method public getNumberOfBands()S
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 152
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 153
    .local v0, "value":[S
    invoke-virtual {p0, v2, v0}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 154
    aget-short v1, v0, v2

    return v1
.end method

.method public getNumberOfTuningBands()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 262
    .local v0, "value":[S
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 263
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getQFactor(S)S
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 214
    .local v0, "param":[I
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 215
    aput p1, v0, v4

    .line 216
    new-array v1, v4, [S

    .line 217
    .local v1, "value":[S
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 218
    aget-short v2, v1, v3

    return v2
.end method

.method public getTuningBandFreqRange(S)[I
    .registers 6
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 461
    new-array v0, v2, [I

    .line 462
    .local v0, "param":[I
    new-array v1, v2, [I

    .line 463
    .local v1, "result":[I
    const/4 v2, 0x0

    const/16 v3, 0x3ed

    aput v3, v0, v2

    .line 464
    const/4 v2, 0x1

    aput p1, v0, v2

    .line 465
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 467
    return-object v1
.end method

.method public getTuningBandLevel(S)S
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 392
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 393
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 395
    .local v1, "result":[S
    const/16 v2, 0x3ea

    aput v2, v0, v3

    .line 396
    aput p1, v0, v4

    .line 397
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 399
    aget-short v2, v1, v3

    return v2
.end method

.method public getTuningBandLevelRange()[S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 440
    const/4 v1, 0x2

    new-array v0, v1, [S

    .line 441
    .local v0, "result":[S
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 442
    return-object v0
.end method

.method public getTuningCenterFreq(S)I
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 296
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 298
    .local v1, "result":[I
    const/16 v2, 0x3eb

    aput v2, v0, v3

    .line 299
    aput p1, v0, v4

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 302
    aget v2, v1, v3

    return v2
.end method

.method public getTuningQFactor(S)S
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 345
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 347
    .local v0, "param":[I
    const/16 v2, 0x3ec

    aput v2, v0, v3

    .line 348
    aput p1, v0, v4

    .line 349
    new-array v1, v4, [S

    .line 350
    .local v1, "value":[S
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 351
    aget-short v2, v1, v3

    return v2
.end method

.method public setCenterFreq(SI)V
    .registers 8
    .param p1, "band"    # S
    .param p2, "centerFreq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 190
    .local v0, "param":[I
    const/4 v2, 0x3

    aput v2, v0, v3

    .line 191
    aput p1, v0, v4

    .line 192
    new-array v1, v4, [I

    .line 193
    .local v1, "value":[I
    aput p2, v1, v3

    .line 194
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 195
    return-void
.end method

.method public setNumberOfBands(S)V
    .registers 3
    .param p1, "numBands"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVEqualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 170
    return-void
.end method

.method public setNumberOfTuningBands(S)V
    .registers 3
    .param p1, "numBands"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 278
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVEqualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 279
    return-void
.end method

.method public setQFactor(SS)V
    .registers 8
    .param p1, "band"    # S
    .param p2, "QFactor"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 239
    .local v0, "param":[I
    const/16 v2, 0xa

    aput v2, v0, v3

    .line 240
    aput p1, v0, v4

    .line 241
    new-array v1, v4, [S

    .line 242
    .local v1, "value":[S
    aput-short p2, v1, v3

    .line 243
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 244
    return-void
.end method

.method public setTuningBandLevel(SS)V
    .registers 8
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 419
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 420
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 422
    .local v1, "value":[S
    const/16 v2, 0x3ea

    aput v2, v0, v3

    .line 423
    aput p1, v0, v4

    .line 424
    aput-short p2, v1, v3

    .line 425
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 426
    return-void
.end method

.method public setTuningCenterFreq(SI)V
    .registers 8
    .param p1, "band"    # S
    .param p2, "centerFreq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 323
    .local v0, "param":[I
    const/16 v2, 0x3eb

    aput v2, v0, v3

    .line 324
    aput p1, v0, v4

    .line 325
    new-array v1, v4, [I

    .line 326
    .local v1, "value":[I
    aput p2, v1, v3

    .line 327
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->setParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 328
    return-void
.end method

.method public setTuningQFactor(SS)V
    .registers 8
    .param p1, "band"    # S
    .param p2, "QFactor"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 370
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 372
    .local v0, "param":[I
    const/16 v2, 0x3ec

    aput v2, v0, v3

    .line 373
    aput p1, v0, v4

    .line 374
    new-array v1, v4, [S

    .line 375
    .local v1, "value":[S
    aput-short p2, v1, v3

    .line 376
    invoke-virtual {p0, v0, v1}, Lcom/lifevibes/audiofx/LVEqualizer;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lifevibes/audiofx/LVEqualizer;->checkStatus(I)V

    .line 377
    return-void
.end method
