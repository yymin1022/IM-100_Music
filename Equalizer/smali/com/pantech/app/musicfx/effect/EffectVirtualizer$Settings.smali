.class public Lcom/pantech/app/musicfx/effect/EffectVirtualizer$Settings;
.super Landroid/media/audiofx/Virtualizer$Settings;
.source "EffectVirtualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/effect/EffectVirtualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/media/audiofx/Virtualizer$Settings;-><init>()V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/media/audiofx/Virtualizer$Settings;-><init>(Ljava/lang/String;)V

    .line 113
    return-void
.end method
