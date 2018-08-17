.class public Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;
.super Ljava/lang/Object;
.source "FLACMetadataBlockHeader.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagFileStream;


# static fields
.field public static final BLOCKTYPE_APPLICATION:I = 0x2

.field public static final BLOCKTYPE_CUESHEET:I = 0x5

.field public static final BLOCKTYPE_PADDING:I = 0x1

.field public static final BLOCKTYPE_PICTURE:I = 0x6

.field public static final BLOCKTYPE_SEEKTABLE:I = 0x3

.field public static final BLOCKTYPE_STREAMINFO:I = 0x0

.field public static final BLOCKTYPE_VORBISCOMMENT:I = 0x4

.field public static final FLAC_HEADER_LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "[FLACMetadataBlockHeader] "


# instance fields
.field private mFLACDataHeader:Lcom/pantech/audiotag/flac/data/FLACDataHeader;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doReadTag(Lcom/pantech/audiotag/AudioFileStream;)Z
    .registers 11
    .param p1, "afStream"    # Lcom/pantech/audiotag/AudioFileStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 50
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Lcom/pantech/audiotag/AudioFileStream;->readBySize(I)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 52
    .local v2, "headerBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 55
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 56
    .local v1, "flag_and_type":B
    and-int/lit16 v7, v1, 0x80

    ushr-int/lit8 v0, v7, 0x7

    .line 57
    .local v0, "flag":I
    and-int/lit8 v5, v1, 0x7f

    .line 60
    .local v5, "type":I
    const/4 v7, 0x3

    new-array v4, v7, [B

    .line 61
    .local v4, "lengthByte":[B
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 62
    invoke-static {v4}, Lcom/pantech/audiotag/common/ByteOperation;->convertToInt([B)I

    move-result v3

    .line 64
    .local v3, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[FLACMetadataBlockHeader] FLAC header flag: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/pantech/audiotag/common/LLog;->d(Ljava/lang/String;)V

    .line 66
    if-gt v0, v6, :cond_53

    if-ltz v0, :cond_53

    if-ltz v5, :cond_53

    const/16 v7, 0x7e

    if-gt v5, v7, :cond_53

    if-gez v3, :cond_7b

    .line 68
    :cond_53
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[FLACMetadataBlockHeader] FLAC Header has invalid value. flag: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/audiotag/common/LLog;->w(Ljava/lang/String;)V

    .line 69
    const/4 v6, 0x0

    .line 74
    :goto_7a
    return v6

    .line 72
    :cond_7b
    new-instance v7, Lcom/pantech/audiotag/flac/data/FLACDataHeader;

    invoke-direct {v7, v0, v5, v3}, Lcom/pantech/audiotag/flac/data/FLACDataHeader;-><init>(III)V

    iput-object v7, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;->mFLACDataHeader:Lcom/pantech/audiotag/flac/data/FLACDataHeader;

    goto :goto_7a
.end method

.method public getFLACHeaderData()Lcom/pantech/audiotag/flac/data/FLACDataHeader;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockHeader;->mFLACDataHeader:Lcom/pantech/audiotag/flac/data/FLACDataHeader;

    return-object v0
.end method
