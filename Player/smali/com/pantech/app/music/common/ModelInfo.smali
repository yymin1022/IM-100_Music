.class public Lcom/pantech/app/music/common/ModelInfo;
.super Ljava/lang/Object;
.source "ModelInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/common/ModelInfo$1;,
        Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;,
        Lcom/pantech/app/music/common/ModelInfo$ModelType;
    }
.end annotation


# static fields
.field public static final ALL_LOG_LEVEL:I = 0x1f

.field public static final DBTYPE_CUSTOM:I = 0x1

.field public static final DBTYPE_ORIGINAL:I = 0x0

.field public static final DEFAULT_FUNC_EF52:J = 0x407L

.field public static final DEFAULT_FUNC_EF56:J = 0x4b67L

.field public static final DEFAULT_FUNC_EF59:J = 0x4b27L

.field public static final DEFAULT_FUNC_EF60:J = 0x4b27L

.field public static final DEFAULT_FUNC_EF63:J = 0x24b27L

.field public static final DEFAULT_FUNC_EF63_LP:J = 0x224925L

.field public static final DEFAULT_FUNC_EF65:J = 0xb27L

.field public static final DEFAULT_FUNC_EF67:J = 0xc0b27L

.field public static final DEFAULT_FUNC_EF71:J = 0x200905L

.field public static final DEVELOPER:I = 0x5

.field public static final KDDI:I = 0x4

.field public static final LCD_FHD:I = 0x2

.field public static final LCD_HD:I = 0x0

.field public static final LCD_QHD:I = 0x3

.field public static final LCD_WHD:I = 0x1

.field public static final LGUPlus:I = 0x3

.field static final MB:I = 0x100000

.field private static final MENU_ACTIONBAR_OVERLOWMENU_VISIBLE:I = 0x2

.field private static final MENU_ACTIONBAR_SIMPLE_STYLE:I = 0x1

.field private static final MENU_HW_KEY:I = 0x8

.field private static final MENU_SW_KEY:I = 0x4

.field public static final OllehKT:I = 0x2

.field public static final SKTelecom:I = 0x1

.field public static final THEME_ANDROID_HOLO:I = 0x4

.field public static final THEME_BLACK_PT:I = 0x3

.field public static final THEME_DEVICE_DEFAULT:I = 0x0

.field public static final THEME_WHITE_PT:I = 0x2

.field public static final THEME_WHITE_PT_OLD:I = 0x1

.field public static final USE_ACCELEROMETOR:J = 0x1L

.field public static final USE_AUDIOEFFECT_PAUSE_RELEASE:J = 0x10000L

.field public static final USE_CAM_MOTION_2_1:J = 0x40000L

.field public static final USE_DRAG_MULTI_SELECT:J = 0x4L

.field public static final USE_ENTRYPOINT_PLAYBACK:J = 0x8000L

.field public static final USE_FINGER_BUMPER:J = 0x20000L

.field public static final USE_HIFI_AUDIO:J = 0x800L

.field public static final USE_IR_MOTION:J = 0x40L

.field public static final USE_LED_3:J = 0x2000L

.field public static final USE_LGU_PLUSCALL:J = 0x1000L

.field public static final USE_LOCALVOICE:J = 0x2L

.field public static final USE_MOTION_UPSIDEDOWN:J = 0x10L

.field public static final USE_NAVIGATION_DRAWER:J = 0x100000L

.field public static final USE_NONE:J = 0x0L

.field public static final USE_NXP_SOLUTION:J = 0x200L

.field public static final USE_QSOUND_SOLUTION:J = 0x400L

.field public static final USE_REARTOUCH:J = 0x4000L

.field public static final USE_SAFEBOX_ENABLE:J = 0x20L

.field public static final USE_SAPLUS_SOLUTION:J = 0x200000L

.field public static final USE_SPECIFIC_DIALOG:J = 0x100L

.field public static final USE_UPLUS_BOX_ENABLE:J = 0x8L

.field public static final USE_VISUALIZER:J = 0x80L

.field public static final USE_WIDGET_LYRICS:J = 0x80000L

.field public static final UnknownVendor:I = 0x6

.field private static mDeviceNameCache:Ljava/lang/String;

.field private static mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

