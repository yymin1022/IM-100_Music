.class public Lcom/lifevibes/audiofx/LoudnessMaximizer;
.super Landroid/media/audiofx/AudioEffect;
.source "LoudnessMaximizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_LOUDNESS_MAXIMIZER:Ljava/util/UUID;

.field public static final EXTREME_STRENTGH:I = 0x2

.field public static final GENTLE_STRENTGH:I = 0x0

.field public static final MEDIUM_STRENTGH:I = 0x1

.field public static final PARAM_ATTENUATION:I = 0x2

.field public static final PARAM_COMPRESSOR_GAIN:I = 0x1

.field public static final PARAM_STRENGTH:I = 0x0

.field public static final STRENGTH_STRINGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LoudnessMaximizer"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 84
    const-string v0, "581f7be0-b43c-11df-ac25-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 83
    sput-object v0, Lcom/lifevibes/audiofx/LoudnessMaximizer;->EFFECT_TYPE_LOUDNESS_MAXIMIZER:Ljava/util/UUID;

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gentle"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Medium"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Extreme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lifevibes/audiofx/LoudnessMaximizer;->STRENGTH_STRINGS:[Ljava/lang/String;

    .line 76
    return-void
.end method

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
    .line 145
    sget-object v0, Lcom/lifevibes/audiofx/LoudnessMaximizer;->EFFECT_TYPE_LOUDNESS_MAXIMIZER:Ljava/util/UUID;

    sget-object v1, Lcom/lifevibes/audiofx/LoudnessMaximizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 146
    const-string v0, "LoudnessMaximizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating LoudnessMaximizer effect type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lifevibes/audiofx/LoudnessMaximizer;->EFFECT_TYPE_LOUDNESS_MAXIMIZER:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method


# virtual methods
.method public getAttenuation()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 198
    .local v0, "value":[I
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->checkStatus(I)V

    .line 199
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getCompressorGain()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 232
    new-array v0, v1, [I

    .line 233
    .local v0, "value":[I
    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->checkStatus(I)V

    .line 234
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getProperties()Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;

    invoke-direct {v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;-><init>()V

    .line 333
    .local v0, "settings":Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;
    invoke-virtual {p0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getStrength()I

    move-result v1

    iput v1, v0, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->strength:I

    .line 334
    invoke-virtual {p0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getAttenuation()I

    move-result v1

    iput v1, v0, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->attenuation:I

    .line 335
    invoke-virtual {p0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getAttenuation()I

    move-result v1

    iput v1, v0, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->compressorGain:I

    .line 336
    return-object v0
.end method

.method public getStrength()I
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

    .line 161
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 162
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->checkStatus(I)V

    .line 163
    aget v1, v0, v2

    return v1
.end method

.method public setAttenuation(I)V
    .registers 3
    .param p1, "attenuation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->checkStatus(I)V

    .line 253
    return-void
.end method

.method public setCompressorGain(I)V
    .registers 3
    .param p1, "compressorGain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->checkStatus(I)V

    .line 218
    return-void
.end method

.method public setProperties(Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;)V
    .registers 3
    .param p1, "settings"    # Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 352
    iget v0, p1, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->strength:I

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setStrength(I)V

    .line 353
    iget v0, p1, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->attenuation:I

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setAttenuation(I)V

    .line 354
    iget v0, p1, Lcom/lifevibes/audiofx/LoudnessMaximizer$Settings;->compressorGain:I

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setCompressorGain(I)V

    .line 355
    return-void
.end method

.method public setStrength(I)V
    .registers 3
    .param p1, "strength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/LoudnessMaximizer;->checkStatus(I)V

    .line 183
    return-void
.end method
