.class public final enum Lcom/pantech/app/music/common/ModelInfo$ModelType;
.super Ljava/lang/Enum;
.source "ModelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/common/ModelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pantech/app/music/common/ModelInfo$ModelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_100:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A830:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A840:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A850:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A860:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A870:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A880:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A890:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A900:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A910:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A920:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A930:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_A940:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_LG:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_SAMSUNG:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field public static final enum MODEL_UNKNOWN:Lcom/pantech/app/music/common/ModelInfo$ModelType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_SAMSUNG"

    invoke-direct {v0, v1, v3}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_SAMSUNG:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 86
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_LG"

    invoke-direct {v0, v1, v4}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_LG:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 87
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_UNKNOWN:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 88
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A830"

    invoke-direct {v0, v1, v6}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A830:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 89
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A840"

    invoke-direct {v0, v1, v7}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A840:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 90
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A850"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A850:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 91
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A860"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A860:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 92
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A870"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A870:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 93
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A880"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A880:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 94
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A890"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A890:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 95
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A900"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A900:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 96
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A910"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A910:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 97
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A920"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A920:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 98
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A930"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A930:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 99
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_A940"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A940:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 100
    new-instance v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    const-string v1, "MODEL_100"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_100:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 83
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/pantech/app/music/common/ModelInfo$ModelType;

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_SAMSUNG:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_LG:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_UNKNOWN:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A830:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A840:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A850:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A860:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A870:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A880:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A890:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A900:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A910:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A920:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A930:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_A940:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/pantech/app/music/common/ModelInfo$ModelType;->MODEL_100:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->$VALUES:[Lcom/pantech/app/music/common/ModelInfo$ModelType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getLogLevel(Lcom/pantech/app/music/common/ModelInfo$ModelType;)I
    .registers 4
    .param p0, "model"    # Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .prologue
    const/16 v0, 0x1f

    .line 105
    sget-object v1, Lcom/pantech/app/music/common/ModelInfo$1;->$SwitchMap$com$pantech$app$music$common$ModelInfo$ModelType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ModelInfo$ModelType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 119
    const/4 v0, 0x0

    :goto_e
    :pswitch_e
    return v0

    .line 109
    :pswitch_f
    const/16 v0, 0x10

    goto :goto_e

    .line 116
    :pswitch_12
    const/16 v0, 0x18

    goto :goto_e

    .line 105
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_12
    .end packed-switch
.end method

.method public static isReleaseModel(Lcom/pantech/app/music/common/ModelInfo$ModelType;)Z
    .registers 3
    .param p0, "model"    # Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .prologue
    .line 126
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo$1;->$SwitchMap$com$pantech$app$music$common$ModelInfo$ModelType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/common/ModelInfo$ModelType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_10

    .line 129
    const/4 v0, 0x1

    :goto_c
    return v0

    .line 128
    :pswitch_d
    const/4 v0, 0x0

    goto :goto_c

    .line 126
    nop

    :pswitch_data_10
    .packed-switch 0x5
        :pswitch_d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pantech/app/music/common/ModelInfo$ModelType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;

    return-object v0
.end method

.method public static values()[Lcom/pantech/app/music/common/ModelInfo$ModelType;
    .registers 1

    .prologue
    .line 83
    sget-object v0, Lcom/pantech/app/music/common/ModelInfo$ModelType;->$VALUES:[Lcom/pantech/app/music/common/ModelInfo$ModelType;

    invoke-virtual {v0}, [Lcom/pantech/app/music/common/ModelInfo$ModelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/music/common/ModelInfo$ModelType;

    return-object v0
.end method
