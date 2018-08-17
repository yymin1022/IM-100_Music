.class public Lcom/pantech/audiotag/id3/util/MP3MPEGHeader;
.super Ljava/lang/Object;
.source "MP3MPEGHeader.java"


# static fields
.field public static final FILE_BUFFER_SIZE:I = 0x1388

.field public static final MIN_BUFFER_REMAINING_REQUIRED:I = 0xc4

.field public static final SYNC_BIT_ANDSAMPING_BYTE3:I = 0xfc

.field public static final SYNC_BYTE1:I = 0xff

.field public static final SYNC_BYTE2:I = 0xe0


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMPEGFrame(Ljava/nio/ByteBuffer;)Z
    .registers 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 19
    .local v0, "pos":I
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_28

    .line 20
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xe0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_28

    .line 21
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xfc

    const/16 v2, 0xfc

    if-eq v1, v2, :cond_28

    .line 19
    const/4 v1, 0x1

    :goto_27
    return v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method
