.class public abstract Lcom/pantech/audiotag/frame/AbsAudioTagFrame;
.super Ljava/lang/Object;
.source "AbsAudioTagFrame.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagByteBuffer;
.implements Lcom/pantech/audiotag/frame/IAudioTagFrame;


# instance fields
.field protected mFileType:I

.field protected mGetType:I

.field protected mVersion:I


# direct methods
.method public constructor <init>(III)V
    .registers 6
    .param p1, "fileType"    # I
    .param p2, "getType"    # I
    .param p3, "version"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 24
    iput p1, p0, Lcom/pantech/audiotag/frame/AbsAudioTagFrame;->mFileType:I

    .line 25
    iput p2, p0, Lcom/pantech/audiotag/frame/AbsAudioTagFrame;->mGetType:I

    .line 26
    iput p3, p0, Lcom/pantech/audiotag/frame/AbsAudioTagFrame;->mVersion:I

    .line 27
    return-void
.end method
