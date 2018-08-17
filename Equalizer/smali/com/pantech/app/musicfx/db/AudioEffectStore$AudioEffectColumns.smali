.class public interface abstract Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;
.super Ljava/lang/Object;
.source "AudioEffectStore.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/db/AudioEffectStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioEffectColumns"
.end annotation


# static fields
.field public static final BASSBOOST_ONOFF:Ljava/lang/String; = "bassboost_onoff"

.field public static final BASSBOOST_SETTING:Ljava/lang/String; = "bassboost_setting"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = " ASC"

.field public static final EQ_ONOFF:Ljava/lang/String; = "eq_onoff"

.field public static final EQ_SETTING:Ljava/lang/String; = "eq_setting"

.field public static final LOUDNESSMAXIMIZER_ONOFF:Ljava/lang/String; = "loudnessmaximizer_onoff"

.field public static final LOUDNESSMAXIMIZER_SETTING:Ljava/lang/String; = "loudnessmaximizer_setting"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PRESETREVERB_ONOFF:Ljava/lang/String; = "presetReverb_onoff"

.field public static final PRESETREVERB_SETTING:Ljava/lang/String; = "presetReverb_setting"

.field public static final TREBLEENHANCE_ONOFF:Ljava/lang/String; = "trebleEnhance_onoff"

.field public static final TREBLEENHANCE_SETTING:Ljava/lang/String; = "trebleEnhance_setting"

.field public static final VIRTUALIZER_ONOFF:Ljava/lang/String; = "virtualizer_onoff"

.field public static final VIRTUALIZER_SETTING:Ljava/lang/String; = "virtualizer_setting"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string v0, "content://com.pantech.app.musicfx.db.audioeffectprovider/setting"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/musicfx/db/AudioEffectStore$AudioEffectColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
