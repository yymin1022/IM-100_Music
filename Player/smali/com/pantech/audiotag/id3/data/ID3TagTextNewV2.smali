.class public Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;
.super Ljava/lang/Object;
.source "ID3TagTextNewV2.java"


# static fields
.field public static final ID3V22_ALBUM_IDENTIFIER:[B

.field public static final ID3V22_ARTIST_IDENTIFIER:[B

.field public static final ID3V22_GENRE_IDENTIFIER:[B

.field public static final ID3V22_NONE_IDENTIFIER:[B

.field public static final ID3V22_TITLE_IDENTIFIER:[B

.field public static final ID3V22_TRACK_IDENTIFIER:[B

.field public static final ID3V22_YEAR_IDENTIFIER:[B

.field public static final ID3V2324_ALBUM_IDENTIFIER:[B

.field public static final ID3V2324_ARTIST_IDENTIFIER:[B

.field public static final ID3V2324_FLAG:[B

.field private static final ID3V2324_FRAME_HEADER_LENGTH:I

.field private static final ID3V2324_FRAME_LENGTH:I = 0x4

.field public static final ID3V2324_GENRE_IDENTIFIER:[B

.field public static final ID3V2324_NONE_IDENTIFIER:[B

.field private static final ID3V2324_SIZE_LENGTH:I = 0x4

.field public static final ID3V2324_TITLE_IDENTIFIER:[B

.field public static final ID3V2324_TRACK_IDENTIFIER:[B

.field public static final ID3V2324_YEAR_IDENTIFIER:[B

.field private static final ID3V2X_EXTRA_LENGTH:I

.field private static final ID3V2X_FRAME_HEADER_LENGTH:I = 0x6

.field private static final ID3V2X_FRAME_LENGTH:I = 0x3

.field private static final ID3V2X_SIZE_LENGTH:I = 0x3

.field private static final UTF_8_ENCODING_BYTE:[B

.field private static final WRITE_TYPE_LIST:[I


# instance fields
.field private mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

.field private mNewTotalSize:J

.field private mOldDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

.field private mOldTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_86

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->WRITE_TYPE_LIST:[I

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->UTF_8_ENCODING_BYTE:[B

    .line 26
    new-array v0, v2, [B

    fill-array-data v0, :array_96

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_NONE_IDENTIFIER:[B

    .line 27
    new-array v0, v2, [B

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_TITLE_IDENTIFIER:[B

    .line 28
    new-array v0, v2, [B

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_ALBUM_IDENTIFIER:[B

    .line 29
    new-array v0, v2, [B

    fill-array-data v0, :array_a8

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_ARTIST_IDENTIFIER:[B

    .line 30
    new-array v0, v2, [B

    fill-array-data v0, :array_ae

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_GENRE_IDENTIFIER:[B

    .line 31
    new-array v0, v2, [B

    fill-array-data v0, :array_b4

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_TRACK_IDENTIFIER:[B

    .line 32
    new-array v0, v2, [B

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_YEAR_IDENTIFIER:[B

    .line 34
    new-array v0, v3, [B

    fill-array-data v0, :array_c0

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_NONE_IDENTIFIER:[B

    .line 35
    new-array v0, v3, [B

    fill-array-data v0, :array_c6

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_TITLE_IDENTIFIER:[B

    .line 36
    new-array v0, v3, [B

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_ALBUM_IDENTIFIER:[B

    .line 37
    new-array v0, v3, [B

    fill-array-data v0, :array_d2

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_ARTIST_IDENTIFIER:[B

    .line 38
    new-array v0, v3, [B

    fill-array-data v0, :array_d8

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_GENRE_IDENTIFIER:[B

    .line 39
    new-array v0, v3, [B

    fill-array-data v0, :array_de

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_TRACK_IDENTIFIER:[B

    .line 40
    new-array v0, v3, [B

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_YEAR_IDENTIFIER:[B

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FLAG:[B

    .line 43
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->UTF_8_ENCODING_BYTE:[B

    array-length v0, v0

    sput v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2X_EXTRA_LENGTH:I

    .line 49
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FLAG:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FRAME_HEADER_LENGTH:I

    return-void

    .line 23
    :array_86
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
    .end array-data

    .line 26
    :array_96
    .array-data 1
        0x4et
        0x4ft
        0x4et
    .end array-data

    .line 27
    :array_9c
    .array-data 1
        0x54t
        0x54t
        0x32t
    .end array-data

    .line 28
    :array_a2
    .array-data 1
        0x54t
        0x41t
        0x4ct
    .end array-data

    .line 29
    :array_a8
    .array-data 1
        0x54t
        0x50t
        0x31t
    .end array-data

    .line 30
    :array_ae
    .array-data 1
        0x54t
        0x43t
        0x4ft
    .end array-data

    .line 31
    :array_b4
    .array-data 1
        0x54t
        0x52t
        0x4bt
    .end array-data

    .line 32
    :array_ba
    .array-data 1
        0x54t
        0x59t
        0x45t
    .end array-data

    .line 34
    :array_c0
    .array-data 1
        0x4et
        0x4ft
        0x4et
        0x45t
    .end array-data

    .line 35
    :array_c6
    .array-data 1
        0x54t
        0x49t
        0x54t
        0x32t
    .end array-data

    .line 36
    :array_cc
    .array-data 1
        0x54t
        0x41t
        0x4ct
        0x42t
    .end array-data

    .line 37
    :array_d2
    .array-data 1
        0x54t
        0x50t
        0x45t
        0x31t
    .end array-data

    .line 38
    :array_d8
    .array-data 1
        0x54t
        0x43t
        0x4ft
        0x4et
    .end array-data

    .line 39
    :array_de
    .array-data 1
        0x54t
        0x52t
        0x43t
        0x4bt
    .end array-data

    .line 40
    :array_e4
    .array-data 1
        0x54t
        0x59t
        0x45t
        0x52t
    .end array-data
.end method

.method public constructor <init>(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextOld;)V
    .registers 4
    .param p1, "userData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .param p2, "oldData"    # Lcom/pantech/audiotag/id3/data/ID3TagTextOld;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-direct {v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    .line 59
    invoke-virtual {p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->getV2TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mOldDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    .line 61
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mOldDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-direct {p0, p1, v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->setIsNewStringByCompare(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextMap;)V

    .line 63
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mOldDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-direct {p0, v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->setOldDataSize(Lcom/pantech/audiotag/id3/data/ID3TagTextMap;)V

    .line 65
    invoke-direct {p0}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->setNewStringToByte()V

    .line 66
    return-void
.end method

.method private checkIsNewData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "newStr"    # Ljava/lang/String;
    .param p2, "oldStr"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x1

    .line 119
    .local v0, "result":Z
    if-nez p1, :cond_4

    .line 120
    const/4 v0, 0x0

    .line 122
    :cond_4
    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 123
    const/4 v0, 0x0

    .line 125
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkIsNewData() result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newStr/oldStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 127
    return v0
.end method

.method private checkNotSameData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "newStr"    # Ljava/lang/String;
    .param p2, "oldStr"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x1

    .line 144
    .local v0, "result":Z
    if-nez p1, :cond_4

    .line 145
    const/4 v0, 0x0

    .line 147
    :cond_4
    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    .line 149
    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkNotSameData() >> newStr("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") same oldStr("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    .line 156
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkNotSameData() result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newStr/oldStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 158
    return v0
.end method

.method private getByteFromString(Ljava/lang/String;I)[B
    .registers 14
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/nio/BufferOverflowException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 215
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getByteFromString str: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v7

    .line 220
    .local v7, "version":I
    const/4 v2, 0x0

    .line 222
    .local v2, "identifier":[B
    const/4 v0, 0x0

    .line 223
    .local v0, "addSize":I
    const/4 v6, 0x0

    .line 224
    .local v6, "totalByteSize":I
    const/4 v3, 0x0

    .line 226
    .local v3, "originalFrameSize":I
    packed-switch v7, :pswitch_data_ce

    .line 242
    sget v8, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FRAME_HEADER_LENGTH:I

    sget v9, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2X_EXTRA_LENGTH:I

    add-int v0, v8, v9

    .line 243
    invoke-direct {p0, p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getV23V24Identifier(I)[B

    move-result-object v2

    .line 247
    :goto_32
    invoke-static {p1}, Lcom/pantech/audiotag/textcoder/MUTF8Util;->encode(Ljava/lang/String;)[B

    move-result-object v5

    .line 248
    .local v5, "strByte":[B
    array-length v8, v5

    add-int v6, v8, v0

    .line 249
    array-length v8, v5

    sget v9, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2X_EXTRA_LENGTH:I

    add-int v3, v8, v9

    .line 250
    new-array v4, v6, [B

    .line 251
    .local v4, "result":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 252
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 255
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 258
    packed-switch v7, :pswitch_data_d8

    .line 278
    invoke-static {v3, v10}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromInt(II)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 279
    sget-object v8, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FLAG:[B

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 283
    :goto_59
    sget-object v8, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->UTF_8_ENCODING_BYTE:[B

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 285
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 287
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 288
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/pantech/audiotag/data/Data;->getTypeString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX(Ljava/lang/String;[B)V

    .line 292
    const/4 v5, 0x0

    .line 293
    const/4 v2, 0x0

    .line 295
    int-to-long v8, v3

    invoke-direct {p0, v8, v9, p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->setTotalSize(JI)V

    .line 297
    return-object v4

    .line 230
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "result":[B
    .end local v5    # "strByte":[B
    :pswitch_89
    sget v8, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2X_EXTRA_LENGTH:I

    add-int/lit8 v0, v8, 0x6

    .line 231
    invoke-direct {p0, p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getV22Identifier(I)[B

    move-result-object v2

    .line 232
    goto :goto_32

    .line 237
    :pswitch_92
    sget v8, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FRAME_HEADER_LENGTH:I

    sget v9, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2X_EXTRA_LENGTH:I

    add-int v0, v8, v9

    .line 238
    invoke-direct {p0, p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getV23V24Identifier(I)[B

    move-result-object v2

    .line 239
    goto :goto_32

    .line 261
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "result":[B
    .restart local v5    # "strByte":[B
    :pswitch_9d
    const/4 v8, 0x3

    invoke-static {v3, v8}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromInt(II)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_59

    .line 265
    :pswitch_a6
    invoke-static {v3, v10}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromInt(II)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 266
    sget-object v8, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FLAG:[B

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_59

    .line 270
    :pswitch_b3
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getiTunesHackFile()Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 271
    invoke-static {v3, v10}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromInt(II)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 275
    :goto_c0
    sget-object v8, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FLAG:[B

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_59

    .line 273
    :cond_c6
    invoke-static {v3}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->convertFromIntegerToByte(I)[B

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_c0

    .line 226
    :pswitch_data_ce
    .packed-switch 0x2
        :pswitch_89
        :pswitch_92
        :pswitch_92
    .end packed-switch

    .line 258
    :pswitch_data_d8
    .packed-switch 0x2
        :pswitch_9d
        :pswitch_a6
        :pswitch_b3
    .end packed-switch
.end method

.method private getV22Identifier(I)[B
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 303
    packed-switch p1, :pswitch_data_18

    .line 311
    :pswitch_3
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_NONE_IDENTIFIER:[B

    :goto_5
    return-object v0

    .line 305
    :pswitch_6
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_TITLE_IDENTIFIER:[B

    goto :goto_5

    .line 306
    :pswitch_9
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_ALBUM_IDENTIFIER:[B

    goto :goto_5

    .line 307
    :pswitch_c
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_ARTIST_IDENTIFIER:[B

    goto :goto_5

    .line 308
    :pswitch_f
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_GENRE_IDENTIFIER:[B

    goto :goto_5

    .line 309
    :pswitch_12
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_TRACK_IDENTIFIER:[B

    goto :goto_5

    .line 310
    :pswitch_15
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V22_YEAR_IDENTIFIER:[B

    goto :goto_5

    .line 303
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_f
        :pswitch_12
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method

.method private getV23V24Identifier(I)[B
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 318
    packed-switch p1, :pswitch_data_18

    .line 326
    :pswitch_3
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_NONE_IDENTIFIER:[B

    :goto_5
    return-object v0

    .line 320
    :pswitch_6
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_TITLE_IDENTIFIER:[B

    goto :goto_5

    .line 321
    :pswitch_9
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_ALBUM_IDENTIFIER:[B

    goto :goto_5

    .line 322
    :pswitch_c
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_ARTIST_IDENTIFIER:[B

    goto :goto_5

    .line 323
    :pswitch_f
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_GENRE_IDENTIFIER:[B

    goto :goto_5

    .line 324
    :pswitch_12
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_TRACK_IDENTIFIER:[B

    goto :goto_5

    .line 325
    :pswitch_15
    sget-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_YEAR_IDENTIFIER:[B

    goto :goto_5

    .line 318
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_9
        :pswitch_f
        :pswitch_12
        :pswitch_3
        :pswitch_15
    .end packed-switch
.end method

.method private setIsNewStringByCompare(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextMap;)V
    .registers 10
    .param p1, "userData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .param p2, "oldID3TagTextMapV2"    # Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    .prologue
    .line 75
    invoke-virtual {p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 78
    .local v4, "oldTextMapV2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    sget-object v5, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->WRITE_TYPE_LIST:[I

    array-length v5, v5

    if-lt v0, v5, :cond_19

    .line 91
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_47

    .line 106
    return-void

    .line 80
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :cond_19
    new-instance v2, Lcom/pantech/audiotag/data/Data;

    invoke-direct {v2}, Lcom/pantech/audiotag/data/Data;-><init>()V

    .line 81
    .local v2, "newItem":Lcom/pantech/audiotag/data/Data;
    sget-object v5, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->WRITE_TYPE_LIST:[I

    aget v5, v5, v0

    invoke-virtual {v2, v5}, Lcom/pantech/audiotag/data/Data;->setType(I)V

    .line 82
    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3b

    .line 83
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/pantech/audiotag/data/Data;->setWrite(Z)V

    .line 87
    :goto_33
    iget-object v5, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v5, v2}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->putDataInMap(Lcom/pantech/audiotag/data/Data;)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 85
    :cond_3b
    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/pantech/audiotag/data/Data;->setText(Ljava/lang/String;)V

    goto :goto_33

    .line 94
    .end local v2    # "newItem":Lcom/pantech/audiotag/data/Data;
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :cond_47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    .line 97
    .local v3, "oldItem":Lcom/pantech/audiotag/data/Data;
    iget-object v5, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getDataInMap(I)Lcom/pantech/audiotag/data/Data;

    move-result-object v2

    .line 98
    .restart local v2    # "newItem":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/pantech/audiotag/data/Data;->setType(I)V

    .line 99
    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->checkNotSameData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/pantech/audiotag/data/Data;->setWrite(Z)V

    .line 100
    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->checkIsNewData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/pantech/audiotag/data/Data;->setNew(Z)V

    .line 101
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/pantech/audiotag/data/Data;->setOld(Z)V

    .line 104
    iget-object v5, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v5, v2}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->insertOrReplaceDataInMap(Lcom/pantech/audiotag/data/Data;)V

    goto :goto_12
.end method

.method private setNewStringToByte()V
    .registers 6

    .prologue
    .line 169
    :try_start_0
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getValueIterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_d

    .line 198
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :goto_c
    return-void

    .line 172
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/audiotag/data/Data;

    .line 173
    .local v2, "item":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->isWrite()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 174
    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->getByteFromString(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/audiotag/data/Data;->setTextByte([B)V

    .line 177
    :cond_28
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v3, v2}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->insertOrReplaceDataInMap(Lcom/pantech/audiotag/data/Data;)V
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2d} :catch_2e
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_2d} :catch_33
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_2d} :catch_38
    .catch Ljava/io/UTFDataFormatException; {:try_start_0 .. :try_end_2d} :catch_3d

    goto :goto_6

    .line 180
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    .end local v2    # "item":Lcom/pantech/audiotag/data/Data;
    :catch_2e
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_c

    .line 184
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_33
    move-exception v0

    .line 186
    .local v0, "e":Ljava/nio/BufferOverflowException;
    invoke-virtual {v0}, Ljava/nio/BufferOverflowException;->printStackTrace()V

    goto :goto_c

    .line 188
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    :catch_38
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_c

    .line 193
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3d
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/UTFDataFormatException;
    invoke-virtual {v0}, Ljava/io/UTFDataFormatException;->printStackTrace()V

    goto :goto_c
.end method

.method private setOldDataSize(Lcom/pantech/audiotag/id3/data/ID3TagTextMap;)V
    .registers 8
    .param p1, "oldID3TagTextMapV2"    # Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    .prologue
    .line 401
    const-wide/16 v2, 0x0

    .line 403
    .local v2, "oldStrSize":J
    invoke-virtual {p1}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getValueIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_f

    .line 410
    iput-wide v2, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mOldTotalSize:J

    .line 411
    return-void

    .line 405
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/audiotag/data/Data;

    .line 407
    .local v1, "item":Lcom/pantech/audiotag/data/Data;
    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->getFrameSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_6
.end method

.method private setTotalSize(JI)V
    .registers 9
    .param p1, "totalSize"    # J
    .param p3, "type"    # I

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "addCount":I
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3Version()I

    move-result v2

    packed-switch v2, :pswitch_data_26

    .line 345
    sget v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FRAME_HEADER_LENGTH:I

    .line 350
    :goto_a
    iget-object v2, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v2, p3}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getDataInMap(I)Lcom/pantech/audiotag/data/Data;

    move-result-object v1

    .line 352
    .local v1, "item":Lcom/pantech/audiotag/data/Data;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->isNew()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 353
    int-to-long v2, v0

    add-long/2addr p1, v2

    .line 355
    :cond_1a
    iget-wide v2, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewTotalSize:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewTotalSize:J

    .line 356
    return-void

    .line 342
    .end local v1    # "item":Lcom/pantech/audiotag/data/Data;
    :pswitch_20
    const/4 v0, 0x6

    goto :goto_a

    .line 344
    :pswitch_22
    sget v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->ID3V2324_FRAME_HEADER_LENGTH:I

    goto :goto_a

    .line 340
    nop

    :pswitch_data_26
    .packed-switch 0x2
        :pswitch_20
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public getCalculateGapSize()J
    .registers 11

    .prologue
    .line 378
    iget-wide v6, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewTotalSize:J

    iget-wide v8, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mOldTotalSize:J

    sub-long v4, v6, v8

    .line 380
    .local v4, "totalGapSize":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "getCalculateGapSize START totalGapSize: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " NEW/OLD: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewTotalSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mOldTotalSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mOldDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getValueIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/pantech/audiotag/data/Data;>;"
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4f

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "getCalculateGapSize END totalGapSize: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 395
    return-wide v4

    .line 384
    :cond_4f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/audiotag/data/Data;

    .line 385
    .local v2, "oldItem":Lcom/pantech/audiotag/data/Data;
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getDataInMap(I)Lcom/pantech/audiotag/data/Data;

    move-result-object v1

    .line 387
    .local v1, "item":Lcom/pantech/audiotag/data/Data;
    if-eqz v1, :cond_73

    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->isWrite()Z

    move-result v3

    if-nez v3, :cond_73

    invoke-virtual {v1}, Lcom/pantech/audiotag/data/Data;->isOld()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 388
    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getFrameSize()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 390
    :cond_73
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "type: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getType()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " data.getFrameSize(): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/pantech/audiotag/data/Data;->getFrameSize()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    goto :goto_36
.end method

.method public getTotalSize()J
    .registers 3

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewTotalSize:J

    return-wide v0
.end method

.method public getV2TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV2;->mNewDataMapV2:Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    return-object v0
.end method
