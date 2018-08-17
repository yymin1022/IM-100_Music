.class public Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;
.super Ljava/lang/Object;
.source "ID3LYRICS.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagByteBuffer;
.implements Lcom/pantech/audiotag/frame/IAudioTagFrameListener;


# instance fields
.field private mAbsID3LYRICSReader:Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;

.field private mResultCode:I

.field private mResultLyrics:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)V
    .registers 5
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "version"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frameLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " frameID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->makeReader(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->mAbsID3LYRICSReader:Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;

    .line 26
    return-void
.end method

.method private makeReader(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;
    .registers 4
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "version"    # I

    .prologue
    .line 60
    packed-switch p2, :pswitch_data_12

    .line 68
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 64
    :pswitch_5
    new-instance v0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICSReaderV22V23;

    invoke-direct {v0, p1, p0}, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICSReaderV22V23;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    goto :goto_4

    .line 66
    :pswitch_b
    new-instance v0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICSReaderV24;

    invoke-direct {v0, p1, p0}, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICSReaderV24;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    goto :goto_4

    .line 60
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public doReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->mAbsID3LYRICSReader:Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->doReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->mResultCode:I

    return v0
.end method

.method public getResultData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->mResultLyrics:Ljava/lang/Object;

    return-object v0
.end method

.method public onEndReadFrame(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "resultCode"    # I

    .prologue
    .line 46
    iput-object p1, p0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->mResultLyrics:Ljava/lang/Object;

    .line 47
    iput p2, p0, Lcom/pantech/audiotag/id3/frame/lyrics/ID3LYRICS;->mResultCode:I

    .line 48
    return-void
.end method
