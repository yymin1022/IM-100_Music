.class public Lcom/pantech/audiotag/frame/AudioTagFrameData;
.super Ljava/lang/Object;
.source "AudioTagFrameData.java"


# instance fields
.field public mFrameFlag:[B

.field public mFrameID:Ljava/lang/String;

.field public mFrameIDByte:[B

.field public mFrameLen:I

.field public mIsFrameFlagOK:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameID:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mIsFrameFlagOK:Z

    .line 3
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameID:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameIDByte:[B

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    .line 23
    iput-object v1, p0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameFlag:[B

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mIsFrameFlagOK:Z

    .line 25
    return-void
.end method
