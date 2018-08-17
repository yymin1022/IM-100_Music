.class public Lcom/pantech/audiotag/textcoder/MUTF8Util;
.super Ljava/lang/Object;
.source "MUTF8Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static countBytes(Ljava/lang/String;Z)J
    .registers 10
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "shortLength"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 42
    const-wide/16 v4, 0x0

    .line 43
    .local v4, "result":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 44
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-lt v1, v2, :cond_a

    .line 62
    return-wide v4

    .line 46
    :cond_a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 47
    .local v0, "ch":C
    if-eqz v0, :cond_28

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_28

    .line 49
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 60
    :goto_17
    if-eqz p1, :cond_34

    const-wide/32 v6, 0xffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_34

    new-instance v3, Ljava/io/UTFDataFormatException;

    const-string v6, "String more than 65535 UTF bytes long"

    invoke-direct {v3, v6}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 52
    :cond_28
    const/16 v3, 0x7ff

    if-gt v0, v3, :cond_30

    .line 54
    const-wide/16 v6, 0x2

    add-long/2addr v4, v6

    .line 55
    goto :goto_17

    .line 58
    :cond_30
    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    goto :goto_17

    .line 44
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static encode([BILjava/lang/String;)V
    .registers 8
    .param p0, "dst"    # [B
    .param p1, "offset"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 18
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, p1

    .end local p1    # "offset":I
    .local v3, "offset":I
    :goto_6
    if-lt v1, v2, :cond_9

    .line 38
    return-void

    .line 20
    :cond_9
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 21
    .local v0, "ch":C
    if-eqz v0, :cond_1c

    const/16 v4, 0x7f

    if-gt v0, v4, :cond_1c

    .line 23
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    int-to-byte v4, v0

    aput-byte v4, p0, v3

    .line 18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    move v3, p1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_6

    .line 26
    :cond_1c
    const/16 v4, 0x7ff

    if-gt v0, v4, :cond_36

    .line 28
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 29
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    move p1, v3

    .line 30
    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_18

    .line 33
    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    :cond_36
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 34
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "offset":I
    .restart local v3    # "offset":I
    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    .line 35
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "offset":I
    .restart local p1    # "offset":I
    and-int/lit8 v4, v0, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    goto :goto_18
.end method

.method public static encode(Ljava/lang/String;)[B
    .registers 5
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    .prologue
    .line 9
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/pantech/audiotag/textcoder/MUTF8Util;->countBytes(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    .line 10
    .local v1, "utfCount":I
    new-array v0, v1, [B

    .line 11
    .local v0, "result":[B
    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Lcom/pantech/audiotag/textcoder/MUTF8Util;->encode([BILjava/lang/String;)V

    .line 12
    return-object v0
.end method
