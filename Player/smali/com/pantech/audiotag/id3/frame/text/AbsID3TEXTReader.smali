.class abstract Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;
.super Lcom/pantech/audiotag/id3/frame/AbsID3TagDetailFrameReader;
.source "AbsID3TEXTReader.java"


# static fields
.field protected static final TEXT_HEADER_ENCODING_LENGTH:I = 0x1


# instance fields
.field protected mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

.field protected mFrameDataFlagByte:[B

.field protected mFrameDataLength:I

.field protected mIAudioTagFrameListener:Lcom/pantech/audiotag/frame/IAudioTagFrameListener;


# direct methods
.method public constructor <init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V
    .registers 3
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "listener"    # Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/pantech/audiotag/id3/frame/AbsID3TagDetailFrameReader;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    .line 29
    iput-object p2, p0, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->mIAudioTagFrameListener:Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    .line 30
    return-void
.end method


# virtual methods
.method protected doBaseReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "text":Ljava/lang/String;
    const/4 v1, 0x1

    .line 38
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 41
    .local v2, "resultCode":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-virtual {p0, v4}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->getTextEncoding(B)I

    move-result v0

    .line 43
    .local v0, "encodingType":I
    if-gez v0, :cond_10

    .line 45
    const/4 v1, 0x0

    .line 46
    const/16 v2, -0xfa2

    .line 50
    :cond_10
    iget-object v4, p0, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->mAudioTagFrameData:Lcom/pantech/audiotag/frame/AudioTagFrameData;

    iget v4, v4, Lcom/pantech/audiotag/frame/AudioTagFrameData;->mFrameLen:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v0, v4, v5, v6}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    if-nez v3, :cond_24

    .line 54
    const/4 v1, 0x0

    .line 55
    const/16 v2, -0xfa1

    .line 56
    const-string v4, "Error: TEXT READER doBaseReadTag>> Text is null"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 59
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "encoding: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TEXT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;->mIAudioTagFrameListener:Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    invoke-interface {v4, v3, v2}, Lcom/pantech/audiotag/frame/IAudioTagFrameListener;->onEndReadFrame(Ljava/lang/Object;I)V

    .line 63
    return v1
.end method

.method public getTextEncoding(B)I
    .registers 4
    .param p1, "encodingByte"    # B

    .prologue
    .line 73
    move v0, p1

    .line 75
    .local v0, "encoding":I
    packed-switch v0, :pswitch_data_12

    .line 81
    const/4 v1, -0x1

    :goto_5
    return v1

    .line 77
    :pswitch_6
    const/16 v1, 0x10

    goto :goto_5

    .line 78
    :pswitch_9
    const/16 v1, 0x100

    goto :goto_5

    .line 79
    :pswitch_c
    const/16 v1, 0x80

    goto :goto_5

    .line 80
    :pswitch_f
    const/16 v1, 0x200

    goto :goto_5

    .line 75
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method
