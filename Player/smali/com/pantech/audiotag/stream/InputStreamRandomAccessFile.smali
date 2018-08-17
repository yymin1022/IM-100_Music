.class public Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;
.super Ljava/io/InputStream;
.source "InputStreamRandomAccessFile.java"


# instance fields
.field private final file:Ljava/io/RandomAccessFile;

.field private mMarkPos:J


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 4
    .param p1, "file"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 16
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_d
    iput-object p1, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    .line 19
    return-void
.end method


# virtual methods
.method public declared-synchronized mark(I)V
    .registers 4
    .param p1, "readlimit"    # I

    .prologue
    .line 36
    monitor-enter p0

    int-to-long v0, p1

    :try_start_2
    iput-wide v0, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->mMarkPos:J
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->mMarkPos:J

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 10
    .param p1, "amount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x7fffffff

    .line 48
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_11

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "amout is nagative value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_11
    move-wide v0, p1

    .line 52
    .local v0, "left":J
    :goto_12
    cmp-long v2, v0, v4

    if-gtz v2, :cond_1f

    .line 57
    iget-object v2, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v2

    int-to-long v2, v2

    return-wide v2

    .line 54
    :cond_1f
    iget-object v2, p0, Lcom/pantech/audiotag/stream/InputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 55
    sub-long/2addr v0, v4

    goto :goto_12
.end method
