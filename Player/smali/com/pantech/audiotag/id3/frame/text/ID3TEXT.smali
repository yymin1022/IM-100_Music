.class public Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;
.super Ljava/lang/Object;
.source "ID3TEXT.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagByteBuffer;
.implements Lcom/pantech/audiotag/frame/IAudioTagFrameListener;


# instance fields
.field private mFrameID:Ljava/lang/String;

.field private mResultCode:I

.field private mResultText:Ljava/lang/Object;

.field private mTEXTReader:Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;


# direct methods
.method public constructor <init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)V
    .registers 5
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "version"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
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

    .line 28
    iget-object v0, p1, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameID:Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mFrameID:Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->makeReader(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mTEXTReader:Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;

    .line 30
    return-void
.end method

.method private makeReader(Lcom/pantech/audiotag/frame/AudioTagFrameData;I)Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;
    .registers 4
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "mp3Version"    # I

    .prologue
    .line 74
    packed-switch p2, :pswitch_data_1e

    .line 86
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 77
    :pswitch_5
    new-instance v0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV22;

    invoke-direct {v0, p1, p0}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV22;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    goto :goto_4

    .line 79
    :pswitch_b
    new-instance v0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV23;

    invoke-direct {v0, p1, p0}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV23;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    goto :goto_4

    .line 81
    :pswitch_11
    new-instance v0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;

    invoke-direct {v0, p1, p0}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV24;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    goto :goto_4

    .line 84
    :pswitch_17
    new-instance v0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV1;

    invoke-direct {v0, p1, p0}, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV1;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    goto :goto_4

    .line 74
    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_17
        :pswitch_17
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
    .line 36
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mTEXTReader:Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->doReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mResultCode:I

    return v0
.end method

.method public getResultData()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mResultText:Ljava/lang/Object;

    if-eqz v0, :cond_21

    .line 53
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mFrameID:Ljava/lang/String;

    const-string v1, "TCO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mFrameID:Ljava/lang/String;

    const-string v1, "TCON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 54
    :cond_18
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mResultText:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/pantech/audiotag/common/util/GenreUtil;->getGenreString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_20
    return-object v0

    .line 57
    :cond_21
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mResultText:Ljava/lang/Object;

    if-eqz v0, :cond_28

    .line 58
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mResultText:Ljava/lang/Object;

    goto :goto_20

    .line 60
    :cond_28
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public onEndReadFrame(Ljava/lang/Object;I)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "resultCode"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mResultText:Ljava/lang/Object;

    .line 68
    iput p2, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXT;->mResultCode:I

    .line 69
    return-void
.end method
