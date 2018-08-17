.class public Lcom/pantech/app/musicfx/db/AudioEffectStore;
.super Ljava/lang/Object;
.source "AudioEffectStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;
    }
.end annotation


# static fields
.field public static final AUDIOEFFECT_DB_NAME:Ljava/lang/String; = "audioEffectSetting.db"

.field public static final AUDIOEFFECT_DB_VERSION:I = 0x2

.field public static final AUDIOEFFECT_TABLE_NAME:Ljava/lang/String; = "audioeffect"

.field public static final AUTHORITY:Ljava/lang/String; = "com.pantech.app.musicfx.db.audioeffectprovider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method
