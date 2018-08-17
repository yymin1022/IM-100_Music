.class public abstract Lcom/pantech/audiotag/editor/AbsAudioFileEditor;
.super Ljava/lang/Object;
.source "AbsAudioFileEditor.java"

# interfaces
.implements Lcom/pantech/audiotag/editor/IAudioFileEditorListener;


# instance fields
.field private mGetType:I

.field private mIsInProcess:Z

.field private mPath:Ljava/lang/String;

.field protected mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "getType"    # I

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mIsInProcess:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mGetType:I

    .line 28
    iput-object v1, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mPath:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-direct {v0}, Lcom/pantech/audiotag/editor/AudioFileEditorData;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    .line 38
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->setGetType(I)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->setPath(Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->initValues()V

    .line 41
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "getType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mIsInProcess:Z

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mGetType:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mPath:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-direct {v0}, Lcom/pantech/audiotag/editor/AudioFileEditorData;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    .line 46
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->setGetType(I)V

    .line 47
    invoke-virtual {p0, p2}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->setPath(Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->initValues()V

    .line 49
    return-void
.end method

.method private initValues()V
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mIsInProcess:Z

    .line 70
    return-void
.end method


# virtual methods
.method public abstract doRead(Ljava/lang/String;)V
.end method

.method public abstract doWrite(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileTagData;)V
.end method

.method protected endProcess()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mIsInProcess:Z

    .line 63
    return-void
.end method

.method public getGetType()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mGetType:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bInProcess: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mIsInProcess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 134
    if-nez p1, :cond_22

    .line 139
    :cond_21
    :goto_21
    return-object v0

    .line 136
    :cond_22
    iget-boolean v1, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mIsInProcess:Z

    if-nez v1, :cond_21

    .line 139
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->getResultData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_21
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->getCode()I

    move-result v0

    return v0
.end method

.method public getResultData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWriteType()I
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->getWriteType()I

    move-result v0

    return v0
.end method

.method public setGetType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mGetType:I

    .line 81
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mPath:Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected startProcess()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->initValues()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->mIsInProcess:Z

    .line 56
    return-void
.end method
