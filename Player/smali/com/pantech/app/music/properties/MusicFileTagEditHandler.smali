.class public Lcom/pantech/app/music/properties/MusicFileTagEditHandler;
.super Landroid/os/Handler;
.source "MusicFileTagEditHandler.java"


# static fields
.field public static final ERROR_FILE_TYPE:I = -0x1

.field public static final MSG_READ_TAG:I = 0x1

.field public static final MSG_WRITE_TAG:I = 0x2

.field public static final TAG_EDIT_FILE_TYPE_FLAC:Ljava/lang/String; = "FLAC"

.field public static final TAG_EDIT_FILE_TYPE_MP3:Ljava/lang/String; = "MP3"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mIsWorking:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mParser:Lcom/pantech/audiotag/AudioFile;

.field private mWorker:Lcom/pantech/app/music/common/MusicWorker;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/common/MusicWorker;Landroid/os/Handler;)V
    .registers 4
    .param p1, "worker"    # Lcom/pantech/app/music/common/MusicWorker;
    .param p2, "mainThreadHandler"    # Landroid/os/Handler;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/pantech/app/music/common/MusicWorker;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mIsWorking:Z

    .line 82
    iput-object p2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    .line 84
    return-void
.end method

.method private setWorking(Z)V
    .registers 2
    .param p1, "isWork"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mIsWorking:Z

    .line 147
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    .line 159
    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mFilePath:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public getIsWorking()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mIsWorking:Z

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    if-eqz v0, :cond_b

    .line 138
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    invoke-virtual {v0}, Lcom/pantech/audiotag/AudioFile;->getResultCode()I

    move-result v0

    .line 140
    :goto_a
    return v0

    :cond_b
    const v0, -0x98967f

    goto :goto_a
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 33
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_62

    .line 75
    :goto_a
    return-void

    .line 39
    :pswitch_b
    invoke-direct {p0, v5}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->setWorking(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->readFileTag()I

    move-result v2

    .line 43
    .local v2, "readResult":I
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    if-eqz v4, :cond_24

    .line 45
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 46
    .local v0, "m":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 47
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    .end local v0    # "m":Landroid/os/Message;
    :cond_24
    invoke-direct {p0, v6}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->setWorking(Z)V

    goto :goto_a

    .line 56
    .end local v2    # "readResult":I
    :pswitch_28
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->setFileUsedNow(Ljava/lang/String;Z)V

    .line 57
    invoke-direct {p0, v5}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->setWorking(Z)V

    .line 59
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/audiotag/AudioFileTagData;

    .line 60
    .local v1, "newData":Lcom/pantech/audiotag/AudioFileTagData;
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->writeToFile(Lcom/pantech/audiotag/AudioFileTagData;)Z

    move-result v3

    .line 62
    .local v3, "writeResult":Z
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    if-eqz v4, :cond_51

    .line 64
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 65
    .restart local v0    # "m":Landroid/os/Message;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .end local v0    # "m":Landroid/os/Message;
    :cond_51
    invoke-direct {p0, v6}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->setWorking(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->stopWorker()V

    .line 71
    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->setFileUsedNow(Ljava/lang/String;Z)V

    goto :goto_a

    .line 35
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_b
        :pswitch_28
    .end packed-switch
.end method

.method public readFileTag()I
    .registers 6

    .prologue
    .line 89
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->LOCATION:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mFilePath:Ljava/lang/String;

    .line 91
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mFilePath:Ljava/lang/String;

    if-eqz v2, :cond_52

    .line 93
    const/4 v1, 0x1

    .line 94
    .local v1, "type":I
    sget-object v2, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->FORMAT:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v2}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "format":Ljava/lang/String;
    if-eqz v0, :cond_1e

    const-string v2, "FLAC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 97
    const/4 v1, 0x2

    .line 99
    :cond_1e
    new-instance v2, Lcom/pantech/audiotag/AudioFile;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1}, Lcom/pantech/audiotag/AudioFile;-><init>(II)V

    iput-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    .line 100
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pantech/audiotag/AudioFile;->doReadProcess(Ljava/lang/String;)V

    .line 102
    const-string v2, "VMusicTagEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mParser.getWriteType(): V_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    invoke-virtual {v4}, Lcom/pantech/audiotag/AudioFile;->getWriteType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    invoke-virtual {v2}, Lcom/pantech/audiotag/AudioFile;->getWriteType()I

    move-result v2

    .line 107
    .end local v0    # "format":Ljava/lang/String;
    .end local v1    # "type":I
    :goto_51
    return v2

    :cond_52
    const/4 v2, -0x1

    goto :goto_51
.end method

.method public stopWorker()V
    .registers 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->destroy()V

    .line 167
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->getIsWorking()Z

    move-result v0

    if-nez v0, :cond_15

    .line 169
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    invoke-virtual {v0}, Lcom/pantech/app/music/common/MusicWorker;->stopWorkerNoSync()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mWorker:Lcom/pantech/app/music/common/MusicWorker;

    .line 172
    :cond_15
    return-void
.end method

.method public writeToFile(Lcom/pantech/audiotag/AudioFileTagData;)Z
    .registers 7
    .param p1, "newData"    # Lcom/pantech/audiotag/AudioFileTagData;

    .prologue
    const/4 v1, 0x1

    .line 113
    const-string v2, "VMusicTagEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new String >> title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantech/audiotag/AudioFileTagData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantech/audiotag/AudioFileTagData;->getAlbum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " artist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantech/audiotag/AudioFileTagData;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " genre: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantech/audiotag/AudioFileTagData;->getGenre()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " track: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantech/audiotag/AudioFileTagData;->getTrack()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    if-eqz v2, :cond_86

    .line 118
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    invoke-virtual {v2, v1}, Lcom/pantech/audiotag/AudioFile;->setGetType(I)V

    .line 119
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Lcom/pantech/audiotag/AudioFile;->doWriteProcess(Ljava/lang/String;Lcom/pantech/audiotag/AudioFileTagData;)V

    .line 121
    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->mParser:Lcom/pantech/audiotag/AudioFile;

    invoke-virtual {v2}, Lcom/pantech/audiotag/AudioFile;->getResultCode()I

    move-result v0

    .line 123
    .local v0, "resultCode":I
    const-string v2, "VMusicTagEdit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-nez v0, :cond_86

    .line 131
    .end local v0    # "resultCode":I
    :goto_85
    return v1

    :cond_86
    const/4 v1, 0x0

    goto :goto_85
.end method
