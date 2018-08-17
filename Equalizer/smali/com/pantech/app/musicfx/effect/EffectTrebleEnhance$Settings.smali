.class public Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance$Settings;
.super Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;
.source "EffectTrebleEnhance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/effect/EffectTrebleEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;-><init>()V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/lifevibes/audiofx/TrebleEnhancement$Settings;-><init>(Ljava/lang/String;)V

    .line 121
    return-void
.end method
