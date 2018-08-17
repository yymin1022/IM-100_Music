.class public Lcom/lifevibes/audiofx/LVVirtualizer;
.super Landroid/media/audiofx/Virtualizer;
.source "LVVirtualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/audiofx/LVVirtualizer$Settings;
    }
.end annotation


# static fields
.field public static final EFFECT_UUID:Ljava/util/UUID;

.field public static final LVM_CINEMASOUND_MOVIE:S = 0x1s

.field public static final LVM_CINEMASOUND_MUSIC:S = 0x2s

.field public static final LVM_CINEMASOUND_STEREO:S = 0x3s

.field public static final LVM_CONCERTSOUND:S = 0x0s

.field public static final PARAM_SPEAKER_TUNING_MID_FREQ:I = 0x3e9

.field public static final PARAM_SPEAKER_TUNING_MID_GAIN:I = 0x3e8

.field public static final PARAM_SPEAKER_TUNING_SIDE_GAIN:I = 0x3ec

.field public static final PARAM_SPEAKER_TUNING_SIDE_HIGHPASS_FREQ:I = 0x3ea

.field public static final PARAM_SPEAKER_TUNING_SIDE_LOWPASS_FREQ:I = 0x3eb

.field public static final PARAM_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LVVirtualizer"

.field public static final TYPE_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 74
    const-string v0, "bb2ba0c0-b431-11df-a1c4-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/lifevibes/audiofx/LVVirtualizer;->EFFECT_UUID:Ljava/util/UUID;

    .line 139
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Concert Sound"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Cinema Sound Movie"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 140
    const-string v2, "Cinema Sound Music"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Cinema Sound Stereo"

    aput-object v2, v0, v1

    .line 139
    sput-object v0, Lcom/lifevibes/audiofx/LVVirtualizer;->TYPE_STRINGS:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/media/audiofx/Virtualizer;-><init>(II)V

    .line 165
    const-string v0, "LVVirtualizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating LVVirtualizer effect type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lifevibes/audiofx/LVVirtualizer;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void
.end method


# virtual methods
.method public bridge synthetic getProperties()Landroid/media/audiofx/Virtualizer$Settings;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getProperties()Lcom/lifevibes/audiofx/LVVirtualizer$Settings;

    move-result-object v0

    return-object v0
.end method

.method public getProperties()Lcom/lifevibes/audiofx/LVVirtualizer$Settings;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/lifevibes/audiofx/LVVirtualizer$Settings;

    invoke-direct {v0}, Lcom/lifevibes/audiofx/LVVirtualizer$Settings;-><init>()V

    .line 268
    .local v0, "settings":Lcom/lifevibes/audiofx/LVVirtualizer$Settings;
    invoke-virtual {p0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getRoundedStrength()S

    move-result v1

    iput-short v1, v0, Lcom/lifevibes/audiofx/LVVirtualizer$Settings;->strength:S

    .line 269
    invoke-virtual {p0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getType()I

    move-result v1

    iput v1, v0, Lcom/lifevibes/audiofx/LVVirtualizer$Settings;->type:I

    .line 278
    return-object v0
.end method

.method public getSpeakerTuningMidFreq()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 349
    .local v0, "value":[I
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 350
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getSpeakerTuningMidGain()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 317
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 318
    .local v0, "value":[S
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 319
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getSpeakerTuningSideGain()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 442
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 443
    .local v0, "value":[S
    const/16 v1, 0x3ec

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 444
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getSpeakerTuningSideHighpassFreq()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 380
    .local v1, "value":[I
    const/16 v2, 0x3ea

    invoke-virtual {p0, v2, v1}, Lcom/lifevibes/audiofx/LVVirtualizer;->getParameter(I[I)I

    move-result v0

    .line 381
    .local v0, "ret":I
    const-string v2, "LVVirtualizer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "native getParameter returned "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v2, 0x0

    aget v2, v1, v2

    return v2
.end method

.method public getSpeakerTuningSideLowpassFreq()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 411
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 412
    .local v0, "value":[I
    const/16 v1, 0x3eb

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 413
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getType()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 182
    .local v0, "value":[I
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 183
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public setProperties(Lcom/lifevibes/audiofx/LVVirtualizer$Settings;)V
    .registers 3
    .param p1, "settings"    # Lcom/lifevibes/audiofx/LVVirtualizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/media/audiofx/Virtualizer;->setProperties(Landroid/media/audiofx/Virtualizer$Settings;)V

    .line 295
    iget v0, p1, Lcom/lifevibes/audiofx/LVVirtualizer$Settings;->type:I

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->setType(I)V

    .line 304
    return-void
.end method

.method public setSpeakerTuningMidFreq(I)V
    .registers 3
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 365
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 366
    return-void
.end method

.method public setSpeakerTuningMidGain(S)V
    .registers 3
    .param p1, "gain"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 334
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 335
    return-void
.end method

.method public setSpeakerTuningSideGain(S)V
    .registers 3
    .param p1, "gain"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 459
    const/16 v0, 0x3ec

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 460
    return-void
.end method

.method public setSpeakerTuningSideHighpassFreq(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 397
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 398
    return-void
.end method

.method public setSpeakerTuningSideLowpassFreq(I)V
    .registers 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 428
    const/16 v0, 0x3eb

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 429
    return-void
.end method

.method public setType(I)V
    .registers 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LVVirtualizer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LVVirtualizer;->checkStatus(I)V

    .line 201
    return-void
.end method