.field private static mModelNameCache:Ljava/lang/String;

.field private static mModelTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;",
            ">;"
        }
    .end annotation
.end field

.field public static mTABIsChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    .line 75
    const-string v0, ""

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelNameCache:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mDeviceNameCache:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/music/common/ModelInfo;->mTABIsChanged:Z

    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    .line 218
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "LG-F350S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_LG:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "LG-F350S"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x6

    const-wide/16 v8, 0x805

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "UNKNOWN"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_UNKNOWN:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "UNKNOWN"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A830S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A830:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A830S"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A830K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A830:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A830K"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A830L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A830:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A830L"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A840S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A840:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A840S"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A850S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A850:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A850S"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A850K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A850:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A850K"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A850L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A850:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A850L"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A860S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A860:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A860S"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A860K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A860:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A860K"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A860L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A860:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A860L"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x5

    const-wide/16 v8, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A870S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A870:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A870S"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x407

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A870K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A870:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A870K"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x407

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A870L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A870:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A870L"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide/16 v8, 0x40f

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A880S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A880:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A880S"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x9

    const-wide/16 v8, 0x4b67

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A890S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A890:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A890S"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v7, 0x9

    const-wide/16 v8, 0x4b27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A890K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A890:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A890K"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v7, 0x9

    const-wide/16 v8, 0x4b27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A890L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A890:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A890L"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v7, 0x9

    const-wide/16 v8, 0x5b2f

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A900S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A900:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A900S"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v7, 0x9

    const-wide/16 v8, 0x4b27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A900K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A900:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A900K"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v7, 0x9

    const-wide/16 v8, 0x4b27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A900L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A900:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A900L"

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/16 v7, 0x9

    const-wide/16 v8, 0x5b2f

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A910S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A910:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A910S"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v8

    if-eqz v8, :cond_36b

    const-wide/32 v8, 0x224925

    :goto_22f
    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A910K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A910:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A910K"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v8

    if-eqz v8, :cond_370

    const-wide/32 v8, 0x224925

    :goto_24e
    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A910L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A910:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A910L"

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isHigherThanLOS()Z

    move-result v8

    if-eqz v8, :cond_375

    const-wide/32 v8, 0x224925

    :goto_26d
    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A920S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A920:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A920S"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/16 v8, 0xb27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A930S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A930:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A930S"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/16 v7, 0xa

    const-wide/32 v8, 0xc0b27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A930K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A930:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A930K"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/16 v7, 0xa

    const-wide/32 v8, 0xc0b27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A930L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A930:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A930L"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x3

    const/16 v7, 0xa

    const-wide/32 v8, 0xc1b2f

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A940K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A940:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A940K"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/16 v8, 0xb27

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-A940L"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A940:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-A940L"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/16 v8, 0x1b2f

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-100S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_100:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-100S"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/32 v8, 0x200905

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-100K"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_100:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-100K"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/32 v8, 0x200905

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "IM-100IE"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_100:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "IM-100IE"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/32 v8, 0x200905

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v10, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v11, "EF71S"

    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A910:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v3, "EF71S"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xa

    const-wide/32 v8, 0x200905

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void

    .line 258
    :cond_36b
    const-wide/32 v8, 0x24b27

    goto/16 :goto_22f

    .line 259
    :cond_370
    const-wide/32 v8, 0x24b27

    goto/16 :goto_24e

    .line 260
    :cond_375
    const-wide/32 v8, 0x25b2f

    goto/16 :goto_26d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method public static changeDebugLevel(I)V
    .registers 13
    .param p0, "debugLevel"    # I

    .prologue
    .line 606
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;

    move-result-object v11

    .line 608
    .local v11, "modelName":Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 611
    .local v10, "modelInfo":Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;
    if-eqz v10, :cond_43

    .line 613
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$000(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v1

    iget-object v2, v10, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelID:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$100(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v4

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v5

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$700(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v6

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$400(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v7

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v8

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 621
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    invoke-virtual {v0, p0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->changeLogLevel(I)V

    .line 623
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_43
    return-void
.end method

.method public static changeDeviceInfo(IIJ)V
    .registers 16
    .param p0, "vender"    # I
    .param p1, "debugLevel"    # I
    .param p2, "funcMask"    # J

    .prologue
    .line 650
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;

    move-result-object v11

    .line 652
    .local v11, "modelName":Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 654
    .local v10, "modelInfo":Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;
    if-eqz v10, :cond_41

    .line 656
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    iget-object v2, v10, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelID:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$100(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v4

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v5

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$700(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v6

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$400(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v7

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v8

    or-long/2addr v8, p2

    move v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 657
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->changeLogLevel(I)V

    .line 659
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_41
    return-void
.end method

.method public static changeModelFunction(J)V
    .registers 14
    .param p0, "funcMask"    # J

    .prologue
    .line 629
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;

    move-result-object v11

    .line 631
    .local v11, "modelName":Ljava/lang/String;
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 633
    .local v10, "modelInfo":Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;
    if-eqz v10, :cond_3b

    .line 635
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$000(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v1

    iget-object v2, v10, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelID:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$100(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v4

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v5

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$700(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v6

    invoke-static {v10}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$400(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v7

    move-wide v8, p0

    invoke-direct/range {v0 .. v9}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;-><init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 644
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    :cond_3b
    return-void
.end method

.method public static getAllowLogLevel()I
    .registers 1

    .prologue
    .line 351
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$200(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    return v0
.end method

.method public static getDBType()I
    .registers 1

    .prologue
    .line 577
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$100(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    return v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 295
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mDeviceNameCache:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 297
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mDeviceNameCache:Ljava/lang/String;

    .line 300
    :cond_10
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mDeviceNameCache:Ljava/lang/String;

    return-object v0
.end method

.method public static getFunctionMask()J
    .registers 2

    .prologue
    .line 587
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLCDFactor()I
    .registers 1

    .prologue
    .line 572
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$700(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    return v0
.end method

.method public static getMaxCacheSize()I
    .registers 1

    .prologue
    .line 582
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$800(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    return v0
.end method

.method public static getModelID()Ljava/lang/String;
    .registers 1

    .prologue
    .line 285
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelNameCache:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 287
    const-string v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelNameCache:Ljava/lang/String;

    .line 290
    :cond_10
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo;->mModelNameCache:Ljava/lang/String;

    return-object v0
.end method

.method public static getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;
    .registers 5

    .prologue
    .line 305
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelID()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "targetDevice":Ljava/lang/String;
    move-object v1, v0

    .line 308
    .local v1, "targetModel":Ljava/lang/String;
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    if-nez v2, :cond_74

    .line 310
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 312
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    sput-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 315
    :cond_1d
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    if-nez v2, :cond_39

    .line 317
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 321
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    sput-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 325
    :cond_39
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    if-nez v2, :cond_71

    .line 328
    const-string v2, "VMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "there are no model info, check your model info in source. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelTable:Ljava/util/HashMap;

    const-string v3, "UNKNOWN"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    sput-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 333
    :cond_71
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .line 336
    :goto_73
    return-object v2

    :cond_74
    sget-object v2, Lcom/pantech/app/music/common/ModelInfo;->mModelInfo:Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    goto :goto_73
.end method

.method public static getModelName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 567
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getThemeType()I
    .registers 1

    .prologue
    .line 591
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    return v0
.end method

.method public static getVendor()I
    .registers 1

    .prologue
    .line 341
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$000(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    return v0
.end method

.method public static isAccelSensorSupport()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x1

    .line 471
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isAudioEffectPauseRelease()Z
    .registers 4

    .prologue
    const-wide/32 v2, 0x10000

    .line 601
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isBlackTheme()Z
    .registers 2

    .prologue
    .line 403
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 405
    const/4 v0, 0x1

    .line 408
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isCamMotion21()Z
    .registers 4

    .prologue
    const-wide/32 v2, 0x40000

    .line 513
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isDeviceDefaultTheme()Z
    .registers 1

    .prologue
    .line 361
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    if-nez v0, :cond_c

    .line 363
    const/4 v0, 0x1

    .line 366
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isDragMultiSelect()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x4

    .line 495
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isEntryPointPlayback()Z
    .registers 4

    .prologue
    const-wide/32 v2, 0x8000

    .line 547
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isHWNavi()Z
    .registers 2

    .prologue
    .line 461
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$400(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isHigherThanLOS()Z
    .registers 2

    .prologue
    .line 449
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    .line 450
    const/4 v0, 0x1

    .line 451
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isHoloUI()Z
    .registers 2

    .prologue
    .line 371
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    .line 373
    const/4 v0, 0x1

    .line 376
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isIRmotion()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x40

    .line 509
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isLEDSupport()Z
    .registers 4

    .prologue
    .line 481
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static isLEDType3()Z
    .registers 4

    .prologue
    .line 485
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static isLGUPlus()Z
    .registers 2

    .prologue
    .line 413
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getVendor()I

    move-result v0

    .line 415
    .local v0, "vendor":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 417
    :cond_a
    const/4 v1, 0x1

    .line 420
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static isLGUPluscall()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x1000

    .line 505
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isLocalVoiceSupport()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x2

    .line 490
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isMotionUpsidedownSupport()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x10

    .line 476
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isNXPSolution()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x200

    .line 532
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isNavigationDrawerUsed()Z
    .registers 4

    .prologue
    const-wide/32 v2, 0x100000

    .line 562
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isOlleh()Z
    .registers 2

    .prologue
    .line 425
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getVendor()I

    move-result v0

    .line 427
    .local v0, "vendor":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 429
    :cond_a
    const/4 v1, 0x1

    .line 432
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static isOverflowMenuAlwaysVisible()Z
    .registers 2

    .prologue
    .line 456
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$400(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isQSoundSolution()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x400

    .line 537
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isRearTouchSupport()Z
    .registers 4

    .prologue
    .line 466
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static isReleaseModel()Z
    .registers 1

    .prologue
    .line 356
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mIsRelease:Z

    return v0
.end method

.method public static isSAPlusSolution()Z
    .registers 4

    .prologue
    const-wide/32 v2, 0x200000

    .line 542
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isSKTelecom()Z
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 437
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getVendor()I

    move-result v0

    .line 439
    .local v0, "vendor":I
    if-ne v0, v1, :cond_8

    .line 444
    :goto_7
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static isSKYCustomDB()Z
    .registers 1

    .prologue
    .line 346
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$100(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSpecificDialog()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x100

    .line 527
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isSupport(J)Z
    .registers 4
    .param p0, "mask"    # J

    .prologue
    .line 522
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, p0

    cmp-long v0, v0, p0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isSupportedActionBarSmallTabMode(Landroid/support/v7/app/ActionBar;)Z
    .registers 4
    .param p0, "actionBar"    # Landroid/support/v7/app/ActionBar;

    .prologue
    .line 666
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 667
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/app/ActionBar;>;"
    const-string v2, "mSmallTabMode"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_9} :catch_b

    .line 669
    const/4 v2, 0x1

    .line 674
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/support/v7/app/ActionBar;>;"
    :goto_a
    return v2

    .line 670
    :catch_b
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 674
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public static isUplusBoxUse()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x8

    .line 500
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isUseFingerBumper()Z
    .registers 4

    .prologue
    const-wide/32 v2, 0x20000

    .line 552
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isUseHifiAudio()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x800

    .line 596
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isVisualizerEffect()Z
    .registers 4

    .prologue
    const-wide/16 v2, 0x80

    .line 517
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isWheelKey()Z
    .registers 2

    .prologue
    .line 679
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelID:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_100:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isWhiteOldTheme()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 380
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    .line 382
    .local v0, "themeType":I
    if-ne v0, v1, :cond_c

    .line 387
    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static isWhiteTheme()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 391
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I

    move-result v0

    .line 393
    .local v0, "themeType":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    if-ne v0, v1, :cond_f

    .line 398
    :cond_e
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static isWidgetLyrics()Z
    .registers 4

    .prologue
    const-wide/32 v2, 0x80000

    .line 557
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelInfo()Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J

    move-result-wide v0

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static useDefaultMediaVolumeControl()Z
    .registers 1

    .prologue
    .line 701
    const/4 v0, 0x1

    return v0
.end method

.method public static useLastConnection()Z
    .registers 1

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public static useStopAOTServicesWhenOnePlayerShowing()Z
    .registers 1

    .prologue
    .line 690
    const/4 v0, 0x1

    return v0
.end method

.method public static useSystemPropertiesAtOnePlayer()Z
    .registers 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method
