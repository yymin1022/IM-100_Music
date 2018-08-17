.class public Lcom/pantech/app/musicfx/common/Global;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/common/Global$ModelInfo;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION_OEM:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION_OEM"

.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION_OEM_MOVIE:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION_OEM_MOVIE"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL_OEM:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL_OEM"

.field public static final ACTION_FINISH_LIST_ALL:Ljava/lang/String; = "com.pantech.app.music.action.FINISH_LIST_ALL"

.field public static final ACTION_FINISH_LIST_SEARCH_RESULT:Ljava/lang/String; = "com.pantech.app.music.action.FINISH_LIST_SEARCH_RESULT"

.field public static final ACTION_MUSICPLAYER_SET_PRESET_DIRECTLY:Ljava/lang/String; = "com.pantech.music.player.action.SET_PRESET"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM_MOVIE:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION_OEM_MOVIE"

.field public static final ALL_LOG_LEVEL:I = 0x1f

.field public static final AUIDOFX_PREFERENCE:Ljava/lang/String; = "audioFxSettingPreference"

.field public static final DEVELOPER:I = 0x5

.field public static final DEVELOPER_STRICT_MODE:Z = true

.field public static final EF48_FUNC:J = 0x44L

.field public static final EF51_FUNC:J = 0x44L

.field public static final EF52_FUNC:J = 0x44L

.field public static final EF56_FUNC:J = 0xb4L

.field public static final EF59_FUNC:J = 0xa4L

.field public static final EF60_FUNC_NXP:J = 0xa4L

.field public static final EF60_FUNC_QSOUND:J = 0xa4L

.field public static final EF63_FUNC:J = 0xa4L

.field public static final EF65_FUNC:J = 0xa4L

.field public static final EF67_FUNC:J = 0xa4L

.field public static final EF69_FUNC:J = 0xa4L

.field public static final EF71_FUNC:J = 0x84L

.field public static final EFFECT_SETTING_PRIORITY:I = 0x0

.field public static final FUNC_EFFECT_NO_RELEASE:J = 0x100L

.field public static final FUNC_EQ_BANDS_FEW:J = 0x40L

.field public static final FUNC_EQ_FIX:J = 0x4L

.field public static final FUNC_EQ_OVER_QSOUND:J = 0x8L

.field public static final FUNC_LM_NXP:J = 0x10L

.field public static final FUNC_MOVIE_EFFECT:J = 0x80L

.field public static final FUNC_NONE:J = 0x0L

.field public static final FUNC_NXP:J = 0x2L

.field public static final FUNC_QSOUND:J = 0x1L

.field public static final FUNC_SAPLUS:J = 0x200L

.field public static final FUNC_TE:J = 0x20L

.field public static final KDDI:I = 0x4

.field public static final LGUPlus:I = 0x3

.field public static final LPA_MULTI:Z = false

.field public static final LPA_OFF:Z = false

.field public static final LPA_ON:Z = true

.field public static final MOVIE_PACKAGE_STRING:Ljava/lang/String; = "com.pantech.app.movie"

.field public static final MUSIC_PACKAGE_STRING:Ljava/lang/String; = "com.pantech.app.music"

.field public static final NXP:I = 0x1

.field public static final OllehKT:I = 0x2

.field public static final PREF_ITEM_DEV_ALLOW_ALL_LOG:Ljava/lang/String; = "devAllLogLevelAllow"

.field public static final QSOUND:I = 0x0

.field public static final SA_PLUS:I = 0x2

.field public static final SKTelecom:I = 0x1

.field public static final THEME_BLACK_PT:I = 0x2

.field public static final THEME_DEVICE_DEFAULT:I = 0x0

.field public static final THEME_WHITE_PT:I = 0x1

.field public static final UNKNOWN:I = 0x3

.field public static final UNKNOWN_FUNC:J = 0x0L

.field public static final UnknownVendor:I = 0x6

.field private static mDeviceName:Ljava/lang/String;

.field private static mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

.field private static mModelName:Ljava/lang/String;

