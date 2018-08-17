.class public Lcom/pantech/audiotag/id3/util/ITunesFileUtil;
.super Ljava/lang/Object;
.source "ITunesFileUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFrameFlagIndicatorAndUnsyncForV24(Ljava/nio/ByteBuffer;I[B)[B
    .registers 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "frameLength"    # I
    .param p2, "flagByte"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    const/4 v0, 0x0

    .line 78
    .local v0, "temp":[B
    aget-byte v1, p2, v3

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    .line 80
    const-string v1, "checkFrameFlagIndicatorAndUnsyncForV24: Data indicator length flag is exists"

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    add-int/lit8 p1, p1, -0x4

    .line 83
    new-array v0, p1, [B

    .line 84
    invoke-virtual {p0, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 88
    :cond_1b
    aget-byte v1, p2, v3

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_49

    .line 90
    if-nez v0, :cond_28

    .line 92
    new-array v0, p1, [B

    .line 93
    invoke-virtual {p0, v0, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 96
    :cond_28
    invoke-static {v0}, Lcom/pantech/audiotag/id3/util/Unsynchronization;->removeUnsynchronization([B)[B

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkFrameFlagIndicatorAndUnsyncForV24: Unsynchronization flag is exists >> result origin: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 102
    :cond_49
    return-object v0
.end method

.method public static checkiTunesHackFileTotalFrameSizeV24([BJZ)Z
    .registers 15
    .param p0, "readedData"    # [B
    .param p1, "readableFrameSize"    # J
    .param p3, "iTunesHack"    # Z

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    .local v2, "offset":I
    move-wide v4, p1

    .line 23
    .local v4, "size":J
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 24
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 26
    :goto_b
    add-int/lit8 v7, v2, 0xa

    int-to-long v8, v7

    cmp-long v7, v8, v4

    if-lez v7, :cond_14

    .line 61
    const/4 v6, 0x1

    :goto_13
    return v6

    .line 28
    :cond_14
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 29
    new-array v7, v10, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 31
    new-array v3, v10, [B

    .line 32
    .local v3, "sizeByte":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 36
    if-eqz p3, :cond_5b

    .line 38
    invoke-static {v3}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v1

    .line 51
    .local v1, "dataSize":I
    :cond_27
    add-int v7, v2, v1

    add-int/lit8 v7, v7, 0xa

    int-to-long v8, v7

    cmp-long v7, v8, v4

    if-lez v7, :cond_67

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error: removeUnsynchronizationV24 over the total frame size: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    add-int v8, v2, v1

    add-int/lit8 v8, v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "checkiTunes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 53
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 42
    .end local v1    # "dataSize":I
    :cond_5b
    invoke-static {v3}, Lcom/pantech/audiotag/id3/util/SyncSafeInteger;->convertFromByteToInteger([B)I

    move-result v1

    .line 44
    .restart local v1    # "dataSize":I
    if-gez v1, :cond_27

    .line 46
    const-string v7, "Error: removeUnsynchronizationV24 checkSyncSafeIntegerValid"

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_13

    .line 58
    :cond_67
    add-int/lit8 v7, v1, 0xa

    add-int/2addr v2, v7

    goto :goto_b
.end method
