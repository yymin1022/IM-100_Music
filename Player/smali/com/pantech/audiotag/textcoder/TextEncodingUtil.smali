.class public Lcom/pantech/audiotag/textcoder/TextEncodingUtil;
.super Lcom/pantech/audiotag/textcoder/TextCoder;
.source "TextEncodingUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/pantech/audiotag/textcoder/TextCoder;-><init>()V

    return-void
.end method

.method public static checkUTF16BOM([B)I
    .registers 7
    .param p0, "temp"    # [B

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0xfe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    const/4 v0, -0x1

    .line 17
    .local v0, "encoding":I
    invoke-static {p0}, Lcom/pantech/audiotag/common/ByteOperation;->printHEX([B)V

    .line 19
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v5, :cond_2f

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xfe

    if-ne v1, v4, :cond_2f

    .line 20
    const/16 v0, 0x100

    .line 27
    :cond_18
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkUTF16BOM() BOM= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 29
    return v0

    .line 21
    :cond_2f
    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xfe

    if-ne v1, v4, :cond_18

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v5, :cond_18

    .line 22
    const/16 v0, 0x80

    goto :goto_18
.end method

.method public static getEncodingTypeISO8859([B)I
    .registers 8
    .param p0, "bytes"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 60
    const/16 v1, 0xf

    .line 61
    .local v1, "encoding":I
    const/4 v2, 0x0

    .line 62
    .local v2, "i":I
    const/4 v4, 0x2

    new-array v0, v4, [B

    .line 64
    .local v0, "b":[B
    :goto_8
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_20

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getEncodingTypeISO8859() result encoding: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 90
    return v1

    .line 66
    :cond_20
    aget-byte v4, p0, v2

    aput-byte v4, v0, v5

    .line 68
    aget-byte v4, v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2d

    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    goto :goto_8

    .line 74
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p0, v2

    aput-byte v4, v0, v6

    .line 75
    aget-byte v4, v0, v6

    and-int/lit16 v3, v4, 0xff

    .line 77
    .local v3, "temp":I
    const/16 v4, 0x40

    if-ge v3, v4, :cond_3e

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    goto :goto_8

    .line 83
    :cond_3e
    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v4

    invoke-static {v4}, Lcom/pantech/audiotag/textcoder/TextEncoding;->findPossibleEncodings(I)I

    move-result v4

    and-int/2addr v1, v4

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method
