.class public abstract Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;
.super Ljava/lang/Object;
.source "AbsAudioFileTagExecuter.java"


# instance fields
.field private mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

.field private mEditorListener:Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

.field protected mGetType:I

.field protected mPath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "getType"    # I
    .param p3, "editorListener"    # Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mPath:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mGetType:I

    .line 35
    iput-object p3, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorListener:Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract doProcess()V
.end method

.method protected endProcess()V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorListener:Lcom/pantech/audiotag/editor/IAudioFileEditorListener;

    iget-object v1, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-interface {v0, v1}, Lcom/pantech/audiotag/editor/IAudioFileEditorListener;->onEndProcess(Lcom/pantech/audiotag/editor/AudioFileEditorData;)V

    .line 48
    return-void
.end method

.method protected getCode()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->getCode()I

    move-result v0

    return v0
.end method

.method protected prepareProcess()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-direct {v0}, Lcom/pantech/audiotag/editor/AudioFileEditorData;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    .line 42
    return-void
.end method

.method protected setCode(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->setCode(I)V

    .line 61
    return-void
.end method

.method protected setData(Ljava/lang/Object;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->setData(Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method protected setResultData(ILjava/lang/Object;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->setCode(I)V

    .line 54
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0, p2}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->setData(Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method protected setWriteType(I)V
    .registers 3
    .param p1, "writeType"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->mEditorData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->setWriteType(I)V

    .line 79
    return-void
.end method
