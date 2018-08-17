.class public Lcom/pantech/audiotag/editor/FLACAudioFileEditor;
.super Lcom/pantech/audiotag/editor/AbsAudioFileEditor;
.source "FLACAudioFileEditor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[FLACAudioFileEditor] "


# instance fields
.field private mAbsFLACTagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "getType"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;-><init>(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "getType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;-><init>(ILjava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public doRead(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 31
    const-string v0, "[FLACAudioFileEditor] START:: FLAC parsing"

    invoke-static {v0, v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 33
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->startProcess()V

    .line 35
    new-instance v0, Lcom/pantech/audiotag/flac/FLACTagReader;

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->getGetType()I

    move-result v1

    invoke-direct {v0, p1, v1, p0}, Lcom/pantech/audiotag/flac/FLACTagReader;-><init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    iput-object v0, p0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->mAbsFLACTagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    .line 37
    iget-object v0, p0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->mAbsFLACTagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->doProcess()V

    .line 39
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->endProcess()V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FLACAudioFileEditor] END:: FLAC parsing RESULT CODE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public doWrite(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileTagData;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "writeData"    # Lcom/pantech/audiotag/AudioFileTagData;

    .prologue
    const/4 v6, 0x1

    .line 48
    const-string v0, "[FLACAudioFileEditor] START:: ID3 writing"

    invoke-static {v0, v6}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 51
    iget-object v0, p0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->mAbsFLACTagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    if-nez v0, :cond_19

    .line 53
    const-string v0, "[FLACAudioFileEditor] This File didn\'t parsed before. Start tag parsing first."

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->setPath(Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->setGetType(I)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->doRead(Ljava/lang/String;)V

    .line 60
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->startProcess()V

    .line 62
    invoke-virtual {p0, v6}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->setGetType(I)V

    .line 63
    new-instance v0, Lcom/pantech/audiotag/flac/FLACTagWriter;

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->getGetType()I

    move-result v2

    iget-object v1, p0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v1}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->getData()Ljava/lang/Object;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/audiotag/flac/FLACTagWriter;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    iput-object v0, p0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->mAbsFLACTagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    .line 64
    iget-object v0, p0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->mAbsFLACTagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->doProcess()V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->endProcess()V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[FLACAudioFileEditor] END:: ID3 writing RESULT CODE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public onEndProcess(Lcom/pantech/audiotag/editor/AudioFileEditorData;)V
    .registers 2
    .param p1, "resultData"    # Lcom/pantech/audiotag/editor/AudioFileEditorData;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    .line 76
    return-void
.end method
