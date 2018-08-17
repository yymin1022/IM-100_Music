.class public Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;
.super Ljava/lang/Object;
.source "FLACMetadataBlockComment.java"

# interfaces
.implements Lcom/pantech/audiotag/IReadTagByteBuffer;


# static fields
.field public static final FIELD_COMMENT_LIST_ITEM_LENGTH:I = 0x4

.field public static final FIELD_COMMENT_LIST_LENGTH:I = 0x4

.field public static final FIELD_VENDOR_STRING_LENGTH:I = 0x4

.field private static final MAX_COMMENT_LIST_ITEM_LENGTH:I = 0x989680

.field private static final TAG:Ljava/lang/String; = "[FLACMetadataBlockComment] "


# instance fields
.field private mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doReadTag(Ljava/nio/ByteBuffer;)Z
    .registers 13
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/audiotag/exception/ReadException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    .line 50
    new-instance v8, Lcom/pantech/audiotag/flac/data/FLACDataOld;

    invoke-direct {v8}, Lcom/pantech/audiotag/flac/data/FLACDataOld;-><init>()V

    iput-object v8, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    .line 53
    new-array v0, v10, [B

    .line 54
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 55
    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->getIntLE([B)I

    move-result v6

    .line 56
    .local v6, "information_length":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[FLACMetadataBlockComment] information length: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 59
    add-int/lit8 v8, v6, 0x4

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    iget-object v8, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setPositionFrontOfCommentCount(I)V

    .line 65
    new-array v0, v10, [B

    .line 66
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 67
    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->getIntLE([B)I

    move-result v1

    .line 68
    .local v1, "comment_count":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[FLACMetadataBlockComment] comment count: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pantech/audiotag/common/LLog;->i(Ljava/lang/String;)V

    .line 70
    iget-object v8, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    invoke-virtual {v8, v1}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->setCommentCount(I)V

    .line 73
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_52
    if-lt v5, v1, :cond_56

    .line 100
    const/4 v8, 0x1

    return v8

    .line 76
    :cond_56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    .line 77
    .local v7, "itemStartPosition":I
    new-array v0, v10, [B

    .line 78
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    invoke-static {v0}, Lcom/pantech/audiotag/common/ByteOperation;->getIntLE([B)I

    move-result v3

    .line 81
    .local v3, "comment_length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-gt v3, v8, :cond_6e

    const v8, 0x989680

    if-le v3, v8, :cond_94

    .line 83
    :cond_6e
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[FLACMetadataBlockComment] comment list item length is longer than buffer remain or max length: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 83
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "err_msg":Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/audiotag/common/LLog;->e(Ljava/lang/String;)V

    .line 86
    new-instance v8, Lcom/pantech/audiotag/exception/ReadException;

    invoke-direct {v8, v4}, Lcom/pantech/audiotag/exception/ReadException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    .end local v4    # "err_msg":Ljava/lang/String;
    :cond_94
    new-array v0, v3, [B

    .line 92
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 93
    const/16 v8, 0x200

    invoke-static {v0, v8}, Lcom/pantech/audiotag/common/ByteOperation;->convertToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "comment_item":Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    invoke-virtual {v8, v7, v3, v2}, Lcom/pantech/audiotag/flac/data/FLACDataOld;->putParsedData(IILjava/lang/String;)V

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_52
.end method

.method public getCommentData()Lcom/pantech/audiotag/flac/data/FLACDataOld;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pantech/audiotag/flac/metadata/FLACMetadataBlockComment;->mFLACDataOld:Lcom/pantech/audiotag/flac/data/FLACDataOld;

    return-object v0
.end method
