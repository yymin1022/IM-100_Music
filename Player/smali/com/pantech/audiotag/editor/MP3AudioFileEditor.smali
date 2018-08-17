.class public Lcom/pantech/audiotag/editor/MP3AudioFileEditor;
.super Lcom/pantech/audiotag/editor/AbsAudioFileEditor;
.source "MP3AudioFileEditor.java"


# instance fields
.field private mAbsID3TagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "getType"    # I

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;-><init>(I)V

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "getType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;-><init>(ILjava/lang/String;)V

    .line 112
    return-void
.end method


# virtual methods
.method public doRead(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 118
    const-string v0, "START:: ID3 parsing"

    invoke-static {v0, v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 120
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->startProcess()V

    .line 122
    new-instance v0, Lcom/pantech/audiotag/id3/ID3TagReader;

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->getGetType()I

    move-result v1

    invoke-direct {v0, p1, v1, p0}, Lcom/pantech/audiotag/id3/ID3TagReader;-><init>(Ljava/lang/String;ILcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    iput-object v0, p0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->mAbsID3TagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    .line 124
    iget-object v0, p0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->mAbsID3TagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->doProcess()V

    .line 126
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->endProcess()V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "END:: ID3 parsing RESULT CODE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public doWrite(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileTagData;)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "writeData"    # Lcom/pantech/audiotag/AudioFileTagData;

    .prologue
    const/4 v7, 0x1

    .line 136
    const-string v0, "START:: ID3 writing"

    invoke-static {v0, v7}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 139
    iget-object v0, p0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->mAbsID3TagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    if-nez v0, :cond_19

    .line 141
    const-string v0, "This File didn\'t parsed before. Start tag parsing first."

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->setPath(Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->setGetType(I)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->doRead(Ljava/lang/String;)V

    .line 148
    :cond_19
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->startProcess()V

    .line 150
    invoke-virtual {p0, v7}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->setGetType(I)V

    .line 151
    new-instance v0, Lcom/pantech/audiotag/id3/ID3TagWriter;

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->getGetType()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->getWriteType()I

    move-result v3

    iget-object v1, p0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    invoke-virtual {v1}, Lcom/pantech/audiotag/editor/AudioFileEditorData;->getData()Ljava/lang/Object;

    move-result-object v4

    move-object v1, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/pantech/audiotag/id3/ID3TagWriter;-><init>(Ljava/lang/String;IILjava/lang/Object;Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/editor/IAudioFileEditorListener;)V

    iput-object v0, p0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->mAbsID3TagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    .line 152
    iget-object v0, p0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->mAbsID3TagExecuter:Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AbsAudioFileTagExecuter;->doProcess()V

    .line 154
    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->endProcess()V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "END:: ID3 writing RESULT CODE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->getResultCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;Z)V

    .line 157
    return-void
.end method

.method public onEndProcess(Lcom/pantech/audiotag/editor/AudioFileEditorData;)V
    .registers 2
    .param p1, "resultData"    # Lcom/pantech/audiotag/editor/AudioFileEditorData;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;->mResultData:Lcom/pantech/audiotag/editor/AudioFileEditorData;

    .line 164
    return-void
.end method
