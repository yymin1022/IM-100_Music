.class abstract Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;
.super Lcom/pantech/audiotag/id3/frame/AbsID3TagDetailFrameReader;
.source "AbsID3LYRICSReader.java"


# instance fields
.field protected final LYRICS_DEFAULT_USED_LENGTH:I

.field protected final LYRICS_HEADER_ENCODING_LENGTH:I

.field protected final LYRICS_HEADER_LANGUAGE_LENGTH:I

.field protected mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

.field protected mIAudioTagFrameListener:Lcom/pantech/audiotag/frame/IAudioTagFrameListener;


# direct methods
.method public constructor <init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V
    .registers 4
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "listener"    # Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagDetailFrameReader;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->LYRICS_HEADER_ENCODING_LENGTH:I

    .line 20
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->LYRICS_HEADER_LANGUAGE_LENGTH:I

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->LYRICS_DEFAULT_USED_LENGTH:I

    .line 28
    iput-object p1, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    .line 29
    iput-object p2, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->mIAudioTagFrameListener:Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    .line 30
    return-void
.end method


# virtual methods
.method protected doBaseReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 11
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 40
    const/4 v5, 0x0

    .line 41
    .local v5, "resultCode":I
    const/4 v4, 0x1

    .line 44
    .local v4, "result":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {p0, v7}, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->getTextEncoding(B)I

    move-result v1

    .line 46
    .local v1, "encodingType":I
    if-gez v1, :cond_10

    .line 48
    const/16 v5, -0x3ea

    .line 49
    const/4 v4, 0x0

    .line 53
    :cond_10
    new-array v6, v8, [B

    .line 54
    .local v6, "temp":[B
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 55
    invoke-static {v6}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([B)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "language":Ljava/lang/String;
    iget-object v7, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v7, v7, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    invoke-static {p1, v1, v7}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringByte(Ljava/nio/ByteBuffer;II)[B

    move-result-object v0

    .line 60
    .local v0, "descriptionByte":[B
    if-eqz v0, :cond_2b

    array-length v7, v0

    iget-object v8, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v8, v8, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    if-ne v7, v8, :cond_7c

    .line 62
    :cond_2b
    const-string v7, "Error: LYRICS READER doBaseReadTag>> Content descriptor is null"

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 63
    const/16 v5, -0x3eb

    .line 64
    const/4 v4, 0x0

    .line 72
    :goto_33
    iget-object v7, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v7, v7, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    .line 73
    array-length v8, v0

    add-int/lit8 v8, v8, 0x4

    .line 72
    invoke-static {p1, v1, v7, v8, v2}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "lyrics":Ljava/lang/String;
    if-eqz v3, :cond_9e

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9e

    .line 77
    invoke-static {v3}, Lcom/pantech/audiotag/common/util/GlobalUtil;->alignLyrics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    :goto_50
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "encoding: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " LYRICS: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 88
    iget-object v7, p0, Lcom/pantech/audiotag/id3/frame/lyrics/AbsID3LYRICSReader;->mIAudioTagFrameListener:Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    invoke-interface {v7, v3, v5}, Lcom/pantech/audiotag/frame/IAudioTagFrameListener;->onEndReadFrame(Ljava/lang/Object;I)V

    .line 90
    return v4

    .line 68
    .end local v3    # "lyrics":Ljava/lang/String;
    :cond_7c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Data size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Description: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    goto :goto_33

    .line 81
    .restart local v3    # "lyrics":Ljava/lang/String;
    :cond_9e
    const-string v7, "Error: LYRICS READER doBaseReadTag>> Lyrics/text is null"

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 82
    const/16 v5, -0x3e9

    .line 83
    const/4 v4, 0x0

    goto :goto_50
.end method

.method public getTextEncoding(B)I
    .registers 4
    .param p1, "encodingByte"    # B

    .prologue
    .line 97
    move v0, p1

    .line 99
    .local v0, "encoding":I
    packed-switch v0, :pswitch_data_12

    .line 105
    const/4 v1, -0x1

    :goto_5
    return v1

    .line 101
    :pswitch_6
    const/16 v1, 0x10

    goto :goto_5

    .line 102
    :pswitch_9
    const/16 v1, 0x20

    goto :goto_5

    .line 103
    :pswitch_c
    const/16 v1, 0x80

    goto :goto_5

    .line 104
    :pswitch_f
    const/16 v1, 0x200

    goto :goto_5

    .line 99
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method
