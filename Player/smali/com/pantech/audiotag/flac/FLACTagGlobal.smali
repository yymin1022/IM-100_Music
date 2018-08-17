.class public Lcom/pantech/audiotag/flac/FLACTagGlobal;
.super Ljava/lang/Object;
.source "FLACTagGlobal.java"


# static fields
.field public static final CODE_ERROR:I = -0x1

.field public static final CODE_ERROR_OPEN_FILE:I = -0x1770

.field public static final CODE_ERROR_READ:I = -0x1

.field public static final CODE_ERROR_READ_TAG:I = -0xa

.field public static final CODE_ERROR_RESULT:I = -0x1

.field public static final CODE_ERROR_WRITE:I = -0x1

.field public static final CODE_OK:I

.field public static final CODE_OK_RESULT:I

.field public static final CODE_OK_WRITE:I

.field private static FLAC_OTHER_METADATA_BLOCK_ENABLE_COUNT:I

.field private static FLAC_STREAMINFO_BLOCK_ENABLE:Z

.field private static FLAC_STREAMINFO_METADATA_BLOCK_END_POSITION:I

.field private static FLAC_VORBISDATA_BLOCK_NUMBER_COUNT:I

.field private static FLAC_VORBISDATA_BLOCK_SIZE:I

.field private static FLAC_VORBISDATA_BLOCK_START_POSITION:I

.field public static RESULT_CODE:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 26
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->RESULT_CODE:I

    .line 29
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_SIZE:I

    .line 30
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_START_POSITION:I

    .line 31
    sput v1, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_NUMBER_COUNT:I

    .line 32
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_METADATA_BLOCK_END_POSITION:I

    .line 33
    sput-boolean v1, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_BLOCK_ENABLE:Z

    .line 34
    sput v1, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_OTHER_METADATA_BLOCK_ENABLE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlacStreamInfoBlockEnable()Z
    .registers 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_BLOCK_ENABLE:Z

    return v0
.end method

.method public static getHasVorbisDataBlock()Z
    .registers 1

    .prologue
    .line 109
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_NUMBER_COUNT:I

    if-lez v0, :cond_6

    .line 110
    const/4 v0, 0x1

    .line 112
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static getOtherDataBlockEnableCount()I
    .registers 1

    .prologue
    .line 130
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_OTHER_METADATA_BLOCK_ENABLE_COUNT:I

    return v0
.end method

.method public static getResultCode()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->RESULT_CODE:I

    return v0
.end method

.method public static getStreamInfoMetaDataBlockEndPosition()I
    .registers 1

    .prologue
    .line 118
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_METADATA_BLOCK_END_POSITION:I

    return v0
.end method

.method public static getVorbisDataEndPosition()I
    .registers 2

    .prologue
    .line 138
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_START_POSITION:I

    sget v1, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_SIZE:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static getVorbisDataSize()I
    .registers 1

    .prologue
    .line 97
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_SIZE:I

    return v0
.end method

.method public static getVorbisDataStartPosition()I
    .registers 1

    .prologue
    .line 103
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_START_POSITION:I

    return v0
.end method

.method public static resetValues()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 51
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->RESULT_CODE:I

    .line 52
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_SIZE:I

    .line 53
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_START_POSITION:I

    .line 54
    sput v1, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_NUMBER_COUNT:I

    .line 55
    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_METADATA_BLOCK_END_POSITION:I

    .line 56
    sput-boolean v1, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_BLOCK_ENABLE:Z

    .line 57
    sput v1, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_OTHER_METADATA_BLOCK_ENABLE_COUNT:I

    .line 58
    return-void
.end method

.method public static setFlacStreamInfoBlockEnable(Z)V
    .registers 1
    .param p0, "isStreamBlock"    # Z

    .prologue
    .line 84
    sput-boolean p0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_BLOCK_ENABLE:Z

    .line 85
    return-void
.end method

.method public static setHasVorbisDataBlock(Z)V
    .registers 2
    .param p0, "hasBlock"    # Z

    .prologue
    .line 74
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_NUMBER_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_NUMBER_COUNT:I

    .line 75
    return-void
.end method

.method public static setOtherDataBlockEnableCount(I)V
    .registers 2
    .param p0, "count"    # I

    .prologue
    .line 89
    sget v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_OTHER_METADATA_BLOCK_ENABLE_COUNT:I

    add-int/2addr v0, p0

    sput v0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_OTHER_METADATA_BLOCK_ENABLE_COUNT:I

    .line 90
    return-void
.end method

.method public static setResultCode(I)V
    .registers 1
    .param p0, "code"    # I

    .prologue
    .line 39
    sput p0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->RESULT_CODE:I

    .line 40
    return-void
.end method

.method public static setStreamInfoMetaDataBlockEndPosition(I)V
    .registers 1
    .param p0, "currentReadPosition"    # I

    .prologue
    .line 79
    sput p0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_STREAMINFO_METADATA_BLOCK_END_POSITION:I

    .line 80
    return-void
.end method

.method public static setVorbisDataSize(I)V
    .registers 1
    .param p0, "blockSize"    # I

    .prologue
    .line 63
    sput p0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_SIZE:I

    .line 64
    return-void
.end method

.method public static setVorbisDataStartPosition(I)V
    .registers 1
    .param p0, "currentReadPosition"    # I

    .prologue
    .line 69
    sput p0, Lcom/pantech/audiotag/flac/FLACTagGlobal;->FLAC_VORBISDATA_BLOCK_START_POSITION:I

    .line 70
    return-void
.end method
