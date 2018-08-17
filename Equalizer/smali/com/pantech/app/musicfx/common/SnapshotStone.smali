.class public Lcom/pantech/app/musicfx/common/SnapshotStone;
.super Ljava/lang/Object;
.source "SnapshotStone.java"


# static fields
.field public static final STONEEQ:Z = true

.field public static final stoneDeviceName:Ljava/lang/String; = "STONE"

.field public static final stoneEQ:[S

.field public static final stonePreset:[S

.field public static final stonePresetNum:I = -0x64

.field public static final stonePreset_test:[S


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x5

    .line 12
    new-array v0, v1, [S

    fill-array-data v0, :array_14

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stonePreset:[S

    .line 13
    new-array v0, v1, [S

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stonePreset_test:[S

    .line 15
    sget-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stonePreset:[S

    sput-object v0, Lcom/pantech/app/musicfx/common/SnapshotStone;->stoneEQ:[S

    return-void

    .line 12
    :array_14
    .array-data 2
        0x0s
        -0x150s
        -0x26bs
        -0x150s
        -0x14s
    .end array-data

    .line 13
    nop

    :array_1e
    .array-data 2
        -0x4ads
        -0x4ads
        -0x4ads
        -0x4ads
        -0x6fs
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
