.class public Lcom/pantech/audiotag/common/ByteOperation;
.super Ljava/lang/Object;
.source "ByteOperation.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertFromInt(I)[B
    .registers 4
    .param p0, "integer"    # I

    .prologue
    .line 82
    const/4 v2, 0x4

    :try_start_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 83
    .local v0, "buff":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 84
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v2

    .line 92
    .end local v0    # "buff":Ljava/nio/ByteBuffer;
    :goto_11
    return-object v2

    .line 87
    :catch_12
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static convertFromInt(II)[B
    .registers 5
    .param p0, "integer"    # I
    .param p1, "byteSize"    # I

    .prologue
    .line 104
    new-array v0, p1, [B

    .line 106
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-lt v1, p1, :cond_6

    .line 111
    return-object v0

    .line 108
    :cond_6
    add-int/lit8 v2, v1, 0x1

    sub-int v2, p1, v2

    mul-int/lit8 v2, v2, 0x8

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static convertFromIntToBinaryString(II)Ljava/lang/String;
    .registers 8
    .param p0, "decValue"    # I
    .param p1, "byteCount"    # I

    .prologue
    .line 140
    const/4 v3, 0x0

    .line 144
    .local v3, "str":Ljava/lang/String;
    :try_start_1
    const-string v2, ""

    .line 146
    .local v2, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    if-lt v1, v4, :cond_2a

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    mul-int/lit8 v4, p1, 0x8

    rsub-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 158
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :goto_29
    return-object v3

    .line 147
    .restart local v1    # "i":I
    .restart local v2    # "s":Ljava/lang/String;
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_3c} :catch_40

    move-result-object v2

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 153
    .end local v1    # "i":I
    .end local v2    # "s":Ljava/lang/String;
    :catch_40
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_29
.end method

.method public static convertToInt([B)I
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    const/4 v5, 0x4

    .line 13
    const/4 v3, 0x4

    .line 14
    .local v3, "size":I
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    .local v0, "buff":Ljava/nio/ByteBuffer;
    new-array v2, v5, [B

    .line 17
    .local v2, "newBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-lt v1, v5, :cond_19

    .line 29
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    return v4

    .line 19
    :cond_19
    array-length v4, p0

    add-int/2addr v4, v1

    if-ge v4, v5, :cond_23

    .line 21
    const/4 v4, 0x0

    aput-byte v4, v2, v1

    .line 17
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 25
    :cond_23
    array-length v4, p0

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x4

    aget-byte v4, p0, v4

    aput-byte v4, v2, v1

    goto :goto_20
.end method

.method public static convertToString([B)Ljava/lang/String;
    .registers 2
    .param p0, "bytes"    # [B

    .prologue
    .line 68
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 69
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public static convertToString([BI)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "encodingType"    # I

    .prologue
    .line 38
    if-eqz p0, :cond_4

    if-gez p1, :cond_6

    .line 39
    :cond_4
    const/4 v2, 0x0

    .line 62
    :goto_5
    return-object v2

    .line 46
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/pantech/audiotag/textcoder/TextCoder;->getTextEncodingCharsetName(I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "charset":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 50
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 51
    .local v2, "value":Ljava/lang/String;
    goto :goto_5

    .line 54
    .end local v2    # "value":Ljava/lang/String;
    :cond_18
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_1d} :catch_1e

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_5

    .line 57
    .end local v0    # "charset":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :catch_1e
    move-exception v1

    .line 59
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .line 60
    .restart local v2    # "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static getBinaryCodeFromString(Ljava/lang/String;I)I
    .registers 5
    .param p0, "binaryString"    # Ljava/lang/String;
    .param p1, "order"    # I

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "temp":Ljava/lang/String;
    if-eqz p0, :cond_9

    .line 293
    add-int/lit8 v2, p1, 0x1

    :try_start_5
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_9
    if-eqz v1, :cond_14

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_e} :catch_10

    move-result v2

    .line 303
    :goto_f
    return v2

    .line 298
    :catch_10
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_14
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public static getIntLE([B)I
    .registers 4
    .param p0, "b"    # [B

    .prologue
    .line 249
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/pantech/audiotag/common/ByteOperation;->getLongLE(Ljava/nio/ByteBuffer;II)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getLongLE(Ljava/nio/ByteBuffer;II)J
    .registers 9
    .param p0, "b"    # Ljava/nio/ByteBuffer;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 255
    const-wide/16 v2, 0x0

    .line 256
    .local v2, "number":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_a

    .line 261
    return-wide v2

    .line 258
    :cond_a
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getSizeLEInt32(I)[B
    .registers 7
    .param p0, "size"    # I

    .prologue
    const-wide/16 v4, 0xff

    .line 270
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 271
    .local v0, "b":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 272
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x8

    int-to-long v2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 273
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x10

    int-to-long v2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 274
    const/4 v1, 0x3

    ushr-int/lit8 v2, p0, 0x18

    int-to-long v2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 275
    return-object v0
.end method

.method public static printHEX(B)V
    .registers 5
    .param p0, "ba"    # B

    .prologue
    .line 242
    const-string v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/pantech/audiotag/common/LLog;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v0, ""

    invoke-static {v0}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public static printHEX(Ljava/lang/String;)V
    .registers 7
    .param p0, "st"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_8

    .line 171
    return-void

    .line 168
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 169
    .local v0, "ch":I
    const-string v2, "%04X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/pantech/audiotag/common/LLog;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static printHEX(Ljava/lang/String;[B)V
    .registers 8
    .param p0, "frontMsg"    # Ljava/lang/String;
    .param p1, "buf"    # [B

    .prologue
    .line 178
    const-string v2, ""

    .line 179
    .local v2, "res":Ljava/lang/String;
    const-string v3, ""

    .line 181
    .local v3, "token":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "ix":I
    :goto_5
    array-length v4, p1

    if-lt v0, v4, :cond_21

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 199
    return-void

    .line 183
    :cond_21
    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_52

    .line 187
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 195
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 191
    :cond_52
    const/4 v1, 0x0

    .local v1, "jx":I
    :goto_53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_38

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_53
.end method

.method public static printHEX([B)V
    .registers 7
    .param p0, "buf"    # [B

    .prologue
    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-lt v1, v2, :cond_a

    .line 234
    const-string v2, ""

    invoke-static {v2}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 235
    return-void

    .line 231
    :cond_a
    aget-byte v0, p0, v1

    .line 232
    .local v0, "c":B
    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/pantech/audiotag/common/LLog;->format(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
