.class public Lcom/pantech/audiotag/data/VorbisCommentData;
.super Lcom/pantech/audiotag/data/AbsData;
.source "VorbisCommentData.java"


# static fields
.field public static final ALBUM:Ljava/lang/String; = "ALBUM"

.field public static final ARTIST:Ljava/lang/String; = "ARTIST"

.field public static final EQUAL_SIGN:Ljava/lang/String; = "="

.field public static final GENRE:Ljava/lang/String; = "GENRE"

.field public static LYRICS:Ljava/lang/String; = null

.field public static TAG:Ljava/lang/String; = null

.field public static final TITLE:Ljava/lang/String; = "TITLE"

.field public static final TRACK:Ljava/lang/String; = "TRACKNUMBER"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "[VorbisCommentData] "

    sput-object v0, Lcom/pantech/audiotag/data/VorbisCommentData;->TAG:Ljava/lang/String;

    .line 40
    const-string v0, "LYRICS"

    sput-object v0, Lcom/pantech/audiotag/data/VorbisCommentData;->LYRICS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/pantech/audiotag/data/AbsData;-><init>()V

    return-void
.end method

.method public static getCompleteVorbisCommentByte(ILjava/lang/String;)[B
    .registers 10
    .param p0, "type"    # I
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 65
    packed-switch p0, :pswitch_data_62

    .line 72
    const-string v2, "UNKNOWN="

    .line 75
    .local v2, "resultStr":Ljava/lang/String;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lcom/pantech/audiotag/textcoder/MUTF8Util;->encode(Ljava/lang/String;)[B

    move-result-object v1

    .line 80
    .local v1, "resultDataByte":[B
    array-length v3, v1

    .line 81
    .local v3, "size":I
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->getSizeLEInt32(I)[B

    move-result-object v4

    .line 83
    .local v4, "sizeByte":[B
    array-length v5, v4

    array-length v6, v1

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 84
    .local v0, "resultBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 86
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/pantech/audiotag/data/VorbisCommentData;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "getCompleteVorbisCommentByte() full length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    array-length v7, v1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    return-object v5

    .line 67
    .end local v0    # "resultBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "resultDataByte":[B
    .end local v2    # "resultStr":Ljava/lang/String;
    .end local v3    # "size":I
    .end local v4    # "sizeByte":[B
    :pswitch_53
    const-string v2, "TITLE="

    .restart local v2    # "resultStr":Ljava/lang/String;
    goto :goto_5

    .line 68
    .end local v2    # "resultStr":Ljava/lang/String;
    :pswitch_56
    const-string v2, "ARTIST="

    .restart local v2    # "resultStr":Ljava/lang/String;
    goto :goto_5

    .line 69
    .end local v2    # "resultStr":Ljava/lang/String;
    :pswitch_59
    const-string v2, "ALBUM="

    .restart local v2    # "resultStr":Ljava/lang/String;
    goto :goto_5

    .line 70
    .end local v2    # "resultStr":Ljava/lang/String;
    :pswitch_5c
    const-string v2, "GENRE="

    .restart local v2    # "resultStr":Ljava/lang/String;
    goto :goto_5

    .line 71
    .end local v2    # "resultStr":Ljava/lang/String;
    :pswitch_5f
    const-string v2, "TRACKNUMBER="

    .restart local v2    # "resultStr":Ljava/lang/String;
    goto :goto_5

    .line 65
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_53
        :pswitch_56
        :pswitch_59
        :pswitch_5c
        :pswitch_5f
    .end packed-switch
.end method

.method public static getTypeOfID(Ljava/lang/String;)I
    .registers 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string v0, "TITLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 56
    :goto_9
    return v0

    .line 51
    :cond_a
    const-string v0, "ARTIST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    goto :goto_9

    .line 52
    :cond_14
    const-string v0, "ALBUM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_9

    .line 53
    :cond_1e
    const-string v0, "TRACKNUMBER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x5

    goto :goto_9

    .line 54
    :cond_28
    const-string v0, "GENRE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x4

    goto :goto_9

    .line 55
    :cond_32
    sget-object v0, Lcom/pantech/audiotag/data/VorbisCommentData;->LYRICS:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v0, 0x6

    goto :goto_9

    .line 56
    :cond_3c
    const/4 v0, -0x1

    goto :goto_9
.end method
