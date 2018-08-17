.class public Lcom/pantech/audiotag/id3/frame/ID3TagFrame;
.super Lcom/pantech/audiotag/frame/AbsAudioTagFrame;
.source "ID3TagFrame.java"


# static fields
.field public static final FRAME_MIN_SIZE:I = 0xb


# instance fields
.field private mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "getType"    # I
    .param p2, "version"    # I

    .prologue
    .line 25
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/pantech/audiotag/frame/AbsAudioTagFrame;-><init>(III)V

    .line 27
    invoke-direct {p0, p2}, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->makeReader(I)Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    .line 28
    return-void
.end method

.method public static getTypeKeyOfFrame(Ljava/lang/String;)I
    .registers 2
    .param p0, "frameID"    # Ljava/lang/String;

    .prologue
    .line 150
    const-string v0, "TT2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "TIT2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    :cond_10
    const/4 v0, 0x1

    .line 163
    :goto_11
    return v0

    .line 152
    :cond_12
    const-string v0, "TP1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "TPE1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 153
    :cond_22
    const/4 v0, 0x2

    goto :goto_11

    .line 154
    :cond_24
    const-string v0, "TAL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "TALB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 155
    :cond_34
    const/4 v0, 0x3

    goto :goto_11

    .line 156
    :cond_36
    const-string v0, "TCO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "TCON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 157
    :cond_46
    const/4 v0, 0x4

    goto :goto_11

    .line 158
    :cond_48
    const-string v0, "TRK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "TRCK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 159
    :cond_58
    const/4 v0, 0x5

    goto :goto_11

    .line 160
    :cond_5a
    const-string v0, "TYE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    const-string v0, "TYER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 161
    :cond_6a
    const/4 v0, 0x7

    goto :goto_11

    .line 163
    :cond_6c
    const/4 v0, -0x1

    goto :goto_11
.end method

.method private makeReader(I)Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;
    .registers 3
    .param p1, "version"    # I

    .prologue
    .line 33
    packed-switch p1, :pswitch_data_12

    .line 45
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 38
    :pswitch_5
    new-instance v0, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;

    invoke-direct {v0, p1}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV22;-><init>(I)V

    goto :goto_4

    .line 42
    :pswitch_b
    new-instance v0, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;

    invoke-direct {v0, p1}, Lcom/pantech/audiotag/id3/frame/ID3TagFrameReaderV23V24;-><init>(I)V

    goto :goto_4

    .line 33
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_b
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
    .line 53
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 54
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->doReadTag(Ljava/nio/ByteBuffer;)Z

    move-result v0

    .line 56
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 142
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;

    move-result-object v0

    .line 144
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFrameID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 72
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameID()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFrameLength()I
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 82
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->getFrameLength()I

    move-result v0

    .line 84
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isLyricsFrame()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isLyricsFrame()Z

    move-result v0

    .line 104
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPadding()Z
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 92
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isPadding()Z

    move-result v0

    .line 94
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPictureFrame()Z
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 122
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isPictureFrame()Z

    move-result v0

    .line 124
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isTextFrame()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 112
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isTextFrame()Z

    move-result v0

    .line 114
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isValidFrameFlag()Z
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_b

    .line 132
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->isValidFrameFlag()Z

    move-result v0

    .line 134
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public skipPreviousFrame(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    if-eqz v0, :cond_9

    .line 64
    iget-object v0, p0, Lcom/pantech/audiotag/id3/frame/ID3TagFrame;->mAbsID3TagFrameReader:Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;

    invoke-virtual {v0, p1}, Lcom/pantech/audiotag/id3/frame/AbsID3TagFrameReader;->skipPreviousFrame(Ljava/nio/ByteBuffer;)V

    .line 65
    :cond_9
    return-void
.end method
