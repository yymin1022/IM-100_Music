.class public Lcom/lifevibes/audiofx/TrebleEnhancement;
.super Landroid/media/audiofx/AudioEffect;
.source "TrebleEnhancement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_TREBLE_ENHANCEMENT:Ljava/util/UUID;

.field public static final MAX_STRENGTH:S = 0x3e8s

.field public static final MIN_STRENGTH:S = 0x0s

.field public static final PARAM_STRENGTH:I = 0x1

.field public static final PARAM_STRENGTH_SUPPORTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TrebleEnhancement"


# instance fields
.field private mStrengthSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-string v0, "acc17040-b43c-11df-93e8-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 80
    sput-object v0, Lcom/lifevibes/audiofx/TrebleEnhancement;->EFFECT_TYPE_TREBLE_ENHANCEMENT:Ljava/util/UUID;

    .line 73
    return-void
.end method

.method public constructor <init>(II)V
    .registers 8
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
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    sget-object v3, Lcom/lifevibes/audiofx/TrebleEnhancement;->EFFECT_TYPE_TREBLE_ENHANCEMENT:Ljava/util/UUID;

    sget-object v4, Lcom/lifevibes/audiofx/TrebleEnhancement;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v3, v4, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 106
    iput-boolean v2, p0, Lcom/lifevibes/audiofx/TrebleEnhancement;->mStrengthSupported:Z

    .line 133
    new-array v0, v1, [I

    .line 134
    .local v0, "value":[I
    invoke-virtual {p0, v2, v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/lifevibes/audiofx/TrebleEnhancement;->checkStatus(I)V

    .line 135
    aget v3, v0, v2

    if-eqz v3, :cond_31

    :goto_18
    iput-boolean v1, p0, Lcom/lifevibes/audiofx/TrebleEnhancement;->mStrengthSupported:Z

    .line 136
    const-string v1, "TrebleEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating TrebleEnhancement effect type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/lifevibes/audiofx/TrebleEnhancement;->EFFECT_TYPE_TREBLE_ENHANCEMENT:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    :cond_31
    move v1, v2

    .line 135
    goto :goto_18
.end method


# virtual methods
.method public getProperties()Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;

    invoke-direct {v0}, Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;-><init>()V

    .line 250
    .local v0, "settings":Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;
    invoke-virtual {p0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->getRoundedStrength()S

    move-result v1

    iput-short v1, v0, Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;->strength:S

    .line 251
    return-object v0
.end method

.method public getRoundedStrength()S
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

    .line 163
    new-array v0, v1, [S

    .line 164
    .local v0, "value":[S
    invoke-virtual {p0, v1, v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lifevibes/audiofx/TrebleEnhancement;->checkStatus(I)V

    .line 165
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getStrengthSupported()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/lifevibes/audiofx/TrebleEnhancement;->mStrengthSupported:Z

    return v0
.end method

.method public setProperties(Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;)V
    .registers 3
    .param p1, "settings"    # Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 267
    iget-short v0, p1, Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;->strength:S

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->setStrength(S)V

    .line 268
    return-void
.end method

.method public setStrength(S)V
    .registers 3
    .param p1, "strength"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/lifevibes/audiofx/TrebleEnhancement;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lifevibes/audiofx/TrebleEnhancement;->checkStatus(I)V

    .line 187
    return-void
.end method
