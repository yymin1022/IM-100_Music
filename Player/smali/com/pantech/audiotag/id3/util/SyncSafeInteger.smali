.class public Lcom/pantech/audiotag/id3/util/SyncSafeInteger;
.super Ljava/lang/Object;
.source "SyncSafeInteger.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSyncSafaIntegerValid([B)Z
    .registers 3
    .param p0, "buffer"    # [B

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-lt v0, v1, :cond_6

    .line 56
    const/4 v1, 0x1

    :goto_5
    return v1

    .line 50
    :cond_6
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0x80

    if-lez v1, :cond_e

    .line 52
    const/4 v1, 0x0

    goto :goto_5

    .line 48
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static convertFromByteToInteger([B)I
    .registers 3
    .param p0, "buffer"    # [B

    .prologue
    .line 15
    invoke-static {p0}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->checkSyncSafaIntegerValid([B)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 17
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x15

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 20
    :goto_23
    return v0

    :cond_24
    const/4 v0, -0x1

    goto :goto_23
.end method

.method public static convertFromIntegerToByte(I)[B
    .registers 4
    .param p0, "value"    # I

    .prologue
    .line 30
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 32
    .local v0, "buffer":[B
    const/4 v1, 0x0

    const/high16 v2, 0xfe00000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x15

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 33
    const/4 v1, 0x1

    const v2, 0x1fc000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0xe

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 34
    const/4 v1, 0x2

    and-int/lit16 v2, p0, 0x3f80

    shr-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 35
    const/4 v1, 0x3

    and-int/lit8 v2, p0, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    return-object v0
.end method

.method public static convertSyncSafeIntegerByte([B)I
    .registers 10
    .param p0, "preByte"    # [B

    .prologue
    .line 75
    if-eqz p0, :cond_4f

    .line 77
    :try_start_2
    array-length v3, p0

    .line 79
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-lt v1, v3, :cond_21

    .line 84
    invoke-static {p0}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v6

    invoke-static {v6, v3}, Lcom/pantech/audiotag/common/ByteOperation;->convertFromIntToBinaryString(II)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "temp1":Ljava/lang/String;
    const-string v5, ""

    .line 87
    .local v5, "temp2":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_11
    if-lt v2, v3, :cond_2b

    .line 92
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 93
    const/4 v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 101
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "length":I
    .end local v4    # "temp1":Ljava/lang/String;
    .end local v5    # "temp2":Ljava/lang/String;
    :goto_20
    return v6

    .line 81
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    :cond_21
    aget-byte v6, p0, v1

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, p0, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 89
    .restart local v2    # "j":I
    .restart local v4    # "temp1":Ljava/lang/String;
    .restart local v5    # "temp2":Ljava/lang/String;
    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v7, v2, 0x8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v2, 0x1

    mul-int/lit8 v8, v8, 0x8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_47} :catch_4b

    move-result-object v5

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 96
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "length":I
    .end local v4    # "temp1":Ljava/lang/String;
    .end local v5    # "temp2":Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 101
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_4f
    const/4 v6, -0x1

    goto :goto_20
.end method
