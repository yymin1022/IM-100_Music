.class public Lcom/pantech/audiotag/AudioFile;
.super Ljava/lang/Object;
.source "AudioFile.java"


# static fields
.field public static final AUDIOFILE_DESCRIPTION_FLAC:Ljava/lang/String; = "FLAC"

.field public static final AUDIOFILE_DESCRIPTION_MP3:Ljava/lang/String; = "MP3"

.field public static final AUDIOFILE_TYPE_FLAC:I = 0x2

.field public static final AUDIOFILE_TYPE_MP3:I = 0x1

.field public static final AUDIOFILE_TYPE_UNKNOWN:I = -0x1

.field public static final GET_TYPE_LYRICS_USYNC:I = 0x1

.field public static final GET_TYPE_PICTURE:I = 0x3

.field public static final GET_TYPE_TEXT:I = 0x2

.field public static final WRITE_TYPE_ABNORMAL_ID3_V1:I = 0x100

.field public static final WRITE_TYPE_DEFAULT:I = 0x1

.field public static final WRITE_TYPE_OVERWRITE_ID3_V1:I = 0x10


# instance fields
.field private mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

.field private mFileType:I

.field private mGetType:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "getType"    # I

    .prologue
    const/4 v0, -0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mGetType:I

    .line 57
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mFileType:I

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->v(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/AudioFile;->setGetType(I)V

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/audiotag/AudioFile;->setFileType(I)V

    .line 72
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "getType"    # I
    .param p2, "fileType"    # I

    .prologue
    const/4 v0, -0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mGetType:I

    .line 57
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mFileType:I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fileType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->v(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/AudioFile;->setGetType(I)V

    .line 84
    invoke-direct {p0, p2}, Lcom/pantech/audiotag/AudioFile;->setFileType(I)V

    .line 85
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/AudioFile;->makeEditor(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "getType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mGetType:I

    .line 57
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mFileType:I

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->v(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/AudioFile;->setGetType(I)V

    .line 98
    invoke-direct {p0, p2}, Lcom/pantech/audiotag/AudioFile;->checkFileType(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/audiotag/AudioFile;->setFileType(I)V

    .line 99
    invoke-virtual {p0}, Lcom/pantech/audiotag/AudioFile;->getFileType()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/pantech/audiotag/AudioFile;->makeEditor(ILjava/lang/String;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .registers 6
    .param p1, "getType"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "filetype"    # I

    .prologue
    const/4 v0, -0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mGetType:I

    .line 57
    iput v0, p0, Lcom/pantech/audiotag/AudioFile;->mFileType:I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->v(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/AudioFile;->setGetType(I)V

    .line 113
    invoke-direct {p0, p3}, Lcom/pantech/audiotag/AudioFile;->setFileType(I)V

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/audiotag/AudioFile;->makeEditor(ILjava/lang/String;I)V

    .line 115
    return-void
.end method

.method private checkFileType(Ljava/lang/String;)I
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 171
    const/4 v0, -0x1

    .line 173
    .local v0, "fileType":I
    if-eqz p1, :cond_22

    .line 175
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "lastPos":I
    if-lez v1, :cond_22

    .line 178
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "type":Ljava/lang/String;
    const-string v3, "MP3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 181
    const/4 v0, 0x1

    .line 187
    .end local v1    # "lastPos":I
    .end local v2    # "type":Ljava/lang/String;
    :cond_22
    :goto_22
    return v0

    .line 182
    .restart local v1    # "lastPos":I
    .restart local v2    # "type":Ljava/lang/String;
    :cond_23
    const-string v3, "FLAC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 183
    const/4 v0, 0x2

    goto :goto_22
.end method

.method private makeEditor(I)V
    .registers 3
    .param p1, "getType"    # I

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/pantech/audiotag/AudioFile;->getFileType()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 146
    :goto_7
    return-void

    .line 139
    :pswitch_8
    new-instance v0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;

    invoke-direct {v0, p1}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    goto :goto_7

    .line 143
    :pswitch_10
    new-instance v0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;

    invoke-direct {v0, p1}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    goto :goto_7

    .line 136
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method private makeEditor(ILjava/lang/String;I)V
    .registers 5
    .param p1, "getType"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fileType"    # I

    .prologue
    .line 156
    packed-switch p3, :pswitch_data_14

    .line 166
    :goto_3
    return-void

    .line 159
    :pswitch_4
    new-instance v0, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;

    invoke-direct {v0, p1, p2}, Lcom/pantech/audiotag/editor/MP3AudioFileEditor;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    goto :goto_3

    .line 163
    :pswitch_c
    new-instance v0, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;

    invoke-direct {v0, p1, p2}, Lcom/pantech/audiotag/editor/FLACAudioFileEditor;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    goto :goto_3

    .line 156
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_4
        :pswitch_c
    .end packed-switch
.end method

.method private setFileType(I)V
    .registers 2
    .param p1, "fileType"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/pantech/audiotag/AudioFile;->mFileType:I

    .line 279
    return-void
.end method


# virtual methods
.method public doReadProcess(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    if-eqz v0, :cond_9

    .line 198
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->doRead(Ljava/lang/String;)V

    .line 199
    :cond_9
    return-void
.end method

.method public doWriteProcess(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileTagData;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "writeData"    # Lcom/pantech/audiotag/AudioFileTagData;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    if-eqz v0, :cond_9

    .line 210
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->doWrite(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileTagData;)V

    .line 211
    :cond_9
    return-void
.end method

.method public getFileType()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/pantech/audiotag/AudioFile;->mFileType:I

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    if-eqz v0, :cond_b

    .line 220
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->getResultCode()I

    move-result v0

    .line 222
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getResultData(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    if-eqz v0, :cond_b

    .line 236
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->getResult(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 268
    iget v0, p0, Lcom/pantech/audiotag/AudioFile;->mGetType:I

    return v0
.end method

.method public getUnSyncLyrics(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/pantech/audiotag/AudioFile;->getResultData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 297
    check-cast v0, Ljava/lang/String;

    .line 299
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_8
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getWriteType()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    if-eqz v0, :cond_b

    .line 249
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFile;->mAudioEditor:Lcom/pantech/audiotag/editor/AbsAudioFileEditor;

    invoke-virtual {v0}, Lcom/pantech/audiotag/editor/AbsAudioFileEditor;->getWriteType()I

    move-result v0

    .line 251
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public setFileType(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/pantech/audiotag/AudioFile;->checkFileType(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "fileType":I
    invoke-direct {p0, v0}, Lcom/pantech/audiotag/AudioFile;->setFileType(I)V

    .line 126
    invoke-virtual {p0}, Lcom/pantech/audiotag/AudioFile;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/pantech/audiotag/AudioFile;->makeEditor(I)V

    .line 127
    return-void
.end method

.method public setGetType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/pantech/audiotag/AudioFile;->mGetType:I

    .line 263
    return-void
.end method