.field private static mModelTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/musicfx/common/Global$ModelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v4, 0x0

    const-wide/16 v14, 0xa4

    const/4 v0, 0x2

    const/16 v9, 0x18

    const/4 v13, 0x1

    .line 131
    const-string v1, ""

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelName:Ljava/lang/String;

    .line 132
    const-string v1, ""

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mDeviceName:Ljava/lang/String;

    .line 133
    const/4 v1, 0x0

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    .line 139
    sget-object v10, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v11, "UNKNOWN"

    new-instance v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v2, 0x6

    const-string v3, "UNKNOWN"

    const/16 v5, 0x10

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    invoke-direct/range {v1 .. v8}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A850S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A850S"

    const-wide/16 v10, 0x44

    move v6, v13

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A850K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A850K"

    const-wide/16 v10, 0x44

    move v6, v0

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A850L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v6, 0x3

    const-string v7, "IM-A850L"

    const-wide/16 v10, 0x44

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A860S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A860S"

    const-wide/16 v10, 0x44

    move v6, v13

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A860K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A860K"

    const-wide/16 v10, 0x44

    move v6, v0

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A860L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v6, 0x3

    const-string v7, "IM-A860L"

    const-wide/16 v10, 0x44

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A870S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A870S"

    const-wide/16 v10, 0x44

    move v6, v13

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A870K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A870K"

    const-wide/16 v10, 0x44

    move v6, v0

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A870L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v6, 0x3

    const-string v7, "IM-A870L"

    const-wide/16 v10, 0x44

    move v8, v13

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A880S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A880S"

    const-wide/16 v10, 0xb4

    move v6, v13

    move v8, v13

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A890S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A890S"

    move v6, v13

    move v8, v13

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A890K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A890K"

    move v6, v0

    move v8, v13

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A890L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v6, 0x3

    const-string v7, "IM-A890L"

    move v8, v13

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A900S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A900S"

    move v6, v13

    move v8, v13

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A900K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A900K"

    move v6, v0

    move v8, v13

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A900L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v6, 0x3

    const-string v7, "IM-A900L"

    move v8, v13

    move-wide v10, v14

    move v12, v4

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v10, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A910S"

    new-instance v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v3, "IM-A910S"

    const/16 v5, 0x1f

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isHigherThanLOS()Z

    move-result v2

    if-eqz v2, :cond_24e

    const-wide/16 v6, 0x84

    :goto_169
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isHigherThanLOS()Z

    move-result v2

    if-eqz v2, :cond_251

    move v8, v0

    :goto_170
    move v2, v13

    move v4, v0

    invoke-direct/range {v1 .. v8}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A910K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A910K"

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isHigherThanLOS()Z

    move-result v3

    if-eqz v3, :cond_254

    const/4 v12, 0x3

    :goto_187
    move v6, v0

    move v8, v0

    move-wide v10, v14

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A910L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v6, 0x3

    const-string v7, "IM-A910L"

    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->isHigherThanLOS()Z

    move-result v3

    if-eqz v3, :cond_257

    const/4 v12, 0x3

    :goto_1a0
    move v8, v0

    move-wide v10, v14

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A920S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A920S"

    move v6, v13

    move v8, v0

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A930S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A930S"

    move v6, v13

    move v8, v0

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A930K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A930K"

    move v6, v0

    move v8, v0

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A930L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const/4 v6, 0x3

    const-string v7, "IM-A930L"

    move v8, v0

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A940K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A940K"

    move v6, v13

    move v8, v0

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-A940L"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-A940L"

    move v6, v13

    move v8, v0

    move-wide v10, v14

    move v12, v13

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-100S"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-100S"

    const-wide/16 v10, 0x84

    move v6, v13

    move v8, v13

    move v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-100K"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-100K"

    const-wide/16 v10, 0x84

    move v6, v0

    move v8, v13

    move v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "IM-100IE"

    new-instance v5, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    const-string v7, "IM-100IE"

    const-wide/16 v10, 0x84

    move v6, v13

    move v8, v13

    move v12, v0

    invoke-direct/range {v5 .. v12}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void

    :cond_24e
    move-wide v6, v14

    .line 170
    goto/16 :goto_169

    :cond_251
    move v8, v13

    goto/16 :goto_170

    :cond_254
    move v12, v13

    .line 171
    goto/16 :goto_187

    :cond_257
    move v12, v13

    .line 172
    goto/16 :goto_1a0
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static changeModelInfo(Z)V
    .registers 11
    .param p0, "debugMode"    # Z

    .prologue
    .line 373
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v1

    iget-object v9, v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mModelName:Ljava/lang/String;

    .line 375
    .local v9, "modelName":Ljava/lang/String;
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    .line 377
    .local v0, "modelInfo":Lcom/pantech/app/musicfx/common/Global$ModelInfo;
    if-eqz v0, :cond_25

    .line 379
    new-instance v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    iget v2, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mVendor:I

    iget-object v3, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mModelName:Ljava/lang/String;

    iget v4, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mThemeType:I

    if-eqz p0, :cond_26

    const/16 v5, 0x1f

    :goto_1c
    iget-wide v6, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    iget v8, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    invoke-direct/range {v1 .. v8}, Lcom/pantech/app/musicfx/common/Global$ModelInfo;-><init>(ILjava/lang/String;IIJI)V

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    .line 382
    :cond_25
    return-void

    .line 379
    :cond_26
    iget v5, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mAllowLogLevel:I

    goto :goto_1c
