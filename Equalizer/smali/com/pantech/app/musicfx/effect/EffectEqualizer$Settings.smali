.class public Lcom/pantech/app/musicfx/effect/EffectEqualizer$Settings;
.super Landroid/media/audiofx/Equalizer$Settings;
.source "EffectEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/effect/EffectEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$Settings;-><init>(Ljava/lang/String;)V

    .line 157
    return-void
.end method
