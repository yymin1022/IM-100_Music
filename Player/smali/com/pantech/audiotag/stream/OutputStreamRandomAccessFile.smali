.class public Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;
.super Ljava/io/OutputStream;
.source "OutputStreamRandomAccessFile.java"


# instance fields
.field private final file:Ljava/io/RandomAccessFile;

.field private mPos:I


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 2
    .param p1, "file"    # Ljava/io/RandomAccessFile;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    .line 17
    return-void
.end method


# virtual methods
.method public getPosition()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->mPos:I

    return v0
.end method

.method public write(I)V
    .registers 3
    .param p1, "toWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 23
    return-void
.end method

.method public write([B)V
    .registers 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 36
    iget v0, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->mPos:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->mPos:I

    .line 37
    return-void
.end method

.method public write([BII)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 29
    add-int v0, p2, p3

    iput v0, p0, Lcom/pantech/audiotag/stream/OutputStreamRandomAccessFile;->mPos:I

    .line 30
    return-void
.end method
