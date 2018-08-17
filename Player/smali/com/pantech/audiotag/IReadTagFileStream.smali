.class public interface abstract Lcom/pantech/audiotag/IReadTagFileStream;
.super Ljava/lang/Object;
.source "IReadTagFileStream.java"


# virtual methods
.method public abstract doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation
.end method
