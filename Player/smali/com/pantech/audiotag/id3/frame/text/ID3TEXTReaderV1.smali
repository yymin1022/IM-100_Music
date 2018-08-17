.class Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV1;
.super Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;
.source "ID3TEXTReaderV1.java"


# static fields
.field private static final ID3_V1X_ENCODING:I = 0x10

.field private static final V1X_ALBUM_LENGTH:I = 0x1e

.field private static final V1X_ARTIST_LENGTH:I = 0x1e

.field private static final V1X_COMMENT_LENGTH:I = 0x1e

.field private static final V1X_TITLE_LENGTH:I = 0x1e

.field private static final V1X_YEAR_LENGTH:I = 0x4


# direct methods
.method public constructor <init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V
    .registers 3
    .param p1, "data"    # Lcom/pantech/audiotag/frame/AudioTagFrameData;
    .param p2, "listener"    # Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/pantech/audiotag/id3/frame/text/AbsID3TEXTReader;-><init>(Lcom/pantech/audiotag/frame/AudioTagFrameData;Lcom/pantech/audiotag/frame/IAudioTagFrameListener;)V

    .line 31
    return-void
.end method


# virtual methods
.method public doReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 16
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x1e

    const/4 v11, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 45
    const-string v8, "---------------------------------------"

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 46
    invoke-static {p1, v9, v12, v10, v11}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "title":Ljava/lang/String;
    invoke-static {p1, v9, v12, v10, v11}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "artist":Ljava/lang/String;
    invoke-static {p1, v9, v12, v10, v11}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "album":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-static {p1, v9, v8, v10, v11}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "year":Ljava/lang/String;
    const/16 v8, 0x7a

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-nez v8, :cond_100

    .line 57
    const/16 v8, 0x1d

    invoke-static {p1, v9, v8, v10, v11}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "comment":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "track":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-static {v8}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setMP3V1Version(I)V

    .line 68
    :goto_37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "genre":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(V1)TITLE\t: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 71
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(V1)ARTIST\t: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(V1)ALBUM\t: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 73
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(V1)YEAR\t: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 74
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(V1)COMMENT\t: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(V1)TRACK\t: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(V1)GENRE\t: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 79
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 80
    .local v6, "v1TextMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v8, p0, Lcom/pantech/audiotag/id3/frame/text/ID3TEXTReaderV1;->mIAudioTagFrameListener:Lcom/pantech/audiotag/frame/IAudioTagFrameListener;

    invoke-interface {v8, v6, v10}, Lcom/pantech/audiotag/frame/IAudioTagFrameListener;->onEndReadFrame(Ljava/lang/Object;I)V

    .line 90
    return v13

    .line 63
    .end local v2    # "comment":Ljava/lang/String;
    .end local v3    # "genre":Ljava/lang/String;
    .end local v5    # "track":Ljava/lang/String;
    .end local v6    # "v1TextMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_100
    invoke-static {p1, v9, v12, v10, v11}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2    # "comment":Ljava/lang/String;
    const/4 v5, 0x0

    .line 65
    .restart local v5    # "track":Ljava/lang/String;
    const/4 v8, 0x5

    invoke-static {v8}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->setMP3V1Version(I)V

    goto/16 :goto_37
.end method

.method public getTextEncoding(B)I
    .registers 3
    .param p1, "encodingByte"    # B

    .prologue
    .line 98
    const/4 v0, -0x1

    return v0
.end method
