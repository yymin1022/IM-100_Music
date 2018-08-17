.class public Lcom/pantech/audiotag/id3/util/Unsynchronization;
.super Ljava/lang/Object;
.source "Unsynchronization.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OldremoveUnsynchronization([B)[B
    .registers 9
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    .line 128
    const-string v4, "removeUnsynchronization"

    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 130
    array-length v2, p0

    .line 131
    .local v2, "size":I
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 133
    .local v3, "temp":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    add-int/lit8 v4, v0, 0x1

    if-lt v4, v2, :cond_1a

    .line 142
    new-array v1, v2, [B

    .line 143
    .local v1, "result":[B
    array-length v4, v1

    invoke-static {v3, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    const/4 v3, 0x0

    .line 146
    return-object v1

    .line 135
    .end local v1    # "result":[B
    :cond_1a
    aget-byte v4, p0, v0

    const/16 v5, 0xff

    if-ne v4, v5, :cond_37

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p0, v4

    if-nez v4, :cond_37

    .line 137
    add-int/lit8 v4, v0, 0x2

    aget-byte v4, p0, v4

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    sub-int v6, v2, v0

    add-int/lit8 v6, v6, -0x2

    invoke-static {p0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    add-int/lit8 v2, v2, -0x1

    .line 133
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method

.method public static insertUnsynchronization([B)[B
    .registers 10
    .param p0, "data"    # [B

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x0

    .line 74
    const-string v5, "insertUnsynchronization()"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    .local v2, "input":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v5, p0

    invoke-direct {v3, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 79
    .local v3, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 81
    .local v0, "count":I
    :cond_14
    :goto_14
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-gtz v5, :cond_30

    .line 111
    array-length v5, p0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v8, :cond_2b

    .line 113
    const-string v5, "Adding unsynchronisation bit at end of File"

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 117
    :cond_2b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 83
    :cond_30
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 84
    .local v1, "first":I
    add-int/lit8 v0, v0, 0x1

    .line 85
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    and-int/lit16 v5, v1, 0xff

    if-ne v5, v8, :cond_14

    .line 90
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    if-lez v5, :cond_14

    .line 92
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 93
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 95
    .local v4, "second":I
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_6a

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unsynchronizaion! postion: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 105
    :cond_66
    :goto_66
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_14

    .line 100
    :cond_6a
    if-nez v4, :cond_66

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Inserting zero unsynchronisation bit! postion: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v3, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_66
.end method

.method public static isRequiresUnsynchronization([B)Z
    .registers 4
    .param p0, "data"    # [B

    .prologue
    .line 52
    const-string v1, "isRequiresUnsynchronization()"

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_d

    .line 63
    const/4 v1, 0x0

    :goto_c
    return v1

    .line 56
    :cond_d
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_26

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xe0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_26

    .line 58
    const-string v1, "Require Unsynchronization"

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 59
    const/4 v1, 0x1

    goto :goto_c

    .line 54
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static removeUnsynchronization([B)[B
    .registers 13
    .param p0, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 13
    const-string v10, "removeUnsynchronization"

    invoke-static {v10}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 15
    array-length v4, p0

    .line 16
    .local v4, "len":I
    add-int/lit8 v10, v4, 0x1

    new-array v6, v10, [B

    .line 18
    .local v6, "testByte":[B
    invoke-static {p0, v9, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    const/4 v2, 0x0

    .line 21
    .local v2, "from":I
    const/4 v7, 0x0

    .line 23
    .local v7, "to":I
    const/4 v1, 0x1

    .local v1, "copy":Z
    move v8, v7

    .end local v7    # "to":I
    .local v8, "to":I
    move v3, v2

    .line 25
    .end local v2    # "from":I
    .local v3, "from":I
    :goto_13
    if-lt v3, v4, :cond_1b

    .line 37
    new-array v5, v8, [B

    .line 39
    .local v5, "result":[B
    invoke-static {v6, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    return-object v5

    .line 27
    .end local v5    # "result":[B
    :cond_1b
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "from":I
    .restart local v2    # "from":I
    aget-byte v0, v6, v3

    .line 29
    .local v0, "byteValue":B
    if-nez v1, :cond_23

    if-eqz v0, :cond_33

    .line 31
    :cond_23
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "to":I
    .restart local v7    # "to":I
    aput-byte v0, v6, v8

    .line 34
    :goto_27
    and-int/lit16 v10, v0, 0xff

    const/16 v11, 0xff

    if-eq v10, v11, :cond_31

    const/4 v1, 0x1

    :goto_2e
    move v8, v7

    .end local v7    # "to":I
    .restart local v8    # "to":I
    move v3, v2

    .end local v2    # "from":I
    .restart local v3    # "from":I
    goto :goto_13

    .end local v3    # "from":I
    .end local v8    # "to":I
    .restart local v2    # "from":I
    .restart local v7    # "to":I
    :cond_31
    move v1, v9

    goto :goto_2e

    .end local v7    # "to":I
    .restart local v8    # "to":I
    :cond_33
    move v7, v8

    .end local v8    # "to":I
    .restart local v7    # "to":I
    goto :goto_27
.end method
