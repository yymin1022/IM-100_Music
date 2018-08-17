.class public Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;
.super Ljava/lang/Object;
.source "ID3TagTextNewV1.java"


# static fields
.field private static final V1_TAG_NAME:[B

.field private static final V1_TAG_SIZE:I = 0x80


# instance fields
.field mAlbum:Ljava/lang/String;

.field mArtist:Ljava/lang/String;

.field mGenre:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mTrack:Ljava/lang/String;

.field private mV1FullTagByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->V1_TAG_NAME:[B

    .line 24
    return-void

    .line 23
    nop

    :array_a
    .array-data 1
        0x54t
        0x41t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextOld;)V
    .registers 4
    .param p1, "newData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .param p2, "oldData"    # Lcom/pantech/audiotag/id3/data/ID3TagTextOld;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-eqz p1, :cond_28

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mTitle:Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mAlbum:Ljava/lang/String;

    .line 34
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mArtist:Ljava/lang/String;

    .line 35
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mGenre:Ljava/lang/String;

    .line 36
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/pantech/audiotag/AudioFileTagData;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mTrack:Ljava/lang/String;

    .line 39
    :cond_28
    invoke-virtual {p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextOld;->getV1TextMap()Lcom/pantech/audiotag/id3/data/ID3TagTextMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->setFullByteV1Tag(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextMap;)V

    .line 40
    return-void
.end method

.method private getGenreByte(Ljava/lang/String;)B
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "temp":I
    sget-object v1, Lcom/pantech/audiotag/common/util/GenreUtil;->mGenreList:[Ljava/lang/String;

    array-length v1, v1

    if-gt v0, v1, :cond_b

    if-gez v0, :cond_c

    .line 238
    :cond_b
    const/4 v0, -0x1

    .line 241
    :cond_c
    int-to-byte v1, v0

    return v1
.end method

.method private getNumberByte(Ljava/lang/String;)B
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 214
    .local v0, "temp":I
    const/16 v1, 0xff

    if-le v0, v1, :cond_c

    .line 216
    const/16 v0, 0xff

    .line 223
    :cond_a
    :goto_a
    int-to-byte v1, v0

    return v1

    .line 218
    :cond_c
    if-gez v0, :cond_a

    .line 220
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getStringByte(ILjava/lang/String;)[B
    .registers 14
    .param p1, "size"    # I
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 248
    new-array v5, p1, [B

    .line 249
    .local v5, "result":[B
    move v7, p1

    .line 250
    .local v7, "wordSize":I
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 251
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 255
    :try_start_b
    const-string v8, "EUC-KR"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 258
    .local v6, "temp":[B
    array-length v8, v6

    if-le p1, v8, :cond_15

    .line 259
    array-length v7, v6

    .line 261
    :cond_15
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-lt v3, v7, :cond_4d

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, "OddOrEven":I
    add-int/lit8 v4, v7, -0x1

    .local v4, "j":I
    :goto_1b
    if-gez v4, :cond_54

    .line 278
    :cond_1d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "OddOrEven: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " str: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;Z)V

    .line 281
    rem-int/lit8 v8, v0, 0x2

    if-ne v8, v10, :cond_43

    .line 283
    add-int/lit8 v8, p1, -0x1

    const/4 v9, 0x0

    aput-byte v9, v5, v8

    .line 289
    :cond_43
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_46
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_46} :catch_5f
    .catchall {:try_start_b .. :try_end_46} :catchall_66

    .line 297
    const/4 v6, 0x0

    .line 298
    const/4 v5, 0x0

    .line 301
    .end local v0    # "OddOrEven":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :goto_48
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    return-object v8

    .line 262
    .restart local v3    # "i":I
    :cond_4d
    :try_start_4d
    aget-byte v8, v6, v3

    aput-byte v8, v5, v3

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 268
    .restart local v0    # "OddOrEven":I
    .restart local v4    # "j":I
    :cond_54
    aget-byte v8, v5, v4
    :try_end_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4d .. :try_end_56} :catch_5f
    .catchall {:try_start_4d .. :try_end_56} :catchall_66

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_1d

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 266
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 291
    .end local v0    # "OddOrEven":I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "temp":[B
    :catch_5f
    move-exception v2

    .line 293
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_60
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_66

    .line 297
    const/4 v6, 0x0

    .line 298
    .restart local v6    # "temp":[B
    const/4 v5, 0x0

    goto :goto_48

    .line 296
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "temp":[B
    :catchall_66
    move-exception v8

    .line 297
    const/4 v6, 0x0

    .line 298
    .restart local v6    # "temp":[B
    const/4 v5, 0x0

    .line 299
    throw v8
.end method

.method private setFullByteV1Tag(Lcom/pantech/audiotag/AudioFileTagData;Lcom/pantech/audiotag/id3/data/ID3TagTextMap;)V
    .registers 13
    .param p1, "newData"    # Lcom/pantech/audiotag/AudioFileTagData;
    .param p2, "oldID3TagTextMapV1"    # Lcom/pantech/audiotag/id3/data/ID3TagTextMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/16 v6, 0x1e

    const/4 v5, 0x5

    .line 50
    invoke-virtual {p2}, Lcom/pantech/audiotag/id3/data/ID3TagTextMap;->getTextMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 52
    .local v2, "oldDataV1Map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Lcom/pantech/audiotag/data/Data;>;"
    const/16 v3, 0x80

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 56
    sget-object v3, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->V1_TAG_NAME:[B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 58
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_a5

    .line 60
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getStringByte(ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 75
    :goto_26
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mArtist:Ljava/lang/String;

    if-eqz v3, :cond_c9

    .line 77
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mArtist:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getStringByte(ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    :goto_33
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mAlbum:Ljava/lang/String;

    if-eqz v3, :cond_ef

    .line 94
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mAlbum:Ljava/lang/String;

    invoke-direct {p0, v6, v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getStringByte(ILjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 111
    :goto_40
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_115

    .line 113
    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 121
    :goto_5d
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mTrack:Ljava/lang/String;

    if-eqz v3, :cond_12e

    .line 124
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_11c

    .line 126
    const/16 v4, 0x1d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getStringByte(ILjava/lang/String;)[B

    move-result-object v1

    .line 127
    .local v1, "commentByte":[B
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    aput-byte v4, v1, v3

    .line 128
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mTrack:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getNumberByte(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 186
    .end local v1    # "commentByte":[B
    :cond_91
    :goto_91
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mGenre:Ljava/lang/String;

    if-eqz v3, :cond_201

    .line 188
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mGenre:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getGenreByte(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 202
    :goto_9e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mV1FullTagByte:[B

    .line 203
    return-void

    .line 64
    :cond_a5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c2

    .line 66
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_26

    .line 70
    :cond_c2
    new-array v3, v6, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_26

    .line 81
    :cond_c9
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_e8

    .line 83
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_33

    .line 87
    :cond_e8
    new-array v3, v6, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_33

    .line 98
    :cond_ef
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10e

    .line 100
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_40

    .line 104
    :cond_10e
    new-array v3, v6, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_40

    .line 117
    :cond_115
    new-array v3, v9, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_5d

    .line 134
    :cond_11c
    const/16 v3, 0x1d

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 135
    iget-object v3, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mTrack:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->getNumberByte(Ljava/lang/String;)B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_91

    .line 140
    :cond_12e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ID3TagGlobal.getMP3V1Version(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3V1Version()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3V1Version()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1d7

    .line 143
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19b

    .line 145
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 147
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_194

    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_91

    .line 154
    :cond_194
    new-array v3, v8, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_91

    .line 159
    :cond_19b
    const/16 v3, 0x1d

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d0

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 164
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_91

    .line 168
    :cond_1d0
    new-array v3, v8, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_91

    .line 172
    :cond_1d7
    invoke-static {}, Lcom/pantech/audiotag/id3/ID3TagGlobal;->getMP3V1Version()I

    move-result v3

    if-ne v3, v5, :cond_91

    .line 174
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1fa

    .line 176
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_91

    .line 180
    :cond_1fa
    new-array v3, v6, [B

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_91

    .line 192
    :cond_201
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_21e

    .line 194
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/audiotag/data/Data;

    invoke-virtual {v3}, Lcom/pantech/audiotag/data/Data;->getTextByte()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_9e

    .line 198
    :cond_21e
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_9e
.end method


# virtual methods
.method public getV1FullTagByte()[B
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/pantech/audiotag/id3/data/ID3TagTextNewV1;->mV1FullTagByte:[B

    return-object v0
.end method