.end method

.method public static checkVendor(I)Z
    .registers 2
    .param p0, "vendor"    # I

    .prologue
    .line 288
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getVendor()I

    move-result v0

    if-ne v0, p0, :cond_8

    .line 290
    const/4 v0, 0x1

    .line 293
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static getAllowLogLevel()I
    .registers 1

    .prologue
    .line 276
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mAllowLogLevel:I

    return v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 206
    sget-object v0, Lcom/pantech/app/musicfx/common/Global;->mDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 208
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/musicfx/common/Global;->mDeviceName:Ljava/lang/String;

    .line 211
    :cond_10
    sget-object v0, Lcom/pantech/app/musicfx/common/Global;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public static getModelID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/pantech/app/musicfx/common/Global;->mModelName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 197
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/musicfx/common/Global;->mModelName:Ljava/lang/String;

    .line 200
    :cond_10
    sget-object v0, Lcom/pantech/app/musicfx/common/Global;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method public static getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;
    .registers 4

    .prologue
    .line 217
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelID()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "targetDevice":Ljava/lang/String;
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    if-nez v1, :cond_69

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 223
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    .line 226
    :cond_1c
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    if-nez v1, :cond_38

    .line 228
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 232
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    .line 236
    :cond_38
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    if-nez v1, :cond_66

    .line 239
    const-string v1, "VMusicFX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "there are no model info, check your model info in source. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelTable:Ljava/util/HashMap;

    const-string v2, "UNKNOWN"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    sput-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    .line 244
    :cond_66
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    .line 247
    :goto_68
    return-object v1

    :cond_69
    sget-object v1, Lcom/pantech/app/musicfx/common/Global;->mModelInfo:Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    goto :goto_68
.end method

.method public static getSolution()I
    .registers 1

    .prologue
    .line 333
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    return v0
.end method

.method public static getSolutionName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 387
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    packed-switch v0, :pswitch_data_16

    .line 392
    const-string v0, "Unknown"

    :goto_b
    return-object v0

    .line 389
    :pswitch_c
    const-string v0, "NXP"

    goto :goto_b

    .line 390
    :pswitch_f
    const-string v0, "QSound"

    goto :goto_b

    .line 391
    :pswitch_12
    const-string v0, "SA_PLUS"

    goto :goto_b

    .line 387
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_12
    .end packed-switch
.end method

.method public static getTheme()I
    .registers 1

    .prologue
    .line 282
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mThemeType:I

    return v0
.end method

.method public static getVendor()I
    .registers 1

    .prologue
    .line 270
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mVendor:I

    return v0
.end method

.method public static isDeviceDefaultTheme()Z
    .registers 1

    .prologue
    .line 259
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mThemeType:I

    if-nez v0, :cond_a

    .line 261
    const/4 v0, 0x1

    .line 264
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEQBandsFew()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x40

    .line 351
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isEQFix()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x4

    .line 299
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isEQOverQSound()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x8

    .line 305
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isEffectRelease()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x100

    .line 367
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isHigherThanLOS()Z
    .registers 2

    .prologue
    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    .line 253
    const/4 v0, 0x1

    .line 254
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isLMAvailable()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x10

    .line 339
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isMVAvailable()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x80

    .line 357
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isNXPSolution()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 311
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v1

    iget v1, v1, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isQSoundSolution()Z
    .registers 1

    .prologue
    .line 317
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isSAPlusSolution()Z
    .registers 2

    .prologue
    .line 322
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isTEAvailable()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x20

    .line 345
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isUnknownSolution()Z
    .registers 2

    .prologue
    .line 327
    invoke-static {}, Lcom/pantech/app/musicfx/common/Global;->getModelInfo()Lcom/pantech/app/musicfx/common/Global$ModelInfo;

    move-result-object v0

    iget v0, v0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
