.class public interface abstract Lcom/pantech/audiotag/IReadTagByteBuffer;
.super Ljava/lang/Object;
.source "IReadTagByteBuffer.java"


# virtual methods
.method public abstract doReadTag(Ljava/nio/ByteBuffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation
.end method
