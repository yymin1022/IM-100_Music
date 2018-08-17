.class public Lcom/pantech/audiotag/AudioFileStream;
.super Ljava/lang/Object;
.source "AudioFileStream.java"


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;

.field private mFileSize:J

.field private mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

.field private mIs_offset:J

.field private mMark_offset:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    if-eqz v1, :cond_9

    .line 51
    iget-object v1, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    invoke-virtual {v1}, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->close()V

    .line 53
    :cond_9
    iget-object v1, p0, Lcom/pantech/audiotag/AudioFileStream;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_12

    .line 54
    iget-object v1, p0, Lcom/pantech/audiotag/AudioFileStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    .line 60
    :cond_12
    :goto_12
    return-void

    .line 56
    :catch_13
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    goto :goto_12
.end method

.method public getCurrentAvailablePosition()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    invoke-virtual {v0}, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->available()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCurrentReadPosition()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J

    return-wide v0
.end method

.method public getFile()Ljava/io/RandomAccessFile;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mFileSize:J

    return-wide v0
.end method

.method public mark()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    if-eqz v0, :cond_12

    .line 153
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    iget-wide v2, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->mark(I)V

    .line 154
    iget-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J

    iput-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mMark_offset:J

    .line 155
    const/4 v0, 0x1

    .line 158
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public open(Ljava/lang/String;)Z
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    iput-wide v2, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J

    .line 26
    iput-wide v2, p0, Lcom/pantech/audiotag/AudioFileStream;->mFileSize:J

    .line 28
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mFile:Ljava/io/RandomAccessFile;

    .line 29
    new-instance v0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    iget-object v1, p0, Lcom/pantech/audiotag/AudioFileStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-direct {v0, v1}, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    .line 31
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mFileSize:J

    .line 33
    iget-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mFileSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public readBySize(I)[B
    .registers 10
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    :try_start_1
    iget-object v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    if-nez v4, :cond_7

    move-object v0, v3

    .line 121
    :cond_6
    :goto_6
    return-object v0

    .line 107
    :cond_7
    new-array v0, p1, [B

    .line 108
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 110
    .local v2, "numRead":I
    iget-object v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, p1}, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->read([BII)I

    move-result v2

    .line 111
    iget-wide v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1b

    .line 113
    if-eq v2, p1, :cond_6

    move-object v0, v3

    .line 114
    goto :goto_6

    .line 116
    .end local v0    # "bytes":[B
    .end local v2    # "numRead":I
    :catch_1b
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 118
    goto :goto_6
.end method

.method public reset()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    if-eqz v0, :cond_13

    .line 171
    iget-object v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    invoke-virtual {v0}, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->reset()V

    .line 172
    iget-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mMark_offset:J

    iput-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J

    .line 173
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/audiotag/AudioFileStream;->mMark_offset:J

    .line 174
    const/4 v0, 0x1

    .line 177
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public skip(J)Z
    .registers 10
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    :try_start_1
    iget-object v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    if-nez v4, :cond_6

    .line 89
    :cond_5
    :goto_5
    return v1

    .line 76
    :cond_6
    iget-object v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs:Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;

    invoke-virtual {v4, p1, p2}, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->skip(J)J

    move-result-wide v2

    .line 78
    .local v2, "totalSkip":J
    cmp-long v4, v2, p1

    if-nez v4, :cond_5

    .line 81
    iget-wide v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcom/pantech/audiotag/AudioFileStream;->mIs_offset:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_17

    .line 89
    const/4 v1, 0x1

    goto :goto_5

    .line 83
    .end local v2    # "totalSkip":J
    :catch_17
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
