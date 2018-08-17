.class public Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility;
.super Ljava/lang/Object;
.source "AudioEffectCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Service;,
        Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Receiver;,
        Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;
    }
.end annotation


# static fields
.field static final EXTRAS_DEF_PANEL_NAME:Ljava/lang/String; = "com.pantech.app.musicfx.audiofx.defName"

.field static final EXTRAS_PACKAGE_NAME:Ljava/lang/String; = "com.pantech.app.musicfx.audiofx.defPackage"

.field public static final PREF_DEF_PACKAGE_NAME:Ljava/lang/String; = "com.pantech.app.musicfx.audiofx.defaultpanelpackage"

.field public static final PREF_DEF_PANEL_NAME:Ljava/lang/String; = "com.pantech.app.musicfx.audiofx.defaultpanelname"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method
