.class public Lcom/pantech/audiotag/stream/StreamUtil;
.super Ljava/lang/Object;
.source "StreamUtil.java"


# static fields
.field public static final BUF_MAX_SIZE:I = 0x4000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/FileInputStream;Ljava/io/RandomAccessFile;)V
    .registers 8
    .param p0, "src"    # Ljava/io/FileInputStream;
    .param p1, "dst"    # Ljava/io/RandomAccessFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x4000

    .line 14
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 15
    .local v2, "remain":I
    const/4 v1, 0x0

    .line 16
    .local v1, "readSize":I
    new-array v0, v5, [B

    .line 18
    .local v0, "buf":[B
    :goto_9
    if-gtz v2, :cond_c

    .line 36
    return-void

    .line 20
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remain: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 21
    if-le v2, v5, :cond_2a

    .line 23
    const/16 v1, 0x4000

    .line 31
    :goto_22
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 34
    sub-int/2addr v2, v1

    goto :goto_9

    .line 27
    :cond_2a
    move v1, v2

    .line 28
    new-array v0, v1, [B

    goto :goto_22
.end method
