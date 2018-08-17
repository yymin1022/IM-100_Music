.class public Lcom/pantech/audiotag/textcoder/TextDecoding;
.super Lcom/pantech/audiotag/textcoder/TextCoder;
.source "TextDecoding.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/pantech/audiotag/textcoder/TextCoder;-><init>()V

    return-void
.end method

.method private static byteToStringWithEncoding([BII)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "size"    # I
    .param p2, "encoding"    # I

    .prologue
    const/4 v3, 0x0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 164
    new-array v0, p1, [B

    .line 166
    .local v0, "results":[B
    array-length v1, v0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 169
    invoke-static {v0, p2}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([BI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEncodingTypeByByte(I[BLjava/lang/String;)I
    .registers 6
    .param p0, "encodingType"    # I
    .param p1, "bytes"    # [B
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 342
    move v0, p0

    .line 345
    .local v0, "encoding":I
    const/16 v1, 0x10

    if-ne p0, v1, :cond_21

    .line 347
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KOR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 349
    :cond_1f
    const/16 v0, 0x8

    .line 377
    :cond_21
    :goto_21
    return v0

    .line 359
    :cond_22
    const/16 v0, 0x8

    .line 362
    invoke-static {p1}, Lcom/pantech/audiotag/textcoder/TextEncodingUtil;->getEncodingTypeISO8859([B)I

    move-result v1

    and-int/2addr v0, v1

    .line 364
    if-nez v0, :cond_4a

    .line 366
    const/16 v0, 0x8

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------ ISO-8859-1 check has none. set Default locale :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-static {v0}, Lcom/pantech/audiotag/textcoder/TextCoder;->getTextEncodingCharsetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_21

    .line 372
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "------------ ISO-8859-1 check encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pantech/audiotag/textcoder/TextCoder;->getTextEncodingCharsetName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    goto :goto_21
.end method

.method private static getISOAndUTF8StringByte(Ljava/nio/ByteBuffer;I)[B
    .registers 11
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v3, 0x0

    .line 281
    .local v3, "offset":I
    const/4 v2, 0x1

    .line 283
    .local v2, "numRead":I
    :try_start_2
    new-array v0, p1, [B

    .line 289
    .local v0, "bytes":[B
    :goto_4
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 291
    add-int v6, v3, v2

    if-lt v6, p1, :cond_30

    .line 294
    add-int/2addr v3, v2

    .line 307
    :goto_d
    if-gt p1, v3, :cond_38

    .line 309
    const-string v6, "Warning: Data longer than frameLen: calculate size by length"

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 310
    move v5, p1

    .line 318
    .local v5, "strLength":I
    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getISOAndUTF8StringByte: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 320
    new-array v4, v5, [B

    .line 321
    .local v4, "results":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    .end local v0    # "bytes":[B
    .end local v4    # "results":[B
    .end local v5    # "strLength":I
    :goto_2f
    return-object v4

    .line 298
    .restart local v0    # "bytes":[B
    :cond_30
    aget-byte v6, v0, v3

    if-nez v6, :cond_36

    .line 300
    add-int/2addr v3, v2

    .line 301
    goto :goto_d

    .line 304
    :cond_36
    add-int/2addr v3, v2

    .line 285
    goto :goto_4

    .line 314
    :cond_38
    const-string v6, "Warning: Data less than length"

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3d} :catch_3f

    .line 315
    move v5, v3

    .restart local v5    # "strLength":I
    goto :goto_15

    .line 325
    .end local v0    # "bytes":[B
    .end local v5    # "strLength":I
    :catch_3f
    move-exception v1

    .line 327
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 328
    const/4 v4, 0x0

    goto :goto_2f
.end method

.method public static getStringBySizeWithEncode(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "encoding"    # I
    .param p2, "length"    # I
    .param p3, "otherUsedByte"    # I
    .param p4, "locale"    # Ljava/lang/String;

    .prologue
    .line 23
    sparse-switch p1, :sswitch_data_10

    .line 36
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 29
    :sswitch_5
    invoke-static {p0, p1, p2, p3}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringUnicodeWith(Ljava/nio/ByteBuffer;III)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 33
    :sswitch_a
    invoke-static {p0, p1, p2, p3, p4}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringISOAndUTF8(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 23
    nop

    :sswitch_data_10
    .sparse-switch
        0x10 -> :sswitch_a
        0x20 -> :sswitch_5
        0x40 -> :sswitch_5
        0x80 -> :sswitch_5
        0x100 -> :sswitch_5
        0x200 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getStringByte(Ljava/nio/ByteBuffer;II)[B
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "encoding"    # I
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    sparse-switch p1, :sswitch_data_14

    .line 204
    :goto_4
    return-object v1

    .line 191
    :sswitch_5
    :try_start_5
    invoke-static {p0, p2}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getUnicodeStringByte(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    goto :goto_4

    .line 195
    :sswitch_a
    invoke-static {p0, p2}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getISOAndUTF8StringByte(Ljava/nio/ByteBuffer;I)[B
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_4

    .line 201
    :catch_f
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 185
    :sswitch_data_14
    .sparse-switch
        0x10 -> :sswitch_a
        0x20 -> :sswitch_5
        0x40 -> :sswitch_5
        0x80 -> :sswitch_5
        0x100 -> :sswitch_5
        0x200 -> :sswitch_a
    .end sparse-switch
.end method

.method private static getStringISOAndUTF8(Ljava/nio/ByteBuffer;IIILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "encoding"    # I
    .param p2, "length"    # I
    .param p3, "otherUsedByte"    # I
    .param p4, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 112
    const/4 v4, 0x0

    .line 116
    .local v4, "tempBuffer":Ljava/nio/ByteBuffer;
    sub-int v2, p2, p3

    .line 118
    .local v2, "getSize":I
    :try_start_4
    new-array v0, v2, [B

    .line 120
    .local v0, "bytes":[B
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 123
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 124
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 125
    invoke-static {v4, p1, v2}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringByte(Ljava/nio/ByteBuffer;II)[B

    move-result-object v3

    .line 127
    .local v3, "resultByte":[B
    if-eqz v3, :cond_25

    array-length v6, v3

    if-lez v6, :cond_25

    .line 131
    invoke-static {p1, v3, p4}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getEncodingTypeByByte(I[BLjava/lang/String;)I

    move-result p1

    .line 133
    array-length v6, v3

    invoke-static {v3, v6, p1}, Lcom/pantech/audiotag/textcoder/TextDecoding;->byteToStringWithEncoding([BII)Ljava/lang/String;

    move-result-object v5

    .line 148
    const/4 v4, 0x0

    .line 144
    .end local v0    # "bytes":[B
    .end local v3    # "resultByte":[B
    :goto_24
    return-object v5

    .line 137
    .restart local v0    # "bytes":[B
    .restart local v3    # "resultByte":[B
    :cond_25
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getStringISOAndUTF8 result byte is Error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_39
    .catchall {:try_start_4 .. :try_end_37} :catchall_3f

    .line 148
    const/4 v4, 0x0

    .line 138
    goto :goto_24

    .line 141
    .end local v0    # "bytes":[B
    .end local v3    # "resultByte":[B
    :catch_39
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3a
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3f

    .line 148
    const/4 v4, 0x0

    .line 144
    goto :goto_24

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_3f
    move-exception v5

    .line 148
    const/4 v4, 0x0

    .line 149
    throw v5
.end method

.method private static getStringUnicodeWith(Ljava/nio/ByteBuffer;III)Ljava/lang/String;
    .registers 13
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "encoding"    # I
    .param p2, "length"    # I
    .param p3, "otherUsedByte"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 52
    const/4 v5, 0x0

    .line 56
    .local v5, "tempBuffer":Ljava/nio/ByteBuffer;
    sub-int v2, p2, p3

    .line 58
    .local v2, "getSize":I
    :try_start_5
    new-array v0, v2, [B

    .line 60
    .local v0, "bytes":[B
    const/4 v7, 0x0

    invoke-virtual {p0, v0, v7, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 63
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 64
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 65
    invoke-static {v5, p1, v2}, Lcom/pantech/audiotag/textcoder/TextDecoding;->getStringByte(Ljava/nio/ByteBuffer;II)[B

    move-result-object v3

    .line 67
    .local v3, "resultByte":[B
    if-eqz v3, :cond_41

    array-length v7, v3

    if-le v7, v8, :cond_41

    .line 70
    const/16 v7, 0x20

    if-eq p1, v7, :cond_23

    const/16 v7, 0x40

    if-ne p1, v7, :cond_3a

    .line 72
    :cond_23
    const/4 v7, 0x2

    new-array v4, v7, [B

    .line 73
    .local v4, "temp":[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-byte v8, v3, v8

    aput-byte v8, v4, v7

    .line 74
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-byte v8, v3, v8

    aput-byte v8, v4, v7

    .line 75
    invoke-static {v4}, Lcom/pantech/audiotag/textcoder/TextEncodingUtil;->checkUTF16BOM([B)I

    move-result p1

    .line 77
    if-gez p1, :cond_3a

    .line 78
    const/16 p1, 0x100

    .line 81
    .end local v4    # "temp":[B
    :cond_3a
    array-length v7, v3

    invoke-static {v3, v7, p1}, Lcom/pantech/audiotag/textcoder/TextDecoding;->byteToStringWithEncoding([BII)Ljava/lang/String;

    move-result-object v6

    .line 96
    const/4 v5, 0x0

    .line 92
    .end local v0    # "bytes":[B
    .end local v3    # "resultByte":[B
    :goto_40
    return-object v6

    .line 85
    .restart local v0    # "bytes":[B
    .restart local v3    # "resultByte":[B
    :cond_41
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getStringUnicodeWith result byte is Error: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_53} :catch_55
    .catchall {:try_start_5 .. :try_end_53} :catchall_5b

    .line 96
    const/4 v5, 0x0

    .line 86
    goto :goto_40

    .line 89
    .end local v0    # "bytes":[B
    .end local v3    # "resultByte":[B
    :catch_55
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    :try_start_56
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5b

    .line 96
    const/4 v5, 0x0

    .line 92
    goto :goto_40

    .line 95
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_5b
    move-exception v6

    .line 96
    const/4 v5, 0x0

    .line 97
    throw v6
.end method

.method public static getSystemLocale()I
    .registers 3

    .prologue
    .line 387
    const/16 v0, 0x8

    .line 389
    .local v0, "encoding":I
    invoke-static {}, Lcom/pantech/audiotag/common/Global;->getSystemLocale()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, "systemLocale":Ljava/lang/String;
    if-eqz v1, :cond_1d

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 393
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 395
    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 396
    const/4 v0, 0x1

    .line 406
    :cond_1d
    :goto_1d
    return v0

    .line 397
    :cond_1e
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 399
    const/4 v0, 0x2

    .line 401
    const-string v2, "zh_TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 402
    const/4 v0, 0x4

    goto :goto_1d
.end method

.method private static getUnicodeStringByte(Ljava/nio/ByteBuffer;I)[B
    .registers 11
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I

    .prologue
    .line 219
    const/4 v3, 0x0

    .line 220
    .local v3, "offset":I
    const/4 v2, 0x2

    .line 222
    .local v2, "numRead":I
    :try_start_2
    new-array v0, p1, [B

    .line 226
    .local v0, "bytes":[B
    :goto_4
    const/4 v6, 0x2

    invoke-virtual {p0, v0, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 228
    add-int v6, v3, v2

    if-lt v6, p1, :cond_30

    .line 230
    add-int/2addr v3, v2

    .line 243
    :goto_d
    if-gt p1, v3, :cond_3e

    .line 245
    const-string v6, "Warning: Data longer than length: calculate size by length"

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->v(Ljava/lang/String;)V

    .line 246
    move v5, p1

    .line 254
    .local v5, "strLength":I
    :goto_15
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getUnicodeStringLength: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 256
    new-array v4, v5, [B

    .line 257
    .local v4, "results":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    .end local v0    # "bytes":[B
    .end local v4    # "results":[B
    .end local v5    # "strLength":I
    :goto_2f
    return-object v4

    .line 234
    .restart local v0    # "bytes":[B
    :cond_30
    aget-byte v6, v0, v3

    if-nez v6, :cond_3c

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v0, v6

    if-nez v6, :cond_3c

    .line 236
    add-int/2addr v3, v2

    .line 237
    goto :goto_d

    .line 240
    :cond_3c
    add-int/2addr v3, v2

    .line 224
    goto :goto_4

    .line 250
    :cond_3e
    const-string v6, "Warning: Data less than length"

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_45

    .line 251
    move v5, v3

    .restart local v5    # "strLength":I
    goto :goto_15

    .line 261
    .end local v0    # "bytes":[B
    .end local v5    # "strLength":I
    :catch_45
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const/4 v4, 0x0

    goto :goto_2f
.end method

.method public static parsePaddingData(Lcom/pantech/audiotag/AudioFileStream;)V
    .registers 5
    .param p0, "ifs"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 425
    .local v0, "count":I
    :goto_1
    invoke-virtual {p0}, Lcom/pantech/audiotag/AudioFileStream;->mark()Z

    .line 427
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v1

    .line 429
    .local v1, "temp":[B
    if-eqz v1, :cond_28

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_28

    .line 431
    invoke-virtual {p0}, Lcom/pantech/audiotag/AudioFileStream;->reset()Z

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsePaddingData count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 433
    return-void

    .line 437
    :cond_28
    add-int/lit8 v0, v0, 0x1

    .line 423
    goto :goto_1
.end method
