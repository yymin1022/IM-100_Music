.class public Lcom/pantech/app/musicfx/common/Global$ModelInfo;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/common/Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelInfo"
.end annotation


# instance fields
.field public final mAllowLogLevel:I

.field public final mFunc:J

.field public final mModelName:Ljava/lang/String;

.field public final mSolution:I

.field public final mThemeType:I

.field public final mVendor:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIJI)V
    .registers 9
    .param p1, "vendor"    # I
    .param p2, "modelName"    # Ljava/lang/String;
    .param p3, "themeType"    # I
    .param p4, "loglevel"    # I
    .param p5, "func"    # J
    .param p7, "solution"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mVendor:I

    .line 119
    iput-object p2, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mModelName:Ljava/lang/String;

    .line 123
    iput p4, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mAllowLogLevel:I

    .line 125
    iput p3, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mThemeType:I

    .line 126
    iput-wide p5, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    .line 127
    iput p7, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    .line 128
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IJI)V
    .registers 9
    .param p1, "vendor"    # I
    .param p2, "modelName"    # Ljava/lang/String;
    .param p3, "loglevel"    # I
    .param p4, "func"    # J
    .param p6, "solution"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mVendor:I

    .line 105
    iput-object p2, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mModelName:Ljava/lang/String;

    .line 109
    iput p3, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mAllowLogLevel:I

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mThemeType:I

    .line 112
    iput-wide p4, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mFunc:J

    .line 113
    iput p6, p0, Lcom/pantech/app/musicfx/common/Global$ModelInfo;->mSolution:I

    .line 114
    return-void
.end method
