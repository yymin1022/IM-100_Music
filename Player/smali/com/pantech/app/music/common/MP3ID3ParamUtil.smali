.class public Lcom/pantech/app/music/common/MP3ID3ParamUtil;
.super Ljava/lang/Object;
.source "MP3ID3ParamUtil.java"


# static fields
.field private static final FTR_FLAGMASK:B = 0x10t

.field private static final ID3V2_TAG_NUM_BYTES_HEADER:I = 0xa

.field private static final ID3V2_TAG_NUM_BYTES_ID:I = 0x3

.field private static final ID3V2_TAG_NUM_BYTES_SIZE:I = 0x4

.field private static final ID3V2_TAG_NUM_BYTES_VERSION:I = 0x2

.field private static final ID3_V2_IDENTIFIER:Ljava/lang/String; = "ID3"

.field private static final TAG:Ljava/lang/String; = "MP3ID3ParamUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CheckForTagID3V2(Ljava/io/RandomAccessFile;)Z
    .registers 7
    .param p0, "raFile"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    .line 40
    const-string v3, "MP3ID3ParamUtil"

    const-string v4, "CheckForTagID3V2"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-array v0, v5, [B

    .line 43
    .local v0, "id3Header":[B
    invoke-virtual {p0, v0, v2, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3

    if-ge v3, v5, :cond_19

    .line 44
    const-string v3, "MP3ID3ParamUtil"

    const-string v4, "CheckForTagID3V2 fail to read header??"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_18
    :goto_18
    return v2

    .line 48
    :cond_19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 49
    .local v1, "id3ID":Ljava/lang/String;
    const-string v3, "ID3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 50
    const/4 v2, 0x1

    goto :goto_18
.end method

.method public static readTagSize([B)I
    .registers 7
    .param p0, "tagSize"    # [B

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "iValue":I
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1d

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1d

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1d

    aget-byte v2, p0, v5

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1e

    .line 112
    :cond_1d
    :goto_1d
    return v1

    .line 106
    :cond_1e
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 107
    aget-byte v1, p0, v3

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 108
    aget-byte v1, p0, v4

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 109
    aget-byte v1, p0, v5

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 111
    const-string v1, "MP3ID3ParamUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readTagSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 112
    goto :goto_1d
.end method

.method static skipHeaderID3V2(Ljava/io/RandomAccessFile;)Z
    .registers 12
    .param p0, "raFile"    # Ljava/io/RandomAccessFile;

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v5, 0x0

    .line 56
    const-string v6, "MP3ID3ParamUtil"

    const-string v7, "skipHeaderID3V2"

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v6, 0x2

    :try_start_d
    new-array v4, v6, [B

    .line 60
    .local v4, "id3Ver":[B
    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {p0, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-ge v6, v8, :cond_18

    .line 90
    .end local v4    # "id3Ver":[B
    :cond_17
    :goto_17
    return v5

    .line 65
    .restart local v4    # "id3Ver":[B
    :cond_18
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    .line 68
    .local v3, "id3V2TagFlags":B
    const/4 v6, 0x4

    new-array v1, v6, [B

    .line 69
    .local v1, "id3Size":[B
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p0, v1, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v6

    if-lt v6, v9, :cond_17

    .line 73
    invoke-static {v1}, Lcom/pantech/app/music/common/MP3ID3ParamUtil;->readTagSize([B)I

    move-result v2

    .line 74
    .local v2, "id3TagSize":I
    if-eqz v2, :cond_17

    int-to-long v6, v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_17

    .line 76
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v6

    if-lt v6, v2, :cond_17

    .line 79
    and-int/lit8 v6, v3, 0x10

    if-eqz v6, :cond_48

    .line 81
    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_45} :catch_4a

    move-result v6

    if-lt v6, v10, :cond_17

    .line 85
    :cond_48
    const/4 v5, 0x1

    goto :goto_17

    .line 88
    .end local v1    # "id3Size":[B
    .end local v2    # "id3TagSize":I
    .end local v3    # "id3V2TagFlags":B
    .end local v4    # "id3Ver":[B
    :catch_4a
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "MP3ID3ParamUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skipHeaderID3V2 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static skipID3Tag(Ljava/io/RandomAccessFile;)Z
    .registers 8
    .param p0, "raFile"    # Ljava/io/RandomAccessFile;

    .prologue
    const/4 v3, 0x0

    .line 23
    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 24
    .local v0, "currentFilePosn":J
    const-string v4, "MP3ID3ParamUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "skipID3Tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 27
    invoke-static {p0}, Lcom/pantech/app/music/common/MP3ID3ParamUtil;->CheckForTagID3V2(Ljava/io/RandomAccessFile;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 28
    invoke-static {p0}, Lcom/pantech/app/music/common/MP3ID3ParamUtil;->skipHeaderID3V2(Ljava/io/RandomAccessFile;)Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_33} :catch_38

    move-result v4

    if-eqz v4, :cond_37

    .line 29
    const/4 v3, 0x1

    .line 36
    .end local v0    # "currentFilePosn":J
    :cond_37
    :goto_37
    return v3

    .line 32
    :catch_38
    move-exception v2

    .line 33
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "MP3ID3ParamUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MP3ID3Param file exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method
