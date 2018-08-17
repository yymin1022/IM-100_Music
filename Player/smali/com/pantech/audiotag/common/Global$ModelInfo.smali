.class public Lcom/pantech/audiotag/common/Global$ModelInfo;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/audiotag/common/Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelInfo"
.end annotation


# instance fields
.field public final mAllowLogLevel:I

.field public final mModelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "loglevel"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/pantech/audiotag/common/Global$ModelInfo;->mModelName:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/pantech/audiotag/common/Global$ModelInfo;->mAllowLogLevel:I

    .line 23
    return-void
.end method
