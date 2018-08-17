.class public Lcom/lifevibes/audiofx/AutoVolumeLeveler;
.super Landroid/media/audiofx/AudioEffect;
.source "AutoVolumeLeveler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/audiofx/AutoVolumeLeveler$Settings;
    }
.end annotation


# static fields
.field public static final EFFECT_TYPE_AUTO_VOLUME_LEVELER:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "AutoVolumeLeveler"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const-string v0, "87885320-b43c-11df-9520-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 85
    sput-object v0, Lcom/lifevibes/audiofx/AutoVolumeLeveler;->EFFECT_TYPE_AUTO_VOLUME_LEVELER:Ljava/util/UUID;

    .line 78
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
    .line 110
    sget-object v0, Lcom/lifevibes/audiofx/AutoVolumeLeveler;->EFFECT_TYPE_AUTO_VOLUME_LEVELER:Ljava/util/UUID;

    sget-object v1, Lcom/lifevibes/audiofx/AutoVolumeLeveler;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 111
    const-string v0, "AutoVolumeLeveler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating auto volume leveler effect type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lifevibes/audiofx/AutoVolumeLeveler;->EFFECT_TYPE_AUTO_VOLUME_LEVELER:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method


# virtual methods
.method public getProperties()Lcom/lifevibes/audiofx/AutoVolumeLeveler$Settings;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/lifevibes/audiofx/AutoVolumeLeveler$Settings;

    invoke-direct {v0}, Lcom/lifevibes/audiofx/AutoVolumeLeveler$Settings;-><init>()V

    .line 158
    .local v0, "settings":Lcom/lifevibes/audiofx/AutoVolumeLeveler$Settings;
    return-object v0
.end method

.method public setProperties(Lcom/lifevibes/audiofx/AutoVolumeLeveler$Settings;)V
    .registers 2
    .param p1, "settings"    # Lcom/lifevibes/audiofx/AutoVolumeLeveler$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 175
    return-void
.end method
